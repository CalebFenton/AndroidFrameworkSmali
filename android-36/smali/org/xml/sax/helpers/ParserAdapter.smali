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
.field private static final greylist-max-o FEATURES:Ljava/lang/String; = "http://xml.org/sax/features/"

.field private static final greylist-max-o NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final greylist-max-o NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final greylist-max-o XMLNS_URIs:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private greylist attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

.field private greylist atts:Lorg/xml/sax/helpers/AttributesImpl;

.field greylist contentHandler:Lorg/xml/sax/ContentHandler;

.field greylist dtdHandler:Lorg/xml/sax/DTDHandler;

.field greylist entityResolver:Lorg/xml/sax/EntityResolver;

.field greylist errorHandler:Lorg/xml/sax/ErrorHandler;

.field greylist locator:Lorg/xml/sax/Locator;

.field private greylist nameParts:[Ljava/lang/String;

.field private greylist namespaces:Z

.field private greylist nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private greylist parser:Lorg/xml/sax/Parser;

.field private greylist parsing:Z

.field private greylist prefixes:Z

.field private greylist uris:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetatts(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;
    .registers 1

    iget-object p0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    return-object p0
.end method

.method public constructor whitelist test-api <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 79
    const-string v0, "SAX1 driver class "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 829
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    .line 832
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    .line 835
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 839
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    .line 841
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    .line 843
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    .line 852
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 854
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 856
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 858
    iput-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 81
    const-string v1, "org.xml.sax.parser"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "driver":Ljava/lang/String;
    :try_start_27
    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_2e} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2e} :catch_75
    .catch Ljava/lang/InstantiationException; {:try_start_27 .. :try_end_2e} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_2e} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_2e} :catch_30

    .line 107
    nop

    .line 108
    return-void

    .line 104
    :catch_30
    move-exception v0

    .line 105
    .local v0, "e5":Ljava/lang/NullPointerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "System property org.xml.sax.parser not specified"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0    # "e5":Ljava/lang/NullPointerException;
    :catch_39
    move-exception v2

    .line 100
    .local v2, "e4":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not implement org.xml.sax.Parser"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v2    # "e4":Ljava/lang/ClassCastException;
    :catch_57
    move-exception v2

    .line 95
    .local v2, "e3":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " loaded but cannot be instantiated"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 89
    .end local v2    # "e3":Ljava/lang/InstantiationException;
    :catch_75
    move-exception v2

    .line 90
    .local v2, "e2":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found but cannot be loaded"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 85
    .end local v2    # "e2":Ljava/lang/IllegalAccessException;
    :catch_93
    move-exception v0

    .line 86
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find SAX1 driver class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public constructor whitelist test-api <init>(Lorg/xml/sax/Parser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xml/sax/Parser;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 829
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    .line 835
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    .line 841
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    .line 843
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    .line 852
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 854
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 856
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 858
    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 124
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V

    .line 125
    return-void
.end method

.method private greylist checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 808
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    if-nez v0, :cond_5

    .line 814
    return-void

    .line 809
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while parsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;
    .registers 10
    .param p1, "message"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_c

    .line 786
    new-instance v0, Lorg/xml/sax/SAXParseException;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    return-object v0

    .line 788
    :cond_c
    new-instance v2, Lorg/xml/sax/SAXParseException;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .end local p1    # "message":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v2
.end method

.method private greylist processName(Ljava/lang/String;ZZ)[Ljava/lang/String;
    .registers 7
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z
    .param p3, "useException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "parts":[Ljava/lang/String;
    if-nez v0, :cond_4b

    .line 750
    const-string v1, "Undeclared prefix: "

    if-nez p3, :cond_35

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    .line 753
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 754
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 755
    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_4b

    .line 751
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 757
    :cond_4b
    :goto_4b
    return-object v0
.end method

.method private greylist setup(Lorg/xml/sax/Parser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xml/sax/Parser;

    .line 138
    if-eqz p1, :cond_1a

    .line 142
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    .line 143
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 144
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 145
    new-instance v0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    invoke-direct {v0, p0}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;-><init>(Lorg/xml/sax/helpers/ParserAdapter;)V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    .line 146
    return-void

    .line 139
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parser argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist setupParser()V
    .registers 3

    .line 708
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-eqz v0, :cond_9

    goto :goto_f

    .line 709
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 711
    :cond_f
    :goto_f
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 712
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    if-eqz v0, :cond_1e

    .line 713
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->setNamespaceDeclUris(Z)V

    .line 715
    :cond_1e
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_29

    .line 716
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 718
    :cond_29
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_34

    .line 719
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 721
    :cond_34
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_3f

    .line 722
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 724
    :cond_3f
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    .line 726
    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 653
    :cond_9
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 464
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 466
    :cond_9
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;)V
    .registers 7
    .param p1, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 615
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_14

    .line 616
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_13

    .line 617
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v2, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_13
    return-void

    .line 623
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "names":[Ljava/lang/String;
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_42

    .line 625
    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    aget-object v0, v1, v0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 627
    .local v0, "prefixes":Ljava/util/Enumeration;
    :goto_30
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 628
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 630
    .end local v2    # "prefix":Ljava/lang/String;
    goto :goto_30

    .line 632
    .end local v0    # "prefixes":Ljava/util/Enumeration;
    :cond_42
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 633
    return-void
.end method

.method public whitelist test-api getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 339
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public whitelist test-api getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .line 315
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public whitelist test-api getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 291
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 363
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 219
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    return v0

    .line 221
    :cond_b
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 222
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    return v0

    .line 223
    :cond_16
    const-string v0, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 224
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    return v0

    .line 226
    :cond_21
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 671
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 673
    :cond_9
    return-void
.end method

.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 381
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/ParserAdapter;->parse(Lorg/xml/sax/InputSource;)V

    .line 382
    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 4
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    if-nez v0, :cond_1a

    .line 402
    invoke-direct {p0}, Lorg/xml/sax/helpers/ParserAdapter;->setupParser()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 405
    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v1, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    .line 407
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 408
    nop

    .line 409
    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 410
    return-void

    .line 407
    :catchall_16
    move-exception v1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    .line 408
    throw v1

    .line 400
    :cond_1a
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Parser is already in use"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 690
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_9
    return-void
.end method

.method greylist reportError(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_d

    .line 773
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 774
    :cond_d
    return-void
.end method

.method public whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 327
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 328
    return-void
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 303
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 304
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 428
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    .line 429
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_b

    .line 430
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 432
    :cond_b
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 279
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 280
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 351
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 352
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 181
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "feature"

    if-eqz v0, :cond_1b

    .line 182
    invoke-direct {p0, v2, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    .line 184
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_40

    .line 185
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    goto :goto_40

    .line 187
    :cond_1b
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 188
    invoke-direct {p0, v2, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    .line 190
    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_40

    .line 191
    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    goto :goto_40

    .line 193
    :cond_33
    const-string v0, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 194
    invoke-direct {p0, v2, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    .line 199
    :cond_40
    :goto_40
    return-void

    .line 197
    :cond_41
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 447
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 449
    :cond_9
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 24
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "qAtts"    # Lorg/xml/sax/AttributeList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 485
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    .line 489
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/xml/sax/SAXParseException;>;"
    iget-boolean v3, v1, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v3, :cond_20

    .line 490
    iget-object v3, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_1f

    .line 491
    iget-object v3, v1, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    .line 492
    iget-object v3, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    const-string v6, ""

    invoke-interface {v3, v6, v6, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 495
    :cond_1f
    return-void

    .line 500
    :cond_20
    iget-object v3, v1, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 501
    invoke-interface {v2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v3

    .line 504
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    const/4 v5, -0x1

    const/16 v6, 0x3a

    const-string v7, "xmlns"

    const/4 v8, 0x5

    if-ge v4, v3, :cond_84

    .line 505
    invoke-interface {v2, v4}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, "attQName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 508
    goto :goto_81

    .line 511
    :cond_3d
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 514
    .local v6, "n":I
    if-ne v6, v5, :cond_4c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_4c

    .line 515
    const-string v5, ""

    .local v5, "prefix":Ljava/lang/String;
    goto :goto_55

    .line 516
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_4c
    if-eq v6, v8, :cond_4f

    .line 519
    goto :goto_81

    .line 521
    :cond_4f
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "prefix":Ljava/lang/String;
    :goto_55
    invoke-interface {v2, v4}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "value":Ljava/lang/String;
    iget-object v8, v1, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v8, v5, v7}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal Namespace prefix: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    .line 526
    goto :goto_81

    .line 528
    :cond_78
    iget-object v8, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v8, :cond_81

    .line 529
    iget-object v8, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v5, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "n":I
    .end local v7    # "value":Ljava/lang/String;
    .end local v9    # "attQName":Ljava/lang/String;
    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 535
    .end local v4    # "i":I
    :cond_84
    iget-object v4, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v4}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 536
    const/4 v4, 0x0

    move v9, v4

    move-object v4, v0

    .end local v0    # "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/xml/sax/SAXParseException;>;"
    .local v4, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/xml/sax/SAXParseException;>;"
    .local v9, "i":I
    :goto_8c
    const/4 v0, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v9, v3, :cond_11d

    .line 537
    invoke-interface {v2, v9}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, "attQName":Ljava/lang/String;
    invoke-interface {v2, v9}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v19

    .line 539
    .local v19, "type":Ljava/lang/String;
    invoke-interface {v2, v9}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v20

    .line 542
    .local v20, "value":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ee

    .line 544
    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 546
    .local v12, "n":I
    if-ne v12, v5, :cond_b4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v8, :cond_b4

    .line 547
    const-string v13, ""

    move-object/from16 v17, v13

    .local v13, "prefix":Ljava/lang/String;
    goto :goto_c1

    .line 548
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_b4
    if-eq v12, v8, :cond_ba

    .line 551
    const/4 v13, 0x0

    move-object/from16 v17, v13

    .restart local v13    # "prefix":Ljava/lang/String;
    goto :goto_c1

    .line 553
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_ba
    const/4 v13, 0x6

    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    .line 556
    .local v17, "prefix":Ljava/lang/String;
    :goto_c1
    if-eqz v17, :cond_ec

    .line 557
    iget-boolean v0, v1, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-eqz v0, :cond_e9

    .line 558
    iget-boolean v0, v1, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    if-eqz v0, :cond_d9

    .line 562
    iget-object v15, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 563
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 562
    const-string v16, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual/range {v15 .. v20}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, v17

    .end local v17    # "prefix":Ljava/lang/String;
    .restart local v13    # "prefix":Ljava/lang/String;
    goto :goto_119

    .line 565
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    :cond_d9
    move-object/from16 v13, v17

    .end local v17    # "prefix":Ljava/lang/String;
    .restart local v13    # "prefix":Ljava/lang/String;
    iget-object v15, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 566
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 565
    const-string v16, ""

    const-string v17, ""

    invoke-virtual/range {v15 .. v20}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    .line 557
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    :cond_e9
    move-object/from16 v13, v17

    .end local v17    # "prefix":Ljava/lang/String;
    .restart local v13    # "prefix":Ljava/lang/String;
    goto :goto_119

    .line 556
    .end local v13    # "prefix":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    :cond_ec
    move-object/from16 v13, v17

    .line 574
    .end local v12    # "n":I
    .end local v17    # "prefix":Ljava/lang/String;
    :cond_ee
    :try_start_ee
    invoke-direct {v1, v14, v11, v11}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v12

    .line 575
    .local v12, "attName":[Ljava/lang/String;
    iget-object v15, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    aget-object v16, v12, v10

    aget-object v17, v12, v11

    aget-object v18, v12, v0

    invoke-virtual/range {v15 .. v20}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fd
    .catch Lorg/xml/sax/SAXException; {:try_start_ee .. :try_end_fd} :catch_fe

    .line 583
    .end local v12    # "attName":[Ljava/lang/String;
    goto :goto_119

    .line 577
    :catch_fe
    move-exception v0

    .line 578
    .local v0, "e":Lorg/xml/sax/SAXException;
    if-nez v4, :cond_107

    .line 579
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 581
    :cond_107
    move-object v10, v0

    check-cast v10, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v12, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v13, ""

    move-object v15, v14

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    .end local v19    # "type":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .local v16, "type":Ljava/lang/String;
    .local v17, "value":Ljava/lang/String;
    invoke-virtual/range {v12 .. v17}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v14    # "attQName":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :goto_119
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8c

    .line 587
    .end local v9    # "i":I
    :cond_11d
    if-eqz v4, :cond_139

    iget-object v5, v1, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v5, :cond_139

    .line 588
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_127
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_139

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xml/sax/SAXParseException;

    .line 589
    .local v6, "ex":Lorg/xml/sax/SAXParseException;
    iget-object v7, v1, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v7, v6}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 590
    .end local v6    # "ex":Lorg/xml/sax/SAXParseException;
    goto :goto_127

    .line 594
    :cond_139
    iget-object v5, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_151

    .line 595
    move-object/from16 v5, p1

    invoke-direct {v1, v5, v10, v10}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "name":[Ljava/lang/String;
    iget-object v7, v1, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    aget-object v8, v6, v10

    aget-object v9, v6, v11

    aget-object v0, v6, v0

    iget-object v10, v1, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v7, v8, v9, v0, v10}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_153

    .line 594
    .end local v6    # "name":[Ljava/lang/String;
    :cond_151
    move-object/from16 v5, p1

    .line 598
    :goto_153
    return-void
.end method
