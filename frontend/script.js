async function addURL() {
    try {
        const response = await fetch("api/add", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ url: "bar" }),
        });

        const result = await response.json();

        console.log("Success:", result);
        return result;
    } catch (error) {
        console.error("Error posting data:", error);
    }
}
