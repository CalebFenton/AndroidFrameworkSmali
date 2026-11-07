.class Landroid/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExifInterface"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 93
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 95
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 133
    goto :goto_c

    .line 131
    :catch_4
    move-exception v0

    .line 132
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "ExifInterface"

    const-string v2, "Error closing fd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_c
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 115
    if-eqz p0, :cond_a

    .line 117
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 121
    goto :goto_a

    .line 120
    :catch_6
    move-exception v0

    goto :goto_a

    .line 118
    :catch_8
    move-exception v0

    .line 119
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 123
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist convertToLongArray(Ljava/lang/Object;)[J
    .registers 6
    .param p0, "inputObj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p0, [I

    if-eqz v0, :cond_17

    .line 75
    move-object v0, p0

    check-cast v0, [I

    .line 76
    .local v0, "input":[I
    array-length v1, v0

    new-array v1, v1, [J

    .line 77
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 78
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 80
    .end local v2    # "i":I
    :cond_16
    return-object v1

    .line 81
    .end local v0    # "input":[I
    .end local v1    # "result":[J
    :cond_17
    instance-of v0, p0, [J

    if-eqz v0, :cond_1f

    .line 82
    move-object v0, p0

    check-cast v0, [J

    return-object v0

    .line 84
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "total":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 43
    .local v1, "buffer":[B
    :goto_5
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    .line 44
    add-int/2addr v0, v3

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 47
    :cond_13
    return v0
.end method

.method public static blacklist copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    move v0, p2

    .line 56
    .local v0, "remainder":I
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 57
    .local v2, "buffer":[B
    :goto_5
    if-lez v0, :cond_1f

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 59
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 60
    .local v5, "bytesRead":I
    if-ne v5, v3, :cond_17

    .line 64
    sub-int/2addr v0, v5

    .line 65
    invoke-virtual {p1, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    goto :goto_5

    .line 61
    .restart local v3    # "bytesToRead":I
    .restart local v5    # "bytesRead":I
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v3    # "bytesToRead":I
    .end local v5    # "bytesRead":I
    :cond_1f
    return-void
.end method

.method public static blacklist startsWith([B[B)Z
    .registers 6
    .param p0, "cur"    # [B
    .param p1, "val"    # [B

    .line 102
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_6

    goto :goto_23

    .line 103
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 104
    :cond_b
    array-length v1, p0

    if-eqz v1, :cond_22

    array-length v1, p1

    if-nez v1, :cond_12

    goto :goto_22

    .line 105
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 106
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1d

    return v0

    .line 105
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 108
    .end local v1    # "i":I
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_22
    :goto_22
    return v0

    .line 102
    :cond_23
    :goto_23
    return v0
.end method
