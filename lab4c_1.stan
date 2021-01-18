data {
  int<lower=0> N;
  int y[N];
}
parameters {
  vector[N] ar;
  real<lower=0> sigma2;
}
transformed parameters{
  vector[N] theta;
  theta=exp(ar);
}
model {
  sigma2~normal(2,2);
  ar[2:N] ~ normal(10.0 + 0.3 * ar[1:(N-1)], sqrt(sigma2));
  y ~ poisson (theta);
}

