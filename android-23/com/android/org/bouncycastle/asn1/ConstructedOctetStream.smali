.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 11
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    #@6
    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@8
    .line 15
    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 73
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@5
    if-nez v2, :cond_2

    #@7
    .line 75
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    #@9
    if-nez v2, :cond_0

    #@b
    .line 77
    return v4

    #@c
    .line 80
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    #@14
    .line 82
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_1

    #@16
    .line 84
    return v4

    #@17
    .line 87
    :cond_1
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    #@19
    .line 88
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@1f
    .line 93
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@21
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@24
    move-result v0

    #@25
    .line 95
    .local v0, "b":I
    if-ltz v0, :cond_3

    #@27
    .line 97
    return v0

    #@28
    .line 100
    :cond_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@2a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    #@30
    .line 102
    .restart local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_4

    #@32
    .line 104
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@34
    .line 105
    return v4

    #@35
    .line 108
    :cond_4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@3b
    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
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
    const/4 v6, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 22
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@5
    if-nez v5, :cond_2

    #@7
    .line 24
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    #@9
    if-nez v5, :cond_0

    #@b
    .line 26
    return v4

    #@c
    .line 29
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    #@14
    .line 31
    .local v2, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_1

    #@16
    .line 33
    return v4

    #@17
    .line 36
    :cond_1
    iput-boolean v6, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    #@19
    .line 37
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    #@1c
    move-result-object v5

    #@1d
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@1f
    .line 40
    .end local v2    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    const/4 v3, 0x0

    #@20
    .line 44
    .local v3, "totalRead":I
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@22
    add-int v6, p2, v3

    #@24
    sub-int v7, p3, v3

    #@26
    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    #@29
    move-result v1

    #@2a
    .line 46
    .local v1, "numRead":I
    if-ltz v1, :cond_4

    #@2c
    .line 48
    add-int/2addr v3, v1

    #@2d
    .line 50
    if-ne v3, p3, :cond_3

    #@2f
    .line 52
    return v3

    #@30
    .line 57
    :cond_4
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@32
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    #@38
    .line 59
    .local v0, "aos":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_6

    #@3a
    .line 61
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@3c
    .line 62
    const/4 v5, 0x1

    #@3d
    if-ge v3, v5, :cond_5

    #@3f
    move v3, v4

    #@40
    .end local v3    # "totalRead":I
    :cond_5
    return v3

    #@41
    .line 65
    .restart local v3    # "totalRead":I
    :cond_6
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    #@44
    move-result-object v5

    #@45
    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    #@47
    goto :goto_0
.end method
