from sage.graphs.graph_coloring import chromatic_number, number_of_n_colorings
vertices = [(i,j) for i in range(9) for j in range(i+1,9) if j-i <= 4]
d =dict()
for u in vertices: 
    L = [v for v in vertices if (v[1] == u[0] or v[0] == u[1])] 
    d[u] = L
G = Graph(d)
print(G.chromatic_number())
u = vertices[0]
while (G.chromatic_number() == 4):
    u = vertices.pop()
    G.delete_vertex(u)
    print(u,G)

print(G.size(),number_of_n_colorings(G,3))
G.add_edge((6,7),(5,7))
print(G.size(),number_of_n_colorings(G,3))