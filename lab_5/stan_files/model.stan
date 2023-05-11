data {
  int<lower=0> M;//number of years analyzed
  int<lower=0> y[M];//number of fatal accidents
  real<lower=0> milage[M];//number of miles flown
}
parameters {
  real alpha;
  real theta;
}
model {
  alpha ~ normal(2.567008945, 0.00000001); 
  theta ~ normal(0.000158179, 0.00000001);
  for (k in 1:M) {
    y[k] ~ poisson(exp(alpha + theta * milage[k]));;
  }
}
generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(exp(alpha + theta * milage[k]));
  }
}