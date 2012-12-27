#include <stdio.h>

struct num2color
{
  char ch;
  char * name;
} num2colorname[16] =
{
  {'0', "transparent"}
, {'1', "black"}
, {'2', "medium green"}
, {'3', "light green"}
, {'4', "dark blue"}
, {'5', "light blue"}
, {'6', "dark red"}
, {'7', "cyan"}
, {'8', "medium red"}
, {'9', "light red"}
, {'A', "dark yellow"}
, {'B', "light yellow"}
, {'C', "dark green"}
, {'D', "magenta"}
, {'E', "gray"}
, {'F', "white"}
};

__inline void print_char_line_color (char ch, char color)
{
  int bit;
  
  for (bit = 7; bit >= 0; --bit)
  {
      char color_selector = (ch & (1 << bit)) >> bit;
      int color_num;
      if (color_selector) color_num = color & 0x0F;
      else color_num = (color & 0xF0) >> 4;
      printf (" %c", num2colorname[color_num].ch);
  }
}

__inline void print_char_line (char ch)
{
  print_char_line_color (ch, 0x80);
}


void print_character (char ch[8])
{
  int c;
  for (c = 0; c < 8; ++c)
  {
    print_char_line (ch[c]);
    printf ("\n");
  }
}

void print_characters (char * chars, int n)
{
  int line;
  for (line = 0; line < 8; ++line)
  {
    int i;
    for (i = 0; i < n; ++i)
    {
      print_char_line (chars[8 * i + line]);
    }
    printf ("\n");
  }
}

void print_stroke (char * char_table, char *){}

int main (int argc, char * argv[])
{
  char header[7];
  char pattern_table[0x1800];
  char layer[3][256];
  char sprite_color_table[1024];
  char sprite_pattern_table[128];
  char color_table[0x1800];

  fread (header, 7, 1, stdin);
  fread (pattern_table, 0x1800, 1, stdin);
  fread (layer[0], 0x100, 1, stdin);
  fread (layer[1], 0x100, 1, stdin);
  fread (layer[2], 0x100, 1, stdin);
  fread (sprite_color_table, 1024, 1, stdin);
  fread (sprite_pattern_table, 128, 1, stdin);
  fread (color_table, 0x1800, 1, stdin);
  
  return 0;
}
