/* Base Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background-color: #0f172a; /* Sleek dark mode background */
    color: #e2e8f0;
    line-height: 1.6;
}

/* Header & Nav */
header {
    background-color: #1e293b;
    padding: 1.5rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 2px solid #334155;
}

header h1 {
    color: #38bdf8;
    font-size: 1.8rem;
}

nav a {
    color: #94a3b8;
    text-decoration: none;
    margin-left: 1.5rem;
    font-weight: 500;
    transition: color 0.3s;
}

nav a:hover {
    color: #38bdf8;
}

/* Hero Section */
.hero {
    text-align: center;
    padding: 4rem 2rem;
    background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
}

.hero h2 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
    color: #f8fafc;
}

.btn-primary {
    display: inline-block;
    background-color: #0284c7;
    color: white;
    padding: 0.75rem 1.5rem;
    border-radius: 6px;
    text-decoration: none;
    margin-top: 1.5rem;
    transition: background 0.3s;
}

.btn-primary:hover {
    background-color: #0369a1;
}

/* Features Grid */
.features-section {
    padding: 3rem 2rem;
    text-align: center;
}

.features-section h2 {
    margin-bottom: 2rem;
    color: #f8fafc;
}

.grid-container {
    display: flex;
    gap: 2rem;
    justify-content: center;
    flex-wrap: wrap;
}

.card {
    background-color: #1e293b;
    border: 1px solid #334155;
    border-radius: 10px;
    padding: 2rem;
    width: 300px;
    text-align: left;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.card .icon {
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.card h3 {
    color: #38bdf8;
    margin-bottom: 0.5rem;
}

/* Blockquote Style */
blockquote {
    border-left: 4px solid #38bdf8;
    padding-left: 1rem;
    font-style: italic;
    color: #94a3b8;
    margin-top: 1.5rem;
}

hr {
    border: 0;
    height: 1px;
    background: #334155;
    margin: 0 2rem;
}

footer {
    text-align: center;
    padding: 2rem;
    color: #64748b;
    font-size: 0.9rem;
    background-color: #0f172a;
}
/* Flashcard Container - Establishes the 3D space */
.flashcard-container {
    width: 300px;
    height: 250px;
    perspective: 1000px; /* Crucial for 3D effect */
    cursor: pointer;
}

/* The Moving Card */
.flashcard {
    width: 100%;
    height: 100%;
    position: relative;
    transform-style: preserve-3d;
    transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
}

/* JavaScript will toggle this class to flip the card */
.flashcard.flipped {
    transform: rotateY(180deg);
}

/* Base Styles for both Front and Back Faces */
.card-face {
    position: absolute;
    width: 100%;
    height: 100%;
    backface-visibility: hidden; /* Hides the back side when turned away */
    border-radius: 10px;
    border: 1px solid #334155;
    padding: 2rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

/* Front Face Styling */
.card-front {
    background-color: #1e293b;
    color: #e2e8f0;
}

.card-front .hint {
    font-size: 0.85rem;
    color: #38bdf8;
    margin-top: 1rem;
    font-style: italic;
}

/* Back Face Styling */
.card-back {
    background-color: #0369a1; /* Changes background color when flipped */
    color: #f8fafc;
    transform: rotateY(180deg); /* Starts pre-flipped */
}