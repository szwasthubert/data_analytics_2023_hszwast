data {
  int<lower=1> N;
  real weight[N];
}

parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}

model {
  alpha ~ normal(175, 5);
  beta ~ normal(0, 1);
  sigma ~ normal(0, 1);
}

generated quantities {
  real height[N];
  
  for (i in 1:N) {
    height[i] = normal_rng(alpha + beta * weight[i], sigma);
  }
}
