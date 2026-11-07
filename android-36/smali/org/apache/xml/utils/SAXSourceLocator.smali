.class public Lorg/apache/xml/utils/SAXSourceLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SAXSourceLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = 0x2c2799f6a21a0750L


# instance fields
.field greylist m_locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljavax/xml/transform/SourceLocator;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 75
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 76
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 77
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    .line 60
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 61
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 62
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/xml/sax/SAXParseException;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 91
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 92
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getColumnNumber()I

    move-result p0

    return p0

    :cond_9
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 148
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getLineNumber()I

    move-result p0

    return p0

    :cond_9
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_9

    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
