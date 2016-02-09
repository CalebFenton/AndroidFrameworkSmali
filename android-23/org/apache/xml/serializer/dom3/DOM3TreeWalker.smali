.class final Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
.super Ljava/lang/Object;
.source "DOM3TreeWalker.java"


# static fields
.field private static final CANONICAL:I = 0x1

.field private static final CDATA:I = 0x2

.field private static final CHARNORMALIZE:I = 0x4

.field private static final COMMENTS:I = 0x8

.field private static final DISCARDDEFAULT:I = 0x8000

.field private static final DTNORMALIZE:I = 0x10

.field private static final ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final ENTITIES:I = 0x40

.field private static final IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final INFOSET:I = 0x80

.field private static final NAMESPACEDECLS:I = 0x200

.field private static final NAMESPACES:I = 0x100

.field private static final NORMALIZECHARS:I = 0x400

.field private static final PRETTY_PRINT:I = 0x10000

.field private static final SCHEMAVALIDATE:I = 0x2000

.field private static final SPLITCDATA:I = 0x800

.field private static final VALIDATE:I = 0x1000

.field private static final WELLFORMED:I = 0x4000

.field private static final XMLDECL:I = 0x40000

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field private static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"

.field private static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final s_propKeys:Ljava/util/Hashtable;


# instance fields
.field private fDOMConfigProperties:Ljava/util/Properties;

.field private fElementDepth:I

.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fFeatures:I

.field private fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private fInEntityRef:Z

.field private fIsLevel3DOM:Z

.field private fIsXMLVersion11:Z

.field private fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fLocator:Lorg/xml/sax/helpers/LocatorImpl;

.field protected fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fNewLine:Ljava/lang/String;

.field fNextIsRaw:Z

.field private fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private fWhatToShowFilter:I

.field private fXMLVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    #@0
    .prologue
    .line 1956
    new-instance v10, Ljava/util/Hashtable;

    #@2
    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@7
    .line 1964
    const/4 v0, 0x2

    #@8
    .line 1965
    .local v0, "i":I
    new-instance v9, Ljava/lang/Integer;

    #@a
    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    #@d
    .line 1966
    .local v9, "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@f
    .line 1967
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    #@12
    .line 1966
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 1971
    const/16 v1, 0x8

    #@17
    .line 1972
    .local v1, "i1":I
    new-instance v9, Ljava/lang/Integer;

    #@19
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    #@1c
    .line 1973
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@1e
    .line 1974
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    #@21
    .line 1973
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1978
    const/16 v2, 0x20

    #@26
    .line 1979
    .local v2, "i2":I
    new-instance v9, Ljava/lang/Integer;

    #@28
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    #@2b
    .line 1980
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@2d
    .line 1981
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    #@30
    .line 1980
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 1984
    const/16 v3, 0x40

    #@35
    .line 1987
    .local v3, "i3":I
    new-instance v9, Ljava/lang/Integer;

    #@37
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    #@3a
    .line 1988
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@3c
    .line 1989
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    #@3f
    .line 1988
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 1993
    const/16 v4, 0x100

    #@44
    .line 1994
    .local v4, "i4":I
    new-instance v9, Ljava/lang/Integer;

    #@46
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    #@49
    .line 1995
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@4b
    .line 1996
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    #@4e
    .line 1995
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 2000
    const/16 v5, 0x200

    #@53
    .line 2001
    .local v5, "i5":I
    new-instance v9, Ljava/lang/Integer;

    #@55
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    #@58
    .line 2002
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@5a
    .line 2003
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    #@5d
    .line 2002
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 2008
    const/16 v6, 0x800

    #@62
    .line 2009
    .local v6, "i6":I
    new-instance v9, Ljava/lang/Integer;

    #@64
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    #@67
    .line 2010
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@69
    .line 2011
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    #@6c
    .line 2010
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 2015
    const/16 v7, 0x4000

    #@71
    .line 2016
    .local v7, "i7":I
    new-instance v9, Ljava/lang/Integer;

    #@73
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    #@76
    .line 2017
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@78
    .line 2018
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    #@7b
    .line 2017
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 2022
    const v8, 0x8000

    #@81
    .line 2023
    .local v8, "i8":I
    new-instance v9, Ljava/lang/Integer;

    #@83
    .end local v9    # "val":Ljava/lang/Integer;
    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    #@86
    .line 2024
    .restart local v9    # "val":Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@88
    .line 2025
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    #@8b
    .line 2024
    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 2031
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@90
    .line 2032
    const-string/jumbo v11, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    #@93
    .line 2034
    const-string/jumbo v12, ""

    #@96
    .line 2031
    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 2035
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@9b
    const-string/jumbo v11, "omit-xml-declaration"

    #@9e
    const-string/jumbo v12, ""

    #@a1
    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 2036
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@a6
    .line 2037
    const-string/jumbo v11, "{http://xml.apache.org/xerces-2j}xml-version"

    #@a9
    .line 2038
    const-string/jumbo v12, ""

    #@ac
    .line 2036
    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@af
    .line 2039
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@b1
    const-string/jumbo v11, "encoding"

    #@b4
    const-string/jumbo v12, ""

    #@b7
    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    .line 2040
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@bc
    const-string/jumbo v11, "{http://xml.apache.org/xerces-2j}entities"

    #@bf
    const-string/jumbo v12, ""

    #@c2
    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 68
    return-void
.end method

