.class public Lorg/xml/sax/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# instance fields
.field private greylist byteStream:Ljava/io/InputStream;

.field private greylist characterStream:Ljava/io/Reader;

.field private greylist encoding:Ljava/lang/String;

.field private greylist publicId:Ljava/lang/String;

.field private greylist systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "byteStream"    # Ljava/io/InputStream;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 118
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 2
    .param p1, "characterStream"    # Ljava/io/Reader;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 139
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist test-api getByteStream()Ljava/io/InputStream;
    .registers 2

    .line 254
    iget-object v0, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public whitelist test-api getCharacterStream()Ljava/io/Reader;
    .registers 2

    .line 321
    iget-object v0, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    return-object v0
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setByteStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "byteStream"    # Ljava/io/InputStream;

    .line 238
    iput-object p1, p0, Lorg/xml/sax/InputSource;->byteStream:Ljava/io/InputStream;

    .line 239
    return-void
.end method

.method public whitelist test-api setCharacterStream(Ljava/io/Reader;)V
    .registers 2
    .param p1, "characterStream"    # Ljava/io/Reader;

    .line 309
    iput-object p1, p0, Lorg/xml/sax/InputSource;->characterStream:Ljava/io/Reader;

    .line 310
    return-void
.end method

.method public whitelist test-api setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lorg/xml/sax/InputSource;->encoding:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public whitelist test-api setPublicId(Ljava/lang/String;)V
    .registers 2
    .param p1, "publicId"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/xml/sax/InputSource;->publicId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lorg/xml/sax/InputSource;->systemId:Ljava/lang/String;

    .line 198
    return-void
.end method
