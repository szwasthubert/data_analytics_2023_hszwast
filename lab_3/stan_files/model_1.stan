generated quantities {
    int N = 50;
    int<lower=0,upper=N> y;
    real<lower=0,upper=1> p;

    N = 50;
    p = beta_rng(1,5);
    y = binomial_rng(N,p);
}