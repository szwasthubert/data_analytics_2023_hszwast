data {
  int<lower=0> N;
  real<lower=0> heights[N];
}

parameters {
  real mu;
  real<lower=0> sigma;
}

model {
  mu ~ normal(175, 5);
  sigma ~ normal(15, 2);
  heights ~ normal(mu, sigma);
}

generated quantities {
  real height = normal_rng(mu, sigma);
}