## What is this?

This app creates random poems based on real poems by authors. It takes the real poems as input and calculates the probability that one word follows another. 

**Example**

A poem starts with `I`. Other possible words can be `have`, `love`, `hate`. `Have` will follow with a probability of 70%, `love` with 35%, and `hate` with 20%. So the next word will be "have" and we get the sequence `I have`, and so on ...

This mechanism is called Markov chain.

**What are Markov chains?**

Markov chains are a statistical model to create random processes. 

> Markov chains are a way to generate data based on probabilities that something will follow something else. To be more specific in the case of this project, the Markov chain will choose the next word in the poem based on the probability that it comes after the word we have just chosen. 
> -- Katie Jolly

This code is based on Katie Jolly's blog post [Random Rupi: Generating Rupi Kaur-style poems in R with Markov chains](http://katiejolly.io/blog/2018-01-05/random-rupi-markov-chain-poems) ([on Github](https://github.com/katiejolly/blog/tree/gh-pages/_preposts/rupi_kaur)).

**Links**

* [Introduction to Markov Chains](https://towardsdatascience.com/introduction-to-markov-chains-50da3645a50d)
* [Markov Chains - Explained](http://techeffigytutorials.blogspot.com/2015/01/markov-chains-explained.html)