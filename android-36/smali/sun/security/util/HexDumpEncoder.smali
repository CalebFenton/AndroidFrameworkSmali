.class public Lsun/security/util/HexDumpEncoder;
.super Ljava/lang/Object;
.source "HexDumpEncoder.java"


# instance fields
.field private blacklist currentByte:I

.field private blacklist offset:I

.field protected blacklist pStream:Ljava/io/PrintStream;

.field private blacklist thisLine:[B

.field private blacklist thisLineLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/HexDumpEncoder;->thisLine:[B

    return-void
.end method

.method private blacklist getBytes(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 213
    const/4 v0, 0x0

    .line 219
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 221
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_21

    array-length v2, v1

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 223
    move-object v0, v1

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    .end local v1    # "tmp":[B
    :cond_21
    if-nez v0, :cond_2c

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 239
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 242
    :cond_2c
    return-object v0
.end method

.method static blacklist hexDigit(Ljava/io/PrintStream;B)V
    .registers 5
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "x"    # B

    .line 61
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    .line 62
    .local v0, "c":C
    const/16 v1, 0x9

    if-le v0, v1, :cond_f

    .line 63
    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x41

    int-to-char v0, v2

    goto :goto_12

    .line 65
    :cond_f
    add-int/lit8 v2, v0, 0x30

    int-to-char v0, v2

    .line 66
    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 67
    and-int/lit8 v2, p1, 0xf

    int-to-char v0, v2

    .line 68
    if-le v0, v1, :cond_20

    .line 69
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    goto :goto_23

    .line 71
    :cond_20
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    .line 72
    :goto_23
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 73
    return-void
.end method


# virtual methods
.method protected blacklist bytesPerAtom()I
    .registers 2

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist bytesPerLine()I
    .registers 2

    .line 80
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .line 252
    invoke-direct {p0, p1}, Lsun/security/util/HexDumpEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 253
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/security/util/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist encode([B)Ljava/lang/String;
    .registers 8
    .param p1, "aBuffer"    # [B

    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 189
    .local v2, "retVal":Ljava/lang/String;
    :try_start_b
    invoke-virtual {p0, v1, v0}, Lsun/security/util/HexDumpEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_16

    .line 195
    .end local v2    # "retVal":Ljava/lang/String;
    .local v3, "retVal":Ljava/lang/String;
    nop

    .line 196
    return-object v3

    .line 192
    .end local v3    # "retVal":Ljava/lang/String;
    .restart local v2    # "retVal":Ljava/lang/String;
    :catch_16
    move-exception v3

    .line 194
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

    .line 154
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerLine()I

    move-result v0

    new-array v0, v0, [B

    .line 156
    .local v0, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/security/util/HexDumpEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 159
    :goto_9
    invoke-virtual {p0, p1, v0}, Lsun/security/util/HexDumpEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 160
    .local v1, "numBytes":I
    if-nez v1, :cond_10

    .line 161
    goto :goto_37

    .line 163
    :cond_10
    invoke-virtual {p0, p2, v1}, Lsun/security/util/HexDumpEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 164
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    if-ge v2, v1, :cond_30

    .line 166
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_25

    .line 167
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/security/util/HexDumpEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2a

    .line 169
    :cond_25
    sub-int v3, v1, v2

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/security/util/HexDumpEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 164
    :goto_2a
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_14

    .line 172
    :cond_30
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 173
    nop

    .line 178
    .end local v2    # "j":I
    :goto_37
    return-void

    .line 175
    .restart local v2    # "j":I
    :cond_38
    invoke-virtual {p0, p2}, Lsun/security/util/HexDumpEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_9
.end method

.method protected blacklist encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 8
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->thisLine:[B

    iget v1, p0, Lsun/security/util/HexDumpEncoder;->currentByte:I

    aget-byte v2, p2, p3

    aput-byte v2, v0, v1

    .line 98
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v1, p2, p3

    invoke-static {v0, v1}, Lsun/security/util/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 99
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lsun/security/util/HexDumpEncoder;->currentByte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/util/HexDumpEncoder;->currentByte:I

    .line 101
    iget v0, p0, Lsun/security/util/HexDumpEncoder;->currentByte:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_29

    .line 102
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    :cond_29
    return-void
.end method

.method public blacklist encodeBuffer([B)Ljava/lang/String;
    .registers 7
    .param p1, "aBuffer"    # [B

    .line 307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 310
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_a
    invoke-virtual {p0, v1, v0}, Lsun/security/util/HexDumpEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_13

    .line 314
    nop

    .line 315
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 311
    :catch_13
    move-exception v2

    .line 313
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

    .line 267
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerLine()I

    move-result v0

    new-array v0, v0, [B

    .line 269
    .local v0, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/security/util/HexDumpEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 272
    :cond_9
    invoke-virtual {p0, p1, v0}, Lsun/security/util/HexDumpEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 273
    .local v1, "numBytes":I
    if-nez v1, :cond_10

    .line 274
    goto :goto_3a

    .line 276
    :cond_10
    invoke-virtual {p0, p2, v1}, Lsun/security/util/HexDumpEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 277
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    if-ge v2, v1, :cond_30

    .line 278
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_25

    .line 279
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/security/util/HexDumpEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2a

    .line 281
    :cond_25
    sub-int v3, v1, v2

    invoke-virtual {p0, p2, v0, v2, v3}, Lsun/security/util/HexDumpEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 277
    :goto_2a
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_14

    .line 284
    :cond_30
    invoke-virtual {p0, p2}, Lsun/security/util/HexDumpEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 285
    invoke-virtual {p0}, Lsun/security/util/HexDumpEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 286
    nop

    .line 289
    .end local v2    # "j":I
    :goto_3a
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

    .line 327
    invoke-direct {p0, p1}, Lsun/security/util/HexDumpEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 328
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/security/util/HexDumpEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 329
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

    .line 298
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 299
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/security/util/HexDumpEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 300
    return-void
.end method

.method protected blacklist encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/util/HexDumpEncoder;->offset:I

    .line 85
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    .line 86
    return-void
.end method

.method protected blacklist encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/security/util/HexDumpEncoder;->offset:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/security/util/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 90
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/security/util/HexDumpEncoder;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/security/util/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 91
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/util/HexDumpEncoder;->currentByte:I

    .line 93
    iput p2, p0, Lsun/security/util/HexDumpEncoder;->thisLineLength:I

    .line 94
    return-void
.end method

.method protected blacklist encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lsun/security/util/HexDumpEncoder;->thisLineLength:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1e

    .line 107
    iget v0, p0, Lsun/security/util/HexDumpEncoder;->thisLineLength:I

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_1e

    .line 108
    iget-object v2, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1b

    .line 110
    iget-object v2, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 107
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 113
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget v1, p0, Lsun/security/util/HexDumpEncoder;->thisLineLength:I

    if-ge v0, v1, :cond_4f

    .line 115
    iget-object v1, p0, Lsun/security/util/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_45

    iget-object v1, p0, Lsun/security/util/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3b

    goto :goto_45

    .line 118
    :cond_3b
    iget-object v1, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/security/util/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_4c

    .line 116
    :cond_45
    :goto_45
    iget-object v1, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 114
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 121
    .end local v0    # "i":I
    :cond_4f
    iget-object v0, p0, Lsun/security/util/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 122
    iget v0, p0, Lsun/security/util/HexDumpEncoder;->offset:I

    iget v1, p0, Lsun/security/util/HexDumpEncoder;->thisLineLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/util/HexDumpEncoder;->offset:I

    .line 123
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

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_12

    .line 135
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 136
    .local v1, "q":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 137
    return v0

    .line 138
    :cond_c
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 134
    .end local v1    # "q":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    :cond_12
    array-length v0, p2

    return v0
.end method
