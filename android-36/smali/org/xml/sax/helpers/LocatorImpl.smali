.class public Lorg/xml/sax/helpers/LocatorImpl;
.super Ljava/lang/Object;
.source "LocatorImpl.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# instance fields
.field private greylist columnNumber:I

.field private greylist lineNumber:I

.field private greylist publicId:Ljava/lang/String;

.field private greylist systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 83
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 84
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 144
    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 131
    iget v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    return v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setColumnNumber(I)V
    .registers 2
    .param p1, "columnNumber"    # I

    .line 200
    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->columnNumber:I

    .line 201
    return-void
.end method

.method public whitelist test-api setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .line 188
    iput p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->lineNumber:I

    .line 189
    return-void
.end method

.method public whitelist test-api setPublicId(Ljava/lang/String;)V
    .registers 2
    .param p1, "publicId"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->publicId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lorg/xml/sax/helpers/LocatorImpl;->systemId:Ljava/lang/String;

    .line 177
    return-void
.end method
