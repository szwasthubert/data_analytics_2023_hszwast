data {
  int<lower=0> N;
  int<lower=0> y;
}

parameters {
  real<lower=0, upper=1> p;
}

model {
  p ~ beta(1, 1);
  y ~ binomial(N, p);
}

generated quantities {
  int<lower=0> y_pred;
  y_pred = binomial_rng(N, p);
}