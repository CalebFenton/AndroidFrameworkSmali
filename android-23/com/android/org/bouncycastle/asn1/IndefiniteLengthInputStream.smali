.class Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@4
    .line 12
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    #@6
    .line 13
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    #@9
    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@f
    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@15
    .line 25
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@17
    if-gez v0, :cond_0

    #@19
    .line 28
    new-instance v0, Ljava/io/EOFException;

    #@1b
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@1e
    throw v0

    #@1f
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    #@22
    .line 18
    return-void
.end method

.method private checkForEof()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 43
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@b
    if-nez v0, :cond_0

    #@d
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@f
    if-nez v0, :cond_0

    #@11
    .line 45
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    #@13
    .line 46
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    #@16
    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    #@18
    return v0
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 93
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@d
    move-result v0

    #@e
    .line 98
    .local v0, "b":I
    if-gez v0, :cond_1

    #@10
    .line 101
    new-instance v2, Ljava/io/EOFException;

    #@12
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v2

    #@16
    .line 104
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@18
    .line 106
    .local v1, "v":I
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@1a
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@1c
    .line 107
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@1e
    .line 109
    return v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v1, 0x3

    #@5
    if-ge p3, v1, :cond_1

    #@7
    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 60
    :cond_1
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 62
    const/4 v1, -0x1

    #@11
    return v1

    #@12
    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@14
    add-int/lit8 v2, p2, 0x2

    #@16
    add-int/lit8 v3, p3, -0x2

    #@18
    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@1b
    move-result v0

    #@1c
    .line 67
    .local v0, "numRead":I
    if-gez v0, :cond_3

    #@1e
    .line 70
    new-instance v1, Ljava/io/EOFException;

    #@20
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@23
    throw v1

    #@24
    .line 73
    :cond_3
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@26
    int-to-byte v1, v1

    #@27
    aput-byte v1, p1, p2

    #@29
    .line 74
    add-int/lit8 v1, p2, 0x1

    #@2b
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@2d
    int-to-byte v2, v2

    #@2e
    aput-byte v2, p1, v1

    #@30
    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@32
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@35
    move-result v1

    #@36
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    #@38
    .line 77
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@3a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@3d
    move-result v1

    #@3e
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@40
    .line 79
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    #@42
    if-gez v1, :cond_4

    #@44
    .line 82
    new-instance v1, Ljava/io/EOFException;

    #@46
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@49
    throw v1

    #@4a
    .line 85
    :cond_4
    add-int/lit8 v1, v0, 0x2

    #@4c
    return v1
.end method

.method setEofOn00(Z)V
    .locals 0
    .param p1, "eofOn00"    # Z

    #@0
    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    #@2
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    #@5
    .line 35
    return-void
.end method
