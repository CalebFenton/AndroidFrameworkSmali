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
.field private static final INITIAL_CAPACITY:I = 0x40


# instance fields
.field private mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

.field private mObjectOut:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 167
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1}, Landroid/filterfw/core/SerializedFrame;->setReusable(Z)V

    #@7
    .line 171
    :try_start_0
    new-instance v1, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@9
    const/16 v2, 0x40

    #@b
    invoke-direct {v1, p0, v2}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;-><init>(Landroid/filterfw/core/SerializedFrame;I)V

    #@e
    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@10
    .line 172
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@12
    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@14
    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@17
    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    #@19
    .line 173
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@1b
    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->markHeaderEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 165
    return-void

    #@1f
    .line 174
    :catch_0
    move-exception v0

    #@20
    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v2, "Could not create serialization streams for SerializedFrame!"

    #@25
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v1
.end method

.method private final deserializeObjectValue()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 268
    :try_start_0
    iget-object v4, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@2
    invoke-virtual {v4}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    #@5
    move-result-object v2

    #@6
    .line 269
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    #@8
    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@b
    .line 270
    .local v3, "objectStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v4

    #@f
    return-object v4

    #@10
    .line 273
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    #@11
    .line 274
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Unable to deserialize object of unknown class in "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 275
    const-string/jumbo v6, "!"

    #@26
    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v4

    #@32
    .line 271
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    #@33
    .line 272
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Could not deserialize object in "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    const-string/jumbo v6, "!"

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v4
.end method

.method private final serializeObjectValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    #@2
    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->reset()V

    #@5
    .line 257
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    #@7
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@a
    .line 258
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    #@c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    #@f
    .line 259
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    #@11
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 254
    return-void

    #@15
    .line 260
    :catch_0
    move-exception v0

    #@16
    .line 261
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Could not serialize object "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, " in "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 262
    const-string/jumbo v3, "!"

    #@36
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v1
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SerializedFrame;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 181
    const/4 v2, 0x1

    #@1
    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 182
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SerializedFrame;

    #@7
    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@a
    .line 183
    .local v1, "result":Landroid/filterfw/core/SerializedFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SerializedFrame;->setObjectValue(Ljava/lang/Object;)V

    #@d
    .line 184
    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    #@0
    .prologue
    .line 245
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/graphics/Bitmap;

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, Landroid/graphics/Bitmap;

    #@a
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 234
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, Ljava/nio/ByteBuffer;

    #@a
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getFloats()[F
    .locals 2

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 222
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [F

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, [F

    #@a
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getInts()[I
    .locals 2

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 210
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [I

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, [I

    #@a
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected hasNativeAllocation()Z
    .locals 1

    #@0
    .prologue
    .line 189
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected releaseNativeAllocation()V
    .locals 0

    #@0
    .prologue
    .line 193
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    #@3
    .line 240
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 238
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    #@3
    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@e
    .line 226
    return-void
.end method

.method public setFloats([F)V
    .locals 0
    .param p1, "floats"    # [F

    #@0
    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    #@3
    .line 216
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 214
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/filterfw/core/SerializedFrame;->serializeObjectValue(Ljava/lang/Object;)V

    #@3
    .line 250
    return-void
.end method

.method public setInts([I)V
    .locals 0
    .param p1, "ints"    # [I

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    #@3
    .line 204
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@6
    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SerializedFrame ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ")"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
