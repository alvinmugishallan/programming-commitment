const verses = [
  "Psalm 23:1 - The Lord is my shepherd; I shall not want.",
  "Philippians 4:13 - I can do all things through Christ who strengthens me.",
  "Jeremiah 29:11 - For I know the plans I have for you, declares the Lord.",
  "Proverbs 3:5 - Trust in the Lord with all your heart.",
  "Romans 8:28 - All things work together for good for those who love God.",
  "Joshua 1:9 - Be strong and courageous; do not be afraid.",
  "John 3:16 - For God so loved the world..."
];

function generateVerse() {
  const random = Math.floor(Math.random() * verses.length);
  document.getElementById("verse").innerText = verses[random];
}