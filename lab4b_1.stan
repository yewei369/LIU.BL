data {
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real mu;
  real phi;
  real<lower=0> sigma2;
}
model {
  
  y[2:N] ~ normal(mu + phi * y[1:(N-1)], sqrt(sigma2));
  
}

