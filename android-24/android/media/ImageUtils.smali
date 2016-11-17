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
    .line 267
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
    .line 266
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
    .line 230
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    #@4
    move-result v0

    #@5
    sparse-switch v0, :sswitch_data_0

    #@8
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    .line 261
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
    .line 260
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 234
    :sswitch_0
    if-nez p1, :cond_0

    #@24
    .line 235
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
    .line 237
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
    .line 240
    :sswitch_1
    if-nez p1, :cond_1

    #@46
    .line 241
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
    .line 243
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
    .line 256
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
    .line 258
    :sswitch_3
    new-instance v0, Landroid/util/Size;

    #@74
    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    #@77
    return-object v0

    #@78
    .line 230
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
        0x26 -> :sswitch_2
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
    .line 186
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 222
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@5
    .line 223
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
    .line 222
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 190
    :sswitch_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    #@1f
    .line 226
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
    .line 193
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@29
    .line 194
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@2a
    .line 196
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    #@2c
    .line 197
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@2d
    .line 203
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    #@2f
    .line 204
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@30
    .line 212
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@32
    .line 213
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@33
    .line 215
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    #@35
    .line 216
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@36
    .line 219
    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    #@38
    .line 220
    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    #@39
    .line 186
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
        0x24 -> :sswitch_4
        0x25 -> :sswitch_2
        0x26 -> :sswitch_3
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
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    .line 70
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
    .line 69
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
    .line 65
    :sswitch_2
    return v2

    #@1f
    .line 67
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
        0x24 -> :sswitch_2
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x100 -> :sswitch_2
        0x101 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_2
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 21
    .param p0, "src"    # Landroid/media/Image;
    .param p1, "dst"    # Landroid/media/Image;

    #@0
    .prologue
    .line 92
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 93
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v19, "Images should be non-null"

    #@9
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v18

    #@d
    .line 95
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
    .line 96
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v19, "Src and dst images should have the same format"

    #@20
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v18

    #@24
    .line 98
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
    .line 99
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
    .line 100
    :cond_3
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v19, "PRIVATE format images are not copyable"

    #@41
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v18

    #@45
    .line 102
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    #@48
    move-result v18

    #@49
    const/16 v19, 0x24

    #@4b
    move/from16 v0, v18

    #@4d
    move/from16 v1, v19

    #@4f
    if-ne v0, v1, :cond_5

    #@51
    .line 103
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@53
    .line 104
    const-string/jumbo v19, "Copy of RAW_OPAQUE format has not been implemented"

    #@56
    .line 103
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v18

    #@5a
    .line 106
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    #@5d
    move-result-object v18

    #@5e
    move-object/from16 v0, v18

    #@60
    instance-of v0, v0, Landroid/media/ImageWriter;

    #@62
    move/from16 v18, v0

    #@64
    if-nez v18, :cond_6

    #@66
    .line 107
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v19, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    #@6b
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v18

    #@6f
    .line 110
    :cond_6
    new-instance v17, Landroid/util/Size;

    #@71
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    #@74
    move-result v18

    #@75
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    #@78
    move-result v19

    #@79
    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    #@7c
    .line 111
    .local v17, "srcSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    #@7e
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    #@81
    move-result v18

    #@82
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    #@85
    move-result v19

    #@86
    move/from16 v0, v18

    #@88
    move/from16 v1, v19

    #@8a
    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    #@8d
    .line 112
    .local v6, "dstSize":Landroid/util/Size;
    move-object/from16 v0, v17

    #@8f
    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v18

    #@93
    if-nez v18, :cond_7

    #@95
    .line 113
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@97
    new-instance v19, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v20, "source image size "

    #@9f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v19

    #@a3
    move-object/from16 v0, v19

    #@a5
    move-object/from16 v1, v17

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v19

    #@ab
    const-string/jumbo v20, " is different"

    #@ae
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v19

    #@b2
    .line 114
    const-string/jumbo v20, " with "

    #@b5
    .line 113
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v19

    #@b9
    .line 114
    const-string/jumbo v20, "destination image size "

    #@bc
    .line 113
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v19

    #@c0
    move-object/from16 v0, v19

    #@c2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v19

    #@c6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v19

    #@ca
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v18

    #@ce
    .line 117
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@d1
    move-result-object v14

    #@d2
    .line 118
    .local v14, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    #@d5
    move-result-object v4

    #@d6
    .line 119
    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    #@d7
    .line 120
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    #@d8
    .line 121
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    #@d9
    .end local v2    # "dstBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "srcBuffer":Ljava/nio/ByteBuffer;
    .local v8, "i":I
    :goto_0
    array-length v0, v14

    #@da
    move/from16 v18, v0

    #@dc
    move/from16 v0, v18

    #@de
    if-ge v8, v0, :cond_e

    #@e0
    .line 122
    aget-object v18, v14, v8

    #@e2
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    #@e5
    move-result v16

    #@e6
    .line 123
    .local v16, "srcRowStride":I
    aget-object v18, v4, v8

    #@e8
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    #@eb
    move-result v5

    #@ec
    .line 124
    .local v5, "dstRowStride":I
    aget-object v18, v14, v8

    #@ee
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@f1
    move-result-object v11

    #@f2
    .line 125
    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    aget-object v18, v4, v8

    #@f4
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    #@f7
    move-result-object v2

    #@f8
    .line 126
    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@fb
    move-result v18

    #@fc
    if-eqz v18, :cond_8

    #@fe
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@101
    move-result v18

    #@102
    :goto_1
    if-nez v18, :cond_9

    #@104
    .line 127
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@106
    const-string/jumbo v19, "Source and destination ByteBuffers must be direct byteBuffer!"

    #@109
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10c
    throw v18

    #@10d
    .line 126
    :cond_8
    const/16 v18, 0x0

    #@10f
    goto :goto_1

    #@110
    .line 130
    :cond_9
    aget-object v18, v14, v8

    #@112
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getPixelStride()I

    #@115
    move-result v18

    #@116
    aget-object v19, v4, v8

    #@118
    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    #@11b
    move-result v19

    #@11c
    move/from16 v0, v18

    #@11e
    move/from16 v1, v19

    #@120
    if-eq v0, v1, :cond_a

    #@122
    .line 131
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@124
    new-instance v19, Ljava/lang/StringBuilder;

    #@126
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v20, "Source plane image pixel stride "

    #@12c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v19

    #@130
    .line 132
    aget-object v20, v14, v8

    #@132
    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    #@135
    move-result v20

    #@136
    .line 131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@139
    move-result-object v19

    #@13a
    .line 133
    const-string/jumbo v20, " must be same as destination image pixel stride "

    #@13d
    .line 131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v19

    #@141
    .line 134
    aget-object v20, v4, v8

    #@143
    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    #@146
    move-result v20

    #@147
    .line 131
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v19

    #@14b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v19

    #@14f
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@152
    throw v18

    #@153
    .line 137
    :cond_a
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    #@156
    move-result v15

    #@157
    .line 138
    .local v15, "srcPos":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@15a
    .line 139
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@15d
    .line 140
    move/from16 v0, v16

    #@15f
    if-ne v0, v5, :cond_c

    #@161
    .line 142
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@164
    .line 166
    :cond_b
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@167
    .line 167
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@16a
    .line 121
    add-int/lit8 v8, v8, 0x1

    #@16c
    goto/16 :goto_0

    #@16e
    .line 146
    :cond_c
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    #@171
    move-result v13

    #@172
    .line 147
    .local v13, "srcOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@175
    move-result v3

    #@176
    .line 148
    .local v3, "dstOffset":I
    move-object/from16 v0, p0

    #@178
    invoke-static {v0, v8}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    #@17b
    move-result-object v7

    #@17c
    .line 149
    .local v7, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    #@17f
    move-result v18

    #@180
    aget-object v19, v14, v8

    #@182
    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    #@185
    move-result v19

    #@186
    mul-int v12, v18, v19

    #@188
    .line 150
    .local v12, "srcByteCount":I
    const/4 v10, 0x0

    #@189
    .local v10, "row":I
    :goto_2
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    #@18c
    move-result v18

    #@18d
    move/from16 v0, v18

    #@18f
    if-ge v10, v0, :cond_b

    #@191
    .line 151
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    #@194
    move-result v18

    #@195
    add-int/lit8 v18, v18, -0x1

    #@197
    move/from16 v0, v18

    #@199
    if-ne v10, v0, :cond_d

    #@19b
    .line 155
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    #@19e
    move-result v18

    #@19f
    sub-int v9, v18, v13

    #@1a1
    .line 156
    .local v9, "remainingBytes":I
    if-le v12, v9, :cond_d

    #@1a3
    .line 157
    move v12, v9

    #@1a4
    .line 160
    .end local v9    # "remainingBytes":I
    :cond_d
    invoke-static {v11, v13, v2, v3, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    #@1a7
    .line 161
    add-int v13, v13, v16

    #@1a9
    .line 162
    add-int/2addr v3, v5

    #@1aa
    .line 150
    add-int/lit8 v10, v10, 0x1

    #@1ac
    goto :goto_2

    #@1ad
    .line 91
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
    :cond_e
    return-void
.end method
