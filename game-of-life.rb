#Reglas del juego:
# 1.- Cualquier célula viva con menos de dos vecinos vivos muere,
# como si fuera por falta de población.
# 2.- Cualquier célula viva con más de tres vecinos vivos muere,
#como si fuera por sobre-población.
# 3.- Cualquier célula viva con dos o tres vecinos vivos sobrevive
#a la siguiente generación.
# 4.- Cualquier célula muerta con exactamente tres vecinos vivos
#se convierte en una célula viva.



rows = 3
columns = 3

# Create an empty grid
grid = Array.new(rows,0) { Array.new(columns,0) }

# Accessing and updating grid elements
# grid[0][0] = 1
# grid[0][1] = 0
grid[0][2] = 1
grid[1][0] = 1
# grid[1][1] = 0
# grid[1][2] = 0
# grid[2][0] = 0
# grid[2][1] = 1
# grid[2][2] = 0

# # Display the grid
grid.each do |row|
  puts row.join(" ")
end

# [0 0 1]
# [1 0 0]
# [0 1 0]
puts ("\n")
# renglon, columna
# 0,0
# si renglon = 0
#   si columna = 0 =>...a
#   si columna !0 => ....
#   si columna = ultima columna

newgrid = Array.new(rows,0) { Array.new(columns,0) }
for r in 0..2 do
  for c in 0..2 do
    if r == 2 && c == 1
      newgrid[r][c] = 1
   end
 end
end
puts newgrid
# if r == r.last && c == c.last-1
#   new_grid[r, c] = 1
newgrid.each do |row|
  puts row.join(" ")
end