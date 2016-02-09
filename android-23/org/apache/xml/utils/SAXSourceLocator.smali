.class public Lorg/apache/xml/utils/SAXSourceLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SAXSourceLocator.java"

# interfaces
.implements Ljavax/xml/transform/SourceLocator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x2c2799f6a21a0750L


# instance fields
.field m_locator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@6
    .line 75
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    #@d
    .line 76
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@10
    move-result v0

    #@11
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    #@14
    .line 77
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    #@1b
    .line 78
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    #@22
    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@5
    .line 60
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    #@c
    .line 61
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    #@13
    .line 62
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    #@1a
    .line 63
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    #@21
    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .param p1, "spe"    # Lorg/xml/sax/SAXParseException;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@3
    .line 90
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    #@a
    .line 91
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    #@11
    .line 92
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    #@18
    .line 93
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    #@1f
    .line 88
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getColumnNumber()I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@b
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getLineNumber()I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@b
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getPublicId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@b
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Lorg/xml/sax/helpers/LocatorImpl;->getSystemId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SAXSourceLocator;->m_locator:Lorg/xml/sax/Locator;

    #@b
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method
