.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final blacklist IMAGEUTILS_LOG_TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 11
    .param p0, "srcBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOffset"    # I
    .param p2, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "dstOffset"    # I
    .param p4, "srcByteCount"    # I

    .line 358
    int-to-long v4, p4

    move-object v2, p0

    move v3, p1

    move-object v0, p2

    move v1, p3

    .end local p0    # "srcBuffer":Ljava/nio/ByteBuffer;
    .end local p1    # "srcOffset":I
    .end local p2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local p3    # "dstOffset":I
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    .local v1, "dstOffset":I
    .local v2, "srcBuffer":Ljava/nio/ByteBuffer;
    .local v3, "srcOffset":I
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 359
    return-void
.end method

.method private static blacklist getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .registers 6
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "planeIdx"    # I

    .line 301
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 302
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_1c

    .line 303
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 306
    :cond_1c
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_b4

    .line 348
    const-string v0, "ImageUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 349
    const-string v1, "getEffectivePlaneSizeForImage() usesimage\'s width and height for plane size."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 342
    :sswitch_32
    if-nez p1, :cond_42

    .line 343
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 345
    :cond_42
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 340
    :sswitch_51
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 311
    :sswitch_58
    if-nez p1, :cond_68

    .line 312
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 314
    :cond_68
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 317
    :sswitch_78
    if-nez p1, :cond_88

    .line 318
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 320
    :cond_88
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 338
    :sswitch_97
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 352
    :cond_a5
    :goto_a5
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    nop

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_97
        0x2 -> :sswitch_97
        0x3 -> :sswitch_97
        0x4 -> :sswitch_97
        0x10 -> :sswitch_78
        0x11 -> :sswitch_58
        0x14 -> :sswitch_97
        0x20 -> :sswitch_97
        0x22 -> :sswitch_51
        0x23 -> :sswitch_58
        0x25 -> :sswitch_97
        0x26 -> :sswitch_97
        0x2b -> :sswitch_97
        0x36 -> :sswitch_58
        0x3c -> :sswitch_32
        0x100 -> :sswitch_97
        0x1002 -> :sswitch_97
        0x1003 -> :sswitch_97
        0x1005 -> :sswitch_97
        0x20203859 -> :sswitch_97
        0x20363159 -> :sswitch_97
        0x32315659 -> :sswitch_58
        0x48454946 -> :sswitch_97
    .end sparse-switch
.end method

.method public static blacklist getEstimatedNativeAllocBytes(IIII)I
    .registers 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "numImages"    # I

    .line 241
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    const/16 v0, 0x1006

    if-ne p2, v0, :cond_b

    .line 243
    nop

    .line 246
    :cond_b
    sparse-switch p2, :sswitch_data_40

    .line 290
    const/4 v0, 0x2

    const-string v1, "ImageUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 291
    const-string v0, "getEstimatedNativeAllocBytes() uses defaultestimated native allocation size."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 256
    :sswitch_1d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 257
    .local v0, "estimatedBytePerPixel":D
    goto :goto_37

    .line 253
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_20
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 254
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 260
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_26
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 261
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 267
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_29
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 268
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 277
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2c
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 278
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 281
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2f
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 282
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 287
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_32
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 288
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_37

    .line 294
    .end local v0    # "estimatedBytePerPixel":D
    :cond_35
    :goto_35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 297
    .restart local v0    # "estimatedBytePerPixel":D
    :goto_37
    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_32
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_2c
        0x10 -> :sswitch_2c
        0x11 -> :sswitch_29
        0x14 -> :sswitch_2c
        0x20 -> :sswitch_2c
        0x22 -> :sswitch_29
        0x23 -> :sswitch_29
        0x24 -> :sswitch_2c
        0x25 -> :sswitch_26
        0x26 -> :sswitch_29
        0x2b -> :sswitch_32
        0x36 -> :sswitch_2f
        0x3c -> :sswitch_32
        0x100 -> :sswitch_20
        0x101 -> :sswitch_20
        0x1002 -> :sswitch_2c
        0x1003 -> :sswitch_26
        0x1005 -> :sswitch_20
        0x20203859 -> :sswitch_1d
        0x20363159 -> :sswitch_2c
        0x32315659 -> :sswitch_29
        0x44363159 -> :sswitch_2c
        0x48454946 -> :sswitch_20
        0x69656963 -> :sswitch_20
    .end sparse-switch
.end method

.method public static blacklist getNumPlanesForFormat(I)I
    .registers 4
    .param p0, "format"    # I

    .line 49
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 50
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_c

    .line 51
    return v1

    .line 54
    :cond_c
    sparse-switch p0, :sswitch_data_2a

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid format specified %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :sswitch_23
    const/4 v0, 0x0

    return v0

    .line 60
    :sswitch_25
    const/4 v0, 0x3

    return v0

    .line 62
    :sswitch_27
    const/4 v0, 0x2

    return v0

    .line 82
    :sswitch_29
    return v1

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_29
        0x3 -> :sswitch_29
        0x4 -> :sswitch_29
        0x10 -> :sswitch_27
        0x11 -> :sswitch_25
        0x14 -> :sswitch_29
        0x20 -> :sswitch_29
        0x22 -> :sswitch_23
        0x23 -> :sswitch_25
        0x24 -> :sswitch_29
        0x25 -> :sswitch_29
        0x26 -> :sswitch_29
        0x36 -> :sswitch_25
        0x3c -> :sswitch_25
        0x100 -> :sswitch_29
        0x101 -> :sswitch_29
        0x1002 -> :sswitch_29
        0x1003 -> :sswitch_29
        0x1005 -> :sswitch_29
        0x20203859 -> :sswitch_29
        0x20363159 -> :sswitch_29
        0x32315659 -> :sswitch_25
        0x44363159 -> :sswitch_29
        0x48454946 -> :sswitch_29
        0x69656963 -> :sswitch_29
    .end sparse-switch
