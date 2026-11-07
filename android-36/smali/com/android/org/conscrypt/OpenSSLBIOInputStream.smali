.class Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private blacklist ctx:J


# direct methods
.method constructor greylist <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isFinite"    # Z

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    invoke-static {p0, p2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 37
    return-void
.end method


# virtual methods
.method greylist getBioContext()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method blacklist gets([B)I
    .registers 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_22

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_22

    .line 58
    :cond_6
    const/4 v0, 0x0

    .line 59
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 60
    .local v1, "inputByte":I
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_21

    .line 61
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v1

    .line 62
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 64
    goto :goto_21

    .line 66
    :cond_13
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1a

    .line 67
    if-nez v0, :cond_21

    .line 69
    goto :goto_8

    .line 75
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v1

    aput-byte v3, p1, v0

    move v0, v2

    goto :goto_8

    .line 78
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_21
    :goto_21
    return v0

    .line 55
    .end local v0    # "offset":I
    .end local v1    # "inputByte":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    if-ltz p2, :cond_24

    if-ltz p3, :cond_24

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_24

    .line 96
    if-nez p3, :cond_c

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_c
    const/4 v0, 0x0

    .line 102
    .local v0, "totalRead":I
    :cond_d
    add-int v1, p2, v0

    sub-int v2, p3, v0

    sub-int/2addr v2, p2

    invoke-super {p0, p1, v1, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 103
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 104
    goto :goto_1f

    .line 106
    :cond_1a
    add-int/2addr v0, v1

    .line 107
    add-int v3, p2, v0

    if-lt v3, p3, :cond_d

    .line 109
    :goto_1f
    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    move v2, v0

    :goto_23
    return v2

    .line 94
    .end local v0    # "totalRead":I
    .end local v1    # "read":I
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid bounds"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist release()V
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 47
    return-void
.end method
