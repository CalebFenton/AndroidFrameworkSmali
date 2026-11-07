.class public abstract Lsun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected greylist pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getBytes(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 215
    const/4 v0, 0x0

    .line 221
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 223
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_21

    array-length v2, v1

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 225
    move-object v0, v1

    .line 226
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    .end local v1    # "tmp":[B
    :cond_21
    if-nez v0, :cond_2c

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 241
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 244
    :cond_2c
    return-object v0
.end method


# virtual methods
.method protected abstract blacklist bytesPerAtom()I
.end method

.method protected abstract blacklist bytesPerLine()I
.end method

.method public blacklist encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .line 266
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 267
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist encode([B)Ljava/lang/String;
    .registers 8
    .param p1, "aBuffer"    # [B

    .line 187
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 191
    .local v2, "retVal":Ljava/lang/String;
    :try_start_b
    invoke-virtual {p0, v1, v0}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 193
    const-string v3, "8859_1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_16

    .line 197
    .end local v2    # "retVal":Ljava/lang/String;
    .local v3, "retVal":Ljava/lang/String;
    nop

    .line 198
    return-object v3

    .line 194
    .end local v3    # "retVal":Ljava/lang/String;
    .restart local v2    # "retVal":Ljava/lang/String;
    :catch_16
    move-exception v3

    .line 196
    .local v3, "IOException":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "CharacterEncoder.encode internal error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    new-array v0, v0, [B

    .line 147
    .local v0, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 150
    :goto_9
    invoke-virtual {p0, p1, v0}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 151
    .local v1, "numBytes":I
    if-nez v1, :cond_10

    .line 152
    goto :goto_37

    .line 154
    :cond_10
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 155
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    if-ge v2, v1, :cond_30

    .line 157
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_25

    .line 158
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2a

    .line 160
    :cond_25
    sub-int v3, v1, v2

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 155
    :goto_2a
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_14

    .line 163
    :cond_30
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_3b

    .line 164
    nop

    .line 169
    .end local v2    # "j":I
    :goto_37
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 170
    return-void

    .line 166
    .restart local v2    # "j":I
    :cond_3b
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_9
.end method

.method public blacklist encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 256
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 257
    return-void
.end method

.method public blacklist encode([BLjava/io/OutputStream;)V
    .registers 4
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 180
    return-void
.end method

.method protected abstract blacklist encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .line 350
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 351
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist encodeBuffer([B)Ljava/lang/String;
    .registers 7
    .param p1, "aBuffer"    # [B

    .line 320
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 323
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_a
    invoke-virtual {p0, v1, v0}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_13

    .line 327
    nop

    .line 328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 324
    :catch_13
    move-exception v2

    .line 326
    .local v2, "IOException":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v0

    new-array v0, v0, [B

    .line 282
    .local v0, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 285
    :cond_9
    invoke-virtual {p0, p1, v0}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 286
    .local v1, "numBytes":I
    if-nez v1, :cond_10

    .line 287
    goto :goto_3a

    .line 289
    :cond_10
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 290
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    if-ge v2, v1, :cond_30

    .line 291
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_25

    .line 292
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2a

    .line 294
    :cond_25
    sub-int v3, v1, v2

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 290
    :goto_2a
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_14

    .line 297
    :cond_30
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 299
    nop

    .line 302
    .end local v2    # "j":I
    :goto_3a
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 303
    return-void
.end method

.method public blacklist encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 340
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 341
    return-void
.end method

.method public blacklist encodeBuffer([BLjava/io/OutputStream;)V
    .registers 4
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 312
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 313
    return-void
.end method

.method protected greylist encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 93
    return-void
.end method

.method protected blacklist encodeBufferSuffix(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method protected blacklist encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method protected blacklist encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 114
    return-void
.end method

.method protected blacklist readFully(Ljava/io/InputStream;[B)I
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_12

    .line 127
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 128
    .local v1, "q":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 129
    return v0

    .line 130
    :cond_c
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 126
    .end local v1    # "q":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "i":I
    :cond_12
    array-length v0, p2

    return v0
.end method
