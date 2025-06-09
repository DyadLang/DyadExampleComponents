# For Air Motor
# Choked Flow Equation
function M_f(p, direction, p_atm, p_L, k)
  if direction == 1
      p_r = p_L/p
  else
      p_r = p/p_atm
  end

  if p_r < 1
      p_r = 1
  end

  a = p_r^((k-1)/k) - 1
  b = (2/(k-1))*a
  x = regRoot(b)

  if x < 1
      return x
  else
      return 1
  end
end
Symbolics.@register_symbolic M_f(p, direction, p_atm, p_L, k)

square(time, freq) = 4*floor(freq*time) - 2*floor(2*freq*time) + 1
regPow(x, a, delta = 0.01) = x * (x * x + delta * delta)^((a - 1) / 2);
regRoot(x, delta = 0.01) = regPow(x, 0.5, delta)

# Convert convention units to SI units (numerically)
from_psi(psi) = psi * 6894.757
from_inch(inch) = inch * 0.0254
