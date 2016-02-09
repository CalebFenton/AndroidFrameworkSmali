.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 6
    .param p0, "srcBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOffset"    # I
    .param p2, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "dstOffset"    # I
    .param p4, "srcByteCount"    # I

    #@0
    .prologue
    .line 256
    int-to-long v4, p4

    #@1
    move-object v0, p2

    #@2
    move v1, p3

    #@3
    move-object v2, p0

    #@4
    move v3, p1

    #@5
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    #@8
    .line 255
    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .locals 5
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "planeIdx"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 220
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    #@4
    move-result v0

    #@5
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    .line 250
    const-string/jumbo v1, "Invalid image format %d"

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    #@13
    move-result v3

    #@14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, v4

    #@1a
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 249
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 224
    :sswitch_0
    if-nez p1, :cond_0

    #@24
    .line 225
    new-instance v0, Landroid/util/Size;

    #@26
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@2d
    move-result v2

    #@2e
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@31
    return-object v0

    #@32
    .line 227
    :cond_0
    new-instance v0, Landroid/util/Size;

    #@34
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@37
    move-result v1

    #@38
    div-int/lit8 v1, v1, 0x2

    #@3a
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@3d
    move-result v2

    #@3e
    div-int/lit8 v2, v2, 0x2

    #@40
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@43
    return-object v0

    #@44
    .line 230
    :sswitch_1
    if-nez p1, :cond_1

    #@46
    .line 231
    new-instance v0, Landroid/util/Size;

    #@48
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@4b
    move-result v1

    #@4c
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@4f
    move-result v2

    #@50
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@53
    return-object v0

    #@54
    .line 233
    :cond_1
    new-instance v0, Landroid/util/Size;

    #@56
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@59
    move-result v1

    #@5a
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@5d
    move-result v2

    #@5e
    div-int/lit8 v2, v2, 0x2

    #@60
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@63
    return-object v0

    #@64
    .line 245
    :sswitch_2
    new-instance v0, Landroid/util/Size;

    #@66
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    #@69
    move-result v1

    #@6a
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    #@6d
    move-result v2

    #@6e
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@71
    return-object v0

    #@72
    .line 247
    :sswitch_3
    new-instance v0, Landroid/util/Size;

    #@74
    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    #@77
    return-object v0

    #@78
    .line 220
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "numImages"    # I

    #@0
    .prologue
    .line 178
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 212
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@5
    .line 213
    const-string/jumbo v3, "Invalid format specified %d"

    #@8
    const/4 v4, 0x1

    #@9
    new-array v4, v4, [Ljava/lang/Object;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v5

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 212
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 182
    :sswitch_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    #@1f
    .line 216
    .local v0, "estimatedBytePerPixel":D
    :goto_0
    mul-int v2, p0, p1

    #@21
    int-to-double v2, v2

    #@22
    mul-double/2addr v2, v0

    #@23
    int-to-double v4, p3

    #@24
    mul-double/2addr v2, v4

    #@25
    double-to-int v2, v2

    #@26
    return v2

    #@27
    .line 185
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@29
    .line 186
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@2a
    .line 188
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    #@2c
    .line 189
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@2d
    .line 194
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    #@2f
    .line 195
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@30
    .line 202
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@32
    .line 203
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@33
    .line 205
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    #@35
    .line 206
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@36
    .line 209
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    #@38
    .line 210
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@39
    .line 178
    nop

    #@3a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x14 -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x25 -> :sswitch_2
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_4
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 5
    .param p0, "format"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 44
    sparse-switch p0, :sswitch_data_0

    #@5
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    .line 66
    const-string/jumbo v1, "Invalid format specified %d"

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 48
    :sswitch_0
    const/4 v0, 0x3

    #@1b
    return v0

    #@1c
    .line 50
    :sswitch_1
    const/4 v0, 0x2

    #@1d
    return v0

    #@1e
    .line 61
    :sswitch_2
    return v2

    #@1f
    .line 63
    :sswitch_3
    return v4

    #@20
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 21
    .param p0, "src"    # Landroid/media/Image;
    .param p1, "dst"    # Landroid/media/Image;

    #@0
    .prologue
    .line 88
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 89
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v19, "Images should be non-null"

    #@9
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v18

    #@d
    .line 91
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    #@10
    move-result v18

    #@11
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    #@14
    move-result v19

    #@15
    move/from16 v0, v18

    #@17
    move/from16 v1, v19

    #@19
    if-eq v0, v1, :cond_2

    #@1b
    .line 92
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v19, "Src and dst images should have the same format"

    #@20
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v18

    #@24
    .line 94
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    #@27
    move-result v18

    #@28
    const/16 v19, 0x22

    #@2a
    move/from16 v0, v18

    #@2c
    move/from16 v1, v19

    #@2e
    if-eq v0, v1, :cond_3

    #@30
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    #@33
    move-result v18

    #@34
    const/16 v19, 0x22

    #@36
    move/from16 v0, v18

    #@38
    move/from16 v1, v19

    #@3a
    if-ne v0, v1, :cond_4

    #@3c
    .line 96
    :cond_3
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v19, "PRIVATE format images are not copyable"

    #@41
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v18

    #@45
    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    #@48
    move-result-object v18

    #@49
    move-object/from16 v0, v18

    #@4b
    instance-of v0, v0, Landroid/media/ImageWriter;

    #@4d
    move/from16 v18, v0

    #@4f
    if-nez v18, :cond_5

    #@51
    .line 99
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v19, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    #@56
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v18

    #@5a
    .line 102
    :cond_5
    new-instance v17, Landroid/util/Size;

    #@5c
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    #@5f
    move-result v18

    #@60
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    #@63
    move-result v19

    #@64
    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    #@67
    .line 103
    .local v17, "srcSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    #@69
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    #@6c
    move-result v18

    #@6d
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    #@70
    move-result v19

    #@71
    move/from16 v0, v18

    #@73
    move/from16 v1, v19

    #@75
    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    #@78
    .line 104
    .local v6, "dstSize":Landroid/util/Size;
    move-object/from16 v0, v17

    #@7a
    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v18

    #@7e
    if-nez v18, :cond_6

    #@80
    .line 105
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@82
    new-instance v19, Ljava/lang/StringBuilder;

    #@84
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v20, "source image size "

    #@8a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v19

    #@8e
    move-object/from16 v0, v19

    #@90
    move-object/from16 v1, v17

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v19

    #@96
    const-string/jumbo v20, " is different"

    #@99
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v19

    #@9d
    .line 106
    const-string/jumbo v20, " with "

    #@a0
    .line 105
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v19

    #@a4
    .line 106
    const-string/jumbo v20, "destination image size "

    #@a7
    .line 105
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v19

    #@ab
    move-object/from16 v0, v19

    #@ad
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v19

    #@b1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v19

    #@b5
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v18

    #@b9
    .line 109
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@bc
    move-result-object v14

    #@bd
    .line 110
    .local v14, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@c0
    move-result-object v4

    #@c1
    .line 111
    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    #@c2
    .line 112
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    #@c3
    .line 113
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    #@c4
    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "srcBuffer":Ljava/nio/ByteBuffer;
    .local v8, "i":I
    :goto_0
    array-length v0, v14

    #@c5
    move/from16 v18, v0

    #@c7
    move/from16 v0, v18

    #@c9
    if-ge v8, v0, :cond_d

    #@cb
    .line 114
    aget-object v18, v14, v8

    #@cd
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    #@d0
    move-result v16

    #@d1
    .line 115
    .local v16, "srcRowStride":I
    aget-object v18, v4, v8

    #@d3
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    #@d6
    move-result v5

    #@d7
    .line 116
    .local v5, "dstRowStride":I
    aget-object v18, v14, v8

    #@d9
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@dc
    move-result-object v11

    #@dd
    .line 117
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    aget-object v18, v4, v8

    #@df
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@e2
    move-result-object v2

    #@e3
    .line 118
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@e6
    move-result v18

    #@e7
    if-eqz v18, :cond_7

    #@e9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@ec
    move-result v18

    #@ed
    :goto_1
    if-nez v18, :cond_8

    #@ef
    .line 119
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@f1
    const-string/jumbo v19, "Source and destination ByteBuffers must be direct byteBuffer!"

    #@f4
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v18

    #@f8
    .line 118
    :cond_7
    const/16 v18, 0x0

    #@fa
    goto :goto_1

    #@fb
    .line 122
    :cond_8
    aget-object v18, v14, v8

    #@fd
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getPixelStride()I

    #@100
    move-result v18

    #@101
    aget-object v19, v4, v8

    #@103
    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    #@106
    move-result v19

    #@107
    move/from16 v0, v18

    #@109
    move/from16 v1, v19

    #@10b
    if-eq v0, v1, :cond_9

    #@10d
    .line 123
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@10f
    new-instance v19, Ljava/lang/StringBuilder;

    #@111
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v20, "Source plane image pixel stride "

    #@117
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v19

    #@11b
    .line 124
    aget-object v20, v14, v8

    #@11d
    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    #@120
    move-result v20

    #@121
    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@124
    move-result-object v19

    #@125
    .line 125
    const-string/jumbo v20, " must be same as destination image pixel stride "

    #@128
    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v19

    #@12c
    .line 126
    aget-object v20, v4, v8

    #@12e
    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    #@131
    move-result v20

    #@132
    .line 123
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v19

    #@136
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v19

    #@13a
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13d
    throw v18

    #@13e
    .line 129
    :cond_9
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    #@141
    move-result v15

    #@142
    .line 130
    .local v15, "srcPos":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@145
    .line 131
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@148
    .line 132
    move/from16 v0, v16

    #@14a
    if-ne v0, v5, :cond_b

    #@14c
    .line 134
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@14f
    .line 158
    :cond_a
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@152
    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@155
    .line 113
    add-int/lit8 v8, v8, 0x1

    #@157
    goto/16 :goto_0

    #@159
    .line 138
    :cond_b
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    #@15c
    move-result v13

    #@15d
    .line 139
    .local v13, "srcOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@160
    move-result v3

    #@161
    .line 140
    .local v3, "dstOffset":I
    move-object/from16 v0, p0

    #@163
    invoke-static {v0, v8}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    #@166
    move-result-object v7

    #@167
    .line 141
    .local v7, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    #@16a
    move-result v18

    #@16b
    aget-object v19, v14, v8

    #@16d
    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    #@170
    move-result v19

    #@171
    mul-int v12, v18, v19

    #@173
    .line 142
    .local v12, "srcByteCount":I
    const/4 v10, 0x0

    #@174
    .local v10, "row":I
    :goto_2
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    #@177
    move-result v18

    #@178
    move/from16 v0, v18

    #@17a
    if-ge v10, v0, :cond_a

    #@17c
    .line 143
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    #@17f
    move-result v18

    #@180
    add-int/lit8 v18, v18, -0x1

    #@182
    move/from16 v0, v18

    #@184
    if-ne v10, v0, :cond_c

    #@186
    .line 147
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    #@189
    move-result v18

    #@18a
    sub-int v9, v18, v13

    #@18c
    .line 148
    .local v9, "remainingBytes":I
    if-le v12, v9, :cond_c

    #@18e
    .line 149
    move v12, v9

    #@18f
    .line 152
    .end local v9    # "remainingBytes":I
    :cond_c
    invoke-static {v11, v13, v2, v3, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    #@192
    .line 153
    add-int v13, v13, v16

    #@194
    .line 154
    add-int/2addr v3, v5

    #@195
    .line 142
    add-int/lit8 v10, v10, 0x1

    #@197
    goto :goto_2

    #@198
    .line 87
    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "dstOffset":I
    .end local v5    # "dstRowStride":I
    .end local v7    # "effectivePlaneSize":Landroid/util/Size;
    .end local v10    # "row":I
    .end local v11    # "srcBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "srcByteCount":I
    .end local v13    # "srcOffset":I
    .end local v15    # "srcPos":I
    .end local v16    # "srcRowStride":I
    :cond_d
    return-void
.end method
