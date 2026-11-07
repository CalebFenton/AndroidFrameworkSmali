.class public Ljavax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private greylist-max-o inputSource:Lorg/xml/sax/InputSource;

.field private greylist-max-o reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/InputSource;)V
    .registers 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .registers 3
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object p2, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 75
    return-void
.end method

.method public static whitelist test-api sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .registers 4
    .param p0, "source"    # Ljavax/xml/transform/Source;

    .line 188
    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_c

    .line 189
    move-object v0, p0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0

    .line 190
    :cond_c
    instance-of v0, p0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_32

    .line 191
    move-object v0, p0

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    .line 192
    .local v0, "ss":Ljavax/xml/transform/stream/StreamSource;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 195
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 196
    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 198
    return-object v1

    .line 200
    .end local v0    # "ss":Ljavax/xml/transform/stream/StreamSource;
    .end local v1    # "isource":Lorg/xml/sax/InputSource;
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getInputSource()Lorg/xml/sax/InputSource;
    .registers 2

    .line 126
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_6

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_6
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 108
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public whitelist test-api setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .line 117
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 118
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemId"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_c

    .line 146
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    goto :goto_11

    .line 148
    :cond_c
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 150
    :goto_11
    return-void
.end method

.method public whitelist test-api setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .line 99
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 100
    return-void
.end method
