.class public final Lcom/android/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    const/16 v0, 0x200

    #@2
    sput v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    #@4
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static drain(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 24
    sget v1, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    #@3
    new-array v0, v1, [B

    #@5
    .line 25
    .local v0, "bs":[B
    :cond_0
    array-length v1, v0

    #@6
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    #@9
    move-result v1

    #@a
    if-gez v1, :cond_0

    #@c
    .line 22
    return-void
.end method

.method public static pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 112
    sget v2, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    #@3
    new-array v0, v2, [B

    #@5
    .line 114
    .local v0, "bs":[B
    :goto_0
    array-length v2, v0

    #@6
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    #@9
    move-result v1

    #@a
    .local v1, "numRead":I
    if-ltz v1, :cond_0

    #@c
    .line 116
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    #@f
    goto :goto_0

    #@10
    .line 110
    :cond_0
    return-void
.end method

.method public static pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .locals 7
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # J
    .param p3, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 131
    const-wide/16 v2, 0x0

    #@3
    .line 132
    .local v2, "total":J
    sget v4, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    #@5
    new-array v0, v4, [B

    #@7
    .line 134
    .local v0, "bs":[B
    :goto_0
    array-length v4, v0

    #@8
    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    #@b
    move-result v1

    #@c
    .local v1, "numRead":I
    if-ltz v1, :cond_1

    #@e
    .line 136
    int-to-long v4, v1

    #@f
    add-long/2addr v2, v4

    #@10
    .line 137
    cmp-long v4, v2, p1

    #@12
    if-lez v4, :cond_0

    #@14
    .line 139
    new-instance v4, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;

    #@16
    const-string/jumbo v5, "Data Overflow"

    #@19
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 141
    :cond_0
    invoke-virtual {p3, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    #@20
    goto :goto_0

    #@21
    .line 143
    :cond_1
    return-wide v2
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 41
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@8
    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static readAllLimited(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 58
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    int-to-long v2, p1

    #@6
    invoke-static {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    #@9
    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "inStr"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    const/4 v1, 0x0

    #@1
    .line 90
    .local v1, "totalRead":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@3
    .line 92
    add-int v2, p2, v1

    #@5
    sub-int v3, p3, v1

    #@7
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@a
    move-result v0

    #@b
    .line 93
    .local v0, "numRead":I
    if-gez v0, :cond_1

    #@d
    .line 99
    .end local v0    # "numRead":I
    :cond_0
    return v1

    #@e
    .line 97
    .restart local v0    # "numRead":I
    :cond_1
    add-int/2addr v1, v0

    #@f
    goto :goto_0
.end method
