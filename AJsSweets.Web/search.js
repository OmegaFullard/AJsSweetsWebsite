function performSearch() {
    const query = document.getElementById('searchInput').value;
    const resultsDiv = document.getElementById('searchResults');

    // Clear previous results
    resultsDiv.innerHTML = '';

    // Simulate search results
    const results = [
        'Result 1 for ' + query,
        'Result 2 for ' + query,
        'Result 3 for ' + query
    ];

    // Display results
    results.forEach(result => {
        const resultItem = document.createElement('div');
        resultItem.textContent = result;
        resultsDiv.appendChild(resultItem);
    });
}
