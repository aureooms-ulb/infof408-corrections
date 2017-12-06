
TARGET=homework

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex
	xelatex $(TARGET).tex
	xelatex $(TARGET).tex

clean:
	rm -f $(TARGET).{aux,log,out,pdf}
