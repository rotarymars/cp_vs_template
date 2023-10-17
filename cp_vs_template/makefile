TEST_DIR=test

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
	oj test -c $(PROGRAM)

.PHONY : submit
submit: $(PROGRAM) test
	oj_helper.sh s main.cpp