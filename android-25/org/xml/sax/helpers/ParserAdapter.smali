.class public Lorg/xml/sax/helpers/ParserAdapter;
.super Ljava/lang/Object;
.source "ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/DocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;
    }
.end annotation


# static fields
.field private static final FEATURES:Ljava/lang/String; = "http://xml.org/sax/features/"

.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final XMLNS_URIs:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

.field private atts:Lorg/xml/sax/helpers/AttributesImpl;

.field contentHandler:Lorg/xml/sax/ContentHandler;

.field dtdHandler:Lorg/xml/sax/DTDHandler;

.field entityResolver:Lorg/xml/sax/EntityResolver;

.field errorHandler:Lorg/xml/sax/ErrorHandler;

.field locator:Lorg/xml/sax/Locator;

.field private nameParts:[Ljava/lang/String;

.field private namespaces:Z

.field private nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private parser:Lorg/xml/sax/Parser;

.field private parsing:Z

.field private prefixes:Z

.field private uris:Z


# direct methods
.method static synthetic -get0(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 816
    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@7
    .line 817
    const/4 v6, 0x3

    #@8
    new-array v6, v6, [Ljava/lang/String;

    #@a
    iput-object v6, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    #@c
    .line 819
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@e
    .line 821
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@10
    .line 824
    const/4 v6, 0x1

    #@11
    iput-boolean v6, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@13
    .line 825
    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@15
    .line 826
    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@17
    .line 833
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@19
    .line 834
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@1b
    .line 835
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1d
    .line 836
    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@1f
    .line 78
    const-string/jumbo v6, "org.xml.sax.parser"

    #@22
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 81
    .local v0, "driver":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {p0, v6}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 75
    return-void

    #@2e
    .line 101
    :catch_0
    move-exception v5

    #@2f
    .line 102
    .local v5, "e5":Ljava/lang/NullPointerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@31
    .line 103
    const-string/jumbo v7, "System property org.xml.sax.parser not specified"

    #@34
    .line 102
    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@37
    throw v6

    #@38
    .line 96
    .end local v5    # "e5":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    #@39
    .line 97
    .local v4, "e4":Ljava/lang/ClassCastException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@3b
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "SAX1 driver class "

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    .line 100
    const-string/jumbo v8, " does not implement org.xml.sax.Parser"

    #@4e
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    .line 97
    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@59
    throw v6

    #@5a
    .line 91
    .end local v4    # "e4":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v3

    #@5b
    .line 92
    .local v3, "e3":Ljava/lang/InstantiationException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@5d
    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v8, "SAX1 driver class "

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    .line 95
    const-string/jumbo v8, " loaded but cannot be instantiated"

    #@70
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    .line 92
    invoke-direct {v6, v7, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@7b
    throw v6

    #@7c
    .line 86
    .end local v3    # "e3":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    #@7d
    .line 87
    .local v2, "e2":Ljava/lang/IllegalAccessException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@7f
    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v8, "SAX1 driver class "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    .line 90
    const-string/jumbo v8, " found but cannot be loaded"

    #@92
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v7

    #@9a
    .line 87
    invoke-direct {v6, v7, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@9d
    throw v6

    #@9e
    .line 82
    .end local v2    # "e2":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    #@9f
    .line 83
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@a1
    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v8, "Cannot find SAX1 driver class "

    #@a9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    .line 83
    invoke-direct {v6, v7, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@b8
    throw v6
.end method

.method public constructor <init>(Lorg/xml/sax/Parser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xml/sax/Parser;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 816
    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@7
    .line 817
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    #@c
    .line 819
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@e
    .line 821
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@10
    .line 824
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@13
    .line 825
    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@15
    .line 826
    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@17
    .line 833
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@19
    .line 834
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@1b
    .line 835
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1d
    .line 836
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@1f
    .line 121
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V

    #@22
    .line 119
    return-void
.end method

.method private checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 799
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 800
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Cannot change "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 801
    const/16 v2, 0x20

    #@18
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 802
    const-string/jumbo v2, " while parsing"

    #@23
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 797
    :cond_0
    return-void
.end method

.method private makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 777
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 778
    new-instance v0, Lorg/xml/sax/SAXParseException;

    #@8
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    #@a
    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    #@d
    return-object v0

    #@e
    .line 780
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXParseException;

    #@10
    move-object v1, p1

    #@11
    move-object v3, v2

    #@12
    move v5, v4

    #@13
    invoke-direct/range {v0 .. v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    #@16
    return-object v0
.end method

.method private processName(Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z
    .param p3, "useException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 741
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@2
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1, v2, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 743
    .local v0, "parts":[Ljava/lang/String;
    if-nez v0, :cond_1

    #@a
    .line 744
    if-eqz p3, :cond_0

    #@c
    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Undeclared prefix: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    #@23
    move-result-object v1

    #@24
    throw v1

    #@25
    .line 746
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Undeclared prefix: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    #@3c
    .line 747
    const/4 v1, 0x3

    #@3d
    new-array v0, v1, [Ljava/lang/String;

    #@3f
    .line 748
    const-string/jumbo v1, ""

    #@42
    const/4 v2, 0x1

    #@43
    aput-object v1, v0, v2

    #@45
    const/4 v2, 0x0

    #@46
    aput-object v1, v0, v2

    #@48
    .line 749
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    const/4 v2, 0x2

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 751
    :cond_1
    return-object v0
.end method

.method private setup(Lorg/xml/sax/Parser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xml/sax/Parser;

    #@0
    .prologue
    .line 134
    if-nez p1, :cond_0

    #@2
    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 136
    const-string/jumbo v1, "Parser argument must not be null"

    #@7
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 138
    :cond_0
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@d
    .line 139
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    #@f
    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@12
    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@14
    .line 140
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    #@16
    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    #@19
    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@1b
    .line 141
    new-instance v0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    #@1d
    invoke-direct {v0, p0}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;-><init>(Lorg/xml/sax/helpers/ParserAdapter;)V

    #@20
    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    #@22
    .line 132
    return-void
.end method

.method private setupParser()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 703
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@7
    if-eqz v0, :cond_5

    #@9
    .line 706
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@b
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    #@e
    .line 707
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 708
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->setNamespaceDeclUris(Z)V

    #@18
    .line 710
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 711
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@1e
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@20
    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    #@23
    .line 713
    :cond_2
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 714
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@29
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2b
    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@2e
    .line 716
    :cond_3
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 717
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@34
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@36
    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@39
    .line 719
    :cond_4
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@3b
    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    #@3e
    .line 720
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    #@40
    .line 700
    return-void

    #@41
    .line 704
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@43
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@46
    throw v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 647
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@9
    .line 644
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 460
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@9
    .line 457
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 7
    .param p1, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 611
    iget-boolean v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@3
    if-nez v3, :cond_1

    #@5
    .line 612
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 613
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@b
    const-string/jumbo v4, ""

    #@e
    const-string/jumbo v5, ""

    #@11
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 615
    :cond_0
    return-void

    #@19
    .line 619
    :cond_1
    invoke-direct {p0, p1, v4, v4}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 620
    .local v0, "names":[Ljava/lang/String;
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 621
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@23
    aget-object v4, v0, v4

    #@25
    const/4 v5, 0x1

    #@26
    aget-object v5, v0, v5

    #@28
    const/4 v6, 0x2

    #@29
    aget-object v6, v0, v6

    #@2b
    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 622
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@30
    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    #@33
    move-result-object v2

    #@34
    .line 623
    .local v2, "prefixes":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 624
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Ljava/lang/String;

    #@40
    .line 625
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@42
    invoke-interface {v3, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@45
    goto :goto_0

    #@46
    .line 628
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "prefixes":Ljava/util/Enumeration;
    :cond_2
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@48
    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    #@4b
    .line 607
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 216
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@b
    return v0

    #@c
    .line 217
    :cond_0
    const-string/jumbo v0, "http://xml.org/sax/features/namespace-prefixes"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 218
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@17
    return v0

    #@18
    .line 219
    :cond_1
    const-string/jumbo v0, "http://xml.org/sax/features/xmlns-uris"

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 220
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@23
    return v0

    #@24
    .line 222
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Feature: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Property: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 667
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@9
    .line 664
    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/ParserAdapter;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 375
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 395
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 396
    new-instance v0, Lorg/xml/sax/SAXException;

    #@7
    const-string/jumbo v1, "Parser is already in use"

    #@a
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 398
    :cond_0
    invoke-direct {p0}, Lorg/xml/sax/helpers/ParserAdapter;->setupParser()V

    #@11
    .line 399
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@14
    .line 401
    :try_start_0
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    #@16
    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 403
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@1b
    .line 405
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@1d
    .line 393
    return-void

    #@1e
    .line 402
    :catchall_0
    move-exception v0

    #@1f
    .line 403
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    #@21
    .line 402
    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 686
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 683
    :cond_0
    return-void
.end method

.method reportError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 766
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@6
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@d
    .line 763
    :cond_0
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 323
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 321
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 299
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@2
    .line 297
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 424
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    #@2
    .line 425
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 426
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@b
    .line 422
    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    .line 273
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 347
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    .line 345
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
    const/4 v1, 0x1

    #@1
    .line 177
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 178
    const-string/jumbo v0, "feature"

    #@d
    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 179
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@12
    .line 180
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@14
    if-nez v0, :cond_0

    #@16
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 175
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 181
    :cond_1
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@1d
    goto :goto_0

    #@1e
    .line 183
    :cond_2
    const-string/jumbo v0, "http://xml.org/sax/features/namespace-prefixes"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 184
    const-string/jumbo v0, "feature"

    #@2a
    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 185
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@2f
    .line 186
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@31
    if-nez v0, :cond_0

    #@33
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@35
    if-nez v0, :cond_0

    #@37
    .line 187
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@39
    goto :goto_0

    #@3a
    .line 189
    :cond_3
    const-string/jumbo v0, "http://xml.org/sax/features/xmlns-uris"

    #@3d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_4

    #@43
    .line 190
    const-string/jumbo v0, "feature"

    #@46
    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    #@49
    .line 191
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@4b
    goto :goto_0

    #@4c
    .line 193
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "Feature: "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
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
    .line 243
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Property: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 443
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@9
    .line 440
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 24
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "qAtts"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 481
    const/16 v19, 0x0

    #@2
    .line 485
    .local v19, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/xml/sax/SAXParseException;>;"
    move-object/from16 v0, p0

    #@4
    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    #@6
    if-nez v2, :cond_1

    #@8
    .line 486
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 487
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    #@12
    move-object/from16 v0, p2

    #@14
    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    #@17
    .line 488
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1b
    const-string/jumbo v3, ""

    #@1e
    const-string/jumbo v5, ""

    #@21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    .line 489
    move-object/from16 v0, p0

    #@27
    iget-object v9, v0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    #@29
    .line 488
    invoke-interface {v2, v3, v5, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@2c
    .line 491
    :cond_0
    return-void

    #@2d
    .line 496
    :cond_1
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@31
    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    #@34
    .line 497
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/AttributeList;->getLength()I

    #@37
    move-result v21

    #@38
    .line 500
    .local v21, "length":I
    const/16 v20, 0x0

    #@3a
    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    #@3c
    move/from16 v1, v21

    #@3e
    if-ge v0, v1, :cond_6

    #@40
    .line 501
    move-object/from16 v0, p2

    #@42
    move/from16 v1, v20

    #@44
    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    #@47
    move-result-object v15

    #@48
    .line 503
    .local v15, "attQName":Ljava/lang/String;
    const-string/jumbo v2, "xmlns"

    #@4b
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_3

    #@51
    .line 500
    :cond_2
    :goto_1
    add-int/lit8 v20, v20, 0x1

    #@53
    goto :goto_0

    #@54
    .line 507
    :cond_3
    const/16 v2, 0x3a

    #@56
    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    #@59
    move-result v22

    #@5a
    .line 510
    .local v22, "n":I
    const/4 v2, -0x1

    #@5b
    move/from16 v0, v22

    #@5d
    if-ne v0, v2, :cond_4

    #@5f
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@62
    move-result v2

    #@63
    const/4 v3, 0x5

    #@64
    if-ne v2, v3, :cond_4

    #@66
    .line 511
    const-string/jumbo v4, ""

    #@69
    .line 519
    .local v4, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    #@6b
    move/from16 v1, v20

    #@6d
    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    .line 520
    .local v7, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    #@75
    invoke-virtual {v2, v4, v7}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@78
    move-result v2

    #@79
    if-nez v2, :cond_5

    #@7b
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "Illegal Namespace prefix: "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    #@94
    goto :goto_1

    #@95
    .line 512
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x5

    #@96
    move/from16 v0, v22

    #@98
    if-ne v0, v2, :cond_2

    #@9a
    .line 517
    add-int/lit8 v2, v22, 0x1

    #@9c
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v4

    #@a0
    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_2

    #@a1
    .line 524
    .restart local v7    # "value":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@a5
    if-eqz v2, :cond_2

    #@a7
    .line 525
    move-object/from16 v0, p0

    #@a9
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@ab
    invoke-interface {v2, v4, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    goto :goto_1

    #@af
    .line 531
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v15    # "attQName":Ljava/lang/String;
    .end local v22    # "n":I
    :cond_6
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@b3
    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    #@b6
    .line 532
    const/16 v20, 0x0

    #@b8
    .end local v19    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/xml/sax/SAXParseException;>;"
    :goto_3
    move/from16 v0, v20

    #@ba
    move/from16 v1, v21

    #@bc
    if-ge v0, v1, :cond_d

    #@be
    .line 533
    move-object/from16 v0, p2

    #@c0
    move/from16 v1, v20

    #@c2
    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    #@c5
    move-result-object v15

    #@c6
    .line 534
    .restart local v15    # "attQName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@c8
    move/from16 v1, v20

    #@ca
    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    .line 535
    .local v6, "type":Ljava/lang/String;
    move-object/from16 v0, p2

    #@d0
    move/from16 v1, v20

    #@d2
    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    .line 538
    .restart local v7    # "value":Ljava/lang/String;
    const-string/jumbo v2, "xmlns"

    #@d9
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@dc
    move-result v2

    #@dd
    if-eqz v2, :cond_b

    #@df
    .line 540
    const/16 v2, 0x3a

    #@e1
    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    #@e4
    move-result v22

    #@e5
    .line 542
    .restart local v22    # "n":I
    const/4 v2, -0x1

    #@e6
    move/from16 v0, v22

    #@e8
    if-ne v0, v2, :cond_8

    #@ea
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@ed
    move-result v2

    #@ee
    const/4 v3, 0x5

    #@ef
    if-ne v2, v3, :cond_8

    #@f1
    .line 543
    const-string/jumbo v4, ""

    #@f4
    .line 552
    :goto_4
    if-eqz v4, :cond_b

    #@f6
    .line 553
    move-object/from16 v0, p0

    #@f8
    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    #@fa
    if-eqz v2, :cond_7

    #@fc
    .line 554
    move-object/from16 v0, p0

    #@fe
    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    #@100
    if-eqz v2, :cond_a

    #@102
    .line 558
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@106
    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    #@109
    .line 559
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@10c
    move-result-object v5

    #@10d
    .line 558
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@110
    .line 532
    .end local v22    # "n":I
    :cond_7
    :goto_5
    add-int/lit8 v20, v20, 0x1

    #@112
    goto :goto_3

    #@113
    .line 544
    .restart local v22    # "n":I
    :cond_8
    const/4 v2, 0x5

    #@114
    move/from16 v0, v22

    #@116
    if-eq v0, v2, :cond_9

    #@118
    .line 547
    const/4 v4, 0x0

    #@119
    .local v4, "prefix":Ljava/lang/String;
    goto :goto_4

    #@11a
    .line 549
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x6

    #@11b
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11e
    move-result-object v4

    #@11f
    .local v4, "prefix":Ljava/lang/String;
    goto :goto_4

    #@120
    .line 561
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@122
    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@124
    const-string/jumbo v9, ""

    #@127
    const-string/jumbo v10, ""

    #@12a
    .line 562
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@12d
    move-result-object v11

    #@12e
    move-object v12, v6

    #@12f
    move-object v13, v7

    #@130
    .line 561
    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@133
    goto :goto_5

    #@134
    .line 570
    .end local v22    # "n":I
    :cond_b
    const/4 v2, 0x1

    #@135
    const/4 v3, 0x1

    #@136
    :try_start_0
    move-object/from16 v0, p0

    #@138
    invoke-direct {v0, v15, v2, v3}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    #@13b
    move-result-object v14

    #@13c
    .line 571
    .local v14, "attName":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@13e
    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@140
    const/4 v2, 0x0

    #@141
    aget-object v9, v14, v2

    #@143
    const/4 v2, 0x1

    #@144
    aget-object v10, v14, v2

    #@146
    const/4 v2, 0x2

    #@147
    aget-object v11, v14, v2

    #@149
    move-object v12, v6

    #@14a
    move-object v13, v7

    #@14b
    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@14e
    goto :goto_5

    #@14f
    .line 573
    .end local v14    # "attName":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@150
    .line 574
    .local v16, "e":Lorg/xml/sax/SAXException;
    if-nez v19, :cond_c

    #@152
    .line 575
    new-instance v19, Ljava/util/ArrayList;

    #@154
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@157
    .line 577
    :cond_c
    check-cast v16, Lorg/xml/sax/SAXParseException;

    #@159
    .end local v16    # "e":Lorg/xml/sax/SAXException;
    move-object/from16 v0, v19

    #@15b
    move-object/from16 v1, v16

    #@15d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@160
    .line 578
    move-object/from16 v0, p0

    #@162
    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@164
    const-string/jumbo v9, ""

    #@167
    move-object v10, v15

    #@168
    move-object v11, v15

    #@169
    move-object v12, v6

    #@16a
    move-object v13, v7

    #@16b
    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16e
    goto :goto_5

    #@16f
    .line 583
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v15    # "attQName":Ljava/lang/String;
    :cond_d
    if-eqz v19, :cond_e

    #@171
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@175
    if-eqz v2, :cond_e

    #@177
    .line 584
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17a
    move-result-object v18

    #@17b
    .local v18, "ex$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@17e
    move-result v2

    #@17f
    if-eqz v2, :cond_e

    #@181
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@184
    move-result-object v17

    #@185
    check-cast v17, Lorg/xml/sax/SAXParseException;

    #@187
    .line 585
    .local v17, "ex":Lorg/xml/sax/SAXParseException;
    move-object/from16 v0, p0

    #@189
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    #@18b
    move-object/from16 v0, v17

    #@18d
    invoke-interface {v2, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    #@190
    goto :goto_6

    #@191
    .line 590
    .end local v17    # "ex":Lorg/xml/sax/SAXParseException;
    .end local v18    # "ex$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    #@193
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@195
    if-eqz v2, :cond_f

    #@197
    .line 591
    const/4 v2, 0x0

    #@198
    const/4 v3, 0x0

    #@199
    move-object/from16 v0, p0

    #@19b
    move-object/from16 v1, p1

    #@19d
    invoke-direct {v0, v1, v2, v3}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    #@1a0
    move-result-object v23

    #@1a1
    .line 592
    .local v23, "name":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a3
    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@1a5
    const/4 v3, 0x0

    #@1a6
    aget-object v3, v23, v3

    #@1a8
    const/4 v5, 0x1

    #@1a9
    aget-object v5, v23, v5

    #@1ab
    const/4 v8, 0x2

    #@1ac
    aget-object v8, v23, v8

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v9, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    #@1b2
    invoke-interface {v2, v3, v5, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@1b5
    .line 476
    .end local v23    # "name":[Ljava/lang/String;
    :cond_f
    return-void
.end method
