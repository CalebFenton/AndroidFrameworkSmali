.class public Ljavax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private inputSource:Lorg/xml/sax/InputSource;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@5
    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    #@5
    .line 74
    iput-object p2, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@7
    .line 72
    return-void
.end method

.method public static sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p0, "source"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    .line 188
    instance-of v2, p0, Ljavax/xml/transform/sax/SAXSource;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 189
    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    #@6
    .end local p0    # "source":Ljavax/xml/transform/Source;
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 190
    .restart local p0    # "source":Ljavax/xml/transform/Source;
    :cond_0
    instance-of v2, p0, Ljavax/xml/transform/stream/StreamSource;

    #@d
    if-eqz v2, :cond_1

    #@f
    move-object v1, p0

    #@10
    .line 191
    check-cast v1, Ljavax/xml/transform/stream/StreamSource;

    #@12
    .line 192
    .local v1, "ss":Ljavax/xml/transform/stream/StreamSource;
    new-instance v0, Lorg/xml/sax/InputSource;

    #@14
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@1b
    .line 194
    .local v0, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    #@22
    .line 195
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    #@29
    .line 196
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    #@30
    .line 198
    return-object v0

    #@31
    .line 200
    .end local v0    # "isource":Lorg/xml/sax/InputSource;
    .end local v1    # "ss":Ljavax/xml/transform/stream/StreamSource;
    :cond_1
    const/4 v2, 0x0

    #@32
    return-object v2
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 161
    return-object v1

    #@6
    .line 163
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@8
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    #@2
    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@2
    .line 116
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 146
    new-instance v0, Lorg/xml/sax/InputSource;

    #@6
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@9
    iput-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@b
    .line 143
    :goto_0
    return-void

    #@c
    .line 148
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    #@e
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@11
    goto :goto_0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 99
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    #@2
    .line 98
    return-void
.end method
