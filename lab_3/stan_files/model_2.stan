data {
    int<lower=0> N;
    int<lower=0,upper=N> y;
}

parameters {
   real<lower=0,upper=1> p;
}

model {
   p ~ beta(1,5);
}

generated quantities {
   int<lower=0,upper=N> y_pred;
}