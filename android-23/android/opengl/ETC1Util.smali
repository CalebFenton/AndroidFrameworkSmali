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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 7
    .param p0, "input"    # Ljava/nio/Buffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelSize"    # I
    .param p4, "stride"    # I

    #@0
    .prologue
    .line 193
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    #@3
    move-result v6

    #@4
    .line 194
    .local v6, "encodedImageSize":I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    .line 195
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@b
    move-result-object v1

    #@c
    .line 194
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v5

    #@10
    .local v5, "compressedImage":Ljava/nio/ByteBuffer;
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    move v3, p3

    #@14
    move v4, p4

    #@15
    .line 196
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    #@18
    .line 197
    new-instance v0, Landroid/opengl/ETC1Util$ETC1Texture;

    #@1a
    invoke-direct {v0, p1, p2, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    #@1d
    return-object v0
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 12
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x10

    #@2
    const/4 v10, 0x0

    #@3
    .line 153
    const/4 v7, 0x0

    #@4
    .line 154
    .local v7, "width":I
    const/4 v4, 0x0

    #@5
    .line 155
    .local v4, "height":I
    const/16 v8, 0x1000

    #@7
    new-array v6, v8, [B

    #@9
    .line 157
    .local v6, "ioBuffer":[B
    invoke-virtual {p0, v6, v10, v11}, Ljava/io/InputStream;->read([BII)I

    #@c
    move-result v8

    #@d
    if-eq v8, v11, :cond_0

    #@f
    .line 158
    new-instance v8, Ljava/io/IOException;

    #@11
    const-string/jumbo v9, "Unable to read PKM file header."

    #@14
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v8

    #@18
    .line 160
    :cond_0
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@1b
    move-result-object v8

    #@1c
    .line 161
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@1f
    move-result-object v9

    #@20
    .line 160
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@23
    move-result-object v3

    #@24
    .line 162
    .local v3, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v6, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@2b
    .line 163
    invoke-static {v3}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    #@2e
    move-result v8

    #@2f
    if-nez v8, :cond_1

    #@31
    .line 164
    new-instance v8, Ljava/io/IOException;

    #@33
    const-string/jumbo v9, "Not a PKM file."

    #@36
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@39
    throw v8

    #@3a
    .line 166
    :cond_1
    invoke-static {v3}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    #@3d
    move-result v7

    #@3e
    .line 167
    invoke-static {v3}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    #@41
    move-result v4

    #@42
    .line 169
    invoke-static {v7, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    #@45
    move-result v2

    #@46
    .line 170
    .local v2, "encodedSize":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@49
    move-result-object v8

    #@4a
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@51
    move-result-object v1

    #@52
    .line 171
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    #@53
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    #@55
    .line 172
    array-length v8, v6

    #@56
    sub-int v9, v2, v5

    #@58
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@5b
    move-result v0

    #@5c
    .line 173
    .local v0, "chunkSize":I
    invoke-virtual {p0, v6, v10, v0}, Ljava/io/InputStream;->read([BII)I

    #@5f
    move-result v8

    #@60
    if-eq v8, v0, :cond_2

    #@62
    .line 174
    new-instance v8, Ljava/io/IOException;

    #@64
    const-string/jumbo v9, "Unable to read PKM file data."

    #@67
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v8

    #@6b
    .line 176
    :cond_2
    invoke-virtual {v1, v6, v10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@6e
    .line 177
    add-int/2addr v5, v0

    #@6f
    goto :goto_0

    #@70
    .line 179
    .end local v0    # "chunkSize":I
    :cond_3
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@73
    .line 180
    new-instance v8, Landroid/opengl/ETC1Util$ETC1Texture;

    #@75
    invoke-direct {v8, v7, v4, v1}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    #@78
    return-object v8
.end method

.method public static isETC1Supported()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 98
    const/16 v3, 0x14

    #@3
    new-array v2, v3, [I

    #@5
    .line 99
    .local v2, "results":[I
    const v3, 0x86a2

    #@8
    invoke-static {v3, v2, v5}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    #@b
    .line 100
    aget v1, v2, v5

    #@d
    .line 101
    .local v1, "numFormats":I
    array-length v3, v2

    #@e
    if-le v1, v3, :cond_0

    #@10
    .line 102
    new-array v2, v1, [I

    #@12
    .line 104
    :cond_0
    const v3, 0x86a3

    #@15
    invoke-static {v3, v2, v5}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    #@18
    .line 105
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 106
    aget v3, v2, v0

    #@1d
    const v4, 0x8d64

    #@20
    if-ne v3, v4, :cond_1

    #@22
    .line 107
    const/4 v3, 0x1

    #@23
    return v3

    #@24
    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 110
    :cond_2
    return v5
.end method

.method public static loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .locals 24
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "border"    # I
    .param p3, "fallbackFormat"    # I
    .param p4, "fallbackType"    # I
    .param p5, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;

    #@0
    .prologue
    .line 66
    const/16 v1, 0x1907

    #@2
    move/from16 v0, p3

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "fallbackFormat must be GL_RGB"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 69
    :cond_0
    const v1, 0x8363

    #@12
    move/from16 v0, p4

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 70
    const/16 v1, 0x1401

    #@18
    move/from16 v0, p4

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v2, "Unsupported fallbackType"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 74
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    #@28
    move-result v4

    #@29
    .line 75
    .local v4, "width":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    #@2c
    move-result v5

    #@2d
    .line 76
    .local v5, "height":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    #@30
    move-result-object v8

    #@31
    .line 77
    .local v8, "data":Ljava/nio/Buffer;
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2

    #@37
    .line 78
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    #@3a
    move-result v7

    #@3b
    .line 79
    .local v7, "imageSize":I
    const v3, 0x8d64

    #@3e
    move/from16 v1, p0

    #@40
    move/from16 v2, p1

    #@42
    move/from16 v6, p2

    #@44
    invoke-static/range {v1 .. v8}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    #@47
    .line 65
    .end local v7    # "imageSize":I
    :goto_0
    return-void

    #@48
    .line 82
    :cond_2
    const/16 v1, 0x1401

    #@4a
    move/from16 v0, p4

    #@4c
    if-eq v0, v1, :cond_3

    #@4e
    const/16 v23, 0x1

    #@50
    .line 83
    .local v23, "useShorts":Z
    :goto_1
    if-eqz v23, :cond_4

    #@52
    const/4 v12, 0x2

    #@53
    .line 84
    .local v12, "pixelSize":I
    :goto_2
    mul-int v13, v12, v4

    #@55
    .line 85
    .local v13, "stride":I
    mul-int v1, v13, v5

    #@57
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@5a
    move-result-object v1

    #@5b
    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@5e
    move-result-object v2

    #@5f
    .line 85
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@62
    move-result-object v9

    #@63
    .local v9, "decodedData":Ljava/nio/ByteBuffer;
    move v10, v4

    #@64
    move v11, v5

    #@65
    .line 87
    invoke-static/range {v8 .. v13}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    #@68
    move/from16 v14, p0

    #@6a
    move/from16 v15, p1

    #@6c
    move/from16 v16, p3

    #@6e
    move/from16 v17, v4

    #@70
    move/from16 v18, v5

    #@72
    move/from16 v19, p2

    #@74
    move/from16 v20, p3

    #@76
    move/from16 v21, p4

    #@78
    move-object/from16 v22, v9

    #@7a
    .line 88
    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    #@7d
    goto :goto_0

    #@7e
    .line 82
    .end local v9    # "decodedData":Ljava/nio/ByteBuffer;
    .end local v12    # "pixelSize":I
    .end local v13    # "stride":I
    .end local v23    # "useShorts":Z
    :cond_3
    const/16 v23, 0x0

    #@80
    .restart local v23    # "useShorts":Z
    goto :goto_1

    #@81
    .line 83
    :cond_4
    const/4 v12, 0x3

    #@82
    .restart local v12    # "pixelSize":I
    goto :goto_2
.end method

.method public static loadTexture(IIIIILjava/io/InputStream;)V
    .locals 6
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

    #@0
    .prologue
    .line 48
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    #@3
    move-result-object v5

    #@4
    move v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    #@c
    .line 47
    return-void
.end method

.method public static writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .locals 11
    .param p0, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    .line 208
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v7

    #@8
    .line 210
    .local v7, "originalPosition":I
    :try_start_0
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    #@b
    move-result v8

    #@c
    .line 211
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    #@f
    move-result v4

    #@10
    .line 212
    .local v4, "height":I
    const/16 v9, 0x10

    #@12
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@15
    move-result-object v9

    #@16
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v3

    #@1e
    .line 213
    .local v3, "header":Ljava/nio/ByteBuffer;
    invoke-static {v3, v8, v4}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    #@21
    .line 214
    const/16 v9, 0x1000

    #@23
    new-array v6, v9, [B

    #@25
    .line 215
    .local v6, "ioBuffer":[B
    const/4 v9, 0x0

    #@26
    const/16 v10, 0x10

    #@28
    invoke-virtual {v3, v6, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@2b
    .line 216
    const/4 v9, 0x0

    #@2c
    const/16 v10, 0x10

    #@2e
    invoke-virtual {p1, v6, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    #@31
    .line 217
    invoke-static {v8, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    #@34
    move-result v2

    #@35
    .line 218
    .local v2, "encodedSize":I
    const/4 v5, 0x0

    #@36
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    #@38
    .line 219
    array-length v9, v6

    #@39
    sub-int v10, v2, v5

    #@3b
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@3e
    move-result v0

    #@3f
    .line 220
    .local v0, "chunkSize":I
    const/4 v9, 0x0

    #@40
    invoke-virtual {v1, v6, v9, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@43
    .line 221
    const/4 v9, 0x0

    #@44
    invoke-virtual {p1, v6, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 222
    add-int/2addr v5, v0

    #@48
    goto :goto_0

    #@49
    .line 225
    .end local v0    # "chunkSize":I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4c
    .line 206
    return-void

    #@4d
    .line 224
    .end local v2    # "encodedSize":I
    .end local v3    # "header":Ljava/nio/ByteBuffer;
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v6    # "ioBuffer":[B
    .end local v8    # "width":I
    :catchall_0
    move-exception v9

    #@4e
    .line 225
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@51
    .line 224
    throw v9
.end method
