.class public Lorg/xmlpull/v1/sax2/Driver;
.super Ljava/lang/Object;
.source "Driver.java"

# interfaces
.implements Lorg/xml/sax/Locator;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/Attributes;


# static fields
.field protected static final APACHE_DYNAMIC_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final APACHE_SCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final DECLARATION_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field protected contentHandler:Lorg/xml/sax/ContentHandler;

.field protected errorHandler:Lorg/xml/sax/ErrorHandler;

.field protected pp:Lorg/xmlpull/v1/XmlPullParser;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    #@5
    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@8
    iput-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@a
    .line 69
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    #@c
    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@f
    iput-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@11
    .line 80
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    #@14
    move-result-object v0

    #@15
    .line 81
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    #@19
    .line 82
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@1f
    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    #@5
    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@8
    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@a
    .line 69
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    #@c
    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@f
    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@11
    .line 86
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@13
    .line 85
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 255
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 173
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@e
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 174
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/namespace-prefixes"

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 175
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@1e
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    #@21
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 176
    :cond_1
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 177
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@31
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#validation"

    #@34
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@37
    move-result v0

    #@38
    return v0

    #@39
    .line 183
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3b
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    return v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 121
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 123
    return v0

    #@16
    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 127
    :cond_1
    const/4 v1, -0x1

    #@1a
    return v1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 108
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 109
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@17
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 108
    if-eqz v1, :cond_0

    #@21
    .line 111
    return v0

    #@22
    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 115
    :cond_1
    const/4 v1, -0x1

    #@26
    return v1
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 221
    const-string/jumbo v0, "http://xml.org/sax/properties/declaration-handler"

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 222
    return-object v1

    #@b
    .line 223
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 224
    return-object v1

    #@15
    .line 226
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@17
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 95
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 96
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const/16 v2, 0x3a

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@19
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 99
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@28
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 145
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 147
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@17
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 151
    :cond_1
    const/4 v1, 0x0

    #@20
    return-object v1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 133
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 134
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@17
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 133
    if-eqz v1, :cond_0

    #@21
    .line 136
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@23
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 140
    :cond_1
    const/4 v1, 0x0

    #@2c
    return-object v1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/sax2/Driver;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 347
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 10
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    iput-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@6
    .line 274
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    invoke-interface {v8, p0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@b
    .line 276
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@e
    move-result-object v4

    #@f
    .line 278
    .local v4, "reader":Ljava/io/Reader;
    if-nez v4, :cond_2

    #@11
    .line 279
    :try_start_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@14
    move-result-object v6

    #@15
    .line 280
    .local v6, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 282
    .local v0, "encoding":Ljava/lang/String;
    if-nez v6, :cond_1

    #@1b
    .line 283
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    iput-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@21
    .line 284
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@23
    if-nez v8, :cond_0

    #@25
    .line 285
    new-instance v5, Lorg/xml/sax/SAXParseException;

    #@27
    .line 286
    const-string/jumbo v8, "null source systemId"

    #@2a
    .line 285
    invoke-direct {v5, v8, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@2d
    .line 287
    .local v5, "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2f
    invoke-interface {v8, v5}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    #@32
    .line 288
    return-void

    #@33
    .line 292
    .end local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/net/URL;

    #@35
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@37
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@3a
    .line 293
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    #@3d
    move-result-object v6

    #@3e
    .line 305
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@40
    invoke-interface {v8, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    #@43
    .line 319
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@45
    invoke-interface {v8}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@48
    .line 321
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@4a
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@4d
    .line 323
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@4f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@52
    move-result v8

    #@53
    const/4 v9, 0x2

    #@54
    if-eq v8, v9, :cond_3

    #@56
    .line 324
    new-instance v5, Lorg/xml/sax/SAXParseException;

    #@58
    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "expected start tag not"

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    iget-object v9, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@66
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    .line 324
    invoke-direct {v5, v8, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@75
    .line 327
    .restart local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@77
    invoke-interface {v8, v5}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    #@7a
    .line 328
    return-void

    #@7b
    .line 294
    .end local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    .restart local v0    # "encoding":Ljava/lang/String;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    #@7c
    .line 296
    .local v3, "nue":Ljava/net/MalformedURLException;
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    #@7e
    .end local v6    # "stream":Ljava/io/InputStream;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@80
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    #@83
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto :goto_0

    #@84
    .line 297
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@85
    .line 298
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_5
    new-instance v5, Lorg/xml/sax/SAXParseException;

    #@87
    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v9, "could not open file with systemId "

    #@8f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    iget-object v9, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    .line 298
    invoke-direct {v5, v8, p0, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@a0
    .line 300
    .restart local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@a2
    invoke-interface {v8, v5}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@a5
    .line 301
    return-void

    #@a6
    .line 307
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "nue":Ljava/net/MalformedURLException;
    .end local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_2
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@a8
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    #@ab
    goto :goto_1

    #@ac
    .line 309
    :catch_2
    move-exception v1

    #@ad
    .line 310
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lorg/xml/sax/SAXParseException;

    #@af
    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v9, "parsing initialization error: "

    #@b7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v8

    #@bb
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v8

    #@bf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    .line 310
    invoke-direct {v5, v8, p0, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@c6
    .line 313
    .restart local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@c8
    invoke-interface {v8, v5}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@cb
    .line 314
    return-void

    #@cc
    .line 330
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    :catch_3
    move-exception v1

    #@cd
    .line 331
    .restart local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lorg/xml/sax/SAXParseException;

    #@cf
    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v9, "parsing initialization error: "

    #@d7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v8

    #@db
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v8

    #@df
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v8

    #@e3
    .line 331
    invoke-direct {v5, v8, p0, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@e6
    .line 334
    .restart local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@e8
    invoke-interface {v8, v5}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@eb
    .line 335
    return-void

    #@ec
    .line 340
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_3
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@ee
    invoke-virtual {p0, v8}, Lorg/xmlpull/v1/sax2/Driver;->parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f1
    .line 344
    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@f3
    invoke-interface {v8}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@f6
    .line 270
    return-void
.end method

.method public parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@6
    .line 354
    const-string/jumbo v18, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@9
    move-object/from16 v0, p1

    #@b
    move-object/from16 v1, v18

    #@d
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@10
    move-result v13

    #@11
    .line 356
    .local v13, "namespaceAware":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@14
    move-result v18

    #@15
    const/16 v19, 0x2

    #@17
    move/from16 v0, v18

    #@19
    move/from16 v1, v19

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 357
    new-instance v18, Lorg/xml/sax/SAXException;

    #@1f
    .line 358
    new-instance v19, Ljava/lang/StringBuilder;

    #@21
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v20, "start tag must be read before skiping subtree"

    #@27
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v19

    #@2b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2e
    move-result-object v20

    #@2f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v19

    #@33
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v19

    #@37
    .line 357
    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 451
    :catch_0
    move-exception v8

    #@3c
    .line 452
    .local v8, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v16, Lorg/xml/sax/SAXParseException;

    #@3e
    new-instance v18, Ljava/lang/StringBuilder;

    #@40
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v19, "parsing error: "

    #@46
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v18

    #@4a
    move-object/from16 v0, v18

    #@4c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v18

    #@50
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v18

    #@54
    move-object/from16 v0, v16

    #@56
    move-object/from16 v1, v18

    #@58
    move-object/from16 v2, p0

    #@5a
    invoke-direct {v0, v1, v2, v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@5d
    .line 453
    .local v16, "saxException":Lorg/xml/sax/SAXParseException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@60
    .line 454
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@64
    move-object/from16 v18, v0

    #@66
    move-object/from16 v0, v18

    #@68
    move-object/from16 v1, v16

    #@6a
    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    #@6d
    .line 352
    .end local v8    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v16    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_0
    :pswitch_0
    return-void

    #@6e
    .line 360
    :cond_1
    const/16 v18, 0x2

    #@70
    :try_start_1
    move/from16 v0, v18

    #@72
    new-array v9, v0, [I

    #@74
    .line 361
    .local v9, "holderForStartAndLength":[I
    new-instance v15, Ljava/lang/StringBuilder;

    #@76
    const/16 v18, 0x10

    #@78
    move/from16 v0, v18

    #@7a
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7d
    .line 362
    .local v15, "rawName":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    #@7e
    .line 363
    .local v14, "prefix":Ljava/lang/String;
    const/4 v12, 0x0

    #@7f
    .line 364
    .local v12, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@82
    move-result v18

    #@83
    add-int/lit8 v11, v18, -0x1

    #@85
    .line 365
    .local v11, "level":I
    const/16 v17, 0x2

    #@87
    .line 369
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .local v17, "type":I
    :goto_0
    packed-switch v17, :pswitch_data_0

    #@8a
    .line 449
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8d
    move-result v17

    #@8e
    .line 450
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@91
    move-result v18

    #@92
    move/from16 v0, v18

    #@94
    if-le v0, v11, :cond_0

    #@96
    goto :goto_0

    #@97
    .line 371
    :pswitch_1
    if-eqz v13, :cond_7

    #@99
    .line 372
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9c
    move-result v18

    #@9d
    add-int/lit8 v7, v18, -0x1

    #@9f
    .line 374
    .local v7, "depth":I
    if-le v11, v7, :cond_3

    #@a1
    move-object/from16 v0, p1

    #@a3
    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@a6
    move-result v6

    #@a7
    .line 376
    .local v6, "countPrev":I
    :goto_2
    add-int/lit8 v18, v7, 0x1

    #@a9
    move-object/from16 v0, p1

    #@ab
    move/from16 v1, v18

    #@ad
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@b0
    move-result v5

    #@b1
    .line 377
    .local v5, "count":I
    move v10, v6

    #@b2
    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_4

    #@b4
    .line 379
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@b8
    move-object/from16 v18, v0

    #@ba
    .line 380
    move-object/from16 v0, p1

    #@bc
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    #@bf
    move-result-object v19

    #@c0
    .line 381
    move-object/from16 v0, p1

    #@c2
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    #@c5
    move-result-object v20

    #@c6
    .line 379
    invoke-interface/range {v18 .. v20}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@c9
    .line 377
    add-int/lit8 v10, v10, 0x1

    #@cb
    goto :goto_3

    #@cc
    .line 374
    .end local v5    # "count":I
    .end local v6    # "countPrev":I
    .end local v10    # "i":I
    :cond_3
    const/4 v6, 0x0

    #@cd
    .restart local v6    # "countPrev":I
    goto :goto_2

    #@ce
    .line 384
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d1
    move-result-object v12

    #@d2
    .line 385
    .local v12, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    .line 386
    .local v14, "prefix":Ljava/lang/String;
    if-eqz v14, :cond_5

    #@d8
    .line 387
    const/16 v18, 0x0

    #@da
    move/from16 v0, v18

    #@dc
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@df
    .line 388
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    .line 389
    const/16 v18, 0x3a

    #@e4
    move/from16 v0, v18

    #@e6
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e9
    .line 390
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    .line 392
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@ef
    move-result-object v19

    #@f0
    .line 395
    if-nez v14, :cond_6

    #@f2
    move-object/from16 v18, v12

    #@f4
    .line 392
    :goto_4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v19

    #@f8
    move-object/from16 v2, v18

    #@fa
    invoke-virtual {v0, v1, v12, v2}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@fd
    goto :goto_1

    #@fe
    .line 395
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v18

    #@102
    goto :goto_4

    #@103
    .line 397
    .end local v5    # "count":I
    .end local v6    # "countPrev":I
    .end local v7    # "depth":I
    .end local v10    # "i":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@106
    move-result-object v18

    #@107
    .line 398
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10a
    move-result-object v19

    #@10b
    .line 399
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10e
    move-result-object v20

    #@10f
    .line 397
    move-object/from16 v0, p0

    #@111
    move-object/from16 v1, v18

    #@113
    move-object/from16 v2, v19

    #@115
    move-object/from16 v3, v20

    #@117
    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@11a
    goto/16 :goto_1

    #@11c
    .line 405
    :pswitch_2
    move-object/from16 v0, p1

    #@11e
    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    #@121
    move-result-object v4

    #@122
    .line 406
    .local v4, "chars":[C
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@126
    move-object/from16 v18, v0

    #@128
    .line 407
    const/16 v19, 0x0

    #@12a
    aget v19, v9, v19

    #@12c
    .line 408
    const/16 v20, 0x1

    #@12e
    aget v20, v9, v20

    #@130
    .line 406
    move-object/from16 v0, v18

    #@132
    move/from16 v1, v19

    #@134
    move/from16 v2, v20

    #@136
    invoke-interface {v0, v4, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@139
    goto/16 :goto_1

    #@13b
    .line 413
    .end local v4    # "chars":[C
    :pswitch_3
    if-eqz v13, :cond_b

    #@13d
    .line 414
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@140
    move-result-object v12

    #@141
    .line 415
    .restart local v12    # "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    #@144
    move-result-object v14

    #@145
    .line 416
    .restart local v14    # "prefix":Ljava/lang/String;
    if-eqz v14, :cond_8

    #@147
    .line 417
    const/16 v18, 0x0

    #@149
    move/from16 v0, v18

    #@14b
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@14e
    .line 418
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    .line 419
    const/16 v18, 0x3a

    #@153
    move/from16 v0, v18

    #@155
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@158
    .line 420
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    .line 422
    :cond_8
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@15f
    move-object/from16 v19, v0

    #@161
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@164
    move-result-object v20

    #@165
    .line 424
    if-eqz v14, :cond_9

    #@167
    move-object/from16 v18, v12

    #@169
    .line 422
    :goto_5
    move-object/from16 v0, v19

    #@16b
    move-object/from16 v1, v20

    #@16d
    move-object/from16 v2, v18

    #@16f
    invoke-interface {v0, v1, v12, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@172
    .line 427
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@175
    move-result v7

    #@176
    .line 429
    .restart local v7    # "depth":I
    if-le v11, v7, :cond_a

    #@178
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17b
    move-result v18

    #@17c
    move-object/from16 v0, p1

    #@17e
    move/from16 v1, v18

    #@180
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@183
    move-result v6

    #@184
    .line 430
    .restart local v6    # "countPrev":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@187
    move-result v18

    #@188
    add-int/lit8 v18, v18, -0x1

    #@18a
    move-object/from16 v0, p1

    #@18c
    move/from16 v1, v18

    #@18e
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@191
    move-result v5

    #@192
    .line 432
    .restart local v5    # "count":I
    add-int/lit8 v10, v5, -0x1

    #@194
    .restart local v10    # "i":I
    :goto_7
    if-lt v10, v6, :cond_2

    #@196
    .line 434
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@19a
    move-object/from16 v18, v0

    #@19c
    .line 435
    move-object/from16 v0, p1

    #@19e
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    #@1a1
    move-result-object v19

    #@1a2
    .line 434
    invoke-interface/range {v18 .. v19}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@1a5
    .line 432
    add-int/lit8 v10, v10, -0x1

    #@1a7
    goto :goto_7

    #@1a8
    .line 424
    .end local v5    # "count":I
    .end local v6    # "countPrev":I
    .end local v7    # "depth":I
    .end local v10    # "i":I
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v18

    #@1ac
    goto :goto_5

    #@1ad
    .line 429
    .restart local v7    # "depth":I
    :cond_a
    const/4 v6, 0x0

    #@1ae
    .restart local v6    # "countPrev":I
    goto :goto_6

    #@1af
    .line 439
    .end local v6    # "countPrev":I
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1b3
    move-object/from16 v18, v0

    #@1b5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@1b8
    move-result-object v19

    #@1b9
    .line 440
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1bc
    move-result-object v20

    #@1bd
    .line 441
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c0
    move-result-object v21

    #@1c1
    .line 439
    invoke-interface/range {v18 .. v21}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    #@1c4
    goto/16 :goto_1

    #@1c6
    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 259
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 257
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 253
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 249
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 265
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 264
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 193
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@b
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@e
    invoke-interface {v1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    #@11
    .line 189
    :cond_0
    :goto_0
    return-void

    #@12
    .line 194
    :cond_1
    const-string/jumbo v1, "http://xml.org/sax/features/namespace-prefixes"

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 195
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@1d
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    #@20
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eq v1, p2, :cond_0

    #@26
    .line 196
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@28
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    #@2b
    invoke-interface {v1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    #@2e
    goto :goto_0

    #@2f
    .line 213
    :catch_0
    move-exception v0

    #@30
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    #@31
    .line 198
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    #@34
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 199
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@3c
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#validation"

    #@3f
    invoke-interface {v1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    #@42
    goto :goto_0

    #@43
    .line 210
    :cond_3
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@45
    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    const-string/jumbo v1, "http://xml.org/sax/properties/declaration-handler"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 236
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "not supported setting property "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 237
    :cond_0
    const-string/jumbo v1, "http://xml.org/sax/properties/lexical-handler"

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 238
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "not supported setting property "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@45
    throw v1

    #@46
    .line 241
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    #@48
    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 232
    return-void

    #@4c
    .line 242
    :catch_0
    move-exception v0

    #@4d
    .line 243
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    #@4f
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v3, "not supported set property "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v3, ": "

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@71
    throw v1
.end method

.method protected startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0, p1, p2, p3, p0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@5
    .line 465
    return-void
.end method
