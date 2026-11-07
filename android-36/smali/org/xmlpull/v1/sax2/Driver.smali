.class public Lorg/xmlpull/v1/sax2/Driver;
.super Ljava/lang/Object;
.source "Driver.java"

# interfaces
.implements Lorg/xml/sax/Locator;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/Attributes;


# static fields
.field protected static final whitelist test-api APACHE_DYNAMIC_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final whitelist test-api APACHE_SCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final whitelist test-api DECLARATION_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final whitelist test-api LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final whitelist test-api NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final whitelist test-api NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final whitelist test-api VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field protected whitelist test-api contentHandler:Lorg/xml/sax/ContentHandler;

.field protected whitelist test-api errorHandler:Lorg/xml/sax/ErrorHandler;

.field protected whitelist test-api pp:Lorg/xmlpull/v1/XmlPullParser;

.field protected whitelist test-api systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 69
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 80
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 81
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 82
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 83
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 69
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 86
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 262
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public whitelist test-api getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 268
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 172
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 174
    :cond_11
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 175
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 176
    :cond_22
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 177
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 183
    :cond_33
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "qName"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 121
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 123
    return v0

    .line 119
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 108
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 109
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 111
    return v0

    .line 106
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 221
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 222
    return-object v1

    .line 223
    :cond_a
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    return-object v1

    .line 226
    :cond_13
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 95
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    :cond_26
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 102
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "qName"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 145
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 147
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 133
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 134
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 136
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 103
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "qName"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/sax2/Driver;->parse(Lorg/xml/sax/InputSource;)V

    .line 349
    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 11
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 276
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 278
    .local v0, "reader":Ljava/io/Reader;
    const-string v1, "parsing initialization error: "

    if-nez v0, :cond_72

    .line 279
    :try_start_13
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    .line 280
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "encoding":Ljava/lang/String;
    if-nez v2, :cond_6c

    .line 283
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 284
    iget-object v4, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    if-nez v4, :cond_34

    .line 285
    new-instance v4, Lorg/xml/sax/SAXParseException;

    const-string v5, "null source systemId"

    invoke-direct {v4, v5, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 287
    .local v4, "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v5, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v5, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_33} :catch_d8

    .line 288
    return-void

    .line 292
    .end local v4    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_34
    :try_start_34
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_3f
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_3f} :catch_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_3f} :catch_d8

    move-object v2, v5

    .line 303
    .end local v4    # "url":Ljava/net/URL;
    goto :goto_6c

    .line 294
    :catch_41
    move-exception v4

    .line 296
    .local v4, "nue":Ljava/net/MalformedURLException;
    :try_start_42
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_49} :catch_d8

    move-object v2, v5

    .line 302
    goto :goto_6c

    .line 297
    :catch_4b
    move-exception v5

    .line 298
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_4c
    new-instance v6, Lorg/xml/sax/SAXParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not open file with systemId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0, v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 300
    .local v6, "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v7, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v7, v6}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 301
    return-void

    .line 305
    .end local v4    # "nue":Ljava/net/MalformedURLException;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_6c
    :goto_6c
    iget-object v4, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 306
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "encoding":Ljava/lang/String;
    goto :goto_77

    .line 307
    :cond_72
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_77} :catch_d8

    .line 315
    :goto_77
    nop

    .line 319
    :try_start_78
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 321
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 323
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_af

    .line 324
    new-instance v2, Lorg/xml/sax/SAXParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected start tag not"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 325
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 327
    .local v2, "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v3, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v3, v2}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_ae} :catch_bb

    .line 328
    return-void

    .line 336
    .end local v2    # "saxException":Lorg/xml/sax/SAXParseException;
    :cond_af
    nop

    .line 340
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p0, v1}, Lorg/xmlpull/v1/sax2/Driver;->parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 344
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 345
    return-void

    .line 330
    :catch_bb
    move-exception v2

    .line 331
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lorg/xml/sax/SAXParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p0, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 334
    .local v3, "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v3}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 335
    return-void

    .line 309
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "saxException":Lorg/xml/sax/SAXParseException;
    :catch_d8
    move-exception v2

    .line 310
    .restart local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lorg/xml/sax/SAXParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p0, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 313
    .restart local v3    # "saxException":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v3}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 314
    return-void
.end method

