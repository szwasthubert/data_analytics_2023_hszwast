data {
    int<lower=1> N;
}

generated quantities {
    real theta = 0.01;
    array [N] real y;
    for (n in 1:N) {
        if (bernoulli_rng(theta)) {
            y[i] = normal_rng(10, 10);
        } else {
            y[n] = normal_rng(0, 1)
        }
    }
}