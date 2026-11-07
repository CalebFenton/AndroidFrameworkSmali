.class Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 18
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 19
    return-void
.end method

.method private blacklist getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 112
    .local v0, "asn1Obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_a

    .line 114
    const/4 v1, 0x0

    return-object v1

    .line 117
    :cond_a
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_12

    .line 119
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v1

    .line 122
    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    .line 74
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    .line 76
    return v1

    .line 79
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    .line 80
    .local v0, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_11

    .line 82
    return v1

    .line 85
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 86
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 91
    .end local v0    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 93
    .local v0, "b":I
    if-ltz v0, :cond_23

    .line 95
    return v0

    .line 98
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v2

    .line 99
    .local v2, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_2d

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 102
    return v1

    .line 105
    :cond_2d
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 106
    .end local v0    # "b":I
    .end local v2    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    goto :goto_1a
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1a

    .line 25
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    .line 27
    return v1

    .line 30
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    .line 31
    .local v0, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_11

    .line 33
    return v1

    .line 36
    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 40
    .end local v0    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1a
    const/4 v0, 0x0

    .line 44
    .local v0, "totalRead":I
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 46
    .local v2, "numRead":I
    if-ltz v2, :cond_2b

    .line 48
    add-int/2addr v0, v2

    .line 50
    if-ne v0, p3, :cond_40

    .line 52
    return v0

    .line 57
    :cond_2b
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v3

    .line 58
    .local v3, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v3, :cond_3a

    .line 60
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 61
    const/4 v4, 0x1

    if-ge v0, v4, :cond_38

    goto :goto_39

    :cond_38
    move v1, v0

    :goto_39
    return v1

    .line 64
    :cond_3a
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 66
    .end local v2    # "numRead":I
    .end local v3    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_40
    goto :goto_1b
.end method
