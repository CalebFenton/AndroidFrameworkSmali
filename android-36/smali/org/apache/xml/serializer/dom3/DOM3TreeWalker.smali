.class final Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
.super Ljava/lang/Object;
.source "DOM3TreeWalker.java"


# static fields
.field private static final greylist CANONICAL:I = 0x1

.field private static final greylist CDATA:I = 0x2

.field private static final greylist CHARNORMALIZE:I = 0x4

.field private static final greylist COMMENTS:I = 0x8

.field private static final greylist DISCARDDEFAULT:I = 0x8000

.field private static final greylist DTNORMALIZE:I = 0x10

.field private static final greylist ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final greylist ENTITIES:I = 0x40

.field private static final greylist IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final greylist INFOSET:I = 0x80

.field private static final greylist NAMESPACEDECLS:I = 0x200

.field private static final greylist NAMESPACES:I = 0x100

.field private static final greylist NORMALIZECHARS:I = 0x400

.field private static final greylist PRETTY_PRINT:I = 0x10000

.field private static final greylist SCHEMAVALIDATE:I = 0x2000

.field private static final greylist SPLITCDATA:I = 0x800

.field private static final greylist VALIDATE:I = 0x1000

.field private static final greylist WELLFORMED:I = 0x4000

.field private static final greylist XMLDECL:I = 0x40000

.field private static final greylist XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field private static final greylist XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final greylist XML_PREFIX:Ljava/lang/String; = "xml"

.field private static final greylist XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final greylist s_propKeys:Ljava/util/Hashtable;


# instance fields
.field private greylist fDOMConfigProperties:Ljava/util/Properties;

.field private greylist fElementDepth:I

.field private greylist fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private greylist fFeatures:I

.field private greylist fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private greylist fInEntityRef:Z

.field private greylist fIsLevel3DOM:Z

.field private greylist fIsXMLVersion11:Z

.field private greylist fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected greylist fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private greylist fLocator:Lorg/xml/sax/helpers/LocatorImpl;

.field protected greylist fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private greylist fNewLine:Ljava/lang/String;

.field greylist fNextIsRaw:Z

.field private greylist fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private greylist fWhatToShowFilter:I

