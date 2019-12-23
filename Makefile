OBJ =  mx8_v4l2_cap_drm.o

TARGET =  mx8_v4l2_cap_drm.out
LDFLAGS = -L./
LIBS = -lpthread -ldrm
INC += -I /home/wsj/work/android/p9.0.0_1.0.2-auto/myandroid/vendor/nxp-opensource/libdrm-imx -I /home/wsj/work/android/p9.0.0_1.0.2-auto/myandroid/vendor/nxp-opensource/libdrm-imx/include/drm/

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $(TARGET) $(OBJ) ${LDFLAGS} ${LIBS}

%.o: %.c
	$(CC) $(INC) -Wall -O2 -c $^ -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJ)
