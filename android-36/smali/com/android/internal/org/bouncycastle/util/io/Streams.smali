.class public final Lcom/android/internal/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static blacklist BUFFER_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x1000

    sput v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drain(Ljava/io/InputStream;)V
    .registers 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v0, [B

    .line 27
    .local v0, "bs":[B
    :goto_4
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_d

    goto :goto_4

    .line 30
    :cond_d
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 43
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 7
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-array v0, p2, [B

    .line 58
    .local v0, "bs":[B
    :goto_2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v3, v1

    .local v3, "numRead":I
    if-ltz v1, :cond_f

    .line 60
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 62
    :cond_f
    return-void
.end method

.method public static blacklist pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 14
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # J
    .param p3, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "total":J
    sget v2, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v2, v2, [B

    .line 78
    .local v2, "bs":[B
    :goto_6
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "numRead":I
    if-ltz v3, :cond_24

    .line 80
    sub-long v6, p1, v0

    int-to-long v8, v5

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1c

    .line 84
    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 85
    invoke-virtual {p3, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 82
    :cond_1c
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;

    const-string v4, "Data Overflow"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_24
    return-wide v0
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .registers 3
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist readAllLimited(Ljava/io/InputStream;I)[B
    .registers 5
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "totalRead":I
    :goto_1
    if-ge v0, p3, :cond_10

    .line 152
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 153
    .local v1, "numRead":I
    if-gez v1, :cond_e

    .line 155
    goto :goto_10

    .line 157
    :cond_e
    add-int/2addr v0, v1

    .line 158
    .end local v1    # "numRead":I
    goto :goto_1

    .line 160
    :cond_10
    :goto_10
    return v0
.end method

.method public static blacklist validateBufferArguments([BII)V
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 165
    if-eqz p0, :cond_13

    .line 169
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 170
    .local v0, "available":I
    sub-int v1, v0, p2

    .line 171
    .local v1, "remaining":I
    or-int v2, p1, p2

    or-int/2addr v2, v0

    or-int/2addr v2, v1

    if-ltz v2, :cond_d

    .line 175
    return-void

    .line 173
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 167
    .end local v0    # "available":I
    .end local v1    # "remaining":I
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 181
    return-void
.end method