.field private greylist fXMLVersion:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 1956
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    .line 1965
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1966
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1973
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1980
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1988
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1995
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 2002
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 2010
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 2017
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    new-instance v1, Ljava/lang/Integer;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 2024
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    const-string v1, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    const-string v1, "omit-xml-declaration"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    const-string v1, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    const-string v1, "encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    const-string v1, "{http://xml.apache.org/xerces-2j}entities"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V
    .registers 7

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 80
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 97
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fInEntityRef:Z

    .line 103
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fXMLVersion:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 109
    iput-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 112
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    .line 115
    iput-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    .line 136
    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 209
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 211
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 212
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 213
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 214
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    .line 216
    new-instance p1, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 217
    new-instance p1, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {p1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 219
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/apache/xml/serializer/Serializer;->getOutputFormat()Ljava/util/Properties;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    .line 220
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {p1, p2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 221
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->initProperties(Ljava/util/Properties;)V

    .line 225
    :try_start_4a
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "user.dir"

    .line 226
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "dummy.xsl"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_6b} :catch_6b

    :catch_6b
    return-void
.end method

.method private final greylist dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_8

    .line 381
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/ExtendedContentHandler;->characters(Lorg/w3c/dom/Node;)V

    return-void

    .line 383
    :cond_8
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p1

    .line 384
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method


# virtual methods
.method protected greylist applyFilter(Lorg/w3c/dom/Node;I)Z
    .registers 4

    .line 477
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_16

    iget p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_16

    .line 479
    invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_14

    const/4 p1, 0x3

    if-eq p0, p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V
    .registers 16

    .line 1751
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_99

    .line 1752
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1754
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8d

    .line 1758
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1759
    const-string v3, "unbound-prefix-in-entity-reference"

    if-eqz v2, :cond_45

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 1760
    invoke-virtual {v4, v2}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_45

    .line 1761
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1765
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 1766
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1762
    invoke-virtual {v4, v3, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1769
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_45

    .line 1770
    new-instance v5, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x3

    const-string v8, "unbound-prefix-in-entity-reference"

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v2, v5}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1781
    :cond_45
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v4, 0x0

    .line 1783
    :goto_4a
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_8d

    .line 1784
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8a

    .line 1785
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 1786
    invoke-virtual {v6, v5}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8a

    .line 1787
    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1791
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 1792
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 1793
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 1788
    invoke-virtual {v5, v3, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1795
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_8a

    .line 1796
    new-instance v7, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x3

    const-string v10, "unbound-prefix-in-entity-reference"

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v5, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 1809
    :cond_8d
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1810
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    :cond_96
    move-object v0, v1

    goto/16 :goto_4

    :cond_99
    return-void
.end method

.method protected greylist endNode(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    return-void

    .line 452
    :cond_10
    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    return-void

    .line 460
    :cond_16
    check-cast p1, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    return-void

    .line 455
    :cond_1c
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    return-void
.end method

.method protected greylist fixupElementNS(Lorg/w3c/dom/Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1887
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1888
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1889
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 1891
    const-string v4, "xmlns"

    const-string v5, "http://www.w3.org/2000/xmlns/"

    const-string v6, ""

    if-eqz v1, :cond_60

    if-nez v2, :cond_1a

    move-object v2, v6

    .line 1895
    :cond_1a
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p1, v2}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1898
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto/16 :goto_a7

    .line 1909
    :cond_2a
    iget p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_55

    .line 1910
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_52

    .line 1913
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 1911
    :cond_52
    :goto_52
    invoke-interface {v0, v5, v4, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_55
    :goto_55
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p1, v2, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1917
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_60
    if-eqz v3, :cond_85

    .line 1923
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_85

    .line 1941
    :cond_69
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p1, v6}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 1942
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_a7

    .line 1943
    invoke-interface {v0, v5, v4, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p1, v6, v6}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1945
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p0, v6, v6}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 1925
    :cond_85
    :goto_85
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1928
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1926
    const-string v1, "ER_NULL_LOCAL_ELEMENT_NAME"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1930
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_a7

    .line 1931
    new-instance v2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const-string v5, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {p0, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_a7
    :goto_a7
    return-void
.end method

.method protected greylist initProperties(Ljava/util/Properties;)V
    .registers 8

    .line 2051
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 2053
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2064
    sget-object v2, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2066
    instance-of v3, v2, Ljava/lang/Integer;

    const-string v4, "yes"

    if-eqz v3, :cond_3b

    .line 2079
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2080
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2081
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_4

    .line 2083
    :cond_34
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_4

    .line 2089
    :cond_3b
    const-string v2, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    .line 2091
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_61

    .line 2093
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2094
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    .line 2095
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    goto :goto_4

    .line 2097
    :cond_5b
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    goto :goto_4

    .line 2099
    :cond_61
    const-string v2, "omit-xml-declaration"

    .line 2100
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 2103
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 2104
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_4

    .line 2106
    :cond_79
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_4

    .line 2108
    :cond_7f
    const-string v2, "{http://xml.apache.org/xerces-2j}xml-version"

    .line 2111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 2114
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2115
    const-string v2, "1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 2116
    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 2117
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2119
    :cond_9c
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v2, "1.0"

    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2121
    :cond_a5
    const-string v2, "encoding"

    .line 2122
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 2124
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2126
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2128
    :cond_ba
    const-string v2, "{http://xml.apache.org/xerces-2j}entities"

    .line 2129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2131
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 2132
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_4

    .line 2135
    :cond_d3
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_4

    .line 2144
    :cond_da
    iget-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    if-eqz p1, :cond_e5

    .line 2145
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v0, "{http://xml.apache.org/xalan}line-separator"

    invoke-interface {p0, v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e5
    return-void
.end method

.method protected greylist isAttributeWellFormed(Lorg/w3c/dom/Node;)V
    .registers 12

    .line 1437
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_15

    .line 1440
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 1439
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1f

    .line 1444
    :cond_15
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1f
    if-nez v0, :cond_45

    .line 1448
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "Attr"

    .line 1451
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1449
    const-string v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1453
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_45

    .line 1454
    new-instance v3, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x3

    const-string v6, "wf-invalid-character-in-node-name"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v0, v3}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1467
    :cond_45
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    .line 1468
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7e

    .line 1469
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 1473
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 1474
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1470
    const-string v2, "ER_WF_LT_IN_ATTVAL"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1476
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_7e

    .line 1477
    new-instance v3, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x3

    const-string v6, "ER_WF_LT_IN_ATTVAL"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v0, v3}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1490
    :cond_7e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 1491
    :goto_83
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 1492
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_90

    goto :goto_a6

    .line 1504
    :cond_90
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9b

    goto :goto_a6

    .line 1509
    :cond_9b
    check-cast v1, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    goto :goto_a6

    .line 1506
    :cond_a1
    check-cast v1, Lorg/w3c/dom/Text;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    :cond_a9
    return-void
.end method

.method protected greylist isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V
    .registers 11

    .line 1583
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1586
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1589
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1587
    const-string v1, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1591
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_34

    .line 1592
    new-instance v2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const-string v5, "wf-invalid-character"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {p0, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_34
    return-void
.end method

.method protected greylist isCommentWellFormed(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_fb

    .line 1282
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_fb

    .line 1286
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1287
    array-length v2, v1

    .line 1290
    iget-boolean v3, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    const/4 v4, 0x0

    const-string v5, "ER_WF_DASH_IN_COMMENT"

    const-string v6, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const/4 v7, 0x0

    const/16 v8, 0x2d

    if-eqz v3, :cond_8c

    :goto_1d
    if-ge v7, v2, :cond_fb

    add-int/lit8 v3, v7, 0x1

    .line 1294
    aget-char v9, v1, v7

    .line 1295
    invoke-static {v9}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 1297
    invoke-static {v9}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_47

    if-ge v3, v2, :cond_47

    add-int/lit8 v7, v7, 0x2

    .line 1298
    aget-char v3, v1, v3

    .line 1299
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 1301
    invoke-static {v9, v3}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v3

    .line 1300
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_1d

    :cond_46
    move v3, v7

    .line 1305
    :cond_47
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    new-instance v10, Ljava/lang/Character;

    invoke-direct {v10, v9}, Ljava/lang/Character;-><init>(C)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1306
    invoke-virtual {v7, v6, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1310
    iget-object v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_69

    .line 1311
    new-instance v10, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x3

    const-string v13, "wf-invalid-character"

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v7, v10}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_69
    :goto_69
    move v7, v3

    goto :goto_1d

    :cond_6b
    if-ne v9, v8, :cond_69

    if-ge v3, v2, :cond_69

    .line 1320
    aget-char v7, v1, v3

    if-ne v7, v8, :cond_69

    .line 1321
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1322
    invoke-virtual {v7, v5, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1326
    iget-object v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_69

    .line 1327
    new-instance v9, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x3

    const-string v12, "wf-invalid-character"

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v7, v9}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_69

    :cond_8c
    :goto_8c
    if-ge v7, v2, :cond_fb

    add-int/lit8 v3, v7, 0x1

    .line 1343
    aget-char v9, v1, v7

    .line 1344
    invoke-static {v9}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_da

    .line 1346
    invoke-static {v9}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_b6

    if-ge v3, v2, :cond_b6

    add-int/lit8 v7, v7, 0x2

    .line 1347
    aget-char v3, v1, v3

    .line 1348
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 1350
    invoke-static {v9, v3}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v3

    .line 1349
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v3

    if-eqz v3, :cond_b5

    goto :goto_8c

    :cond_b5
    move v3, v7

    .line 1354
    :cond_b6
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    new-instance v10, Ljava/lang/Character;

    invoke-direct {v10, v9}, Ljava/lang/Character;-><init>(C)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1355
    invoke-virtual {v7, v6, v9}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1359
    iget-object v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_d8

    .line 1360
    new-instance v10, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x3

    const-string v13, "wf-invalid-character"

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v7, v10}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_d8
    :goto_d8
    move v7, v3

    goto :goto_8c

    :cond_da
    if-ne v9, v8, :cond_d8

    if-ge v3, v2, :cond_d8

    .line 1369
    aget-char v7, v1, v3

    if-ne v7, v8, :cond_d8

    .line 1370
    sget-object v7, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1371
    invoke-virtual {v7, v5, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1375
    iget-object v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_d8

    .line 1376
    new-instance v9, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x3

    const-string v12, "wf-invalid-character"

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v7, v9}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_d8

    :cond_fb
    :goto_fb
    return-void
.end method

.method protected greylist isElementWellFormed(Lorg/w3c/dom/Node;)V
    .registers 11

    .line 1399
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_15

    .line 1402
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1403
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 1401
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1f

    .line 1406
    :cond_15
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1f
    if-nez v0, :cond_45

    .line 1410
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "Element"

    .line 1413
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1411
    const-string v1, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1415
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_45

    .line 1416
    new-instance v2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const-string v5, "wf-invalid-character-in-node-name"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {p0, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_45
    return-void
.end method

.method protected greylist isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V
    .registers 21

    move-object/from16 v0, p0

    .line 1643
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1644
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "EntityReference"

    .line 1647
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1645
    const-string v3, "wf-invalid-character-in-node-name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1649
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_32

    .line 1650
    new-instance v4, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x3

    const-string v7, "wf-invalid-character-in-node-name"

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v1, v4}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1662
    :cond_32
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1667
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 1669
    invoke-interface {v2}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    .line 1670
    :goto_45
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_10b

    .line 1671
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Entity;

    .line 1674
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_5b

    move-object v5, v6

    goto :goto_5f

    :cond_5b
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 1676
    :goto_5f
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_67

    move-object v7, v6

    goto :goto_6b

    .line 1678
    :cond_67
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 1680
    :goto_6b
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_73

    move-object v8, v6

    goto :goto_77

    :cond_73
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 1682
    :goto_77
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7e

    goto :goto_82

    :cond_7e
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 1685
    :goto_82
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c0

    .line 1686
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 1687
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 1689
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c0

    .line 1690
    sget-object v9, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1693
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 1691
    const-string v11, "ER_WF_REF_TO_UNPARSED_ENT"

    invoke-virtual {v9, v11, v10}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1695
    iget-object v9, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v9, :cond_c0

    .line 1696
    new-instance v12, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x3

    const-string v15, "ER_WF_REF_TO_UNPARSED_ENT"

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v18}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v9, v12}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1711
    :cond_c0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_107

    .line 1712
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 1713
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 1715
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e5

    .line 1716
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e5

    .line 1717
    invoke-interface {v4}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_107

    .line 1718
    :cond_e5
    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1721
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1719
    const-string v6, "ER_WF_REF_TO_EXTERNAL_ENT"

    invoke-virtual {v4, v6, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1723
    iget-object v4, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_107

    .line 1724
    new-instance v7, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x3

    const-string v10, "ER_WF_REF_TO_EXTERNAL_ENT"

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v4, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_107
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_45

    :cond_10b
    return-void
.end method

.method protected greylist isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V
    .registers 12

    .line 1532
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1533
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ProcessingInstruction"

    .line 1536
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1534
    const-string v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1538
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_30

    .line 1539
    new-instance v3, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x3

    const-string v6, "wf-invalid-character-in-node-name"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v0, v3}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1553
    :cond_30
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 1555
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1558
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1556
    const-string v1, "ER_WF_INVALID_CHARACTER_IN_PI"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1560
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_64

    .line 1561
    new-instance v2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const-string v5, "wf-invalid-character"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {p0, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_64
    return-void
.end method

.method protected greylist isTextWellFormed(Lorg/w3c/dom/Text;)V
    .registers 11

    .line 1612
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1614
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1615
    const-string v1, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    invoke-virtual {v0, v1, p1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1619
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_34

    .line 1620
    new-instance v2, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const-string v5, "wf-invalid-character"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {p0, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_34
    return-void
.end method

.method protected greylist isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p3, :cond_17

    if-eqz p1, :cond_f

    .line 1140
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1141
    :cond_f
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    return v0

    :cond_16
    return p0

    :cond_17
    if-eqz p1, :cond_1f

    .line 1144
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1145
    :cond_1f
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    return v0

    :cond_26
    return p0
.end method

.method protected greylist isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    .line 1221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_7b

    .line 1225
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1226
    array-length v1, p1

    .line 1229
    iget-boolean p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_48

    :goto_15
    if-ge v2, v1, :cond_7b

    add-int/lit8 p0, v2, 0x1

    .line 1233
    aget-char v3, p1, v2

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1235
    aget-char v3, p1, v2

    .line 1236
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_40

    if-ge p0, v1, :cond_40

    add-int/lit8 v2, v2, 0x2

    .line 1237
    aget-char p0, p1, p0

    .line 1238
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1240
    invoke-static {v3, p0}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result p0

    .line 1239
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_15

    .line 1245
    :cond_40
    new-instance p0, Ljava/lang/Character;

    invoke-direct {p0, v3}, Ljava/lang/Character;-><init>(C)V

    return-object p0

    :cond_46
    move v2, p0

    goto :goto_15

    :cond_48
    :goto_48
    if-ge v2, v1, :cond_7b

    add-int/lit8 p0, v2, 0x1

    .line 1254
    aget-char v3, p1, v2

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1256
    aget-char v3, p1, v2

    .line 1257
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_73

    if-ge p0, v1, :cond_73

    add-int/lit8 v2, v2, 0x2

    .line 1258
    aget-char p0, p1, p0

    .line 1259
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1261
    invoke-static {v3, p0}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result p0

    .line 1260
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result p0

    if-eqz p0, :cond_73

    goto :goto_48

    .line 1266
    :cond_73
    new-instance p0, Ljava/lang/Character;

    invoke-direct {p0, v3}, Ljava/lang/Character;-><init>(C)V

    return-object p0

    :cond_79
    move v2, p0

    goto :goto_48

    :cond_7b
    :goto_7b
    return-object v0
.end method

.method protected greylist isWFXMLChar(Ljava/lang/String;Ljava/lang/Character;)Z
    .registers 8

    const/4 p2, 0x1

    if-eqz p1, :cond_7d

    .line 1158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_7d

    .line 1162
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1163
    array-length v0, p1

    .line 1166
    iget-boolean p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_49

    move p0, v1

    :goto_16
    if-ge p0, v0, :cond_7d

    add-int/lit8 v2, p0, 0x1

    .line 1170
    aget-char v3, p1, p0

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1172
    aget-char v3, p1, p0

    .line 1173
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_41

    if-ge v2, v0, :cond_41

    add-int/lit8 p0, p0, 0x2

    .line 1174
    aget-char v2, p1, v2

    .line 1175
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1177
    invoke-static {v3, v2}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v2

    .line 1176
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_16

    .line 1182
    :cond_41
    new-instance p0, Ljava/lang/Character;

    invoke-direct {p0, v3}, Ljava/lang/Character;-><init>(C)V

    return v1

    :cond_47
    move p0, v2

    goto :goto_16

    :cond_49
    move p0, v1

    :goto_4a
    if-ge p0, v0, :cond_7d

    add-int/lit8 v2, p0, 0x1

    .line 1191
    aget-char v3, p1, p0

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1193
    aget-char v3, p1, p0

    .line 1194
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_75

    if-ge v2, v0, :cond_75

    add-int/lit8 p0, p0, 0x2

    .line 1195
    aget-char v2, p1, v2

    .line 1196
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1198
    invoke-static {v3, v2}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v2

    .line 1197
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_4a

    .line 1203
    :cond_75
    new-instance p0, Ljava/lang/Character;

    invoke-direct {p0, v3}, Ljava/lang/Character;-><init>(C)V

    return v1

    :cond_7b
    move p0, v2

    goto :goto_4a

    :cond_7d
    :goto_7d
    return p2
.end method

.method protected greylist isXMLName(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p2, :cond_b

    .line 1114
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1116
    :cond_b
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected greylist recordLocalNSDecl(Lorg/w3c/dom/Node;)V
    .registers 14

    .line 1824
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 1825
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_7e

    .line 1828
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1830
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 1831
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1832
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1833
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 1837
    const-string v6, "xmlns"

    const-string v7, ""

    if-eqz v3, :cond_2d

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    :cond_2d
    move-object v3, v7

    :cond_2e
    if-nez v4, :cond_31

    move-object v4, v7

    :cond_31
    if-nez v5, :cond_34

    move-object v5, v7

    :cond_34
    if-nez v2, :cond_37

    move-object v2, v7

    .line 1843
    :cond_37
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1846
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1847
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    .line 1848
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1852
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_7b

    .line 1853
    new-instance v5, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x2

    const-string v8, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v2, v5}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_7b

    .line 1864
    :cond_64
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1866
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7b

    .line 1867
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v3, v5}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7b

    .line 1873
    :cond_76
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v7, v5}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_7e
    return-void
.end method

.method protected greylist serializeAttList(Lorg/w3c/dom/Element;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 664
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 665
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_23a

    .line 668
    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 670
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    .line 671
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v12, ""

    if-nez v7, :cond_23

    move-object v7, v12

    goto :goto_27

    :cond_23
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 673
    :goto_27
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 677
    iget-boolean v9, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_3c

    .line 678
    move-object v9, v5

    check-cast v9, Lorg/w3c/dom/Attr;

    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/TypeInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    goto :goto_3d

    :cond_3c
    move-object v9, v10

    :goto_3d
    if-nez v9, :cond_41

    .line 680
    const-string v9, "CDATA"

    .line 682
    :cond_41
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_52

    .line 683
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_52

    .line 686
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    :cond_52
    move-object v10, v13

    .line 689
    :goto_53
    move-object v13, v5

    check-cast v13, Lorg/w3c/dom/Attr;

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v19

    .line 692
    const-string v13, "xmlns"

    .line 693
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "xmlns:"

    if-nez v13, :cond_6e

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6b

    goto :goto_6e

    :cond_6b
    const/16 v20, 0x0

    goto :goto_70

    :cond_6e
    :goto_6e
    const/16 v20, 0x1

    .line 696
    :goto_70
    iget v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v13, v13, 0x4000

    if-eqz v13, :cond_79

    .line 697
    invoke-virtual {v0, v5}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isAttributeWellFormed(Lorg/w3c/dom/Node;)V

    .line 705
    :cond_79
    iget v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v13, v13, 0x100

    const/16 v21, 0x2

    const-string v3, ":"

    if-eqz v13, :cond_180

    if-nez v20, :cond_180

    if-eqz v10, :cond_182

    if-nez v7, :cond_8a

    move-object v7, v12

    .line 711
    :cond_8a
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v13, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 712
    iget-object v15, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v15, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 720
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_ac

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_ac

    .line 721
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a9

    goto :goto_ac

    :cond_a9
    const/4 v7, 0x1

    goto/16 :goto_180

    :cond_ac
    :goto_ac
    if-eqz v13, :cond_d1

    .line 725
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d1

    .line 730
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ce

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_180

    :cond_ce
    move-object v6, v8

    goto/16 :goto_180

    .line 738
    :cond_d1
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10d

    if-nez v15, :cond_10d

    .line 741
    iget v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v13, v13, 0x200

    if-eqz v13, :cond_a9

    .line 742
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v17, "CDATA"

    move-object/from16 v16, v14

    const/4 v15, 0x1

    const-string v14, "http://www.w3.org/2000/xmlns/"

    move/from16 v18, v15

    move-object v15, v7

    move/from16 v7, v18

    move-object/from16 v18, v10

    invoke-interface/range {v13 .. v18}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v13, v15, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v13, v15, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_180

    :cond_10d
    const/4 v7, 0x1

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NS"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    move/from16 v6, v21

    .line 756
    :goto_122
    iget-object v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v7, v15}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_141

    .line 757
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v30, v15

    move-object v15, v6

    move/from16 v6, v30

    goto :goto_122

    .line 760
    :cond_141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 764
    iget v7, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_180

    .line 766
    iget-object v13, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CDATA"

    const-string v14, "http://www.w3.org/2000/xmlns/"

    move-object/from16 v18, v10

    invoke-interface/range {v13 .. v18}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v18

    .line 769
    iget-object v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v10, v15, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    iget-object v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v10, v15, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a9

    :cond_180
    :goto_180
    move-object v7, v10

    goto :goto_1a9

    :cond_182
    move-object v7, v10

    if-nez v8, :cond_1a9

    .line 780
    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v13, "ER_NULL_LOCAL_ELEMENT_NAME"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 784
    iget-object v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v10, :cond_1a9

    .line 785
    new-instance v23, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v24, 0x2

    const-string v26, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/16 v27, 0x0

    invoke-direct/range {v23 .. v29}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v13, v23

    .line 786
    invoke-interface {v10, v13}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 805
    :cond_1a9
    :goto_1a9
    iget v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const v13, 0x8000

    and-int v14, v10, v13

    if-eqz v14, :cond_1b4

    if-nez v19, :cond_1b7

    :cond_1b4
    and-int/2addr v10, v13

    if-nez v10, :cond_1bb

    :cond_1b7
    const/4 v15, 0x1

    const/16 v22, 0x1

    goto :goto_1be

    :cond_1bb
    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_1be
    if-eqz v15, :cond_1de

    .line 815
    iget-object v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v10, :cond_1de

    .line 816
    invoke-interface {v10}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1de

    if-nez v20, :cond_1de

    .line 820
    iget-object v10, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v10, v5}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v5

    move/from16 v10, v21

    if-eq v5, v10, :cond_1dc

    const/4 v10, 0x3

    if-eq v5, v10, :cond_1dc

    goto :goto_1de

    :cond_1dc
    const/16 v22, 0x0

    :cond_1de
    :goto_1de
    if-eqz v22, :cond_1fa

    if-eqz v20, :cond_1fa

    .line 835
    iget v5, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_1f8

    if-eqz v8, :cond_1f8

    .line 837
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f8

    move-object v10, v9

    move-object v9, v6

    .line 838
    iget-object v6, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface/range {v6 .. v11}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_215

    :cond_1f8
    move-object v9, v6

    goto :goto_215

    :cond_1fa
    move-object v10, v9

    move-object v9, v6

    if-eqz v22, :cond_215

    if-nez v20, :cond_215

    .line 846
    iget v5, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_20e

    if-eqz v7, :cond_20e

    .line 847
    iget-object v6, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface/range {v6 .. v11}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_215

    .line 854
    :cond_20e
    iget-object v6, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v7, ""

    invoke-interface/range {v6 .. v11}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_215
    :goto_215
    if-eqz v20, :cond_236

    .line 864
    iget v5, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_236

    .line 870
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_225

    move-object v3, v12

    goto :goto_22b

    :cond_225
    add-int/lit8 v3, v3, 0x1

    .line 872
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 874
    :goto_22b
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_236

    .line 875
    iget-object v5, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v5, v3, v11}, Lorg/apache/xml/serializer/ExtendedContentHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_236
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_23a
    return-void
.end method

.method protected greylist serializeCDATASection(Lorg/w3c/dom/CDATASection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 918
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    .line 919
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V

    .line 923
    :cond_9
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_76

    .line 930
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 931
    const-string v2, "]]>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 932
    iget v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v3, v3, 0x800

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "cdata-sections-splitted"

    if-eqz v3, :cond_42

    if-ltz v2, :cond_5b

    add-int/2addr v2, v1

    .line 935
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 937
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 938
    invoke-virtual {v0, v6, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 942
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_5b

    .line 943
    new-instance v7, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-string v10, "cdata-sections-splitted"

    invoke-direct/range {v7 .. v13}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v0, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_5b

    :cond_42
    if-ltz v2, :cond_5b

    add-int/2addr v2, v1

    .line 956
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 958
    sget-object p1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    .line 959
    invoke-virtual {p1, v6, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 963
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p0, :cond_75

    .line 964
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    invoke-direct {v0, v1, p1, v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    return-void

    :cond_5b
    :goto_5b
    const/16 v0, 0x8

    .line 976
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_75

    .line 981
    :cond_64
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_6b

    .line 982
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 984
    :cond_6b
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 985
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_75

    .line 986
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_75
    :goto_75
    return-void

    .line 989
    :cond_76
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method protected greylist serializeComment(Lorg/w3c/dom/Comment;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 572
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2e

    .line 573
    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 576
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_13

    .line 577
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCommentWellFormed(Ljava/lang/String;)V

    .line 580
    :cond_13
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_2e

    const/16 v1, 0x80

    .line 583
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2e

    .line 587
    :cond_20
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0, p1, v1, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected greylist serializeDocType(Lorg/w3c/dom/DocumentType;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 500
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 507
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    if-eqz p2, :cond_9b

    .line 514
    :try_start_1c
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p2}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object p2

    .line 515
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x22

    if-eqz v1, :cond_3e

    .line 520
    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3e
    if-eqz v2, :cond_53

    if-nez v1, :cond_48

    .line 527
    const-string v1, " SYSTEM \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 529
    :cond_48
    const-string v1, " \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :goto_4d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    :cond_53
    const-string v0, " [ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    const-string p1, "]>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception p0

    .line 546
    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v0, "ER_WRITING_INTERNAL_SUBSET"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_8a
    if-eqz p2, :cond_94

    .line 554
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_9b

    .line 555
    invoke-interface {p0, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 558
    :cond_94
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_9b

    .line 559
    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_9b
    return-void
.end method

.method protected greylist serializeElement(Lorg/w3c/dom/Element;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_43

    .line 601
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 609
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 p2, p2, 0x4000

    if-eqz p2, :cond_11

    .line 610
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isElementWellFormed(Lorg/w3c/dom/Node;)V

    .line 615
    :cond_11
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_6b

    .line 620
    :cond_18
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_2e

    .line 621
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p2}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->pushContext()V

    .line 622
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p2}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->reset()V

    .line 624
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->recordLocalNSDecl(Lorg/w3c/dom/Node;)V

    .line 625
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fixupElementNS(Lorg/w3c/dom/Node;)V

    .line 629
    :cond_2e
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 630
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-interface {p2, v0, v1, v2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeAttList(Lorg/w3c/dom/Element;)V

    return-void

    .line 637
    :cond_43
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 640
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result p2

    if-nez p2, :cond_4f

    goto :goto_6b

    .line 644
    :cond_4f
    iget-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 645
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_6b

    .line 652
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->popContext()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method protected greylist serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p2, :cond_24

    .line 1058
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_18

    and-int/lit16 p2, p2, 0x4000

    if-eqz p2, :cond_f

    .line 1065
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    .line 1070
    :cond_f
    iget p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_18

    .line 1071
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    .line 1079
    :cond_18
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_2f

    .line 1085
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    return-void

    .line 1091
    :cond_24
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_2f

    .line 1092
    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method protected greylist serializePI(Lorg/w3c/dom/ProcessingInstruction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 890
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 893
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V

    :cond_d
    const/16 v1, 0x40

    .line 898
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 903
    :cond_16
    const-string v1, "xslt-next-is-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 p1, 0x1

    .line 904
    iput-boolean p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    return-void

    .line 906
    :cond_22
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected greylist serializeText(Lorg/w3c/dom/Text;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 999
    iget-boolean v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1000
    iput-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    .line 1001
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v1, "javax.xml.transform.disable-output-escaping"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 1005
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string p1, "javax.xml.transform.enable-output-escaping"

    invoke-interface {p0, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1013
    :cond_1b
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_24

    .line 1014
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    .line 1020
    :cond_24
    iget-boolean v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    if-eqz v0, :cond_2d

    .line 1022
    invoke-interface {p1}, Lorg/w3c/dom/Text;->isElementContentWhitespace()Z

    move-result v0

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 1027
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_38

    :cond_37
    move v1, v2

    :cond_38
    const/4 v0, 0x4

    .line 1035
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_45

    :cond_40
    if-eqz v1, :cond_45

    .line 1040
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected greylist startNode(Lorg/w3c/dom/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 396
    instance-of v0, p1, Lorg/xml/sax/Locator;

    if-eqz v0, :cond_2c

    .line 397
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    .line 398
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 399
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 400
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    goto :goto_37

    .line 403
    :cond_2c
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 404
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 407
    :goto_37
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    const/16 v2, 0xa

    if-eq v0, v2, :cond_71

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_65

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_59

    const/16 v1, 0x8

    if-eq v0, v1, :cond_53

    return-void

    .line 412
    :cond_53
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeComment(Lorg/w3c/dom/Comment;)V

    return-void

    .line 423
    :cond_59
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializePI(Lorg/w3c/dom/ProcessingInstruction;)V

    return-void

    .line 432
    :cond_5f
    check-cast p1, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    return-void

    .line 426
    :cond_65
    check-cast p1, Lorg/w3c/dom/CDATASection;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeCDATASection(Lorg/w3c/dom/CDATASection;)V

    return-void

    .line 429
    :cond_6b
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeText(Lorg/w3c/dom/Text;)V

    return-void

    .line 409
    :cond_71
    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    return-void

    .line 420
    :cond_77
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    return-void
.end method

.method public greylist traverse(Lorg/w3c/dom/Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 248
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const-string v3, "3.0"

    const-string v4, "Core"

    if-eq v0, v1, :cond_25

    .line 249
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 251
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 252
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_34

    .line 255
    :cond_25
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    .line 256
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 257
    invoke-interface {v0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 258
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 262
    :cond_34
    :goto_34
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_3c

    .line 263
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 266
    :cond_3c
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_46

    .line 267
    invoke-interface {v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    :cond_46
    move-object v0, p1

    :goto_47
    if-eqz v0, :cond_77

    .line 272
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 276
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_50
    if-nez v1, :cond_75

    .line 279
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_75

    .line 284
    :cond_5c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_50

    .line 287
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_6e
    if-eqz v0, :cond_73

    .line 291
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_73
    const/4 v0, 0x0

    goto :goto_47

    :cond_75
    :goto_75
    move-object v0, v1

    goto :goto_47

    .line 302
    :cond_77
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public greylist traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 323
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const-string v3, "3.0"

    const-string v4, "Core"

    if-eq v0, v1, :cond_25

    .line 324
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 326
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 327
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_34

    .line 330
    :cond_25
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    .line 331
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 332
    invoke-interface {v0, v4, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 333
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 337
    :cond_34
    :goto_34
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_3c

    .line 338
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 341
    :cond_3c
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_46

    .line 342
    invoke-interface {v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    :cond_46
    :goto_46
    if-eqz p1, :cond_75

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 349
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_4f
    if-nez v0, :cond_73

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_5d

    .line 354
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_73

    .line 357
    :cond_5d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 360
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_71

    if-eqz p2, :cond_4f

    .line 362
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_71
    const/4 p1, 0x0

    goto :goto_46

    :cond_73
    :goto_73
    move-object p1, v0

    goto :goto_46

    .line 372
    :cond_75
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method
