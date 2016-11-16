.class public Lorg/xml/sax/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# instance fields
.field private byteStream:Ljava/io/InputStream;

.field private characterStream:Ljava/io/Reader;

.field private encoding:Ljava/lang/String;

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "byteStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    #@6
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "characterStream"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    #@6
    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    #@6
    .line 93
    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    #@2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "byteStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    #@2
    .line 235
    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0
    .param p1, "characterStream"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 308
    iput-object p1, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    #@2
    .line 306
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iput-object p1, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    #@2
    .line 272
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    #@2
    .line 153
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    #@2
    .line 194
    return-void
.end method
