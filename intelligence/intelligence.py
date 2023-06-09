import sys

def parse_text_file(file_path, search_word):
    try:
        with open(file_path, 'r') as file:
            for line in file:
                if search_word in line:
                    print(line.strip())
    except IOError:
        print(f"Error reading file: {file_path}")

# Check if the required command-line arguments are provided
if len(sys.argv) < 3:
    print("Usage: python parse_text.py <file_path> <search_word>")
    sys.exit(1)

# Extract command-line arguments
file_path = sys.argv[1]
search_word = sys.argv[2]

# Call the parsing function
parse_text_file(file_path, search_word)
