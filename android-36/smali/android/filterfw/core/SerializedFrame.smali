.class public Landroid/filterfw/core/SerializedFrame;
.super Landroid/filterfw/core/Frame;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;,
        Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_CAPACITY:I = 0x40


# instance fields
.field private greylist-max-o mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

.field private greylist-max-o mObjectOut:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 6
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setReusable(Z)V

    .line 171
    :try_start_7
    new-instance v0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;-><init>(Landroid/filterfw/core/SerializedFrame;I)V

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    .line 172
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    .line 173
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->markHeaderEnd()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_20

    .line 177
    nop

    .line 178
    return-void

    .line 174
    :catch_20
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create serialization streams for SerializedFrame!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o deserializeObjectValue()Ljava/lang/Object;
    .registers 6

    .line 268
    const-string v0, "!"

    :try_start_2
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    move-result-object v1

    .line 269
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 270
    .local v2, "objectStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_11} :catch_12

    return-object v0

    .line 273
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to deserialize object of unknown class in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_30
    move-exception v1

    .line 272
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not deserialize object in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final greylist-max-o serializeObjectValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->reset()V

    .line 257
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 259
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    .line 263
    nop

    .line 264
    return-void

    .line 260
    :catch_16
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not serialize object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static greylist-max-o wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SerializedFrame;
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 181
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 182
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 183
    .local v1, "result":Landroid/filterfw/core/SerializedFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SerializedFrame;->setObjectValue(Ljava/lang/Object;)V

    .line 184
    return-object v1
.end method


# virtual methods
.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 245
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 233
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public greylist-max-o getFloats()[F
    .registers 3

    .line 221
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [F

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, [F

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public greylist-max-o getInts()[I
    .registers 3

    .line 209
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [I

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, [I

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .registers 2

    .line 198
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o hasNativeAllocation()Z
    .registers 2

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o releaseNativeAllocation()V
    .registers 1

    .line 194
    return-void
.end method

.method public greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 240
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 227
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public greylist-max-o setFloats([F)V
    .registers 2
    .param p1, "floats"    # [F

    .line 215
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 216
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method protected greylist-max-o setGenericObjectValue(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 251
    invoke-direct {p0, p1}, Landroid/filterfw/core/SerializedFrame;->serializeObjectValue(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public greylist-max-o setInts([I)V
    .registers 2
    .param p1, "ints"    # [I

    .line 203
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
