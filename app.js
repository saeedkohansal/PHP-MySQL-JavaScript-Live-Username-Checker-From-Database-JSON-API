/*
IN JAVASCRIPT
result.username & result["username"]
OR
result.usernames[5] & result["usernames"][5]
ARE THE SAME
*/

// Get the username input field
const username_input = document.querySelector("#username")

// Checking input username with usernames list json file
function username_checker(json_file) {
    fetch(json_file, { method: 'GET' })
        .then(response => response.json()) // Get usernames list as json format
        .then(result => {
            // Convert all usernames to lowercase
            const usernames_list = result.usernames.map(element => {
                return element.toLowerCase()
            })

            // Each time the username input data value changed (by typing or copy/pasted data)
            username_input.oninput = function () {
                // Convert username input value to lowercase
                const target_username = username_input.value.toLowerCase()

                // Change elements css by condition
                switch (true) {
                    // Empty input value
                    case target_username == "":
                        document.body.style.color = "#fff"
                        document.body.style.backgroundColor = "#000"
                        username_input.style.backgroundColor = "transparent"
                        username_input.style.borderColor = "#fff"
                        username_input.style.textDecoration = "none"
                        break;
                    // The username is locked
                    case usernames_list.includes(target_username):
                        document.body.style.color = "#fff"
                        document.body.style.backgroundColor = "#f54"
                        username_input.style.backgroundColor = "#fff"
                        username_input.style.borderColor = "#fff"
                        username_input.style.textDecoration = "line-through"
                        break;
                    // The username is free
                    case !usernames_list.includes(target_username):
                        document.body.style.color = "#000"
                        document.body.style.backgroundColor = "#00ff60"
                        username_input.style.backgroundColor = "transparent"
                        username_input.style.borderColor = "#000"
                        username_input.style.textDecoration = "none"
                        break;
                }
            }
        })
        .catch(error => console.log('error', error))
}

// Run username checker from json file
username_checker("api/")