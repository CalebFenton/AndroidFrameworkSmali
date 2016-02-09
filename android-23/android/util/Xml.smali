.class public Landroid/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Xml$XmlSerializerFactory;,
        Landroid/util/Xml$Encoding;
    }
.end annotation


# static fields
.field public static FEATURE_RELAXED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    #@3
    sput-object v0, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    #@5
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    .line 176
    instance-of v0, p0, Landroid/util/AttributeSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 177
    check-cast p0, Landroid/util/AttributeSet;

    #@6
    .line 176
    .end local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object p0

    #@7
    .line 178
    .restart local p0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    new-instance v0, Landroid/util/XmlPullAttributes;

    #@9
    invoke-direct {v0, p0}, Landroid/util/XmlPullAttributes;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@c
    move-object p0, v0

    #@d
    goto :goto_0
.end method

.method public static findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 5
    .param p0, "encodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    if-nez p0, :cond_0

    #@2
    .line 149
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    #@4
    return-object v1

    #@5
    .line 152
    :cond_0
    invoke-static {}, Landroid/util/Xml$Encoding;->values()[Landroid/util/Xml$Encoding;

    #@8
    move-result-object v2

    #@9
    const/4 v1, 0x0

    #@a
    array-length v3, v2

    #@b
    :goto_0
    if-ge v1, v3, :cond_2

    #@d
    aget-object v0, v2, v1

    #@f
    .line 153
    .local v0, "encoding":Landroid/util/Xml$Encoding;
    iget-object v4, v0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    #@11
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 154
    return-object v0

    #@18
    .line 152
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 156
    .end local v0    # "encoding":Landroid/util/Xml$Encoding;
    :cond_2
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@1d
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
.end method

.method public static newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    #@0
    .prologue
    .line 92
    :try_start_0
    new-instance v1, Lorg/kxml2/io/KXmlParser;

    #@2
    invoke-direct {v1}, Lorg/kxml2/io/KXmlParser;-><init>()V

    #@5
    .line 93
    .local v1, "parser":Lorg/kxml2/io/KXmlParser;
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {v1, v2, v3}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V

    #@c
    .line 94
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@f
    const/4 v3, 0x1

    #@10
    invoke-virtual {v1, v2, v3}, Lorg/kxml2/io/KXmlParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 95
    return-object v1

    #@14
    .line 96
    :catch_0
    move-exception v0

    #@15
    .line 97
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1a
    throw v2
.end method

.method public static newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    #@0
    .prologue
    .line 106
    :try_start_0
    sget-object v1, Landroid/util/Xml$XmlSerializerFactory;->instance:Lorg/xmlpull/v1/XmlPullParserFactory;

    #@2
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 107
    :catch_0
    move-exception v0

    #@8
    .line 108
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method public static parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Landroid/util/Xml$Encoding;
    .param p2, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    #@5
    .line 81
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8
    .line 82
    new-instance v1, Lorg/xml/sax/InputSource;

    #@a
    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@d
    .line 83
    .local v1, "source":Lorg/xml/sax/InputSource;
    iget-object v2, p1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    #@12
    .line 84
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@15
    .line 79
    return-void
.end method

.method public static parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    #@5
    .line 70
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8
    .line 71
    new-instance v1, Lorg/xml/sax/InputSource;

    #@a
    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@d
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    #@10
    .line 68
    return-void
.end method

.method public static parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xml/ExpatReader;

    #@2
    invoke-direct {v1}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    #@5
    .line 56
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8
    .line 57
    new-instance v2, Lorg/xml/sax/InputSource;

    #@a
    new-instance v3, Ljava/io/StringReader;

    #@c
    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@12
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 53
    return-void

    #@16
    .line 58
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    #@17
    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1c
    throw v2
.end method
