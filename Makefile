SRC_DIR = src

.PHONY: nesasm clean install

nesasm:
	$(MAKE) -C $(SRC_DIR)
	mkdir -p bin
	mv $(SRC_DIR)/nesasm bin/nesasm

clean:
	$(MAKE) -C $(SRC_DIR) clean
	rm -rf bin/nesasm

