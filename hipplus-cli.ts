// hipplus-cli.ts

// Importing necessary libraries
import { calculateFactorial, fetchData } from "hipplus-lib";

// Get the command and arguments from the command line
const command = process.argv[2];
const args = process.argv.slice(3);

// Execute the specified command
switch (command) {
    case "calculate-factorial":
        if (args.length !== 1) {
            console.error("Usage: hipplus-cli calculate-factorial <number>");
            process.exit(1);
        }
        const number = parseInt(args[0], 10);
        const result = calculateFactorial(number);
        console.log(`Factorial of ${number}: ${result}`);
        break;

    case "fetch-data":
        if (args.length !== 1) {
            console.error("Usage: hipplus-cli fetch-data <url>");
            process.exit(1);
        }
        const url = args[0];
        const data = await fetchData(url);
        console.log("Fetched data:", data);
        break;

    default:
        console.error("Unknown command:", command);
        process.exit(1);
}
    
