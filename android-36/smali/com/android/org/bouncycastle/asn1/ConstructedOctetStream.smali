.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method private blacklist getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    .registers 4

    .line 111
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_a
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v0, :cond_11

    .line 119
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    return-object p0

    .line 122
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    .line 74
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    return v1

    .line 79
    :cond_a
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 86
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 91
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_23

    return v0

    .line 98
    :cond_23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    return v1

    .line 105
    :cond_2d
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1a
.end method

.method public whitelist test-api read([BII)I
    .registers 9

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1a

    .line 25
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_b

    return v2

    .line 30
    :cond_b
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_12

    return v2

    .line 36
    :cond_12
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 44
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2a

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_1a

    return v1

    .line 57
    :cond_2a
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    if-nez v0, :cond_38

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_37

    return v2

    :cond_37
    return v1

    .line 64
    :cond_38
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1a
.end method
