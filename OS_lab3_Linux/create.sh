#!/bin/bash


mkdir -p Library/Articles

# Создаем подкаталоги для каждой статьи типа автор, научное направление, год написания, научный журнал)))
article_dir="Library/Articles/article_1"
mkdir -p "$article_dir"

echo "Author 1" > "$article_dir/author.txt"
echo "Year 1" > "$article_dir/year.txt"

mkdir -p "Library/Authors/Author_1"
mkdir -p "Library/Years/Year_1"

# создание ссылок
ln -s "$(pwd)/Library/Articles/article_1" "Library/Authors/Author_1/article_1"
ln -s "$(pwd)/Library/Articles/article_1" "Library/Years/Year_1/article_1"

article_dir="Library/Articles/article_2"
mkdir -p "$article_dir"

echo "Author 1" > "$article_dir/author.txt"
echo "Year 2" > "$article_dir/year.txt"

mkdir -p "Library/Authors/Author_1"
mkdir -p "Library/Years/Year_2"


# создание ссылок
ln -s "$(pwd)/Library/Articles/article_2" "Library/Authors/Author_1/article_2"
ln -s "$(pwd)/Library/Articles/article_2" "Library/Years/Year_2/article_2"

article_dir="Library/Articles/article_3"
mkdir -p "$article_dir"

echo "Author 1" > "$article_dir/author.txt"
echo "Year 2" > "$article_dir/year.txt"

mkdir -p "Library/Authors/Author_1"
mkdir -p "Library/Years/Year_2"

# создание ссылок
ln -s "$(pwd)/Library/Articles/article_3" "Library/Authors/Author_1/article_3"
ln -s "$(pwd)/Library/Articles/article_3" "Library/Years/Year_2/article_3"

article_dir="Library/Articles/article_4"
mkdir -p "$article_dir"

echo "Author 2" > "$article_dir/author.txt"
echo "Year 2" > "$article_dir/year.txt"

mkdir -p "Library/Authors/Author_2"
mkdir -p "Library/Years/Year_2"

# создание ссылок
ln -s "$(pwd)/Library/Articles/article_4" "Library/Authors/Author_2/article_4"
ln -s "$(pwd)/Library/Articles/article_4" "Library/Years/Year_2/article_4"





