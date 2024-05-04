//2024-05-04 copyright (c) falsefox.dev

const fs = require("fs")
const path = require("path");
const {
    exec
} = require("child_process");
const readline = require('readline');

exec("rm -r ./build/")

async function* walk(dir) {
    for await (const d of await fs.promises.opendir(dir)) {
        const entry = path.join(dir, d.name);
        if (d.isDirectory()) yield* walk(entry);
        else if (d.isFile()) yield entry;
    }
}

async function compile(p) {
    //p should be formatted as /path/to/file.f90

    //Return if it's not a fortran file
    if (!p.toStringreloading().endsWith(".f90")) return;

    // Default output name
    let output = 'index'

    let name = p.split("/").pop()

    let path = p.split("/")
    path.pop()

    //Reservered word exemptions
    if (name === "404.f90") {
        output = "404"
    }

    console.log(`Compiling ${name} at ${path.join("/")}....` )

    let compilerOptions = [""]

    //Spaghetti here

    const fileStream = fs.createReadStream(`./${path.join("/") + "/" + name}`);

    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });
    // Note: we use the crlfDelay option to recognize all instances of CR LF
    // ('\r\n') in input.txt as a single line break.

    for await (const line of rl) {
        // Each line in input.txt will be successively available here as `line`.
        if (line.match(/(USE c)/)) {

            let splitline = line.split("_")
            console.log("Importing modules...")

            compilerOptions.push(`./components/${splitline[1]}/${splitline[1]}.f90`)




        } else continue;

        if (line.match(/(character)/)) break;
    }


    console.log("Creating the output directory...")


    exec(`mkdir -p ./build/${path.join("/")}`, function (err, stdout, stderr) {
        if (err) {
            console.error("----------------------------\n Error occured while trying to create build directory\n----------------------------\n")
            console.error(err)
        } 
    })

    console.log("Compiling....")

    exec(`gfortran -ffree-form ${compilerOptions.join(" ")} ./${path.join("/") + "/" + name} -o ./build/${path.join("/")}/${output}`, function (err, stdout, stderr) {
        if (err) {
            console.error("----------------------------\n Error occured while compiling pages\n----------------------------\n")
            console.error(err)
        } else {
            console.log(`${name} compiled successfully!`)
        }
    })
}

async function main() {

    for await (const p of walk('./pages')) {
        if (!p.toString().endsWith(".f90")) continue;


        compile(p)
    }
}

main()

module.exports = {
    compile: compile
}