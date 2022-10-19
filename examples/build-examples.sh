# 
# Based on the make build/examples command in the Makefile

echo "pwd: $(pwd)"
# OUT_PATH - specifies where to copy the generated markdown files at the end of execution.
OUT_PATH="/home/realu/adapt-wsl/cosmos/vimdiesel-cosmos.github.io/docs/dev/protobuf"

EXAMPLE_CMD="bin/protoc --plugin=bin/protoc-gen-doc \
	-Ithirdparty -Itmp/googleapis -Iexamples/proto \
	--doc_out=examples/doc"

doc_gen() {
  echo "INFO | generating docs for module - $xmodule"

  ## Build example protos
  bin/protoc build tmp/googleapis $PROTOS_PATH examples/templates/*.tmpl 
	# echo "$CYANMaking examples...$CLEAR"
	$EXAMPLE_CMD --doc_opt=markdown,$xmodule.md:Ignore* $PROTOS_PATH

  # Replace default title
  local new_title="proto - $xmodule"
  sed -i "s/Protocol Documentation/$new_title/g" examples/doc/$xmodule.md
}

module_doc_gen_nest() {
  xmodule="$1"
  PROTOS_PATH="examples/proto/$xmodule/**/*.proto"  
  doc_gen
}

module_doc_gen_root() {
  xmodule="$1"
  PROTOS_PATH="examples/proto/$xmodule/**.proto"
  doc_gen
}

clear_docs() {
	rm -f examples/doc/*
}

clear_docs

module_doc_gen_nest dex
module_doc_gen_nest perp
module_doc_gen_nest vpool
module_doc_gen_root pricefeed
module_doc_gen_root epochs
module_doc_gen_root stablecoin

cp -r examples/doc/*.md $OUT_PATH