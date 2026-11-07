.class public abstract Lcom/android/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static blacklist BUFFER_SIZE:I = 0x1000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    .line 42
    sget v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 6

    .line 56
    new-array v0, p2, [B

    :goto_2
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_d

    .line 60
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_d
    return-void
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .registers 2

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[B)I
    .registers 4

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 152
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    :goto_10
    return v0
.end method
