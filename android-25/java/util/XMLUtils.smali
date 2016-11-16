.class Ljava/util/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/XMLUtils$EH;,
        Ljava/util/XMLUtils$Resolver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final PROPS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>"

.field private static final PROPS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/XMLUtils;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    #@b
    .line 46
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    #@3
    move-result-object v6

    #@4
    .line 167
    .local v6, "tf":Ljavax/xml/transform/TransformerFactory;
    const/4 v3, 0x0

    #@5
    .line 169
    .local v3, "t":Ljavax/xml/transform/Transformer;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    #@8
    move-result-object v3

    #@9
    .line 170
    .local v3, "t":Ljavax/xml/transform/Transformer;
    const-string/jumbo v7, "doctype-system"

    #@c
    const-string/jumbo v8, "http://java.sun.com/dtd/properties.dtd"

    #@f
    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 171
    const-string/jumbo v7, "indent"

    #@15
    const-string/jumbo v8, "yes"

    #@18
    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 172
    const-string/jumbo v7, "method"

    #@1e
    const-string/jumbo v8, "xml"

    #@21
    invoke-virtual {v3, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 173
    const-string/jumbo v7, "encoding"

    #@27
    invoke-virtual {v3, v7, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 177
    .end local v3    # "t":Ljavax/xml/transform/Transformer;
    :cond_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    #@2c
    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    #@2f
    .line 178
    .local v0, "doms":Ljavax/xml/transform/dom/DOMSource;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    #@31
    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    #@34
    .line 180
    .local v2, "sr":Ljavax/xml/transform/stream/StreamResult;
    :try_start_1
    invoke-virtual {v3, v0, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@37
    .line 164
    return-void

    #@38
    .line 174
    .end local v0    # "doms":Ljavax/xml/transform/dom/DOMSource;
    .end local v2    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :catch_0
    move-exception v4

    #@39
    .line 175
    .local v4, "tce":Ljavax/xml/transform/TransformerConfigurationException;
    sget-boolean v7, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    #@3b
    if-nez v7, :cond_0

    #@3d
    new-instance v7, Ljava/lang/AssertionError;

    #@3f
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v7

    #@43
    .line 181
    .end local v4    # "tce":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v0    # "doms":Ljavax/xml/transform/dom/DOMSource;
    .restart local v2    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :catch_1
    move-exception v5

    #@44
    .line 182
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/io/IOException;

    #@46
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    #@49
    .line 183
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4c
    .line 184
    throw v1
.end method

.method static getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 93
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@4
    move-result-object v1

    #@5
    .line 94
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    #@8
    .line 99
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    #@b
    .line 100
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    #@e
    .line 102
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@11
    move-result-object v0

    #@12
    .line 103
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/util/XMLUtils$Resolver;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-direct {v4, v5}, Ljava/util/XMLUtils$Resolver;-><init>(Ljava/util/XMLUtils$Resolver;)V

    #@18
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@1b
    .line 104
    new-instance v4, Ljava/util/XMLUtils$EH;

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-direct {v4, v5}, Ljava/util/XMLUtils$EH;-><init>(Ljava/util/XMLUtils$EH;)V

    #@21
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@24
    .line 105
    new-instance v2, Lorg/xml/sax/InputSource;

    #@26
    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    #@29
    .line 106
    .local v2, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v4

    #@2d
    return-object v4

    #@2e
    .line 107
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v3

    #@2f
    .line 108
    .local v3, "x":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/Error;

    #@31
    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v4
.end method

.method static importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "propertiesElement"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@4
    move-result-object v0

    #@5
    .line 114
    .local v0, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    #@8
    move-result v4

    #@9
    .line 115
    .local v4, "numEntries":I
    if-lez v4, :cond_0

    #@b
    .line 116
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@e
    move-result-object v7

    #@f
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    const-string/jumbo v8, "comment"

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    .line 115
    if-eqz v7, :cond_0

    #@1c
    .line 116
    const/4 v5, 0x1

    #@1d
    .line 117
    .local v5, "start":I
    :cond_0
    move v2, v5

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    #@20
    .line 119
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@23
    move-result-object v7

    #@24
    instance-of v7, v7, Lorg/w3c/dom/Element;

    #@26
    if-nez v7, :cond_2

    #@28
    .line 117
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 122
    :cond_2
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lorg/w3c/dom/Element;

    #@31
    .line 123
    .local v1, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v7, "key"

    #@34
    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_1

    #@3a
    .line 124
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    #@3d
    move-result-object v3

    #@3e
    .line 125
    .local v3, "n":Lorg/w3c/dom/Node;
    if-nez v3, :cond_3

    #@40
    const-string/jumbo v6, ""

    #@43
    .line 126
    .local v6, "val":Ljava/lang/String;
    :goto_2
    const-string/jumbo v7, "key"

    #@46
    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {p0, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    goto :goto_1

    #@4e
    .line 125
    .end local v6    # "val":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    .restart local v6    # "val":Ljava/lang/String;
    goto :goto_2

    #@53
    .line 112
    .end local v1    # "entry":Lorg/w3c/dom/Element;
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v6    # "val":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static load(Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    .line 75
    .local v0, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {p1}, Ljava/util/XMLUtils;->getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v0

    #@5
    .line 79
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@8
    move-result-object v1

    #@9
    .line 80
    .local v1, "propertiesElement":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "version"

    #@c
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 81
    .local v3, "xmlVersion":Ljava/lang/String;
    const-string/jumbo v4, "1.0"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@16
    move-result v4

    #@17
    if-lez v4, :cond_0

    #@19
    .line 82
    new-instance v4, Ljava/util/InvalidPropertiesFormatException;

    #@1b
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Exported Properties file format version "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 84
    const-string/jumbo v6, " is not supported. This java installation can read"

    #@2e
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 85
    const-string/jumbo v6, " versions "

    #@35
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 85
    const-string/jumbo v6, "1.0"

    #@3c
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    .line 85
    const-string/jumbo v6, " or older. You"

    #@43
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    .line 86
    const-string/jumbo v6, " may need to install a newer version of JDK."

    #@4a
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 82
    invoke-direct {v4, v5}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    #@55
    throw v4

    #@56
    .line 76
    .end local v1    # "propertiesElement":Lorg/w3c/dom/Element;
    .end local v3    # "xmlVersion":Ljava/lang/String;
    .local v0, "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    #@57
    .line 77
    .local v2, "saxe":Lorg/xml/sax/SAXException;
    new-instance v4, Ljava/util/InvalidPropertiesFormatException;

    #@59
    invoke-direct {v4, v2}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    #@5c
    throw v4

    #@5d
    .line 87
    .end local v2    # "saxe":Lorg/xml/sax/SAXException;
    .local v0, "doc":Lorg/w3c/dom/Document;
    .restart local v1    # "propertiesElement":Lorg/w3c/dom/Element;
    .restart local v3    # "xmlVersion":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1}, Ljava/util/XMLUtils;->importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V

    #@60
    .line 71
    return-void
.end method

.method static save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    move-result-object v2

    #@4
    .line 136
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    #@5
    .line 138
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 142
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :cond_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    #@c
    move-result-object v3

    #@d
    .line 144
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v9, "properties"

    #@10
    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@13
    move-result-object v9

    #@14
    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@17
    move-result-object v8

    #@18
    .line 143
    check-cast v8, Lorg/w3c/dom/Element;

    #@1a
    .line 146
    .local v8, "properties":Lorg/w3c/dom/Element;
    if-eqz p2, :cond_1

    #@1c
    .line 148
    const-string/jumbo v9, "comment"

    #@1f
    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@22
    move-result-object v9

    #@23
    .line 147
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lorg/w3c/dom/Element;

    #@29
    .line 149
    .local v0, "comments":Lorg/w3c/dom/Element;
    invoke-interface {v3, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@2c
    move-result-object v9

    #@2d
    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@30
    .line 152
    .end local v0    # "comments":Lorg/w3c/dom/Element;
    :cond_1
    monitor-enter p0

    #@31
    .line 153
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    #@34
    move-result-object v9

    #@35
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v6

    #@39
    .local v6, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v9

    #@3d
    if-eqz v9, :cond_2

    #@3f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/String;

    #@45
    .line 155
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "entry"

    #@48
    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@4b
    move-result-object v9

    #@4c
    .line 154
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Lorg/w3c/dom/Element;

    #@52
    .line 156
    .local v4, "entry":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "key"

    #@55
    invoke-interface {v4, v9, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 157
    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    #@5f
    move-result-object v9

    #@60
    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 152
    .end local v4    # "entry":Lorg/w3c/dom/Element;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    #@65
    monitor-exit p0

    #@66
    throw v9

    #@67
    .line 139
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "properties":Lorg/w3c/dom/Element;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v7

    #@68
    .line 140
    .local v7, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    sget-boolean v9, Ljava/util/XMLUtils;->-assertionsDisabled:Z

    #@6a
    if-nez v9, :cond_0

    #@6c
    new-instance v9, Ljava/lang/AssertionError;

    #@6e
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@71
    throw v9

    #@72
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "properties":Lorg/w3c/dom/Element;
    :cond_2
    monitor-exit p0

    #@73
    .line 160
    invoke-static {v3, p1, p3}, Ljava/util/XMLUtils;->emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V

    #@76
    .line 133
    return-void
.end method