.method public whitelist test-api parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 18
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 354
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v3

    .line 356
    .local v3, "namespaceAware":Z
    :try_start_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_11a

    .line 360
    new-array v0, v4, [I

    .line 361
    .local v0, "holderForStartAndLength":[I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    .local v4, "rawName":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 363
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 364
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 365
    .local v7, "level":I
    const/4 v9, 0x2

    .line 369
    .local v9, "type":I
    :goto_25
    const/16 v10, 0x3a

    const/4 v11, 0x0

    packed-switch v9, :pswitch_data_15a

    goto/16 :goto_10b

    .line 405
    :pswitch_2d
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v10

    .line 406
    .local v10, "chars":[C
    iget-object v12, v1, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    aget v11, v0, v11

    aget v13, v0, v8

    invoke-interface {v12, v10, v11, v13}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 410
    goto/16 :goto_10b

    .line 413
    .end local v10    # "chars":[C
    :pswitch_3c
    if-eqz v3, :cond_90

    .line 414
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 415
    .end local v6    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 416
    .end local v5    # "prefix":Ljava/lang/String;
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v6, :cond_54

    .line 417
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 418
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_54
    iget-object v5, v1, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    .line 424
    if-eqz v6, :cond_5e

    move-object v13, v12

    goto :goto_62

    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 422
    :goto_62
    invoke-interface {v5, v10, v12, v13}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 429
    .local v5, "depth":I
    if-le v7, v5, :cond_73

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v11

    .line 430
    .local v11, "countPrev":I
    :cond_73
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v10

    .line 432
    .local v10, "count":I
    add-int/lit8 v13, v10, -0x1

    .local v13, "i":I
    :goto_7e
    if-lt v13, v11, :cond_8c

    .line 434
    iget-object v14, v1, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 435
    invoke-interface {v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v15

    .line 434
    invoke-interface {v14, v15}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v13, v13, -0x1

    goto :goto_7e

    .line 438
    .end local v5    # "depth":I
    .end local v10    # "count":I
    .end local v11    # "countPrev":I
    .end local v13    # "i":I
    :cond_8c
    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_10b

    .line 439
    .end local v12    # "name":Ljava/lang/String;
    .local v5, "prefix":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :cond_90
    iget-object v10, v1, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 440
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 441
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 439
    invoke-interface {v10, v11, v12, v13}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    goto/16 :goto_10b

    .line 371
    :pswitch_a3
    if-eqz v3, :cond_fa

    .line 372
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    sub-int/2addr v12, v8

    .line 374
    .local v12, "depth":I
    if-le v7, v12, :cond_b1

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    goto :goto_b2

    :cond_b1
    move v13, v11

    .line 376
    .local v13, "countPrev":I
    :goto_b2
    add-int/lit8 v14, v12, 0x1

    invoke-interface {v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v14

    .line 377
    .local v14, "count":I
    move v15, v13

    .local v15, "i":I
    :goto_b9
    if-ge v15, v14, :cond_cf

    .line 379
    iget-object v8, v1, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 380
    invoke-interface {v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v10

    .line 381
    invoke-interface {v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 379
    invoke-interface {v8, v10, v11}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/16 v10, 0x3a

    const/4 v11, 0x0

    goto :goto_b9

    .line 384
    .end local v15    # "i":I
    :cond_cf
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 385
    .end local v6    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 386
    .end local v5    # "prefix":Ljava/lang/String;
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v6, :cond_e8

    .line 387
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 388
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_e8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 395
    if-nez v6, :cond_f0

    move-object v10, v8

    goto :goto_f4

    :cond_f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 392
    :goto_f4
    invoke-virtual {v1, v5, v8, v10}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v12    # "depth":I
    .end local v13    # "countPrev":I
    .end local v14    # "count":I
    move-object v5, v6

    move-object v6, v8

    goto :goto_10b

    .line 397
    .end local v8    # "name":Ljava/lang/String;
    .restart local v5    # "prefix":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :cond_fa
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 399
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 397
    invoke-virtual {v1, v8, v10, v11}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    goto :goto_10b

    .line 447
    :pswitch_10a
    goto :goto_116

    .line 449
    :goto_10b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .line 450
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-gt v8, v7, :cond_117

    .line 455
    .end local v0    # "holderForStartAndLength":[I
    .end local v4    # "rawName":Ljava/lang/StringBuilder;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "level":I
    .end local v9    # "type":I
    :goto_116
    goto :goto_158

    .line 450
    .restart local v0    # "holderForStartAndLength":[I
    .restart local v4    # "rawName":Ljava/lang/StringBuilder;
    .restart local v5    # "prefix":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "level":I
    .restart local v9    # "type":I
    :cond_117
    const/4 v8, 0x1

    goto/16 :goto_25

    .line 357
    .end local v0    # "holderForStartAndLength":[I
    .end local v4    # "rawName":Ljava/lang/StringBuilder;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "level":I
    .end local v9    # "type":I
    :cond_11a
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start tag must be read before skiping subtree"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v3    # "namespaceAware":Z
    .end local p0    # "this":Lorg/xmlpull/v1/sax2/Driver;
    .end local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    throw v0
    :try_end_137
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_137} :catch_137

    .line 451
    .restart local v3    # "namespaceAware":Z
    .restart local p0    # "this":Lorg/xmlpull/v1/sax2/Driver;
    .restart local p1    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_137
    move-exception v0

    .line 452
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lorg/xml/sax/SAXParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsing error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 453
    .local v4, "saxException":Lorg/xml/sax/SAXParseException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 454
    iget-object v5, v1, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v5, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 456
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "saxException":Lorg/xml/sax/SAXParseException;
    :goto_158
    return-void

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_a3
        :pswitch_3c
        :pswitch_2d
    .end packed-switch
.end method

.method public whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 259
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 260
    return-void
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 253
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 249
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 265
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 266
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 192
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    :try_start_2
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 193
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_3d

    .line 194
    :cond_12
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 195
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p2, :cond_3d

    .line 196
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_3d

    .line 198
    :cond_28
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 199
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-interface {v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_3d

    .line 210
    :cond_38
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 215
    :cond_3d
    :goto_3d
    goto :goto_3f

    .line 213
    :catch_3e
    move-exception v0

    .line 216
    :goto_3f
    return-void
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 235
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "not supported setting property "

    if-nez v0, :cond_54

    .line 237
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 241
    :try_start_12
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_17} :catch_19

    .line 244
    nop

    .line 247
    return-void

    .line 242
    :catch_19
    move-exception v0

    .line 243
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3d
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_54
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 467
    return-void
.end method
