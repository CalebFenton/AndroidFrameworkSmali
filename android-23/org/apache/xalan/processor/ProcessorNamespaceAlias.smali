.class Lorg/apache/xalan/processor/ProcessorNamespaceAlias;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorNamespaceAlias.java"


# static fields
.field static final serialVersionUID:J = -0x5791275e53accfd4L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 66
    new-instance v0, Lorg/apache/xalan/templates/NamespaceAlias;

    #@3
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@6
    move-result v4

    #@7
    invoke-direct {v0, v4}, Lorg/apache/xalan/templates/NamespaceAlias;-><init>(I)V

    #@a
    .line 68
    .local v0, "na":Lorg/apache/xalan/templates/NamespaceAlias;
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@d
    .line 69
    invoke-virtual {v0}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 70
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v4, "#default"

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 72
    const-string/jumbo v1, ""

    #@1d
    .line 73
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetPrefix(Ljava/lang/String;)V

    #@20
    .line 75
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 76
    .local v3, "stylesheetNS":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetNamespace(Ljava/lang/String;)V

    #@27
    .line 77
    invoke-virtual {v0}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultPrefix()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 78
    const-string/jumbo v4, "#default"

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 80
    const-string/jumbo v1, ""

    #@37
    .line 81
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultPrefix(Ljava/lang/String;)V

    #@3a
    .line 82
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 83
    .local v2, "resultNS":Ljava/lang/String;
    if-nez v2, :cond_1

    #@40
    .line 84
    const-string/jumbo v4, "ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX_FOR_DEFAULT"

    #@43
    invoke-virtual {p1, v4, v7, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@46
    .line 93
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultNamespace(Ljava/lang/String;)V

    #@49
    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/Stylesheet;->setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V

    #@50
    .line 95
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/Stylesheet;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@57
    .line 63
    return-void

    #@58
    .line 88
    .end local v2    # "resultNS":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 89
    .restart local v2    # "resultNS":Ljava/lang/String;
    if-nez v2, :cond_1

    #@5e
    .line 90
    const-string/jumbo v4, "ER_INVALID_SET_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX"

    #@61
    const/4 v5, 0x1

    #@62
    new-array v5, v5, [Ljava/lang/Object;

    #@64
    const/4 v6, 0x0

    #@65
    aput-object v1, v5, v6

    #@67
    invoke-virtual {p1, v4, v5, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@6a
    goto :goto_0
.end method
