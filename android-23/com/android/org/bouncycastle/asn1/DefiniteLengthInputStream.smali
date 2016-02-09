.class Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final EMPTY_BYTES:[B


# instance fields
.field private final _originalLength:I

.field private _remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 12
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    #@5
    .line 9
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@3
    .line 23
    if-gez p2, :cond_0

    #@5
    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "negative lengths not allowed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 28
    :cond_0
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    #@10
    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@12
    .line 31
    if-nez p2, :cond_1

    #@14
    .line 33
    const/4 v0, 0x1

    #@15
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    #@18
    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method getRemaining()I
    .locals 1

    #@0
    .prologue
    .line 39
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@2
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 47
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@b
    move-result v0

    #@c
    .line 52
    .local v0, "b":I
    if-gez v0, :cond_1

    #@e
    .line 54
    new-instance v1, Ljava/io/EOFException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "DEF length "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " object truncated by "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 57
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@39
    add-int/lit8 v1, v1, -0x1

    #@3b
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 59
    const/4 v1, 0x1

    #@40
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    #@43
    .line 62
    :cond_2
    return v0
.end method

.method public read([BII)I
    .locals 5
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
    .line 68
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 70
    const/4 v2, -0x1

    #@5
    return v2

    #@6
    .line 73
    :cond_0
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@8
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 74
    .local v1, "toRead":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@e
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    #@11
    move-result v0

    #@12
    .line 76
    .local v0, "numRead":I
    if-gez v0, :cond_1

    #@14
    .line 78
    new-instance v2, Ljava/io/EOFException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "DEF length "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " object truncated by "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    iget v4, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 81
    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@3f
    sub-int/2addr v2, v0

    #@40
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@42
    if-nez v2, :cond_2

    #@44
    .line 83
    const/4 v2, 0x1

    #@45
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    #@48
    .line 86
    :cond_2
    return v0
.end method

.method toByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 94
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    #@6
    return-object v1

    #@7
    .line 97
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@9
    new-array v0, v1, [B

    #@b
    .line 98
    .local v0, "bytes":[B
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@d
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    #@f
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@12
    move-result v2

    #@13
    sub-int/2addr v1, v2

    #@14
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 100
    new-instance v1, Ljava/io/EOFException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "DEF length "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " object truncated by "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 102
    :cond_1
    const/4 v1, 0x1

    #@42
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    #@45
    .line 103
    return-object v0
.end method
