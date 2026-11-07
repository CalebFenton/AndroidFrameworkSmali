.class public final Llibcore/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist test-api copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "total":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 268
    .local v1, "buffer":[B
    :goto_5
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    .line 269
    add-int/2addr v0, v3

    .line 270
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 272
    :cond_13
    return v0
.end method

.method public static greylist readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 291
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 293
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2d

    .line 294
    nop

    .line 299
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 300
    .local v1, "length":I
    if-lez v1, :cond_28

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_28

    .line 301
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 303
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    .local v1, "c":I
    :cond_2d
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .end local v1    # "c":I
    goto :goto_7

    .line 292
    .restart local v1    # "c":I
    :cond_32
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static blacklist test-api readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 184
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 186
    .local v1, "buffer":[C
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_9

    .line 189
    :cond_16
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    .line 191
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 189
    return-object v2

    .line 191
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 192
    throw v0
.end method

.method public static greylist test-api readFully(Ljava/io/InputStream;[B)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 99
    return-void
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[BII)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-nez p3, :cond_3

    .line 111
    return-void

    .line 113
    :cond_3
    if-eqz p0, :cond_25

    .line 116
    if-eqz p1, :cond_1d

    .line 119
    array-length v0, p1

    invoke-static {v0, p2, p3}, Llibcore/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 120
    :goto_b
    if-lez p3, :cond_1c

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 122
    .local v0, "bytesRead":I
    if-ltz v0, :cond_16

    .line 125
    add-int/2addr p2, v0

    .line 126
    sub-int/2addr p3, v0

    .line 127
    .end local v0    # "bytesRead":I
    goto :goto_b

    .line 123
    .restart local v0    # "bytesRead":I
    :cond_16
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 128
    .end local v0    # "bytesRead":I
    :cond_1c
    return-void

    .line 117
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist test-api readFully(Ljava/io/InputStream;)[B
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 146
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 144
    return-object v0

    .line 146
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 147
    throw v0
.end method

.method public static blacklist test-api readFullyNoClose(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 165
    .local v1, "buffer":[B
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 168
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static greylist test-api readSingleByte(Ljava/io/InputStream;)I
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 62
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 63
    .local v0, "result":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_f
    return v3
.end method

.method public static greylist skipAll(Ljava/io/InputStream;)V
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    nop

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 202
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 203
    return-void
.end method

.method public static blacklist test-api skipByReading(Ljava/io/InputStream;J)J
    .registers 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 228
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 229
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 232
    :cond_f
    const-wide/16 v1, 0x0

    .line 233
    .local v1, "skipped":J
    :goto_11
    cmp-long v3, v1, p1

    if-gez v3, :cond_2d

    .line 234
    sub-long v3, p1, v1

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 235
    .local v3, "toRead":I
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 236
    .local v4, "read":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 237
    goto :goto_2d

    .line 239
    :cond_27
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 240
    if-ge v4, v3, :cond_2c

    .line 241
    goto :goto_2d

    .line 243
    .end local v3    # "toRead":I
    .end local v4    # "read":I
    :cond_2c
    goto :goto_11

    .line 246
    :cond_2d
    :goto_2d
    sget-object v3, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 248
    return-wide v1
.end method

.method public static greylist test-api writeSingleByte(Ljava/io/OutputStream;I)V
    .registers 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "b"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 81
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 83
    return-void
.end method
