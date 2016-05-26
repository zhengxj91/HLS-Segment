EXEC=./segmenter
SRCS= \
  ./segmenter.cpp \
  ./helpers.cpp \
  ./options_parsing.cpp

CFLAGS=-I/usr/include -I/usr/local/include  -I./include -I./include/vm -I/opt/intel/mediasdk/include
LFLAGS=-L/opt/intel/mediasdk/lib/lin_x64 -L/usr/local/lib -lavformat -lavcodec -lstdc++ -lz -lmfx -lpthread -lrt -ldl -lva -lva-drm -lavutil -lfdk-aac -lm -lswresample -lswscale
$(EXEC): $(INCS) $(SRCS) Makefile
	g++ -g -o $(EXEC) $(SRCS) $(CFLAGS) $(LFLAGS)

.PHONY: clean
clean:
	rm $(EXEC)