.method constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V
    .locals 4
    .param p1, "serialHandler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p2, "errHandler"    # Lorg/w3c/dom/DOMErrorHandler;
    .param p3, "filter"    # Lorg/w3c/dom/ls/LSSerializerFilter;
    .param p4, "newLine"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@7
    .line 80
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    #@9
    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@c
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@e
    .line 83
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@10
    .line 86
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@12
    .line 89
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@14
    .line 94
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@16
    .line 97
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    #@18
    .line 100
    iput-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fInEntityRef:Z

    #@1a
    .line 103
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fXMLVersion:Ljava/lang/String;

    #@1c
    .line 106
    iput-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@1e
    .line 109
    iput-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@20
    .line 112
    iput v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@22
    .line 115
    iput-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    #@24
    .line 136
    iput v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    #@26
    .line 209
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@28
    .line 211
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2a
    .line 212
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@2c
    .line 213
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2e
    .line 214
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@30
    .line 216
    new-instance v1, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@32
    invoke-direct {v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    #@35
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@37
    .line 217
    new-instance v1, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@39
    invoke-direct {v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    #@3c
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@3e
    .line 219
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@40
    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    #@46
    .line 220
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@48
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@4a
    invoke-interface {v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@4d
    .line 221
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    #@4f
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->initProperties(Ljava/util/Properties;)V

    #@52
    .line 225
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@54
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "user.dir"

    #@5c
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    const-string/jumbo v3, "dummy.xsl"

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    .line 225
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    .line 208
    :goto_0
    return-void

    #@79
    .line 227
    :catch_0
    move-exception v0

    #@7a
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 381
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@6
    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    #@9
    .line 379
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-void

    #@a
    .line 383
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    #@c
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 384
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v1, v2, v4, v3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    #@1e
    goto :goto_0
.end method


# virtual methods
.method protected applyFilter(Lorg/w3c/dom/Node;I)Z
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 477
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    #@7
    and-int/2addr v1, p2

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 479
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@c
    invoke-interface {v1, p1}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    #@f
    move-result v0

    #@10
    .line 480
    .local v0, "code":S
    packed-switch v0, :pswitch_data_0

    #@13
    .line 487
    .end local v0    # "code":S
    :cond_0
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 483
    .restart local v0    # "code":S
    :pswitch_0
    return v2

    #@16
    .line 480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V
    .locals 14
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1751
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@3
    move-result-object v9

    #@4
    .local v9, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v9, :cond_4

    #@6
    .line 1752
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@9
    move-result-object v11

    #@a
    .line 1754
    .local v11, "next":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_2

    #@11
    .line 1758
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@14
    move-result-object v12

    #@15
    .line 1759
    .local v12, "prefix":Ljava/lang/String;
    if-eqz v12, :cond_0

    #@17
    .line 1760
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@19
    invoke-virtual {v0, v12}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 1762
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@21
    .line 1763
    const-string/jumbo v1, "unbound-prefix-in-entity-reference"

    #@24
    .line 1764
    const/4 v3, 0x3

    #@25
    new-array v3, v3, [Ljava/lang/Object;

    #@27
    .line 1765
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    const/4 v5, 0x0

    #@2c
    aput-object v4, v3, v5

    #@2e
    .line 1766
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    const/4 v5, 0x1

    #@33
    aput-object v4, v3, v5

    #@35
    .line 1767
    const/4 v4, 0x2

    #@36
    aput-object v12, v3, v4

    #@38
    .line 1762
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1769
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 1770
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@42
    .line 1771
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@44
    .line 1774
    const-string/jumbo v3, "unbound-prefix-in-entity-reference"

    #@47
    .line 1772
    const/4 v1, 0x3

    #@48
    .line 1775
    const/4 v4, 0x0

    #@49
    .line 1776
    const/4 v5, 0x0

    #@4a
    .line 1777
    const/4 v6, 0x0

    #@4b
    .line 1771
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@4e
    .line 1770
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@51
    .line 1781
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@54
    move-result-object v8

    #@55
    .line 1783
    .local v8, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const/4 v10, 0x0

    #@56
    .local v10, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@59
    move-result v0

    #@5a
    if-ge v10, v0, :cond_2

    #@5c
    .line 1784
    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@5f
    move-result-object v0

    #@60
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 1785
    .local v7, "attrPrefix":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@66
    .line 1786
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@68
    invoke-virtual {v0, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    if-nez v0, :cond_1

    #@6e
    .line 1788
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@70
    .line 1789
    const-string/jumbo v1, "unbound-prefix-in-entity-reference"

    #@73
    .line 1790
    const/4 v3, 0x3

    #@74
    new-array v3, v3, [Ljava/lang/Object;

    #@76
    .line 1791
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    const/4 v5, 0x0

    #@7b
    aput-object v4, v3, v5

    #@7d
    .line 1792
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    const/4 v5, 0x1

    #@82
    aput-object v4, v3, v5

    #@84
    .line 1793
    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@87
    move-result-object v4

    #@88
    const/4 v5, 0x2

    #@89
    aput-object v4, v3, v5

    #@8b
    .line 1788
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    .line 1795
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@91
    if-eqz v0, :cond_1

    #@93
    .line 1796
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@95
    .line 1797
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@97
    .line 1800
    const-string/jumbo v3, "unbound-prefix-in-entity-reference"

    #@9a
    .line 1798
    const/4 v1, 0x3

    #@9b
    .line 1801
    const/4 v4, 0x0

    #@9c
    .line 1802
    const/4 v5, 0x0

    #@9d
    .line 1803
    const/4 v6, 0x0

    #@9e
    .line 1797
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@a1
    .line 1796
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@a4
    .line 1783
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 1809
    .end local v7    # "attrPrefix":Ljava/lang/String;
    .end local v8    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "i":I
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_3

    #@ad
    .line 1810
    invoke-virtual {p0, v9}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    #@b0
    .line 1751
    :cond_3
    move-object v9, v11

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1749
    .end local v11    # "next":Lorg/w3c/dom/Node;
    :cond_4
    return-void
.end method

.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 446
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 452
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/DocumentType;

    #@b
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    #@e
    goto :goto_0

    #@f
    .line 455
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast p1, Lorg/w3c/dom/Element;

    #@11
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    #@14
    goto :goto_0

    #@15
    .line 460
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_3
    check-cast p1, Lorg/w3c/dom/EntityReference;

    #@17
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 448
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected fixupElementNS(Lorg/w3c/dom/Node;)V
    .locals 12
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 1887
    check-cast v0, Lorg/w3c/dom/Element;

    #@5
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    #@8
    move-result-object v9

    #@9
    .local v9, "namespaceURI":Ljava/lang/String;
    move-object v0, p1

    #@a
    .line 1888
    check-cast v0, Lorg/w3c/dom/Element;

    #@c
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    #@f
    move-result-object v10

    #@10
    .local v10, "prefix":Ljava/lang/String;
    move-object v0, p1

    #@11
    .line 1889
    check-cast v0, Lorg/w3c/dom/Element;

    #@13
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    .line 1891
    .local v8, "localName":Ljava/lang/String;
    if-eqz v9, :cond_6

    #@19
    .line 1894
    if-nez v10, :cond_0

    #@1b
    const-string/jumbo v10, ""

    #@1e
    .line 1895
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@20
    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 1897
    .local v7, "inScopeNamespaceURI":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@26
    .line 1898
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    .line 1897
    if-eqz v0, :cond_2

    #@2c
    .line 1886
    .end local v7    # "inScopeNamespaceURI":Ljava/lang/String;
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 1909
    .restart local v7    # "inScopeNamespaceURI":Ljava/lang/String;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@2f
    and-int/lit16 v0, v0, 0x200

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 1910
    const-string/jumbo v0, ""

    #@36
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_3

    #@3c
    const-string/jumbo v0, ""

    #@3f
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 1911
    :cond_3
    check-cast p1, Lorg/w3c/dom/Element;

    #@47
    .end local p1    # "node":Lorg/w3c/dom/Node;
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@4a
    const-string/jumbo v1, "xmlns"

    #@4d
    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 1916
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@52
    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@55
    .line 1917
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@57
    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 1913
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_5
    check-cast p1, Lorg/w3c/dom/Element;

    #@5d
    .end local p1    # "node":Lorg/w3c/dom/Node;
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "xmlns:"

    #@68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@77
    goto :goto_1

    #@78
    .line 1923
    .end local v7    # "inScopeNamespaceURI":Ljava/lang/String;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_6
    if-eqz v8, :cond_7

    #@7a
    const-string/jumbo v0, ""

    #@7d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_8

    #@83
    .line 1926
    :cond_7
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@85
    .line 1927
    const-string/jumbo v1, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@88
    .line 1928
    const/4 v3, 0x1

    #@89
    new-array v3, v3, [Ljava/lang/Object;

    #@8b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    aput-object v5, v3, v6

    #@91
    .line 1926
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    .line 1930
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@97
    if-eqz v0, :cond_1

    #@99
    .line 1931
    iget-object v11, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@9b
    .line 1932
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@9d
    .line 1935
    const-string/jumbo v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@a0
    .line 1933
    const/4 v1, 0x2

    #@a1
    move-object v5, v4

    #@a2
    move-object v6, v4

    #@a3
    .line 1932
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@a6
    .line 1931
    invoke-interface {v11, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@a9
    goto :goto_0

    #@aa
    .line 1941
    .end local v2    # "msg":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@ac
    const-string/jumbo v1, ""

    #@af
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    .line 1942
    if-eqz v9, :cond_1

    #@b5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@b8
    move-result v0

    #@b9
    if-lez v0, :cond_1

    #@bb
    .line 1943
    check-cast p1, Lorg/w3c/dom/Element;

    #@bd
    .end local p1    # "node":Lorg/w3c/dom/Node;
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@c0
    const-string/jumbo v1, "xmlns"

    #@c3
    const-string/jumbo v3, ""

    #@c6
    invoke-interface {p1, v0, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c9
    .line 1944
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@cb
    const-string/jumbo v1, ""

    #@ce
    const-string/jumbo v3, ""

    #@d1
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@d4
    .line 1945
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@d6
    const-string/jumbo v1, ""

    #@d9
    const-string/jumbo v3, ""

    #@dc
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@df
    goto/16 :goto_0
.end method

.method protected initProperties(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 2051
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v4

    #@6
    .local v4, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_b

    #@c
    .line 2053
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    .line 2064
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    .line 2065
    .local v2, "iobj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@1a
    .line 2066
    instance-of v6, v2, Ljava/lang/Integer;

    #@1c
    if-eqz v6, :cond_2

    #@1e
    .line 2079
    check-cast v2, Ljava/lang/Integer;

    #@20
    .end local v2    # "iobj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v0

    #@24
    .line 2080
    .local v0, "BITFLAG":I
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    const-string/jumbo v7, "yes"

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    .line 2081
    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@33
    or-int/2addr v6, v0

    #@34
    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@36
    goto :goto_0

    #@37
    .line 2083
    :cond_1
    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@39
    not-int v7, v0

    #@3a
    and-int/2addr v6, v7

    #@3b
    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@3d
    goto :goto_0

    #@3e
    .line 2089
    .end local v0    # "BITFLAG":I
    .restart local v2    # "iobj":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v6, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    #@41
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_4

    #@47
    .line 2093
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    const-string/jumbo v7, "yes"

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_3

    #@54
    .line 2094
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@56
    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    #@59
    .line 2095
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@5b
    const/4 v7, 0x3

    #@5c
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    #@5f
    goto :goto_0

    #@60
    .line 2097
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@62
    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    #@65
    goto :goto_0

    #@66
    .line 2100
    :cond_4
    const-string/jumbo v6, "omit-xml-declaration"

    #@69
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v6

    #@6d
    .line 2099
    if-eqz v6, :cond_6

    #@6f
    .line 2103
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    const-string/jumbo v7, "yes"

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_5

    #@7c
    .line 2104
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@7e
    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    #@81
    goto :goto_0

    #@82
    .line 2106
    :cond_5
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@84
    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    #@87
    goto/16 :goto_0

    #@89
    .line 2109
    :cond_6
    const-string/jumbo v6, "{http://xml.apache.org/xerces-2j}xml-version"

    #@8c
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v6

    #@90
    .line 2108
    if-eqz v6, :cond_8

    #@92
    .line 2114
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    .line 2115
    .local v5, "version":Ljava/lang/String;
    const-string/jumbo v6, "1.1"

    #@99
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v6

    #@9d
    if-eqz v6, :cond_7

    #@9f
    .line 2116
    iput-boolean v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@a1
    .line 2117
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@a3
    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 2119
    :cond_7
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@aa
    const-string/jumbo v7, "1.0"

    #@ad
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 2122
    .end local v5    # "version":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "encoding"

    #@b5
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v6

    #@b9
    .line 2121
    if-eqz v6, :cond_9

    #@bb
    .line 2124
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    .line 2125
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@c1
    .line 2126
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@c3
    invoke-interface {v6, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 2128
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "{http://xml.apache.org/xerces-2j}entities"

    #@cb
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v6

    #@cf
    if-eqz v6, :cond_0

    #@d1
    .line 2131
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    const-string/jumbo v7, "yes"

    #@d8
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@db
    move-result v6

    #@dc
    if-eqz v6, :cond_a

    #@de
    .line 2132
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@e0
    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 2135
    :cond_a
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@e7
    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 2144
    .end local v2    # "iobj":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@ee
    if-eqz v6, :cond_c

    #@f0
    .line 2145
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@f2
    const-string/jumbo v7, "{http://xml.apache.org/xalan}line-separator"

    #@f5
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@f7
    invoke-interface {v6, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@fa
    .line 2049
    :cond_c
    return-void
.end method

.method protected isAttributeWellFormed(Lorg/w3c/dom/Node;)V
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1436
    const/4 v10, 0x0

    #@1
    .line 1437
    .local v10, "isNameWF":Z
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@3
    and-int/lit16 v0, v0, 0x100

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 1440
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1441
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1442
    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@11
    .line 1439
    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@14
    move-result v10

    #@15
    .line 1447
    .local v10, "isNameWF":Z
    :goto_0
    if-nez v10, :cond_0

    #@17
    .line 1449
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@19
    .line 1450
    const-string/jumbo v1, "wf-invalid-character-in-node-name"

    #@1c
    .line 1451
    const/4 v3, 0x2

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    const-string/jumbo v4, "Attr"

    #@22
    const/4 v5, 0x0

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x1

    #@2a
    aput-object v4, v3, v5

    #@2c
    .line 1449
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1453
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 1454
    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@36
    .line 1455
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@38
    .line 1458
    const-string/jumbo v3, "wf-invalid-character-in-node-name"

    #@3b
    .line 1456
    const/4 v1, 0x3

    #@3c
    .line 1459
    const/4 v4, 0x0

    #@3d
    .line 1460
    const/4 v5, 0x0

    #@3e
    .line 1461
    const/4 v6, 0x0

    #@3f
    .line 1455
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@42
    .line 1454
    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@45
    .line 1467
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@48
    move-result-object v11

    #@49
    .line 1468
    .local v11, "value":Ljava/lang/String;
    const/16 v0, 0x3c

    #@4b
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    #@4e
    move-result v0

    #@4f
    if-ltz v0, :cond_1

    #@51
    .line 1470
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@53
    .line 1471
    const-string/jumbo v3, "ER_WF_LT_IN_ATTVAL"

    #@56
    .line 1472
    const/4 v0, 0x2

    #@57
    new-array v4, v0, [Ljava/lang/Object;

    #@59
    move-object v0, p1

    #@5a
    .line 1473
    check-cast v0, Lorg/w3c/dom/Attr;

    #@5c
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@5f
    move-result-object v0

    #@60
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    const/4 v5, 0x0

    #@65
    aput-object v0, v4, v5

    #@67
    .line 1474
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    const/4 v5, 0x1

    #@6c
    aput-object v0, v4, v5

    #@6e
    .line 1470
    invoke-virtual {v1, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 1476
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@74
    if-eqz v0, :cond_1

    #@76
    .line 1477
    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@78
    .line 1478
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@7a
    .line 1481
    const-string/jumbo v3, "ER_WF_LT_IN_ATTVAL"

    #@7d
    .line 1479
    const/4 v1, 0x3

    #@7e
    .line 1482
    const/4 v4, 0x0

    #@7f
    .line 1483
    const/4 v5, 0x0

    #@80
    .line 1484
    const/4 v6, 0x0

    #@81
    .line 1478
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@84
    .line 1477
    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@87
    .line 1490
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@8a
    move-result-object v8

    #@8b
    .line 1491
    .local v8, "children":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    #@8c
    .local v9, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    #@8f
    move-result v0

    #@90
    if-ge v9, v0, :cond_4

    #@92
    .line 1492
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@95
    move-result-object v7

    #@96
    .line 1500
    .local v7, "child":Lorg/w3c/dom/Node;
    if-nez v7, :cond_3

    #@98
    .line 1491
    .end local v7    # "child":Lorg/w3c/dom/Node;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 1444
    .end local v8    # "children":Lorg/w3c/dom/NodeList;
    .end local v9    # "i":I
    .end local v11    # "value":Ljava/lang/String;
    .local v10, "isNameWF":Z
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@a1
    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    #@a4
    move-result v10

    #@a5
    .local v10, "isNameWF":Z
    goto/16 :goto_0

    #@a7
    .line 1504
    .restart local v7    # "child":Lorg/w3c/dom/Node;
    .restart local v8    # "children":Lorg/w3c/dom/NodeList;
    .restart local v9    # "i":I
    .restart local v11    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    #@aa
    move-result v0

    #@ab
    packed-switch v0, :pswitch_data_0

    #@ae
    :pswitch_0
    goto :goto_2

    #@af
    .line 1506
    :pswitch_1
    check-cast v7, Lorg/w3c/dom/Text;

    #@b1
    .end local v7    # "child":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    #@b4
    goto :goto_2

    #@b5
    .line 1509
    .restart local v7    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast v7, Lorg/w3c/dom/EntityReference;

    #@b7
    .end local v7    # "child":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    #@ba
    goto :goto_2

    #@bb
    .line 1435
    :cond_4
    return-void

    #@bc
    .line 1504
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/CDATASection;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1583
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    #@8
    move-result-object v7

    #@9
    .line 1585
    .local v7, "invalidChar":Ljava/lang/Character;
    if-eqz v7, :cond_0

    #@b
    .line 1587
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@d
    .line 1588
    const-string/jumbo v1, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    #@10
    .line 1589
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    #@16
    move-result v5

    #@17
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    #@1a
    move-result v5

    #@1b
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v5, v3, v6

    #@22
    .line 1587
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1591
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 1592
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2c
    .line 1593
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@2e
    .line 1596
    const-string/jumbo v3, "wf-invalid-character"

    #@31
    .line 1594
    const/4 v1, 0x3

    #@32
    move-object v5, v4

    #@33
    move-object v6, v4

    #@34
    .line 1593
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@37
    .line 1592
    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@3a
    .line 1581
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected isCommentWellFormed(Ljava/lang/String;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1282
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1283
    :cond_0
    return-void

    #@9
    .line 1286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v9

    #@d
    .line 1287
    .local v9, "dataarray":[C
    array-length v10, v9

    #@e
    .line 1290
    .local v10, "datalength":I
    iget-boolean v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@10
    if-eqz v0, :cond_7

    #@12
    .line 1292
    const/4 v11, 0x0

    #@13
    .local v11, "i":I
    move v12, v11

    #@14
    .line 1293
    .end local v11    # "i":I
    .local v12, "i":I
    :cond_2
    :goto_0
    if-ge v12, v10, :cond_d

    #@16
    .line 1294
    add-int/lit8 v11, v12, 0x1

    #@18
    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v9, v12

    #@1a
    .line 1295
    .local v7, "c":C
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_6

    #@20
    .line 1297
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    if-ge v11, v10, :cond_3

    #@28
    .line 1298
    add-int/lit8 v12, v11, 0x1

    #@2a
    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-char v8, v9, v11

    #@2c
    .line 1299
    .local v8, "c2":C
    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_5

    #@32
    .line 1301
    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@35
    move-result v0

    #@36
    .line 1300
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@39
    move-result v0

    #@3a
    .line 1299
    if-nez v0, :cond_2

    #@3c
    move v11, v12

    #@3d
    .line 1306
    .end local v8    # "c2":C
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@3f
    .line 1307
    const-string/jumbo v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    #@42
    .line 1308
    const/4 v3, 0x1

    #@43
    new-array v3, v3, [Ljava/lang/Object;

    #@45
    new-instance v4, Ljava/lang/Character;

    #@47
    invoke-direct {v4, v7}, Ljava/lang/Character;-><init>(C)V

    #@4a
    const/4 v5, 0x0

    #@4b
    aput-object v4, v3, v5

    #@4d
    .line 1306
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 1310
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 1311
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@57
    .line 1312
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@59
    .line 1315
    const-string/jumbo v3, "wf-invalid-character"

    #@5c
    .line 1313
    const/4 v1, 0x3

    #@5d
    .line 1316
    const/4 v4, 0x0

    #@5e
    .line 1317
    const/4 v5, 0x0

    #@5f
    .line 1318
    const/4 v6, 0x0

    #@60
    .line 1312
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@63
    .line 1311
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@66
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    :goto_2
    move v12, v11

    #@67
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    #@68
    .restart local v8    # "c2":C
    :cond_5
    move v11, v12

    #@69
    .line 1301
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    #@6a
    .line 1320
    .end local v8    # "c2":C
    :cond_6
    const/16 v0, 0x2d

    #@6c
    if-ne v7, v0, :cond_4

    #@6e
    if-ge v11, v10, :cond_4

    #@70
    aget-char v0, v9, v11

    #@72
    const/16 v1, 0x2d

    #@74
    if-ne v0, v1, :cond_4

    #@76
    .line 1322
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@78
    .line 1323
    const-string/jumbo v1, "ER_WF_DASH_IN_COMMENT"

    #@7b
    .line 1324
    const/4 v3, 0x0

    #@7c
    .line 1322
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    .line 1326
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 1327
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@86
    .line 1328
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@88
    .line 1331
    const-string/jumbo v3, "wf-invalid-character"

    #@8b
    .line 1329
    const/4 v1, 0x3

    #@8c
    .line 1332
    const/4 v4, 0x0

    #@8d
    .line 1333
    const/4 v5, 0x0

    #@8e
    .line 1334
    const/4 v6, 0x0

    #@8f
    .line 1328
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@92
    .line 1327
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@95
    goto :goto_2

    #@96
    .line 1341
    .end local v2    # "msg":Ljava/lang/String;
    .end local v7    # "c":C
    .end local v11    # "i":I
    :cond_7
    const/4 v11, 0x0

    #@97
    .restart local v11    # "i":I
    move v12, v11

    #@98
    .line 1342
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_8
    :goto_3
    if-ge v12, v10, :cond_d

    #@9a
    .line 1343
    add-int/lit8 v11, v12, 0x1

    #@9c
    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget-char v7, v9, v12

    #@9e
    .line 1344
    .restart local v7    # "c":C
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    #@a1
    move-result v0

    #@a2
    if-eqz v0, :cond_c

    #@a4
    .line 1346
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_9

    #@aa
    if-ge v11, v10, :cond_9

    #@ac
    .line 1347
    add-int/lit8 v12, v11, 0x1

    #@ae
    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget-char v8, v9, v11

    #@b0
    .line 1348
    .restart local v8    # "c2":C
    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_b

    #@b6
    .line 1350
    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@b9
    move-result v0

    #@ba
    .line 1349
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@bd
    move-result v0

    #@be
    .line 1348
    if-nez v0, :cond_8

    #@c0
    move v11, v12

    #@c1
    .line 1355
    .end local v8    # "c2":C
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_9
    :goto_4
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@c3
    .line 1356
    const-string/jumbo v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    #@c6
    .line 1357
    const/4 v3, 0x1

    #@c7
    new-array v3, v3, [Ljava/lang/Object;

    #@c9
    new-instance v4, Ljava/lang/Character;

    #@cb
    invoke-direct {v4, v7}, Ljava/lang/Character;-><init>(C)V

    #@ce
    const/4 v5, 0x0

    #@cf
    aput-object v4, v3, v5

    #@d1
    .line 1355
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d4
    move-result-object v2

    #@d5
    .line 1359
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@d7
    if-eqz v0, :cond_a

    #@d9
    .line 1360
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@db
    .line 1361
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@dd
    .line 1364
    const-string/jumbo v3, "wf-invalid-character"

    #@e0
    .line 1362
    const/4 v1, 0x3

    #@e1
    .line 1365
    const/4 v4, 0x0

    #@e2
    .line 1366
    const/4 v5, 0x0

    #@e3
    .line 1367
    const/4 v6, 0x0

    #@e4
    .line 1361
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@e7
    .line 1360
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@ea
    .end local v2    # "msg":Ljava/lang/String;
    :cond_a
    :goto_5
    move v12, v11

    #@eb
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_3

    #@ec
    .restart local v8    # "c2":C
    :cond_b
    move v11, v12

    #@ed
    .line 1350
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_4

    #@ee
    .line 1369
    .end local v8    # "c2":C
    :cond_c
    const/16 v0, 0x2d

    #@f0
    if-ne v7, v0, :cond_a

    #@f2
    if-ge v11, v10, :cond_a

    #@f4
    aget-char v0, v9, v11

    #@f6
    const/16 v1, 0x2d

    #@f8
    if-ne v0, v1, :cond_a

    #@fa
    .line 1371
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@fc
    .line 1372
    const-string/jumbo v1, "ER_WF_DASH_IN_COMMENT"

    #@ff
    .line 1373
    const/4 v3, 0x0

    #@100
    .line 1371
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    .line 1375
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@106
    if-eqz v0, :cond_a

    #@108
    .line 1376
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@10a
    .line 1377
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@10c
    .line 1380
    const-string/jumbo v3, "wf-invalid-character"

    #@10f
    .line 1378
    const/4 v1, 0x3

    #@110
    .line 1381
    const/4 v4, 0x0

    #@111
    .line 1382
    const/4 v5, 0x0

    #@112
    .line 1383
    const/4 v6, 0x0

    #@113
    .line 1377
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@116
    .line 1376
    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@119
    goto :goto_5

    #@11a
    .line 1388
    .end local v2    # "msg":Ljava/lang/String;
    .end local v7    # "c":C
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_d
    return-void
.end method

.method protected isElementWellFormed(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1398
    const/4 v7, 0x0

    #@3
    .line 1399
    .local v7, "isNameWF":Z
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@5
    and-int/lit16 v0, v0, 0x100

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1402
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1403
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1404
    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@13
    .line 1401
    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@16
    move-result v7

    #@17
    .line 1409
    .local v7, "isNameWF":Z
    :goto_0
    if-nez v7, :cond_0

    #@19
    .line 1411
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@1b
    .line 1412
    const-string/jumbo v1, "wf-invalid-character-in-node-name"

    #@1e
    .line 1413
    const/4 v3, 0x2

    #@1f
    new-array v3, v3, [Ljava/lang/Object;

    #@21
    const-string/jumbo v5, "Element"

    #@24
    aput-object v5, v3, v6

    #@26
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    const/4 v6, 0x1

    #@2b
    aput-object v5, v3, v6

    #@2d
    .line 1411
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 1415
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@33
    if-eqz v0, :cond_0

    #@35
    .line 1416
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@37
    .line 1417
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@39
    .line 1420
    const-string/jumbo v3, "wf-invalid-character-in-node-name"

    #@3c
    .line 1418
    const/4 v1, 0x3

    #@3d
    move-object v5, v4

    #@3e
    move-object v6, v4

    #@3f
    .line 1417
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@42
    .line 1416
    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@45
    .line 1397
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    #@46
    .line 1406
    .local v7, "isNameWF":Z
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@4c
    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    #@4f
    move-result v7

    #@50
    .local v7, "isNameWF":Z
    goto :goto_0
.end method

.method protected isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V
    .locals 18
    .param p1, "node"    # Lorg/w3c/dom/EntityReference;

    #@0
    .prologue
    .line 1643
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    move-object/from16 v0, p0

    #@6
    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 1645
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@12
    .line 1646
    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    #@15
    .line 1647
    const/4 v4, 0x2

    #@16
    new-array v4, v4, [Ljava/lang/Object;

    #@18
    const-string/jumbo v5, "EntityReference"

    #@1b
    const/4 v6, 0x0

    #@1c
    aput-object v5, v4, v6

    #@1e
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x1

    #@23
    aput-object v5, v4, v6

    #@25
    .line 1645
    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 1649
    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 1650
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@33
    move-object/from16 v17, v0

    #@35
    .line 1651
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@37
    .line 1654
    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    #@3a
    .line 1652
    const/4 v2, 0x3

    #@3b
    .line 1655
    const/4 v5, 0x0

    #@3c
    .line 1656
    const/4 v6, 0x0

    #@3d
    .line 1657
    const/4 v7, 0x0

    #@3e
    .line 1651
    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@41
    .line 1650
    move-object/from16 v0, v17

    #@43
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@46
    .line 1662
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getParentNode()Lorg/w3c/dom/Node;

    #@49
    move-result-object v16

    #@4a
    .line 1667
    .local v16, "parent":Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@4d
    move-result-object v1

    #@4e
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@51
    move-result-object v8

    #@52
    .line 1668
    .local v8, "docType":Lorg/w3c/dom/DocumentType;
    if-eqz v8, :cond_9

    #@54
    .line 1669
    invoke-interface {v8}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    #@57
    move-result-object v12

    #@58
    .line 1670
    .local v12, "entities":Lorg/w3c/dom/NamedNodeMap;
    const/4 v13, 0x0

    #@59
    .local v13, "i":I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@5c
    move-result v1

    #@5d
    if-ge v13, v1, :cond_9

    #@5f
    .line 1671
    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@62
    move-result-object v9

    #@63
    check-cast v9, Lorg/w3c/dom/Entity;

    #@65
    .line 1674
    .local v9, "ent":Lorg/w3c/dom/Entity;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    if-nez v1, :cond_4

    #@6b
    const-string/jumbo v14, ""

    #@6e
    .line 1676
    .local v14, "nodeName":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    if-nez v1, :cond_5

    #@74
    .line 1677
    const-string/jumbo v15, ""

    #@77
    .line 1680
    .local v15, "nodeNamespaceURI":Ljava/lang/String;
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    if-nez v1, :cond_6

    #@7d
    const-string/jumbo v10, ""

    #@80
    .line 1682
    .local v10, "entName":Ljava/lang/String;
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    if-nez v1, :cond_7

    #@86
    const-string/jumbo v11, ""

    #@89
    .line 1685
    .local v11, "entNamespaceURI":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8c
    move-result v1

    #@8d
    const/4 v2, 0x1

    #@8e
    if-ne v1, v2, :cond_1

    #@90
    .line 1686
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v1

    #@94
    if-eqz v1, :cond_1

    #@96
    .line 1687
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    .line 1686
    if-eqz v1, :cond_1

    #@9c
    .line 1689
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    if-eqz v1, :cond_1

    #@a2
    .line 1691
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@a4
    .line 1692
    const-string/jumbo v2, "ER_WF_REF_TO_UNPARSED_ENT"

    #@a7
    .line 1693
    const/4 v4, 0x1

    #@a8
    new-array v4, v4, [Ljava/lang/Object;

    #@aa
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    const/4 v6, 0x0

    #@af
    aput-object v5, v4, v6

    #@b1
    .line 1691
    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    .line 1695
    .restart local v3    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b7
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@b9
    if-eqz v1, :cond_1

    #@bb
    .line 1696
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@bf
    move-object/from16 v17, v0

    #@c1
    .line 1697
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@c3
    .line 1700
    const-string/jumbo v4, "ER_WF_REF_TO_UNPARSED_ENT"

    #@c6
    .line 1698
    const/4 v2, 0x3

    #@c7
    .line 1701
    const/4 v5, 0x0

    #@c8
    .line 1702
    const/4 v6, 0x0

    #@c9
    .line 1703
    const/4 v7, 0x0

    #@ca
    .line 1697
    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@cd
    .line 1696
    move-object/from16 v0, v17

    #@cf
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@d2
    .line 1711
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    #@d5
    move-result v1

    #@d6
    const/4 v2, 0x2

    #@d7
    if-ne v1, v2, :cond_3

    #@d9
    .line 1712
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v1

    #@dd
    if-eqz v1, :cond_3

    #@df
    .line 1713
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result v1

    #@e3
    .line 1712
    if-eqz v1, :cond_3

    #@e5
    .line 1715
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    #@e8
    move-result-object v1

    #@e9
    if-nez v1, :cond_2

    #@eb
    .line 1716
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    #@ee
    move-result-object v1

    #@ef
    if-eqz v1, :cond_8

    #@f1
    .line 1719
    :cond_2
    :goto_5
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@f3
    .line 1720
    const-string/jumbo v2, "ER_WF_REF_TO_EXTERNAL_ENT"

    #@f6
    .line 1721
    const/4 v4, 0x1

    #@f7
    new-array v4, v4, [Ljava/lang/Object;

    #@f9
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@fc
    move-result-object v5

    #@fd
    const/4 v6, 0x0

    #@fe
    aput-object v5, v4, v6

    #@100
    .line 1719
    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@103
    move-result-object v3

    #@104
    .line 1723
    .restart local v3    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@106
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@108
    if-eqz v1, :cond_3

    #@10a
    .line 1724
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@10e
    move-object/from16 v17, v0

    #@110
    .line 1725
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@112
    .line 1728
    const-string/jumbo v4, "ER_WF_REF_TO_EXTERNAL_ENT"

    #@115
    .line 1726
    const/4 v2, 0x3

    #@116
    .line 1729
    const/4 v5, 0x0

    #@117
    .line 1730
    const/4 v6, 0x0

    #@118
    .line 1731
    const/4 v7, 0x0

    #@119
    .line 1725
    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@11c
    .line 1724
    move-object/from16 v0, v17

    #@11e
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@121
    .line 1670
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    #@123
    goto/16 :goto_0

    #@125
    .line 1674
    .end local v10    # "entName":Ljava/lang/String;
    .end local v11    # "entNamespaceURI":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "nodeNamespaceURI":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@128
    move-result-object v14

    #@129
    .restart local v14    # "nodeName":Ljava/lang/String;
    goto/16 :goto_1

    #@12b
    .line 1678
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    #@12e
    move-result-object v15

    #@12f
    .restart local v15    # "nodeNamespaceURI":Ljava/lang/String;
    goto/16 :goto_2

    #@131
    .line 1680
    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    #@134
    move-result-object v10

    #@135
    .restart local v10    # "entName":Ljava/lang/String;
    goto/16 :goto_3

    #@137
    .line 1682
    :cond_7
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    #@13a
    move-result-object v11

    #@13b
    .restart local v11    # "entNamespaceURI":Ljava/lang/String;
    goto/16 :goto_4

    #@13d
    .line 1717
    :cond_8
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    #@140
    move-result-object v1

    #@141
    if-eqz v1, :cond_3

    #@143
    goto :goto_5

    #@144
    .line 1641
    .end local v9    # "ent":Lorg/w3c/dom/Entity;
    .end local v10    # "entName":Ljava/lang/String;
    .end local v11    # "entNamespaceURI":Ljava/lang/String;
    .end local v12    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "i":I
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "nodeNamespaceURI":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method protected isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/ProcessingInstruction;

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 1532
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@a
    invoke-virtual {p0, v0, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 1534
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@12
    .line 1535
    const-string/jumbo v3, "wf-invalid-character-in-node-name"

    #@15
    .line 1536
    const/4 v5, 0x2

    #@16
    new-array v5, v5, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "ProcessingInstruction"

    #@1b
    aput-object v6, v5, v9

    #@1d
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    aput-object v6, v5, v10

    #@23
    .line 1534
    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 1538
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 1539
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2d
    .line 1540
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@2f
    .line 1543
    const-string/jumbo v3, "wf-invalid-character-in-node-name"

    #@32
    move-object v5, v4

    #@33
    move-object v6, v4

    #@34
    .line 1540
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@37
    .line 1539
    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@3a
    .line 1553
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    #@41
    move-result-object v7

    #@42
    .line 1554
    .local v7, "invalidChar":Ljava/lang/Character;
    if-eqz v7, :cond_1

    #@44
    .line 1556
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@46
    .line 1557
    const-string/jumbo v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    #@49
    .line 1558
    new-array v5, v10, [Ljava/lang/Object;

    #@4b
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    #@4e
    move-result v6

    #@4f
    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    #@52
    move-result v6

    #@53
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    aput-object v6, v5, v9

    #@59
    .line 1556
    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 1560
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 1561
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@63
    .line 1562
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@65
    .line 1565
    const-string/jumbo v3, "wf-invalid-character"

    #@68
    move-object v5, v4

    #@69
    move-object v6, v4

    #@6a
    .line 1562
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@6d
    .line 1561
    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@70
    .line 1530
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected isTextWellFormed(Lorg/w3c/dom/Text;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Text;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1612
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    #@8
    move-result-object v7

    #@9
    .line 1613
    .local v7, "invalidChar":Ljava/lang/Character;
    if-eqz v7, :cond_0

    #@b
    .line 1615
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@d
    .line 1616
    const-string/jumbo v1, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    #@10
    .line 1617
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    #@16
    move-result v5

    #@17
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    #@1a
    move-result v5

    #@1b
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v5, v3, v6

    #@22
    .line 1615
    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1619
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 1620
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2c
    .line 1621
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@2e
    .line 1624
    const-string/jumbo v3, "wf-invalid-character"

    #@31
    .line 1622
    const/4 v1, 0x3

    #@32
    move-object v5, v4

    #@33
    move-object v6, v4

    #@34
    .line 1621
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@37
    .line 1620
    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@3a
    .line 1610
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "xml11Version"    # Z

    #@0
    .prologue
    .line 1134
    if-nez p2, :cond_0

    #@2
    .line 1135
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 1136
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 1138
    .local v0, "validNCName":Z
    if-nez p3, :cond_3

    #@7
    .line 1140
    if-eqz p1, :cond_1

    #@9
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 1141
    :cond_1
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 1148
    .end local v0    # "validNCName":Z
    :goto_0
    return v0

    #@14
    .line 1140
    .restart local v0    # "validNCName":Z
    :cond_2
    const/4 v0, 0x0

    #@15
    goto :goto_0

    #@16
    .line 1144
    :cond_3
    if-eqz p1, :cond_4

    #@18
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_5

    #@1e
    .line 1145
    :cond_4
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    .local v0, "validNCName":Z
    goto :goto_0

    #@23
    .line 1144
    .local v0, "validNCName":Z
    :cond_5
    const/4 v0, 0x0

    #@24
    goto :goto_0
.end method

.method protected isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;
    .locals 9
    .param p1, "chardata"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1221
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v7

    #@7
    if-nez v7, :cond_1

    #@9
    .line 1222
    :cond_0
    return-object v8

    #@a
    .line 1225
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@d
    move-result-object v2

    #@e
    .line 1226
    .local v2, "dataarray":[C
    array-length v3, v2

    #@f
    .line 1229
    .local v3, "datalength":I
    iget-boolean v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@11
    if-eqz v7, :cond_6

    #@13
    .line 1231
    const/4 v4, 0x0

    #@14
    .local v4, "i":I
    move v5, v4

    #@15
    .line 1232
    .end local v4    # "i":I
    .local v5, "i":I
    :cond_2
    :goto_0
    if-ge v5, v3, :cond_b

    #@17
    .line 1233
    add-int/lit8 v4, v5, 0x1

    #@19
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-char v7, v2, v5

    #@1b
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_5

    #@21
    .line 1235
    add-int/lit8 v7, v4, -0x1

    #@23
    aget-char v0, v2, v7

    #@25
    .line 1236
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_3

    #@2b
    if-ge v4, v3, :cond_3

    #@2d
    .line 1237
    add-int/lit8 v5, v4, 0x1

    #@2f
    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-char v1, v2, v4

    #@31
    .line 1238
    .local v1, "ch2":C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_4

    #@37
    .line 1240
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@3a
    move-result v7

    #@3b
    .line 1239
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@3e
    move-result v7

    #@3f
    .line 1238
    if-nez v7, :cond_2

    #@41
    move v4, v5

    #@42
    .line 1245
    .end local v1    # "ch2":C
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/Character;

    #@44
    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    #@47
    .line 1246
    .local v6, "refInvalidChar":Ljava/lang/Character;
    return-object v6

    #@48
    .end local v4    # "i":I
    .end local v6    # "refInvalidChar":Ljava/lang/Character;
    .restart local v1    # "ch2":C
    .restart local v5    # "i":I
    :cond_4
    move v4, v5

    #@49
    .line 1240
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@4a
    .end local v0    # "ch":C
    .end local v1    # "ch2":C
    :cond_5
    move v5, v4

    #@4b
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    #@4c
    .line 1252
    .end local v5    # "i":I
    :cond_6
    const/4 v4, 0x0

    #@4d
    .restart local v4    # "i":I
    move v5, v4

    #@4e
    .line 1253
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_7
    :goto_2
    if-ge v5, v3, :cond_b

    #@50
    .line 1254
    add-int/lit8 v4, v5, 0x1

    #@52
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-char v7, v2, v5

    #@54
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_a

    #@5a
    .line 1256
    add-int/lit8 v7, v4, -0x1

    #@5c
    aget-char v0, v2, v7

    #@5e
    .line 1257
    .restart local v0    # "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_8

    #@64
    if-ge v4, v3, :cond_8

    #@66
    .line 1258
    add-int/lit8 v5, v4, 0x1

    #@68
    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-char v1, v2, v4

    #@6a
    .line 1259
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_9

    #@70
    .line 1261
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@73
    move-result v7

    #@74
    .line 1260
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@77
    move-result v7

    #@78
    .line 1259
    if-nez v7, :cond_7

    #@7a
    move v4, v5

    #@7b
    .line 1266
    .end local v1    # "ch2":C
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    :goto_3
    new-instance v6, Ljava/lang/Character;

    #@7d
    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    #@80
    .line 1267
    .restart local v6    # "refInvalidChar":Ljava/lang/Character;
    return-object v6

    #@81
    .end local v4    # "i":I
    .end local v6    # "refInvalidChar":Ljava/lang/Character;
    .restart local v1    # "ch2":C
    .restart local v5    # "i":I
    :cond_9
    move v4, v5

    #@82
    .line 1261
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    #@83
    .end local v0    # "ch":C
    .end local v1    # "ch2":C
    :cond_a
    move v5, v4

    #@84
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@85
    .line 1272
    :cond_b
    return-object v8
.end method

.method protected isWFXMLChar(Ljava/lang/String;Ljava/lang/Character;)Z
    .locals 9
    .param p1, "chardata"    # Ljava/lang/String;
    .param p2, "refInvalidChar"    # Ljava/lang/Character;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1158
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v6

    #@8
    if-nez v6, :cond_1

    #@a
    .line 1159
    :cond_0
    return v8

    #@b
    .line 1162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@e
    move-result-object v2

    #@f
    .line 1163
    .local v2, "dataarray":[C
    array-length v3, v2

    #@10
    .line 1166
    .local v3, "datalength":I
    iget-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    #@12
    if-eqz v6, :cond_6

    #@14
    .line 1168
    const/4 v4, 0x0

    #@15
    .local v4, "i":I
    move v5, v4

    #@16
    .line 1169
    .end local v4    # "i":I
    .local v5, "i":I
    :cond_2
    :goto_0
    if-ge v5, v3, :cond_b

    #@18
    .line 1170
    add-int/lit8 v4, v5, 0x1

    #@1a
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-char v6, v2, v5

    #@1c
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_5

    #@22
    .line 1172
    add-int/lit8 v6, v4, -0x1

    #@24
    aget-char v0, v2, v6

    #@26
    .line 1173
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_3

    #@2c
    if-ge v4, v3, :cond_3

    #@2e
    .line 1174
    add-int/lit8 v5, v4, 0x1

    #@30
    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-char v1, v2, v4

    #@32
    .line 1175
    .local v1, "ch2":C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_4

    #@38
    .line 1177
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@3b
    move-result v6

    #@3c
    .line 1176
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@3f
    move-result v6

    #@40
    .line 1175
    if-nez v6, :cond_2

    #@42
    move v4, v5

    #@43
    .line 1182
    .end local v1    # "ch2":C
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/Character;

    #@45
    .end local p2    # "refInvalidChar":Ljava/lang/Character;
    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    #@48
    .line 1183
    .restart local p2    # "refInvalidChar":Ljava/lang/Character;
    return v7

    #@49
    .end local v4    # "i":I
    .restart local v1    # "ch2":C
    .restart local v5    # "i":I
    :cond_4
    move v4, v5

    #@4a
    .line 1177
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@4b
    .end local v0    # "ch":C
    .end local v1    # "ch2":C
    :cond_5
    move v5, v4

    #@4c
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    #@4d
    .line 1189
    .end local v5    # "i":I
    :cond_6
    const/4 v4, 0x0

    #@4e
    .restart local v4    # "i":I
    move v5, v4

    #@4f
    .line 1190
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_7
    :goto_2
    if-ge v5, v3, :cond_b

    #@51
    .line 1191
    add-int/lit8 v4, v5, 0x1

    #@53
    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-char v6, v2, v5

    #@55
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_a

    #@5b
    .line 1193
    add-int/lit8 v6, v4, -0x1

    #@5d
    aget-char v0, v2, v6

    #@5f
    .line 1194
    .restart local v0    # "ch":C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_8

    #@65
    if-ge v4, v3, :cond_8

    #@67
    .line 1195
    add-int/lit8 v5, v4, 0x1

    #@69
    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget-char v1, v2, v4

    #@6b
    .line 1196
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_9

    #@71
    .line 1198
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    #@74
    move-result v6

    #@75
    .line 1197
    invoke-static {v6}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    #@78
    move-result v6

    #@79
    .line 1196
    if-nez v6, :cond_7

    #@7b
    move v4, v5

    #@7c
    .line 1203
    .end local v1    # "ch2":C
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    :goto_3
    new-instance p2, Ljava/lang/Character;

    #@7e
    .end local p2    # "refInvalidChar":Ljava/lang/Character;
    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    #@81
    .line 1204
    .restart local p2    # "refInvalidChar":Ljava/lang/Character;
    return v7

    #@82
    .end local v4    # "i":I
    .restart local v1    # "ch2":C
    .restart local v5    # "i":I
    :cond_9
    move v4, v5

    #@83
    .line 1198
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    #@84
    .end local v0    # "ch":C
    .end local v1    # "ch2":C
    :cond_a
    move v5, v4

    #@85
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@86
    .line 1209
    :cond_b
    return v8
.end method

.method protected isXMLName(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "xml11Version"    # Z

    #@0
    .prologue
    .line 1110
    if-nez p1, :cond_0

    #@2
    .line 1111
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1113
    :cond_0
    if-nez p2, :cond_1

    #@6
    .line 1114
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidName(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1116
    :cond_1
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method protected recordLocalNSDecl(Lorg/w3c/dom/Node;)V
    .locals 17
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1824
    check-cast p1, Lorg/w3c/dom/Element;

    #@2
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@5
    move-result-object v12

    #@6
    .line 1825
    .local v12, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@9
    move-result v14

    #@a
    .line 1827
    .local v14, "length":I
    const/4 v13, 0x0

    #@b
    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_8

    #@d
    .line 1828
    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@10
    move-result-object v8

    #@11
    .line 1830
    .local v8, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@14
    move-result-object v15

    #@15
    .line 1831
    .local v15, "localName":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    .line 1832
    .local v10, "attrPrefix":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    .line 1833
    .local v11, "attrValue":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    .line 1836
    .local v9, "attrNS":Ljava/lang/String;
    if-eqz v15, :cond_0

    #@23
    .line 1837
    const-string/jumbo v1, "xmlns"

    #@26
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    .line 1836
    if-eqz v1, :cond_1

    #@2c
    .line 1837
    :cond_0
    const-string/jumbo v15, ""

    #@2f
    .line 1838
    :cond_1
    if-nez v10, :cond_2

    #@31
    const-string/jumbo v10, ""

    #@34
    .line 1839
    :cond_2
    if-nez v11, :cond_3

    #@36
    const-string/jumbo v11, ""

    #@39
    .line 1840
    :cond_3
    if-nez v9, :cond_4

    #@3b
    const-string/jumbo v9, ""

    #@3e
    .line 1843
    :cond_4
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@41
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 1846
    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    #@4a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_6

    #@50
    .line 1848
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@52
    .line 1849
    const-string/jumbo v2, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    #@55
    .line 1850
    const/4 v4, 0x2

    #@56
    new-array v4, v4, [Ljava/lang/Object;

    #@58
    const/4 v5, 0x0

    #@59
    aput-object v10, v4, v5

    #@5b
    const-string/jumbo v5, "http://www.w3.org/2000/xmlns/"

    #@5e
    const/4 v6, 0x1

    #@5f
    aput-object v5, v4, v6

    #@61
    .line 1848
    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .line 1852
    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@67
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@69
    if-eqz v1, :cond_5

    #@6b
    .line 1853
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@6f
    move-object/from16 v16, v0

    #@71
    .line 1854
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@73
    .line 1857
    const-string/jumbo v4, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    #@76
    .line 1855
    const/4 v2, 0x2

    #@77
    .line 1858
    const/4 v5, 0x0

    #@78
    .line 1859
    const/4 v6, 0x0

    #@79
    .line 1860
    const/4 v7, 0x0

    #@7a
    .line 1854
    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@7d
    .line 1853
    move-object/from16 v0, v16

    #@7f
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@82
    .line 1827
    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v13, v13, 0x1

    #@84
    goto :goto_0

    #@85
    .line 1864
    :cond_6
    const-string/jumbo v1, "xmlns"

    #@88
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_7

    #@8e
    .line 1866
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_5

    #@94
    .line 1867
    move-object/from16 v0, p0

    #@96
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@98
    invoke-virtual {v1, v15, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@9b
    goto :goto_1

    #@9c
    .line 1873
    :cond_7
    move-object/from16 v0, p0

    #@9e
    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@a0
    const-string/jumbo v2, ""

    #@a3
    invoke-virtual {v1, v2, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@a6
    goto :goto_1

    #@a7
    .line 1823
    .end local v8    # "attr":Lorg/w3c/dom/Node;
    .end local v9    # "attrNS":Ljava/lang/String;
    .end local v10    # "attrPrefix":Ljava/lang/String;
    .end local v11    # "attrValue":Ljava/lang/String;
    .end local v15    # "localName":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method protected serializeAttList(Lorg/w3c/dom/Element;)V
    .locals 34
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@3
    move-result-object v21

    #@4
    .line 665
    .local v21, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@7
    move-result v31

    #@8
    .line 667
    .local v31, "nAttrs":I
    const/16 v27, 0x0

    #@a
    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    #@c
    move/from16 v1, v31

    #@e
    if-ge v0, v1, :cond_1d

    #@10
    .line 668
    move-object/from16 v0, v21

    #@12
    move/from16 v1, v27

    #@14
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@17
    move-result-object v19

    #@18
    .line 670
    .local v19, "attr":Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@1b
    move-result-object v30

    #@1c
    .line 671
    .local v30, "localName":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@1f
    move-result-object v14

    #@20
    .line 672
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    if-nez v2, :cond_a

    #@26
    const-string/jumbo v4, ""

    #@29
    .line 673
    .local v4, "attrPrefix":Ljava/lang/String;
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@2c
    move-result-object v16

    #@2d
    .line 676
    .local v16, "attrValue":Ljava/lang/String;
    const/4 v15, 0x0

    #@2e
    .line 677
    .local v15, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@30
    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@32
    if-eqz v2, :cond_0

    #@34
    move-object/from16 v2, v19

    #@36
    .line 678
    check-cast v2, Lorg/w3c/dom/Attr;

    #@38
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {v2}, Lorg/w3c/dom/TypeInfo;->getTypeName()Ljava/lang/String;

    #@3f
    move-result-object v15

    #@40
    .line 680
    .end local v15    # "type":Ljava/lang/String;
    :cond_0
    if-nez v15, :cond_1

    #@42
    const-string/jumbo v15, "CDATA"

    #@45
    .line 682
    :cond_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 683
    .local v7, "attrNS":Ljava/lang/String;
    if-eqz v7, :cond_b

    #@4b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_b

    #@51
    .line 684
    const/4 v7, 0x0

    #@52
    .line 686
    .local v7, "attrNS":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@55
    move-result-object v14

    #@56
    move-object/from16 v20, v14

    #@58
    .end local v7    # "attrNS":Ljava/lang/String;
    .end local v14    # "attrName":Ljava/lang/String;
    .local v20, "attrName":Ljava/lang/String;
    :goto_2
    move-object/from16 v2, v19

    #@5a
    .line 689
    check-cast v2, Lorg/w3c/dom/Attr;

    #@5c
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    #@5f
    move-result v29

    #@60
    .line 690
    .local v29, "isSpecified":Z
    const/16 v17, 0x1

    #@62
    .line 691
    .local v17, "addAttr":Z
    const/16 v18, 0x0

    #@64
    .line 693
    .local v18, "applyFilter":Z
    const-string/jumbo v2, "xmlns"

    #@67
    move-object/from16 v0, v20

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    if-nez v2, :cond_c

    #@6f
    const-string/jumbo v2, "xmlns:"

    #@72
    move-object/from16 v0, v20

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@77
    move-result v33

    #@78
    .line 696
    :goto_3
    move-object/from16 v0, p0

    #@7a
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@7c
    and-int/lit16 v2, v2, 0x4000

    #@7e
    if-eqz v2, :cond_2

    #@80
    .line 697
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, v19

    #@84
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isAttributeWellFormed(Lorg/w3c/dom/Node;)V

    #@87
    .line 705
    :cond_2
    move-object/from16 v0, p0

    #@89
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@8b
    and-int/lit16 v2, v2, 0x100

    #@8d
    if-eqz v2, :cond_3

    #@8f
    if-eqz v33, :cond_d

    #@91
    :cond_3
    move-object/from16 v14, v20

    #@93
    .line 805
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    #@95
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@97
    const v3, 0x8000

    #@9a
    and-int/2addr v2, v3

    #@9b
    if-eqz v2, :cond_5

    #@9d
    if-nez v29, :cond_6

    #@9f
    .line 806
    :cond_5
    move-object/from16 v0, p0

    #@a1
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@a3
    const v3, 0x8000

    #@a6
    and-int/2addr v2, v3

    #@a7
    if-nez v2, :cond_18

    #@a9
    .line 807
    :cond_6
    const/16 v18, 0x1

    #@ab
    .line 812
    :goto_5
    if-eqz v18, :cond_7

    #@ad
    .line 815
    move-object/from16 v0, p0

    #@af
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@b1
    if-eqz v2, :cond_7

    #@b3
    .line 816
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@b7
    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    #@ba
    move-result v2

    #@bb
    and-int/lit8 v2, v2, 0x2

    #@bd
    if-eqz v2, :cond_7

    #@bf
    .line 819
    if-nez v33, :cond_7

    #@c1
    .line 820
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@c5
    move-object/from16 v0, v19

    #@c7
    invoke-interface {v2, v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    #@ca
    move-result v22

    #@cb
    .line 821
    .local v22, "code":S
    packed-switch v22, :pswitch_data_0

    #@ce
    .line 833
    .end local v22    # "code":S
    :cond_7
    :goto_6
    if-eqz v17, :cond_1a

    #@d0
    if-eqz v33, :cond_1a

    #@d2
    .line 835
    move-object/from16 v0, p0

    #@d4
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@d6
    and-int/lit16 v2, v2, 0x200

    #@d8
    if-eqz v2, :cond_8

    #@da
    .line 837
    if-eqz v30, :cond_8

    #@dc
    const-string/jumbo v2, ""

    #@df
    move-object/from16 v0, v30

    #@e1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_19

    #@e7
    .line 864
    :cond_8
    :goto_7
    if-eqz v33, :cond_9

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@ed
    and-int/lit16 v2, v2, 0x200

    #@ef
    if-eqz v2, :cond_9

    #@f1
    .line 870
    const-string/jumbo v2, ":"

    #@f4
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f7
    move-result v28

    #@f8
    .local v28, "index":I
    if-gez v28, :cond_1c

    #@fa
    .line 871
    const-string/jumbo v32, ""

    #@fd
    .line 874
    .local v32, "prefix":Ljava/lang/String;
    :goto_8
    const-string/jumbo v2, ""

    #@100
    move-object/from16 v0, v32

    #@102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v2

    #@106
    if-nez v2, :cond_9

    #@108
    .line 875
    move-object/from16 v0, p0

    #@10a
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@10c
    move-object/from16 v0, v32

    #@10e
    move-object/from16 v1, v16

    #@110
    invoke-interface {v2, v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    #@113
    .line 667
    .end local v28    # "index":I
    .end local v32    # "prefix":Ljava/lang/String;
    :cond_9
    add-int/lit8 v27, v27, 0x1

    #@115
    goto/16 :goto_0

    #@117
    .line 672
    .end local v4    # "attrPrefix":Ljava/lang/String;
    .end local v16    # "attrValue":Ljava/lang/String;
    .end local v17    # "addAttr":Z
    .end local v18    # "applyFilter":Z
    .end local v29    # "isSpecified":Z
    :cond_a
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@11a
    move-result-object v4

    #@11b
    .restart local v4    # "attrPrefix":Ljava/lang/String;
    goto/16 :goto_1

    #@11d
    .local v7, "attrNS":Ljava/lang/String;
    .restart local v16    # "attrValue":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v14

    #@11f
    .line 683
    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    goto/16 :goto_2

    #@121
    .line 693
    .end local v7    # "attrNS":Ljava/lang/String;
    .restart local v17    # "addAttr":Z
    .restart local v18    # "applyFilter":Z
    .restart local v29    # "isSpecified":Z
    :cond_c
    const/16 v33, 0x1

    #@123
    .local v33, "xmlnsAttr":Z
    goto/16 :goto_3

    #@125
    .line 708
    .end local v33    # "xmlnsAttr":Z
    :cond_d
    if-eqz v7, :cond_17

    #@127
    .line 709
    if-nez v4, :cond_e

    #@129
    const-string/jumbo v4, ""

    #@12c
    .line 711
    :cond_e
    move-object/from16 v0, p0

    #@12e
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@130
    invoke-virtual {v2, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@133
    move-result-object v26

    #@134
    .line 712
    .local v26, "declAttrPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@138
    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@13b
    move-result-object v25

    #@13c
    .line 720
    .local v25, "declAttrNS":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@13f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@142
    move-result v2

    #@143
    if-nez v2, :cond_f

    #@145
    const-string/jumbo v2, ""

    #@148
    move-object/from16 v0, v26

    #@14a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v2

    #@14e
    if-nez v2, :cond_f

    #@150
    .line 721
    move-object/from16 v0, v26

    #@152
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@155
    move-result v2

    #@156
    if-eqz v2, :cond_f

    #@158
    move-object/from16 v14, v20

    #@15a
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@15c
    .line 725
    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    :cond_f
    if-eqz v26, :cond_10

    #@15e
    const-string/jumbo v2, ""

    #@161
    move-object/from16 v0, v26

    #@163
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v2

    #@167
    if-eqz v2, :cond_12

    #@169
    .line 738
    :cond_10
    if-eqz v4, :cond_11

    #@16b
    const-string/jumbo v2, ""

    #@16e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v2

    #@172
    if-eqz v2, :cond_14

    #@174
    .line 754
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string/jumbo v3, "NS"

    #@17c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v2

    #@180
    .line 753
    const/4 v3, 0x1

    #@181
    .line 754
    const/16 v23, 0x2

    #@183
    .local v23, "counter":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v2

    #@187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v4

    #@18b
    .line 756
    :goto_9
    move-object/from16 v0, p0

    #@18d
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@18f
    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@192
    move-result-object v2

    #@193
    if-eqz v2, :cond_16

    #@195
    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v3, "NS"

    #@19d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v2

    #@1a1
    add-int/lit8 v24, v23, 0x1

    #@1a3
    .end local v23    # "counter":I
    .local v24, "counter":I
    move/from16 v0, v23

    #@1a5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v2

    #@1a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    move/from16 v23, v24

    #@1af
    .end local v24    # "counter":I
    .restart local v23    # "counter":I
    goto :goto_9

    #@1b0
    .line 728
    .end local v23    # "counter":I
    :cond_12
    move-object/from16 v4, v26

    #@1b2
    .line 730
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@1b5
    move-result v2

    #@1b6
    if-lez v2, :cond_13

    #@1b8
    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    move-object/from16 v0, v26

    #@1bf
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v2

    #@1c3
    const-string/jumbo v3, ":"

    #@1c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v2

    #@1ca
    move-object/from16 v0, v30

    #@1cc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v2

    #@1d0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v14

    #@1d4
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@1d6
    .line 733
    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    :cond_13
    move-object/from16 v14, v30

    #@1d8
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@1da
    .line 739
    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    :cond_14
    if-nez v25, :cond_11

    #@1dc
    .line 741
    move-object/from16 v0, p0

    #@1de
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@1e0
    and-int/lit16 v2, v2, 0x200

    #@1e2
    if-eqz v2, :cond_15

    #@1e4
    .line 742
    move-object/from16 v0, p0

    #@1e6
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@1e8
    const-string/jumbo v3, "http://www.w3.org/2000/xmlns/"

    #@1eb
    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    const-string/jumbo v6, "xmlns:"

    #@1f3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v5

    #@1f7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v5

    #@1fb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fe
    move-result-object v5

    #@1ff
    const-string/jumbo v6, "CDATA"

    #@202
    .line 742
    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@205
    .line 745
    move-object/from16 v0, p0

    #@207
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@209
    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@20c
    .line 746
    move-object/from16 v0, p0

    #@20e
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@210
    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@213
    :cond_15
    move-object/from16 v14, v20

    #@215
    .line 739
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@217
    .line 760
    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    .restart local v23    # "counter":I
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v2

    #@220
    const-string/jumbo v3, ":"

    #@223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v2

    #@227
    move-object/from16 v0, v30

    #@229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v2

    #@22d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@230
    move-result-object v14

    #@231
    .line 764
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@233
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@235
    and-int/lit16 v2, v2, 0x200

    #@237
    if-eqz v2, :cond_4

    #@239
    .line 766
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@23d
    const-string/jumbo v3, "http://www.w3.org/2000/xmlns/"

    #@240
    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    #@242
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v6, "xmlns:"

    #@248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v5

    #@24c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v5

    #@250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@253
    move-result-object v5

    #@254
    const-string/jumbo v6, "CDATA"

    #@257
    .line 766
    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@25a
    .line 769
    move-object/from16 v0, p0

    #@25c
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@25e
    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@261
    .line 770
    move-object/from16 v0, p0

    #@263
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@265
    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@268
    goto/16 :goto_4

    #@26a
    .line 778
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v23    # "counter":I
    .end local v25    # "declAttrNS":Ljava/lang/String;
    .end local v26    # "declAttrPrefix":Ljava/lang/String;
    .restart local v20    # "attrName":Ljava/lang/String;
    :cond_17
    if-nez v30, :cond_1e

    #@26c
    .line 780
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@26e
    .line 781
    const-string/jumbo v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@271
    .line 782
    const/4 v5, 0x1

    #@272
    new-array v5, v5, [Ljava/lang/Object;

    #@274
    const/4 v6, 0x0

    #@275
    aput-object v20, v5, v6

    #@277
    .line 780
    invoke-virtual {v2, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27a
    move-result-object v10

    #@27b
    .line 784
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@27d
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@27f
    if-eqz v2, :cond_1e

    #@281
    .line 785
    move-object/from16 v0, p0

    #@283
    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@285
    .line 786
    new-instance v8, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@287
    .line 788
    const-string/jumbo v11, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@28a
    .line 787
    const/4 v9, 0x2

    #@28b
    .line 788
    const/4 v12, 0x0

    #@28c
    .line 789
    const/4 v13, 0x0

    #@28d
    const/4 v14, 0x0

    #@28e
    .line 786
    invoke-direct/range {v8 .. v14}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@291
    .line 785
    invoke-interface {v2, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@294
    move-object/from16 v14, v20

    #@296
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@298
    .line 809
    .end local v10    # "msg":Ljava/lang/String;
    :cond_18
    const/16 v17, 0x0

    #@29a
    goto/16 :goto_5

    #@29c
    .line 824
    .restart local v22    # "code":S
    :pswitch_0
    const/16 v17, 0x0

    #@29e
    .line 825
    goto/16 :goto_6

    #@2a0
    .line 838
    .end local v22    # "code":S
    :cond_19
    move-object/from16 v0, p0

    #@2a2
    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2a4
    move-object v12, v7

    #@2a5
    move-object/from16 v13, v30

    #@2a7
    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2aa
    goto/16 :goto_7

    #@2ac
    .line 842
    :cond_1a
    if-eqz v17, :cond_8

    #@2ae
    if-nez v33, :cond_8

    #@2b0
    .line 846
    move-object/from16 v0, p0

    #@2b2
    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@2b4
    and-int/lit16 v2, v2, 0x200

    #@2b6
    if-eqz v2, :cond_1b

    #@2b8
    if-eqz v7, :cond_1b

    #@2ba
    .line 847
    move-object/from16 v0, p0

    #@2bc
    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2be
    move-object v12, v7

    #@2bf
    move-object/from16 v13, v30

    #@2c1
    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2c4
    goto/16 :goto_7

    #@2c6
    .line 854
    :cond_1b
    move-object/from16 v0, p0

    #@2c8
    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2ca
    .line 855
    const-string/jumbo v12, ""

    #@2cd
    move-object/from16 v13, v30

    #@2cf
    .line 854
    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2d2
    goto/16 :goto_7

    #@2d4
    .line 872
    .restart local v28    # "index":I
    :cond_1c
    add-int/lit8 v2, v28, 0x1

    #@2d6
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d9
    move-result-object v32

    #@2da
    .restart local v32    # "prefix":Ljava/lang/String;
    goto/16 :goto_8

    #@2dc
    .line 663
    .end local v4    # "attrPrefix":Ljava/lang/String;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v16    # "attrValue":Ljava/lang/String;
    .end local v17    # "addAttr":Z
    .end local v18    # "applyFilter":Z
    .end local v19    # "attr":Lorg/w3c/dom/Node;
    .end local v28    # "index":I
    .end local v29    # "isSpecified":Z
    .end local v30    # "localName":Ljava/lang/String;
    .end local v32    # "prefix":Ljava/lang/String;
    :cond_1d
    return-void

    #@2dd
    .restart local v4    # "attrPrefix":Ljava/lang/String;
    .restart local v16    # "attrValue":Ljava/lang/String;
    .restart local v17    # "addAttr":Z
    .restart local v18    # "applyFilter":Z
    .restart local v19    # "attr":Lorg/w3c/dom/Node;
    .restart local v20    # "attrName":Ljava/lang/String;
    .restart local v29    # "isSpecified":Z
    .restart local v30    # "localName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v14, v20

    #@2df
    .end local v20    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    goto/16 :goto_4

    #@2e1
    .line 821
    nop

    #@2e2
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected serializeCDATASection(Lorg/w3c/dom/CDATASection;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/CDATASection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 918
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@4
    and-int/lit16 v0, v0, 0x4000

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 919
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V

    #@b
    .line 923
    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@d
    and-int/lit8 v0, v0, 0x2

    #@f
    if-eqz v0, :cond_7

    #@11
    .line 930
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 931
    .local v8, "nodeValue":Ljava/lang/String;
    const-string/jumbo v0, "]]>"

    #@18
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v7

    #@1c
    .line 932
    .local v7, "endIndex":I
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@1e
    and-int/lit16 v0, v0, 0x800

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 933
    if-ltz v7, :cond_1

    #@24
    .line 935
    add-int/lit8 v0, v7, 0x2

    #@26
    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    .line 938
    .local v5, "relatedData":Ljava/lang/String;
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@2c
    .line 939
    const-string/jumbo v1, "cdata-sections-splitted"

    #@2f
    .line 938
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 942
    .local v2, "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 943
    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@39
    .line 944
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@3b
    .line 947
    const-string/jumbo v3, "cdata-sections-splitted"

    #@3e
    .line 945
    const/4 v1, 0x1

    #@3f
    move-object v6, v4

    #@40
    .line 944
    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    #@43
    .line 943
    invoke-interface {v9, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@46
    .line 976
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "relatedData":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x8

    #@48
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_4

    #@4e
    .line 977
    return-void

    #@4f
    .line 954
    :cond_2
    if-ltz v7, :cond_1

    #@51
    .line 956
    add-int/lit8 v0, v7, 0x2

    #@53
    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 959
    .restart local v5    # "relatedData":Ljava/lang/String;
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@59
    .line 960
    const-string/jumbo v1, "cdata-sections-splitted"

    #@5c
    .line 959
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    .line 963
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@62
    if-eqz v0, :cond_3

    #@64
    .line 964
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@66
    .line 965
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    #@68
    .line 968
    const-string/jumbo v3, "cdata-sections-splitted"

    #@6b
    .line 966
    const/4 v4, 0x2

    #@6c
    .line 965
    invoke-direct {v1, v4, v2, v3}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 964
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@72
    .line 971
    :cond_3
    return-void

    #@73
    .line 981
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "relatedData":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@75
    if-eqz v0, :cond_5

    #@77
    .line 982
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@79
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@7c
    .line 984
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@7f
    .line 985
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@81
    if-eqz v0, :cond_6

    #@83
    .line 986
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@85
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@88
    .line 916
    .end local v7    # "endIndex":I
    .end local v8    # "nodeValue":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void

    #@89
    .line 989
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@8c
    goto :goto_0
.end method

.method protected serializeComment(Lorg/w3c/dom/Comment;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 572
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_2

    #@7
    .line 573
    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 576
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@d
    and-int/lit16 v1, v1, 0x4000

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 577
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCommentWellFormed(Ljava/lang/String;)V

    #@14
    .line 580
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 583
    const/16 v1, 0x80

    #@1a
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 584
    return-void

    #@21
    .line 587
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@23
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    invoke-interface {v1, v2, v4, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@2e
    .line 570
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected serializeDocType(Lorg/w3c/dom/DocumentType;Z)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/DocumentType;
    .param p2, "bStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 500
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 501
    .local v0, "docTypeName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 502
    .local v4, "publicId":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 503
    .local v5, "systemId":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 507
    .local v3, "internalSubset":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@13
    const-string/jumbo v7, ""

    #@16
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_2

    #@1c
    .line 553
    :cond_0
    if-eqz p2, :cond_6

    #@1e
    .line 554
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 555
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@24
    invoke-interface {v7, v0, v4, v5}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 497
    :cond_1
    :goto_0
    return-void

    #@28
    .line 509
    :cond_2
    if-eqz p2, :cond_1

    #@2a
    .line 514
    :try_start_0
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2c
    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    #@2f
    move-result-object v6

    #@30
    .line 515
    .local v6, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuffer;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@35
    .line 517
    .local v1, "dtd":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "<!DOCTYPE "

    #@38
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    .line 519
    if-eqz v4, :cond_3

    #@40
    .line 520
    const-string/jumbo v7, " PUBLIC \""

    #@43
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 522
    const/16 v7, 0x22

    #@4b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4e
    .line 525
    :cond_3
    if-eqz v5, :cond_4

    #@50
    .line 526
    if-nez v4, :cond_5

    #@52
    .line 527
    const-string/jumbo v7, " SYSTEM \""

    #@55
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 531
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 532
    const/16 v7, 0x22

    #@5d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@60
    .line 535
    :cond_4
    const-string/jumbo v7, " [ "

    #@63
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@66
    .line 537
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@68
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 538
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    .line 539
    const-string/jumbo v7, "]>"

    #@71
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 540
    new-instance v7, Ljava/lang/String;

    #@76
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    #@78
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@7b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7e
    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@85
    .line 543
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    goto :goto_0

    #@89
    .line 545
    .end local v1    # "dtd":Ljava/lang/StringBuffer;
    .end local v6    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    #@8a
    .line 546
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Lorg/xml/sax/SAXException;

    #@8c
    sget-object v8, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@8e
    .line 547
    const-string/jumbo v9, "ER_WRITING_INTERNAL_SUBSET"

    #@91
    .line 546
    invoke-virtual {v8, v9, v10}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-direct {v7, v8, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@98
    throw v7

    #@99
    .line 529
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dtd":Ljava/lang/StringBuffer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :cond_5
    :try_start_1
    const-string/jumbo v7, " \""

    #@9c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9f
    goto :goto_1

    #@a0
    .line 558
    .end local v1    # "dtd":Ljava/lang/StringBuffer;
    .end local v6    # "writer":Ljava/io/Writer;
    :cond_6
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@a2
    if-eqz v7, :cond_1

    #@a4
    .line 559
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@a6
    invoke-interface {v7}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@a9
    goto/16 :goto_0
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;Z)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "bStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 600
    if-eqz p2, :cond_4

    #@3
    .line 601
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    #@9
    .line 609
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@b
    and-int/lit16 v0, v0, 0x4000

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 610
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isElementWellFormed(Lorg/w3c/dom/Node;)V

    #@12
    .line 615
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 616
    return-void

    #@19
    .line 620
    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@1b
    and-int/lit16 v0, v0, 0x100

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 621
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@21
    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->pushContext()V

    #@24
    .line 622
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@26
    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->reset()V

    #@29
    .line 624
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->recordLocalNSDecl(Lorg/w3c/dom/Node;)V

    #@2c
    .line 625
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fixupElementNS(Lorg/w3c/dom/Node;)V

    #@2f
    .line 629
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@31
    .line 630
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 631
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 632
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 629
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 634
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeAttList(Lorg/w3c/dom/Element;)V

    #@43
    .line 599
    :cond_3
    :goto_0
    return-void

    #@44
    .line 637
    :cond_4
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    #@46
    add-int/lit8 v0, v0, -0x1

    #@48
    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    #@4a
    .line 640
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_5

    #@50
    .line 641
    return-void

    #@51
    .line 644
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@53
    .line 645
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 646
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 647
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 644
    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 651
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@64
    and-int/lit16 v0, v0, 0x100

    #@66
    if-eqz v0, :cond_3

    #@68
    .line 652
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@6a
    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->popContext()V

    #@6d
    goto :goto_0
.end method

.method protected serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/EntityReference;
    .param p2, "bStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    if-eqz p2, :cond_3

    #@2
    .line 1056
    move-object v0, p1

    #@3
    .line 1058
    .local v0, "eref":Lorg/w3c/dom/EntityReference;
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@5
    and-int/lit8 v1, v1, 0x40

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1064
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@b
    and-int/lit16 v1, v1, 0x4000

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1065
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    #@12
    .line 1070
    :cond_0
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@14
    and-int/lit16 v1, v1, 0x100

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1071
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    #@1b
    .line 1079
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 1085
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@21
    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@28
    .line 1054
    :cond_2
    :goto_0
    return-void

    #@29
    .line 1089
    .end local v0    # "eref":Lorg/w3c/dom/EntityReference;
    :cond_3
    move-object v0, p1

    #@2a
    .line 1091
    .restart local v0    # "eref":Lorg/w3c/dom/EntityReference;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 1092
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@30
    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@37
    goto :goto_0
.end method

.method protected serializePI(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 889
    move-object v1, p1

    #@1
    .line 890
    .local v1, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 893
    .local v0, "name":Ljava/lang/String;
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@7
    and-int/lit16 v2, v2, 0x4000

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V

    #@e
    .line 898
    :cond_0
    const/16 v2, 0x40

    #@10
    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 899
    return-void

    #@17
    .line 903
    :cond_1
    const-string/jumbo v2, "xslt-next-is-raw"

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 904
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    #@23
    .line 888
    :goto_0
    return-void

    #@24
    .line 906
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@26
    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v2, v0, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method protected serializeText(Lorg/w3c/dom/Text;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 999
    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1000
    iput-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    #@7
    .line 1001
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@9
    .line 1002
    const-string/jumbo v3, "javax.xml.transform.disable-output-escaping"

    #@c
    .line 1003
    const-string/jumbo v4, ""

    #@f
    .line 1001
    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1004
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@15
    .line 1005
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@17
    .line 1006
    const-string/jumbo v3, "javax.xml.transform.enable-output-escaping"

    #@1a
    .line 1007
    const-string/jumbo v4, ""

    #@1d
    .line 1005
    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 998
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1010
    :cond_1
    const/4 v0, 0x0

    #@22
    .line 1013
    .local v0, "bDispatch":Z
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@24
    and-int/lit16 v2, v2, 0x4000

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1014
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    #@2b
    .line 1019
    :cond_2
    const/4 v1, 0x0

    #@2c
    .line 1020
    .local v1, "isElementContentWhitespace":Z
    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 1022
    invoke-interface {p1}, Lorg/w3c/dom/Text;->isElementContentWhitespace()Z

    #@33
    move-result v1

    #@34
    .line 1025
    .end local v1    # "isElementContentWhitespace":Z
    :cond_3
    if-eqz v1, :cond_5

    #@36
    .line 1027
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    #@38
    and-int/lit8 v2, v2, 0x20

    #@3a
    if-eqz v2, :cond_4

    #@3c
    .line 1028
    const/4 v0, 0x1

    #@3d
    .line 1035
    :cond_4
    :goto_1
    const/4 v2, 0x4

    #@3e
    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_6

    #@44
    .line 1036
    return-void

    #@45
    .line 1031
    :cond_5
    const/4 v0, 0x1

    #@46
    goto :goto_1

    #@47
    .line 1039
    :cond_6
    if-eqz v0, :cond_0

    #@49
    .line 1040
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@4c
    goto :goto_0
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 396
    instance-of v1, p1, Lorg/xml/sax/Locator;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p1

    #@7
    .line 397
    check-cast v0, Lorg/xml/sax/Locator;

    #@9
    .line 398
    .local v0, "loc":Lorg/xml/sax/Locator;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@b
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@12
    .line 399
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@14
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@1b
    .line 400
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1d
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    #@24
    .line 401
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@26
    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@2d
    .line 407
    .end local v0    # "loc":Lorg/xml/sax/Locator;
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@30
    move-result v1

    #@31
    packed-switch v1, :pswitch_data_0

    #@34
    .line 395
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_1
    :pswitch_0
    return-void

    #@35
    .line 403
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@37
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@3a
    .line 404
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    #@3c
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@3f
    goto :goto_0

    #@40
    .line 409
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/DocumentType;

    #@42
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    #@45
    goto :goto_1

    #@46
    .line 412
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast p1, Lorg/w3c/dom/Comment;

    #@48
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeComment(Lorg/w3c/dom/Comment;)V

    #@4b
    goto :goto_1

    #@4c
    .line 420
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_3
    check-cast p1, Lorg/w3c/dom/Element;

    #@4e
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    #@51
    goto :goto_1

    #@52
    .line 423
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_4
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    #@54
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializePI(Lorg/w3c/dom/ProcessingInstruction;)V

    #@57
    goto :goto_1

    #@58
    .line 426
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_5
    check-cast p1, Lorg/w3c/dom/CDATASection;

    #@5a
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeCDATASection(Lorg/w3c/dom/CDATASection;)V

    #@5d
    goto :goto_1

    #@5e
    .line 429
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_6
    check-cast p1, Lorg/w3c/dom/Text;

    #@60
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeText(Lorg/w3c/dom/Text;)V

    #@63
    goto :goto_1

    #@64
    .line 432
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_7
    check-cast p1, Lorg/w3c/dom/EntityReference;

    #@66
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    #@69
    goto :goto_1

    #@6a
    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 7
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 245
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@6
    .line 248
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9
    move-result v3

    #@a
    const/16 v4, 0x9

    #@c
    if-eq v3, v4, :cond_5

    #@e
    .line 249
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@11
    move-result-object v1

    #@12
    .line 250
    .local v1, "ownerDoc":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    #@14
    .line 251
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, "Core"

    #@1b
    const-string/jumbo v5, "3.0"

    #@1e
    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@21
    move-result v3

    #@22
    .line 250
    if-eqz v3, :cond_0

    #@24
    .line 252
    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@26
    .line 262
    .end local v1    # "ownerDoc":Lorg/w3c/dom/Document;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@28
    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 263
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2e
    iput-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@30
    .line 266
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 267
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@36
    invoke-interface {v3}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    #@39
    move-result v3

    #@3a
    iput v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    #@3c
    .line 269
    :cond_2
    move-object v2, p1

    #@3d
    .line 271
    .local v2, "top":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz p1, :cond_9

    #@3f
    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@42
    .line 274
    const/4 v0, 0x0

    #@43
    .line 276
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@46
    move-result-object v0

    #@47
    .line 278
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_3
    if-nez v0, :cond_4

    #@49
    .line 279
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@4c
    .line 281
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_6

    #@52
    .line 300
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_4
    :goto_2
    move-object p1, v0

    #@53
    goto :goto_1

    #@54
    .end local v2    # "top":Lorg/w3c/dom/Node;
    :cond_5
    move-object v3, p1

    #@55
    .line 255
    check-cast v3, Lorg/w3c/dom/Document;

    #@57
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@5a
    move-result-object v3

    #@5b
    .line 257
    const-string/jumbo v4, "Core"

    #@5e
    const-string/jumbo v5, "3.0"

    #@61
    .line 255
    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_0

    #@67
    .line 258
    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@69
    goto :goto_0

    #@6a
    .line 284
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    .restart local v2    # "top":Lorg/w3c/dom/Node;
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@6d
    move-result-object v0

    #@6e
    .line 286
    if-nez v0, :cond_3

    #@70
    .line 287
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@73
    move-result-object p1

    #@74
    .line 289
    if-eqz p1, :cond_7

    #@76
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_3

    #@7c
    .line 290
    :cond_7
    if-eqz p1, :cond_8

    #@7e
    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@81
    .line 293
    :cond_8
    const/4 v0, 0x0

    #@82
    .line 295
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_2

    #@83
    .line 302
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_9
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@85
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    #@88
    .line 244
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .param p2, "top"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 320
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@3
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    #@6
    .line 323
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9
    move-result v2

    #@a
    const/16 v3, 0x9

    #@c
    if-eq v2, v3, :cond_5

    #@e
    .line 324
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@11
    move-result-object v1

    #@12
    .line 325
    .local v1, "ownerDoc":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    #@14
    .line 326
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "Core"

    #@1b
    const-string/jumbo v4, "3.0"

    #@1e
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    .line 325
    if-eqz v2, :cond_0

    #@24
    .line 327
    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@26
    .line 337
    .end local v1    # "ownerDoc":Lorg/w3c/dom/Document;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@28
    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    #@2a
    if-eqz v2, :cond_1

    #@2c
    .line 338
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@2e
    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@30
    .line 341
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 342
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    #@36
    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    #@39
    move-result v2

    #@3a
    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    #@3c
    .line 344
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    #@3e
    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@41
    .line 347
    const/4 v0, 0x0

    #@42
    .line 349
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@45
    move-result-object v0

    #@46
    .line 351
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_3
    if-nez v0, :cond_4

    #@48
    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@4b
    .line 354
    if-eqz p2, :cond_6

    #@4d
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_6

    #@53
    .line 370
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_4
    :goto_2
    move-object p1, v0

    #@54
    goto :goto_1

    #@55
    :cond_5
    move-object v2, p1

    #@56
    .line 330
    check-cast v2, Lorg/w3c/dom/Document;

    #@58
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@5b
    move-result-object v2

    #@5c
    .line 332
    const-string/jumbo v3, "Core"

    #@5f
    const-string/jumbo v4, "3.0"

    #@62
    .line 330
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_0

    #@68
    .line 333
    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    #@6a
    goto :goto_0

    #@6b
    .line 357
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@6e
    move-result-object v0

    #@6f
    .line 359
    if-nez v0, :cond_3

    #@71
    .line 360
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@74
    move-result-object p1

    #@75
    .line 362
    if-eqz p1, :cond_7

    #@77
    if-eqz p2, :cond_3

    #@79
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_3

    #@7f
    .line 363
    :cond_7
    const/4 v0, 0x0

    #@80
    .line 365
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_2

    #@81
    .line 372
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_8
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    #@83
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    #@86
    .line 318
    return-void
.end method
