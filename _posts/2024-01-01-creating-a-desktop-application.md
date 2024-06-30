---
layout: post
author: Zack Young
title: Creating A Desktop Application
subtitle: In this article, we use ElectronJS to creat a desktop application to act as the user interface for our password manager.
category: JavaScript
image: mockup.jpg
image-alt: Alder Password Manager
---
Aliquam venenatis est eu maximus congue. Curabitur suscipit porta
laoreet. Vestibulum sed massa quis dui imperdiet semper a eu mauris.
Aenean hendrerit iaculis metus a pharetra. Phasellus eu nibh ac erat
maximus lobortis. Proin bibendum maximus auctor. Ut porta magna ex, eu
ultrices nunc congue sit amet. Morbi arcu sem, commodo sed dignissim
sed, pulvinar eget ipsum. Integer posuere ultrices tristique.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque
tincidunt, quam in gravida vehicula, nisi purus vulputate nisi, eget
luctus augue massa at ipsum. In vel nisl massa. Nullam feugiat vehicula
malesuada. Pellentesque vitae ullamcorper libero. Nunc pharetra
condimentum erat, nec ultrices nulla faucibus ut. Sed sagittis libero
ut mi sagittis bibendum. Pellentesque sed ligula augue. Quisque
vulputate et ex mollis dictum. Curabitur fringilla eros leo, ac congue
sem vestibulum ac. Nullam non ante ante. Morbi diam tortor, aliquet et
pretium sit amet, auctor et metus. Proin commodo interdum interdum.
Etiam fermentum orci ac tellus dignissim, et feugiat velit blandit.
Suspendisse porttitor viverra gravida. Sed nec felis eu enim imperdiet
tristique vitae sed justo. Suspendisse consequat justo sed lectus
rhoncus, pulvinar dictum purus aliquet.

<p class="filename fst-italic mb-0 text-secondary">lists/index.js</p>
```javascript
const button = document.getElementById('button');
const title = document.getElementById('title');
button.addEventListener('click', (event) => {
  title.style.color = 'red';
});
```

This is some more text. Lorem ipsum, all that good stuff.
