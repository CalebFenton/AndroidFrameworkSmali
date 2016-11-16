.class public abstract Lsun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    .line 221
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@a
    move-result-object v1

    #@b
    .line 223
    .local v1, "tmp":[B
    array-length v2, v1

    #@c
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    #@f
    move-result v3

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 224
    array-length v2, v1

    #@13
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@16
    move-result v3

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 225
    move-object v0, v1

    #@1a
    .line 226
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 230
    .end local v0    # "buf":[B
    .end local v1    # "tmp":[B
    :cond_0
    if-nez v0, :cond_1

    #@23
    .line 236
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@26
    move-result v2

    #@27
    new-array v0, v2, [B

    #@29
    .line 241
    .restart local v0    # "buf":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@2c
    .line 244
    .end local v0    # "buf":[B
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 266
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    #@3
    move-result-object v0

    #@4
    .line 267
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 6
    .param p1, "aBuffer"    # [B

    #@0
    .prologue
    .line 187
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 188
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@7
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@a
    .line 189
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    #@b
    .line 191
    .local v3, "retVal":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@e
    .line 193
    const-string/jumbo v4, "8859_1"

    #@11
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v3

    #@15
    .line 198
    .local v3, "retVal":Ljava/lang/String;
    return-object v3

    #@16
    .line 194
    .local v3, "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@17
    .line 196
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    #@19
    const-string/jumbo v5, "CharacterEncoder.encode internal error"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    #@3
    move-result v3

    #@4
    new-array v2, v3, [B

    #@6
    .line 147
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    #@9
    .line 150
    :goto_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    #@c
    move-result v1

    #@d
    .line 151
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    #@f
    .line 169
    :cond_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    #@12
    .line 142
    return-void

    #@13
    .line 154
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    #@16
    .line 155
    const/4 v0, 0x0

    #@17
    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    #@19
    .line 157
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v3, v0

    #@1e
    if-gt v3, v1, :cond_2

    #@20
    .line 158
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    #@27
    .line 155
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@2a
    move-result v3

    #@2b
    add-int/2addr v0, v3

    #@2c
    goto :goto_1

    #@2d
    .line 160
    :cond_2
    sub-int v3, v1, v0

    #@2f
    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    #@32
    goto :goto_2

    #@33
    .line 163
    :cond_3
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    #@36
    move-result v3

    #@37
    if-lt v1, v3, :cond_0

    #@39
    .line 166
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    #@3c
    goto :goto_0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    #@7
    .line 254
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 179
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@8
    .line 177
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 350
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 5
    .param p1, "aBuffer"    # [B

    #@0
    .prologue
    .line 320
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 321
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@7
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@a
    .line 323
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 324
    :catch_0
    move-exception v0

    #@13
    .line 326
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    #@15
    const-string/jumbo v4, "CharacterEncoder.encodeBuffer internal error"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    #@3
    move-result v3

    #@4
    new-array v2, v3, [B

    #@6
    .line 282
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    #@9
    .line 285
    :cond_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    #@c
    move-result v1

    #@d
    .line 286
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    #@f
    .line 302
    :goto_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    #@12
    .line 277
    return-void

    #@13
    .line 289
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    #@16
    .line 290
    const/4 v0, 0x0

    #@17
    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    #@19
    .line 291
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v3, v0

    #@1e
    if-gt v3, v1, :cond_2

    #@20
    .line 292
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@23
    move-result v3

    #@24
    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    #@27
    .line 290
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    #@2a
    move-result v3

    #@2b
    add-int/2addr v0, v3

    #@2c
    goto :goto_1

    #@2d
    .line 294
    :cond_2
    sub-int v3, v1, v0

    #@2f
    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    #@32
    goto :goto_2

    #@33
    .line 297
    :cond_3
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    #@36
    .line 298
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    #@39
    move-result v3

    #@3a
    if-ge v1, v3, :cond_0

    #@3c
    goto :goto_0
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    #@3
    move-result-object v0

    #@4
    .line 340
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    #@7
    .line 338
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 312
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@8
    .line 310
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/io/PrintStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    iput-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@7
    .line 91
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@5
    .line 112
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 127
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@7
    move-result v1

    #@8
    .line 128
    .local v1, "q":I
    const/4 v2, -0x1

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 129
    return v0

    #@c
    .line 130
    :cond_0
    int-to-byte v2, v1

    #@d
    aput-byte v2, p2, v0

    #@f
    .line 126
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 132
    .end local v1    # "q":I
    :cond_1
    array-length v2, p2

    #@13
    return v2
.end method
