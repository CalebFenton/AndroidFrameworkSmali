.class public Lorg/xml/sax/SAXParseException;
.super Lorg/xml/sax/SAXException;
.source "SAXParseException.java"


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private publicId:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@3
    .line 120
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@6
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "columnNumber"    # I
    .param p6, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1, p6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3
    .line 152
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@6
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 58
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@5
    .line 59
    if-eqz p2, :cond_0

    #@7
    .line 60
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 61
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@12
    move-result v2

    #@13
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@16
    move-result v3

    #@17
    .line 60
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@1a
    .line 57
    :goto_0
    return-void

    #@1b
    .line 63
    :cond_0
    invoke-direct {p0, v0, v0, v1, v1}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@1e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Lorg/xml/sax/Locator;
    .param p3, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 85
    invoke-direct {p0, p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@5
    .line 86
    if-eqz p2, :cond_0

    #@7
    .line 87
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 88
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@12
    move-result v2

    #@13
    invoke-interface {p2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@16
    move-result v3

    #@17
    .line 87
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@1a
    .line 84
    :goto_0
    return-void

    #@1b
    .line 90
    :cond_0
    invoke-direct {p0, v0, v0, v1, v1}, Lorg/xml/sax/SAXParseException;->init(Ljava/lang/String;Ljava/lang/String;II)V

    #@1e
    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "columnNumber"    # I

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    #@2
    .line 170
    iput-object p2, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    #@4
    .line 171
    iput p3, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    #@6
    .line 172
    iput p4, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    #@8
    .line 167
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Lorg/xml/sax/SAXParseException;->columnNumber:I

    #@2
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 216
    iget v0, p0, Lorg/xml/sax/SAXParseException;->lineNumber:I

    #@2
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lorg/xml/sax/SAXParseException;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method
