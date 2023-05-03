import React from 'react'

export default function FileForm() {

    function handleSubmit(event) {
        event.preventDefault()
        const form = event.target
        const formData = new FormData()
        formData.append('profile_image[title]', form.title.value)
        formData.append('profile_image[image]', form.image.files[0], form.image.value)
        debugger
        submitToApi(formData);
    }

    function submitToApi(formData) {
        fetch('http://localhost:3000/profile_images', {
            method: 'post',
            body: formData,
        }).then(response => response.json())
            .then(data => console.log(data))
            .catch(error => console.error(error));
    }

    return (
        <>
            {/* <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Update Profile Image</title>
                <link
                    href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
                    rel="stylesheet"
                />
            </head> */}
            {/* <body> */}
                <section className="max-w-4xl mt-4 w-11/12 mx-auto bg-blue-50 p-8 shadow-lg rounded-lg">
                    <h1 className="text-3xl font-semibold text-center">Add/Update Profile Photo</h1>
                    <form onSubmit={e => handleSubmit(e)}>
                        <fieldset className="my-2">
                            <label className="w-full block uppercase ml-3 mb-3" htmlFor="title">
                                Title
                            </label>
                            <input
                                type="text"
                                name="title"
                                id="title"
                                className="w-full block p-3 shadow-sm"
                                placeholder="Title"
                            />
                        </fieldset>

                        <fieldset className="my-2">
                            <label className="w-full block uppercase ml-3 mb-0" htmlFor="image">
                                Image
                            </label>
                            <input
                                type="file"
                                name="image"
                                id="image"
                                className="w-full block p-3"
                                placeholder="image"
                            />
                        </fieldset>
                        <button
                            className="w-full block p-3 bg-green-400 hover:bg-green-500 text-center transition duration-200"
                            type="submit"
                        >
                            Update Profile
                        </button>
                    </form>
                </section>
            {/* </body> */}
        </>
    )
}