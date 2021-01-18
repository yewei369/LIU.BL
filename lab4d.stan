data {
  int<lower=0> N;
  int y[N];
}
parameters {
  vector[N] ar;
  
}
transformed parameters{
  vector[N] theta;
  theta=exp(ar);
}
model {
  ar[2:N] ~ normal(10.0 + 0.3 * ar[1:(N-1)], sqrt(0.4));
  y ~ poisson (theta);
}

