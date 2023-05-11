generated quantities {
  real mu = normal_rng(175, 5);
  real<lower=0> sigma = normal_rng(15, 2);
  real height = normal_rng(mu, sigma);
}
