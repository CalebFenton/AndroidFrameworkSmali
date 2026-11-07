.class Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;
.super Ljava/io/InputStream;
.source "ConstructedBitStream.java"


# instance fields
.field private blacklist _currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _octetAligned:Z

.field private blacklist _padBits:I

.field private final blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;Z)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 22
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    return-void
.end method

.method private blacklist getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 126
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v0, :cond_11

    goto :goto_2a

    .line 128
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_2c
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    if-eqz v1, :cond_3f

    .line 136
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez p0, :cond_37

    .line 141
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    return-object v0

    .line 138
    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_3f
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist getPadBits()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    return p0
.end method

.method public whitelist test-api read()I
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    .line 85
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_a

    return v1

    .line 90
    :cond_a
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v2, 0x0

    .line 96
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 97
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 102
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_25

    return v0

    .line 109
    :cond_25
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 110
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_39

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    return v1

    .line 117
    :cond_39
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1c
.end method

.method public whitelist test-api read([BII)I
    .registers 9

    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1c

    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_b

    return v2

    .line 39
    :cond_b
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_14

    return v2

    .line 45
    :cond_14
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 46
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 54
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2c

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_1c

    return v1

    .line 67
    :cond_2c
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_44

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_43

    return v2

    :cond_43
    return v1

    .line 75
    :cond_44
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1c
.end method
