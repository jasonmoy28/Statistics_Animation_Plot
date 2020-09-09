critical_value <- function(critical_value_prob, mu, se, upper_lim, lower_lim) {
  # Compute the critical value on both side
  x_critical_value_positive = -qnorm(critical_value_prob,mean = mu,sd = standard_error) #positive_critical_value
  x_critical_value_negative = qnorm(critical_value_prob,mean = mu,sd = standard_error)
  
  # Compute the critical value x_seq 
  x_crtical_value_seq_positive = seq(x_critical_value_positive,upper_lim,0.01)
  x_crtical_value_seq_negative = seq(x_critical_value_negative,lower_lim,-0.01)
  
  # Compute the critical value y_seq
  y_critical_value_positive = dnorm(x_crtical_value_seq_positive,mean = mu, sd = standard_error)
  y_critical_value_negative = dnorm(x_crtical_value_seq_negative,mean = mu, sd = standard_error)
  
  # Combine them into a dataframe 
  critical_value_data = as.data.frame(cbind(x_crtical_value_seq_positive,
                                            y_critical_value_positive,
                                            x_crtical_value_seq_negative,
                                            y_critical_value_negative))
  
  return(critical_value_data)
}

critical_value_data = critical_value(critical_value_prob = 0.05, mu = mu,se = standard_error,upper_lim = x_upper_lim,lower_lim = x_low_lim)




