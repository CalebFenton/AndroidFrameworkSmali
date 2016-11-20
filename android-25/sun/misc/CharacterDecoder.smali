.class public abstract Lsun/misc/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    new-instance v0, Lsun/misc/CEStreamExhausted;

    #@2
    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    #@5
    throw v0
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "aStream"    # Ljava/io/InputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v4, 0x0

    #@1
    .line 155
    .local v4, "totalBytes":I
    new-instance v3, Ljava/io/PushbackInputStream;

    #@3
    invoke-direct {v3, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    #@6
    .line 156
    .local v3, "ps":Ljava/io/PushbackInputStream;
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    #@9
    .line 161
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    #@c
    move-result v2

    #@d
    .line 162
    .local v2, "length":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@11
    move-result v5

    #@12
    add-int/2addr v5, v1

    #@13
    if-ge v5, v2, :cond_0

    #@15
    .line 163
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@18
    move-result v5

    #@19
    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    #@1c
    .line 164
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@1f
    move-result v5

    #@20
    add-int/2addr v4, v5

    #@21
    .line 162
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@24
    move-result v5

    #@25
    add-int/2addr v1, v5

    #@26
    goto :goto_1

    #@27
    .line 166
    :cond_0
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@2a
    move-result v5

    #@2b
    add-int/2addr v5, v1

    #@2c
    if-ne v5, v2, :cond_1

    #@2e
    .line 167
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@31
    move-result v5

    #@32
    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    #@35
    .line 168
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    #@38
    move-result v5

    #@39
    add-int/2addr v4, v5

    #@3a
    .line 173
    :goto_2
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lsun/misc/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_0

    #@3e
    .line 174
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    #@3f
    .line 178
    .local v0, "e":Lsun/misc/CEStreamExhausted;
    invoke-virtual {p0, v3, p2}, Lsun/misc/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    #@42
    .line 151
    return-void

    #@43
    .line 170
    .end local v0    # "e":Lsun/misc/CEStreamExhausted;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    sub-int v5, v2, v1

    #@45
    :try_start_1
    invoke-virtual {p0, v3, p2, v5}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Lsun/misc/CEStreamExhausted; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    .line 171
    sub-int v5, v2, v1

    #@4a
    add-int/2addr v4, v5

    #@4b
    goto :goto_2
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 203
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@8
    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 5
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    new-array v1, v3, [B

    #@7
    .line 191
    .local v1, "inputBuffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    invoke-virtual {p1, v4, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    #@e
    .line 192
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@13
    .line 193
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@15
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@18
    .line 194
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, v2}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@1b
    .line 195
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e
    move-result-object v3

    #@1f
    return-object v3
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    return-void
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    return-void
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerLine()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 135
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    #@4
    .line 136
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@7
    move-result v1

    #@8
    .line 137
    .local v1, "q":I
    if-ne v1, v2, :cond_1

    #@a
    .line 138
    if-nez v0, :cond_0

    #@c
    move v0, v2

    #@d
    .end local v0    # "i":I
    :cond_0
    return v0

    #@e
    .line 139
    .restart local v0    # "i":I
    :cond_1
    add-int v3, v0, p3

    #@10
    int-to-byte v4, v1

    #@11
    aput-byte v4, p2, v3

    #@13
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 141
    .end local v1    # "q":I
    :cond_2
    return p4
.end method
