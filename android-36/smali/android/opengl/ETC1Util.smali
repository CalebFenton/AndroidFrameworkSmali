.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 14
    .param p0, "input"    # Ljava/nio/Buffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelSize"    # I
    .param p4, "stride"    # I

    .line 193
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v0

    .line 194
    .local v0, "encodedImageSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 196
    .local v8, "compressedImage":Ljava/nio/ByteBuffer;
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p0    # "input":Ljava/nio/Buffer;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "pixelSize":I
    .end local p4    # "stride":I
    .local v3, "input":Ljava/nio/Buffer;
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "pixelSize":I
    .local v7, "stride":I
    invoke-static/range {v3 .. v8}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    .line 197
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {p0, v4, v5, v8}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public static whitelist createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 10
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "width":I
    const/4 v1, 0x0

    .line 155
    .local v1, "height":I
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 157
    .local v2, "ioBuffer":[B
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v4, :cond_6e

    .line 160
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 161
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 162
    .local v5, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-static {v5}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 166
    invoke-static {v5}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v0

    .line 167
    invoke-static {v5}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v1

    .line 169
    .end local v5    # "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v4

    .line 170
    .local v4, "encodedSize":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 171
    .local v5, "dataBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_41
    if-ge v6, v4, :cond_5d

    .line 172
    array-length v7, v2

    sub-int v8, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 173
    .local v7, "chunkSize":I
    invoke-virtual {p0, v2, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v7, :cond_55

    .line 176
    invoke-virtual {v5, v2, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 177
    add-int/2addr v6, v7

    .line 178
    .end local v7    # "chunkSize":I
    goto :goto_41

    .line 174
    .restart local v7    # "chunkSize":I
    :cond_55
    new-instance v3, Ljava/io/IOException;

    const-string v8, "Unable to read PKM file data."

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    .end local v6    # "i":I
    .end local v7    # "chunkSize":I
    :cond_5d
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    new-instance v3, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v3, v0, v1, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v3

    .line 164
    .end local v4    # "encodedSize":I
    .local v5, "headerBuffer":Ljava/nio/ByteBuffer;
    :cond_66
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a PKM file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v5    # "headerBuffer":Ljava/nio/ByteBuffer;
    :cond_6e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to read PKM file header."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist isETC1Supported()Z
    .registers 6

    .line 98
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 99
    .local v0, "results":[I
    const v1, 0x86a2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 100
    aget v1, v0, v2

    .line 101
    .local v1, "numFormats":I
    array-length v3, v0

    if-le v1, v3, :cond_12

    .line 102
    new-array v0, v1, [I

    .line 104
    :cond_12
    const v3, 0x86a3

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 106
    aget v4, v0, v3

    const v5, 0x8d64

    if-ne v4, v5, :cond_24

    .line 107
    const/4 v2, 0x1

    return v2

    .line 105
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 110
    .end local v3    # "i":I
    :cond_27
    return v2
.end method

.method public static whitelist loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .registers 22
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "border"    # I
    .param p3, "fallbackFormat"    # I
    .param p4, "fallbackType"    # I
    .param p5, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;

    .line 66
    move/from16 v7, p4

    const/16 v0, 0x1907

    move/from16 v2, p3

    if-ne v2, v0, :cond_72

    .line 69
    const v0, 0x8363

    const/16 v1, 0x1401

    if-eq v7, v0, :cond_1a

    if-ne v7, v1, :cond_12

    goto :goto_1a

    .line 71
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported fallbackType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1a
    :goto_1a
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v10

    .line 75
    .local v10, "width":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v11

    .line 76
    .local v11, "height":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 77
    .local v15, "data":Ljava/nio/Buffer;
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 78
    invoke-virtual {v15}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    .line 79
    .local v14, "imageSize":I
    move v3, v10

    .end local v10    # "width":I
    .local v3, "width":I
    const v10, 0x8d64

    move/from16 v8, p0

    move/from16 v9, p1

    move/from16 v13, p2

    move v12, v11

    move v11, v3

    .end local v3    # "width":I
    .local v11, "width":I
    .local v12, "height":I
    invoke-static/range {v8 .. v15}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 81
    move v11, v12

    .end local v12    # "height":I
    .end local v14    # "imageSize":I
    .restart local v3    # "width":I
    .local v11, "height":I
    goto :goto_71

    .line 82
    .end local v3    # "width":I
    .restart local v10    # "width":I
    :cond_41
    move v3, v10

    .end local v10    # "width":I
    .restart local v3    # "width":I
    if-eq v7, v1, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    move v14, v0

    .line 83
    .local v14, "useShorts":Z
    if-eqz v14, :cond_4c

    const/4 v0, 0x2

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x3

    :goto_4d
    move v12, v0

    .line 84
    .local v12, "pixelSize":I
    mul-int v13, v12, v3

    .line 85
    .local v13, "stride":I
    mul-int v0, v13, v11

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 87
    .local v8, "decodedData":Ljava/nio/ByteBuffer;
    move v10, v3

    move-object v9, v8

    move-object v8, v15

    .end local v3    # "width":I
    .end local v15    # "data":Ljava/nio/Buffer;
    .local v8, "data":Ljava/nio/Buffer;
    .local v9, "decodedData":Ljava/nio/ByteBuffer;
    .restart local v10    # "width":I
    invoke-static/range {v8 .. v13}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    .line 88
    move-object v8, v9

    .end local v9    # "decodedData":Ljava/nio/ByteBuffer;
    .end local v10    # "width":I
    .restart local v3    # "width":I
    .local v8, "decodedData":Ljava/nio/ByteBuffer;
    .restart local v15    # "data":Ljava/nio/Buffer;
    move/from16 v6, p3

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v5, p2

    move v4, v11

    .end local v11    # "height":I
    .local v4, "height":I
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 91
    .end local v4    # "height":I
    .end local v8    # "decodedData":Ljava/nio/ByteBuffer;
    .end local v12    # "pixelSize":I
    .end local v13    # "stride":I
    .end local v14    # "useShorts":Z
    .restart local v11    # "height":I
    :goto_71
    return-void

    .line 67
    .end local v3    # "width":I
    .end local v11    # "height":I
    .end local v15    # "data":Ljava/nio/Buffer;
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fallbackFormat must be GL_RGB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist loadTexture(IIIIILjava/io/InputStream;)V
    .registers 12
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "border"    # I
    .param p3, "fallbackFormat"    # I
    .param p4, "fallbackType"    # I
    .param p5, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "target":I
    .end local p1    # "level":I
    .end local p2    # "border":I
    .end local p3    # "fallbackFormat":I
    .end local p4    # "fallbackType":I
    .local v0, "target":I
    .local v1, "level":I
    .local v2, "border":I
    .local v3, "fallbackFormat":I
    .local v4, "fallbackType":I
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 49
    return-void
.end method

.method public static whitelist writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .registers 13
    .param p0, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 210
    .local v1, "originalPosition":I
    :try_start_8
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v2

    .line 211
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v3

    .line 212
    .local v3, "height":I
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 213
    .local v5, "header":Ljava/nio/ByteBuffer;
    invoke-static {v5, v2, v3}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    .line 214
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 215
    .local v6, "ioBuffer":[B
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p1, v6, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    invoke-static {v2, v3}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v4

    .line 218
    .local v4, "encodedSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_31
    if-ge v8, v4, :cond_42

    .line 219
    array-length v9, v6

    sub-int v10, v4, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 220
    .local v9, "chunkSize":I
    invoke-virtual {v0, v6, v7, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p1, v6, v7, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_47

    .line 222
    add-int/2addr v8, v9

    .line 223
    .end local v9    # "chunkSize":I
    goto :goto_31

    .line 225
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "encodedSize":I
    .end local v5    # "header":Ljava/nio/ByteBuffer;
    .end local v6    # "ioBuffer":[B
    .end local v8    # "i":I
    :cond_42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_47
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    throw v2
.end method
