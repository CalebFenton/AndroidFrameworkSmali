.class public abstract Lsun/misc/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist bytesPerAtom()I
.end method

.method protected abstract blacklist bytesPerLine()I
.end method

.method protected blacklist decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Lsun/misc/CEStreamExhausted;

    invoke-direct {v0}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method public blacklist decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "aStream"    # Ljava/io/InputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "totalBytes":I
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v1, "ps":Ljava/io/PushbackInputStream;
    invoke-virtual {p0, v1, p2}, Lsun/misc/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 161
    :goto_9
    :try_start_9
    invoke-virtual {p0, v1, p2}, Lsun/misc/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v2

    .line 162
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v4, v2, :cond_27

    .line 163
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    invoke-virtual {p0, v1, p2, v4}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 164
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v0, v4

    .line 162
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_e

    .line 166
    :cond_27
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v4, v3

    if-ne v4, v2, :cond_3b

    .line 167
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    invoke-virtual {p0, v1, p2, v4}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 168
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerAtom()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_43

    .line 170
    :cond_3b
    sub-int v4, v2, v3

    invoke-virtual {p0, v1, p2, v4}, Lsun/misc/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 171
    sub-int v4, v2, v3

    add-int/2addr v0, v4

    .line 173
    :goto_43
    invoke-virtual {p0, v1, p2}, Lsun/misc/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_46
    .catch Lsun/misc/CEStreamExhausted; {:try_start_9 .. :try_end_46} :catch_47

    .line 176
    goto :goto_9

    .line 174
    .end local v2    # "length":I
    .end local v3    # "i":I
    :catch_47
    move-exception v2

    .line 175
    .local v2, "e":Lsun/misc/CEStreamExhausted;
    nop

    .line 178
    .end local v2    # "e":Lsun/misc/CEStreamExhausted;
    invoke-virtual {p0, v1, p2}, Lsun/misc/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 179
    return-void
.end method

.method public blacklist decodeBuffer(Ljava/io/InputStream;)[B
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public greylist decodeBuffer(Ljava/lang/String;)[B
    .registers 6
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 191
    .local v0, "inputBuffer":[B
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0, v1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 192
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 195
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method protected blacklist decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method protected blacklist decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .registers 4
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lsun/misc/CharacterDecoder;->bytesPerLine()I

    move-result v0

    return v0
.end method

.method protected blacklist decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/PushbackInputStream;
    .param p2, "bStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method protected blacklist readFully(Ljava/io/InputStream;[BII)I
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_17

    .line 136
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 137
    .local v1, "q":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 138
    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    move v2, v0

    :goto_e
    return v2

    .line 139
    :cond_f
    add-int v2, v0, p3

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 135
    .end local v1    # "q":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_17
    return p4
.end method
