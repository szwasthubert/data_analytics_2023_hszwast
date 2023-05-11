data {
  int<lower=0> M;//number of years analyzed
  int<lower=0> y[M];//number of fatal accidents
  real<lower=0> milage[M];//number of miles flown
}
parameters {
  real alpha[M];
  real theta;
}
model {
  theta ~ normal(0.000158179, 0.00000001);
  for (k in 1:M) {
    alpha[k] ~ normal(1-theta*milage[k], 0.00000001); 
    y[k] ~ poisson(exp(alpha[k]+ theta * milage[k]));;
  }
}
generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(exp(alpha[k] + theta * milage[k]));
  }
}