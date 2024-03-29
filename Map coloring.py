#11 Map coloring



def map_coloring(graph):

    colors = {}  # Dictionary to store assigned colors for each region

    

    # List of available colors

    available_colors = ['red', 'green', 'blue', 'yellow', 'purple', 'orange']

    

    for region in graph:

        used_colors = set(colors.get(neighbour) for neighbour in graph[region] if neighbour in colors)

        for color in available_colors:

            if color not in used_colors:

                colors[region] = color

                break

    

    return colors



def main():

    map_graph = {}

    num_regions = int(input("Enter the number of regions: "))

    

    for i in range(num_regions):

        region_name = input(f"Enter the name of region {i+1}: ")

        neighbors = input(f"Enter the neighbors of {region_name} separated by spaces: ").split()

        map_graph[region_name] = neighbors

    

    colored_map = map_coloring(map_graph)

    for region, color in colored_map.items():

        print(f"Region {region} is colored {color}")



if __name__ == "__main__":

    main()
