# Read the full content of the input file
input_file <- "talks.md"  # replace with your actual file path
lines <- readLines(input_file)

# Initialize variables
file_starts <- grep("^# File \\d+: ", lines)
file_starts <- c(file_starts, length(lines) + 1)  # Add sentinel for last block

# Loop over each file block
for (i in 1:(length(file_starts) - 1)) {
  start <- file_starts[i]
  end <- file_starts[i + 1] - 1

  # Extract header and body
  header_line <- lines[start]
  filename <- sub("^# File \\d+:\\s*", "", header_line)

  content_lines <- lines[(start + 1):end]

  # Write to file
  writeLines(content_lines, con = filename)

  cat("Written:", filename, "\n")
}
