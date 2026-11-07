.class public Lorg/xml/sax/SAXParseException;
.super Lorg/xml/sax/SAXException;
.source "SAXParseException.java"


# instance fields
.field private greylist columnNumber:I

.field private greylist lineNumber:I

.field private greylist publicId:Ljava/lang/String;

.field private greylist systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I

    .line 121
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 123
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I
    .param p6, "e"    # Ljava/lang/Exception;

    .line 153
    invoke-direct {p0, p1, p6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    .line 60
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 61
    if-eqz p2, :cond_19

    .line 62
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    .line 62
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1e

    .line 65
    :cond_19
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v0, v1, v1}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 67
    :goto_1e
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 87
    invoke-direct {p0, p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    if-eqz p2, :cond_19

    .line 89
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    .line 89
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1e

    .line 92
    :cond_19
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v0, v1, v1}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 94
    :goto_1e
    return-void
.end method

.method private greylist init(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "columnNumber"    # I

    .line 172
    iput-object p1, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    .line 174
    iput p3, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    .line 175
    iput p4, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 234
    iget v0, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 219
    iget v0, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    return v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    return-object v0
.end method