.end method

.method public static blacklist getNumPlanesForHardwareBufferFormat(I)I
    .registers 4
    .param p0, "hardwareBufferFormat"    # I

    .line 96
    sparse-switch p0, :sswitch_data_1c

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 117
    const-string v2, "Invalid hardwareBuffer format specified %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :sswitch_17
    const/4 v0, 0x3

    return v0

    .line 114
    :sswitch_19
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_19
        0x3 -> :sswitch_19
        0x4 -> :sswitch_19
        0x16 -> :sswitch_19
        0x21 -> :sswitch_19
        0x23 -> :sswitch_17
        0x2b -> :sswitch_19
        0x30 -> :sswitch_19
        0x31 -> :sswitch_19
        0x32 -> :sswitch_19
        0x33 -> :sswitch_19
        0x34 -> :sswitch_19
        0x35 -> :sswitch_19
        0x36 -> :sswitch_17
        0x3c -> :sswitch_17
    .end sparse-switch
.end method

.method public static blacklist imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .registers 18
    .param p0, "src"    # Landroid/media/Image;
    .param p1, "dst"    # Landroid/media/Image;

    .line 139
    move-object/from16 v0, p0

    if-eqz v0, :cond_17d

    if-eqz p1, :cond_17d

    .line 142
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_175

    .line 145
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_16d

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-eq v1, v2, :cond_16d

    .line 149
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_165

    .line 153
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x1002

    if-eq v1, v2, :cond_15d

    .line 157
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x1003

    if-eq v1, v2, :cond_155

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ImageWriter;

    if-eqz v1, :cond_14d

    .line 165
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 166
    .local v1, "srcSize":Landroid/util/Size;
    new-instance v2, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 167
    .local v2, "dstSize":Landroid/util/Size;
    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 172
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 173
    .local v3, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 174
    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v5, 0x0

    .line 175
    .local v5, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 176
    .local v6, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_69
    array-length v8, v3

    if-ge v7, v8, :cond_129

    .line 177
    aget-object v8, v3, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 178
    .local v8, "srcRowStride":I
    aget-object v9, v4, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 179
    .local v9, "dstRowStride":I
    aget-object v10, v3, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 180
    aget-object v10, v4, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 181
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_121

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_121

    .line 185
    aget-object v10, v3, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    aget-object v11, v4, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    if-ne v10, v11, :cond_f2

    .line 192
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 193
    .local v10, "srcPos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 195
    if-ne v8, v9, :cond_ae

    .line 197
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_e6

    .line 201
    :cond_ae
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 202
    .local v11, "srcOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 203
    .local v12, "dstOffset":I
    invoke-static {v0, v7}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v13

    .line 204
    .local v13, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    aget-object v15, v3, v7

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    mul-int/2addr v14, v15

    .line 205
    .local v14, "srcByteCount":I
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_c6
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge v15, v0, :cond_e6

    .line 206
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v15, v0, :cond_dc

    .line 210
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v0, v11

    .line 211
    .local v0, "remainingBytes":I
    if-le v14, v0, :cond_dc

    .line 212
    move v14, v0

    .line 215
    .end local v0    # "remainingBytes":I
    :cond_dc
    invoke-static {v5, v11, v6, v12, v14}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 216
    add-int/2addr v11, v8

    .line 217
    add-int/2addr v12, v9

    .line 205
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_c6

    .line 221
    .end local v11    # "srcOffset":I
    .end local v12    # "dstOffset":I
    .end local v13    # "effectivePlaneSize":Landroid/util/Size;
    .end local v14    # "srcByteCount":I
    .end local v15    # "row":I
    :cond_e6
    :goto_e6
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    .end local v8    # "srcRowStride":I
    .end local v9    # "dstRowStride":I
    .end local v10    # "srcPos":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_69

    .line 186
    .restart local v8    # "srcRowStride":I
    .restart local v9    # "dstRowStride":I
    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Source plane image pixel stride "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v7

    .line 187
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must be same as destination image pixel stride "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v7

    .line 189
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v7    # "i":I
    .end local v8    # "srcRowStride":I
    .end local v9    # "dstRowStride":I
    :cond_129
    return-void

    .line 168
    .end local v3    # "srcPlanes":[Landroid/media/Image$Plane;
    .end local v4    # "dstPlanes":[Landroid/media/Image$Plane;
    .end local v5    # "srcBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "dstBuffer":Ljava/nio/ByteBuffer;
    :cond_12a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source image size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is different with destination image size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v1    # "srcSize":Landroid/util/Size;
    .end local v2    # "dstSize":Landroid/util/Size;
    :cond_14d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_DEPTH10 format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_15d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_DEPTH format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_16d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PRIVATE format images are not copyable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src and dst images should have the same format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_17d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Images should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
