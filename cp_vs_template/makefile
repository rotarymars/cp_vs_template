TEST_DIR=test

TLE := 4

test/sample-1.in :
	oj_helper.sh d

download_sample : test/sample-1.in

.PHONY : clean
clean:
	$(RM) -r $(TEST_DIR)

.PHONY : run
run: $(PROGRAM)
	$(PROGRAM) < in_001.txt

.PHONY : test
test: $(PROGRAM) test/sample-1.in
	oj test -t $(TLE) -c $(PROGRAM)

.PHONY : submit
submit: $(PROGRAM) test
	python oj_helper.py s main.cpp