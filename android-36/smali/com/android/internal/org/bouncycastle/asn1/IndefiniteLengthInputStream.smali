.class Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private blacklist _b1:I

.field private blacklist _b2:I

.field private blacklist _eofOn00:Z

.field private blacklist _eofReached:Z


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 24
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 26
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz v0, :cond_1d

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 33
    return-void

    .line 29
    :cond_1d
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private blacklist checkForEof()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 49
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v0, -0x1

    return v0

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 99
    .local v0, "b":I
    if-ltz v0, :cond_19

    .line 105
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 107
    .local v1, "v":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 108
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 110
    return v1

    .line 102
    .end local v1    # "v":I
    :cond_19
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v0, :cond_49

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_49

    .line 61
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v0, :cond_e

    .line 63
    const/4 v0, -0x1

    return v0

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "numRead":I
    if-ltz v0, :cond_43

    .line 74
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 75
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 77
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 78
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 80
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz v1, :cond_3d

    .line 86
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 83
    :cond_3d
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 71
    :cond_43
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 58
    .end local v0    # "numRead":I
    :cond_49
    :goto_49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method blacklist setEofOn00(Z)V
    .registers 2
    .param p1, "eofOn00"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 40
    return-void
.end method
