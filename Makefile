OBJS = 	main.o state_manager.o state.o menu.o about.o \
		search.o search_manager.o linear_search.o \
		sort.o sort_manager.o bubble_sort.o
CC = g++

#---------------Executable---------------#
retro: $(OBJS)
	g++ -o retro $(OBJS)
	rm -f $(OBJS)	# Remove *.o files

#---------------Object Files---------------#
main.o:	
	$(CC) -c ./main.cpp		# -> main.o

state_manager.o:
	$(CC) -c ./src/state_manager.cpp	# -> state_manager.o

state.o:
	$(CC) -c ./src/state.cpp	# -> state.o

menu.o:
	$(CC) -c ./src/menu.cpp		# -> menu.o

about.o:
	$(CC) -c ./src/about.cpp	# -> about.o

#--------------Searching---------------#
search.o:
	g++ -c ./src/searching/search.cpp

search_manager.o:
	g++ -c ./src/searching/search_manager.cpp

linear_search.o:
	g++ -c ./src/searching/linear_search.cpp

#--------------Sorting---------------#
sort.o:
	g++ -c ./src/sorting/sort.cpp

sort_manager.o:
	g++ -c ./src/sorting/sort_manager.cpp

bubble_sort.o:
	g++ -c ./src/sorting/bubble_sort.cpp

#---------------Commands---------------#
clean:	
	rm -f core retro $(OBJS)		# -> CLEANING

run:
	./retro	# -> RUNNING

rebuild:
	make clean; make	# -> REBUILDING
