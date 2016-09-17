import sys

import lasagne
import numpy as np
import theano


if __name__ == '__main__':
    print 'Hello Lasagne'
    print 'Task:', sys.argv[1]
    shape = (20000, 32, 32)
    a = lasagne.utils.create_param(np.random.rand(*shape),
                                   shape)
    fn = theano.function([], [], updates=[(a, a + 0.1)])
    for i in xrange(1000):
        fn()
    print 'just increment a random tensor {} 1000 times'.format(shape)
