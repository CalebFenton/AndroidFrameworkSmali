.class Ljava/util/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/XMLUtils$Resolver;,
        Ljava/util/XMLUtils$EH;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EXTERNAL_XML_VERSION:Ljava/lang/String; = "1.0"

.field private static final blacklist PROPS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>"

.field private static final blacklist PROPS_DTD_URI:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 46
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 167
    .local v0, "tf":Ljavax/xml/transform/TransformerFactory;
    const/4 v1, 0x0

    .line 169
    .local v1, "t":Ljavax/xml/transform/Transformer;
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    move-object v1, v2

    .line 170
    const-string v2, "doctype-system"

    const-string v3, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "indent"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "method"

    const-string v3, "xml"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "encoding"

    invoke-virtual {v1, v2, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_5 .. :try_end_24} :catch_25

    .line 176
    goto :goto_27

    .line 174
    :catch_25
    move-exception v2

    .line 175
    .local v2, "tce":Ljavax/xml/transform/TransformerConfigurationException;
    nop

    .line 177
    .end local v2    # "tce":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_27
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 178
    .local v2, "doms":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 180
    .local v3, "sr":Ljavax/xml/transform/stream/StreamResult;
    :try_start_31
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_34
    .catch Ljavax/xml/transform/TransformerException; {:try_start_31 .. :try_end_34} :catch_36

    .line 185
    nop

    .line 186
    return-void

    .line 181
    :catch_36
    move-exception v4

    .line 182
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    .line 183
    .local v5, "ioe":Ljava/io/IOException;
    invoke-virtual {v5, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 184
    throw v5
.end method

.method static blacklist getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 94
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 99
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 100
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 102
    :try_start_e
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 103
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/util/XMLUtils$Resolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/XMLUtils$Resolver;-><init>(Ljava/util/XMLUtils-IA;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 104
    new-instance v2, Ljava/util/XMLUtils$EH;

    invoke-direct {v2, v3}, Ljava/util/XMLUtils$EH;-><init>(Ljava/util/XMLUtils-IA;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 105
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v2, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_2c} :catch_2d

    return-object v3

    .line 107
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_2d
    move-exception v1

    .line 108
    .local v1, "x":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V
    .registers 10
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "propertiesElement"    # Lorg/w3c/dom/Element;

    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 114
    .local v0, "entries":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 115
    .local v1, "numEntries":I
    const/4 v2, 0x0

    if-lez v1, :cond_1d

    .line 116
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    nop

    .line 117
    .local v2, "start":I
    :goto_1e
    move v3, v2

    .local v3, "i":I
    :goto_1f
    if-ge v3, v1, :cond_4f

    .line 119
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/Element;

    if-nez v4, :cond_2a

    .line 120
    goto :goto_4c

    .line 122
    :cond_2a
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 123
    .local v4, "entry":Lorg/w3c/dom/Element;
    const-string v5, "key"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 124
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 125
    .local v6, "n":Lorg/w3c/dom/Node;
    if-nez v6, :cond_41

    const-string v7, ""

    goto :goto_45

    :cond_41
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "val":Ljava/lang/String;
    :goto_45
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .end local v4    # "entry":Lorg/w3c/dom/Element;
    .end local v6    # "n":Lorg/w3c/dom/Node;
    .end local v7    # "val":Ljava/lang/String;
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 129
    .end local v3    # "i":I
    :cond_4f
    return-void
.end method

.method static blacklist load(Ljava/util/Properties;Ljava/io/InputStream;)V
    .registers 9
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-static {p1}, Ljava/util/XMLUtils;->getLoadingDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_5} :catch_45

    .line 78
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .local v1, "doc":Lorg/w3c/dom/Document;
    nop

    .line 79
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 80
    .local v0, "propertiesElement":Lorg/w3c/dom/Element;
    const-string v2, "version"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "xmlVersion":Ljava/lang/String;
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1c

    .line 87
    invoke-static {p0, v0}, Ljava/util/XMLUtils;->importProperties(Ljava/util/Properties;Lorg/w3c/dom/Element;)V

    .line 88
    return-void

    .line 82
    :cond_1c
    new-instance v4, Ljava/util/InvalidPropertiesFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exported Properties file format version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported. This java installation can read versions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " or older. You may need to install a newer version of JDK."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "xmlVersion":Ljava/lang/String;
    .local v0, "doc":Lorg/w3c/dom/Document;
    :catch_45
    move-exception v1

    .line 77
    .local v1, "saxe":Lorg/xml/sax/SAXException;
    new-instance v2, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v2, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 136
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 138
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_5
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_9} :catch_b

    move-object v1, v2

    .line 141
    goto :goto_d

    .line 139
    :catch_b
    move-exception v2

    .line 140
    .local v2, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    nop

    .line 142
    .end local v2    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_d
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 143
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v3, "properties"

    .line 144
    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 146
    .local v3, "properties":Lorg/w3c/dom/Element;
    if-eqz p2, :cond_32

    .line 147
    const-string v4, "comment"

    .line 148
    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 147
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 149
    .local v4, "comments":Lorg/w3c/dom/Element;
    invoke-interface {v2, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    .end local v4    # "comments":Lorg/w3c/dom/Element;
    :cond_32
    monitor-enter p0

    .line 153
    :try_start_33
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 154
    .local v5, "key":Ljava/lang/String;
    const-string v6, "entry"

    .line 155
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 154
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 156
    .local v6, "entry":Lorg/w3c/dom/Element;
    const-string v7, "key"

    invoke-interface {v6, v7, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 158
    nop

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lorg/w3c/dom/Element;
    goto :goto_3b

    .line 159
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_6a

    .line 160
    invoke-static {v2, p1, p3}, Ljava/util/XMLUtils;->emitDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 161
    return-void

    .line 159
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4
.end method
