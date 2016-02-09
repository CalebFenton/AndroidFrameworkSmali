.class public final Llibcore/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@5
    sput-object v0, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    const/4 v2, 0x0

    #@1
    .line 181
    .local v2, "total":I
    const/16 v3, 0x2000

    #@3
    new-array v0, v3, [B

    #@5
    .line 183
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@8
    move-result v1

    #@9
    .local v1, "c":I
    const/4 v3, -0x1

    #@a
    if-eq v1, v3, :cond_0

    #@c
    .line 184
    add-int/2addr v2, v1

    #@d
    .line 185
    const/4 v3, 0x0

    #@e
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    #@11
    goto :goto_0

    #@12
    .line 187
    :cond_0
    return v2
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x50

    #@4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 202
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@a
    move-result v0

    #@b
    .line 203
    .local v0, "c":I
    const/4 v3, -0x1

    #@c
    if-ne v0, v3, :cond_0

    #@e
    .line 204
    new-instance v3, Ljava/io/EOFException;

    #@10
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@13
    throw v3

    #@14
    .line 205
    :cond_0
    const/16 v3, 0xa

    #@16
    if-ne v0, v3, :cond_2

    #@18
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1b
    move-result v1

    #@1c
    .line 212
    .local v1, "length":I
    if-lez v1, :cond_1

    #@1e
    add-int/lit8 v3, v1, -0x1

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@23
    move-result v3

    #@24
    const/16 v4, 0xd

    #@26
    if-ne v3, v4, :cond_1

    #@28
    .line 213
    add-int/lit8 v3, v1, -0x1

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2d
    .line 215
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 209
    .end local v1    # "length":I
    :cond_2
    int-to-char v3, v0

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    #@2
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 120
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    #@7
    new-array v0, v3, [C

    #@9
    .line 122
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    #@c
    move-result v1

    #@d
    .local v1, "count":I
    const/4 v3, -0x1

    #@e
    if-eq v1, v3, :cond_0

    #@10
    .line 123
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    goto :goto_0

    #@15
    .line 126
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    #@16
    .line 127
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    #@19
    .line 126
    throw v3

    #@1a
    .line 125
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .line 127
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    #@21
    .line 125
    return-object v3
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@5
    .line 59
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    if-nez p3, :cond_0

    #@2
    .line 71
    return-void

    #@3
    .line 73
    :cond_0
    if-nez p0, :cond_1

    #@5
    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "in == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 76
    :cond_1
    if-nez p1, :cond_2

    #@10
    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v2, "dst == null"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 79
    :cond_2
    array-length v1, p1

    #@1a
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@1d
    .line 80
    :goto_0
    if-lez p3, :cond_4

    #@1f
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@22
    move-result v0

    #@23
    .line 82
    .local v0, "bytesRead":I
    if-gez v0, :cond_3

    #@25
    .line 83
    new-instance v1, Ljava/io/EOFException;

    #@27
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@2a
    throw v1

    #@2b
    .line 85
    :cond_3
    add-int/2addr p2, v0

    #@2c
    .line 86
    sub-int/2addr p3, v0

    #@2d
    goto :goto_0

    #@2e
    .line 69
    .end local v0    # "bytesRead":I
    :cond_4
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    move-result-object v0

    #@4
    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@7
    .line 95
    return-object v0

    #@8
    .line 96
    :catchall_0
    move-exception v0

    #@9
    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@c
    .line 96
    throw v0
.end method

.method public static readFullyNoClose(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 106
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    #@7
    new-array v0, v3, [B

    #@9
    .line 108
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@c
    move-result v2

    #@d
    .local v2, "count":I
    const/4 v3, -0x1

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 109
    const/4 v3, 0x0

    #@11
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@14
    goto :goto_0

    #@15
    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v3

    #@19
    return-object v3
.end method

.method public static readSingleByte(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 40
    new-array v0, v4, [B

    #@5
    .line 41
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    #@8
    move-result v1

    #@9
    .line 42
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    #@b
    aget-byte v2, v0, v3

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    :cond_0
    return v2
.end method

.method public static skipAll(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@5
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    #@8
    .line 134
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 131
    return-void
.end method

.method public static skipByReading(Ljava/io/InputStream;J)J
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 151
    sget-object v5, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    .line 152
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    #@b
    .line 153
    const/16 v5, 0x1000

    #@d
    new-array v0, v5, [B

    #@f
    .line 156
    :cond_0
    const-wide/16 v2, 0x0

    #@11
    .line 157
    .local v2, "skipped":J
    :cond_1
    cmp-long v5, v2, p1

    #@13
    if-gez v5, :cond_2

    #@15
    .line 158
    sub-long v6, p1, v2

    #@17
    array-length v5, v0

    #@18
    int-to-long v8, v5

    #@19
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@1c
    move-result-wide v6

    #@1d
    long-to-int v4, v6

    #@1e
    .line 159
    .local v4, "toRead":I
    const/4 v5, 0x0

    #@1f
    invoke-virtual {p0, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    #@22
    move-result v1

    #@23
    .line 160
    .local v1, "read":I
    const/4 v5, -0x1

    #@24
    if-ne v1, v5, :cond_3

    #@26
    .line 170
    .end local v1    # "read":I
    .end local v4    # "toRead":I
    :cond_2
    :goto_0
    sget-object v5, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    #@28
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@2b
    .line 172
    return-wide v2

    #@2c
    .line 163
    .restart local v1    # "read":I
    .restart local v4    # "toRead":I
    :cond_3
    int-to-long v6, v1

    #@2d
    add-long/2addr v2, v6

    #@2e
    .line 164
    if-ge v1, v4, :cond_1

    #@30
    goto :goto_0
.end method

.method public static writeSingleByte(Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 52
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 53
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    #@c
    .line 50
    return-void
.end method
