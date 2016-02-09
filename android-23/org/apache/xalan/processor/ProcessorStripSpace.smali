.class Lorg/apache/xalan/processor/ProcessorStripSpace;
.super Lorg/apache/xalan/processor/ProcessorPreserveSpace;
.source "ProcessorStripSpace.java"


# static fields
.field static final serialVersionUID:J = -0x4da3a1ec5b269f47L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    .line 62
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@3
    move-result-object v2

    #@4
    .line 63
    .local v2, "thisSheet":Lorg/apache/xalan/templates/Stylesheet;
    new-instance v1, Lorg/apache/xalan/processor/WhitespaceInfoPaths;

    #@6
    invoke-direct {v1, v2}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@9
    .line 64
    .local v1, "paths":Lorg/apache/xalan/processor/WhitespaceInfoPaths;
    invoke-virtual {p0, p1, p4, p5, v1}, Lorg/apache/xalan/processor/ProcessorStripSpace;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@c
    .line 66
    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    #@f
    move-result-object v4

    #@10
    .line 68
    .local v4, "xpaths":Ljava/util/Vector;
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@14
    move-result v5

    #@15
    if-ge v0, v5, :cond_0

    #@17
    .line 70
    new-instance v3, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@19
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Lorg/apache/xpath/XPath;

    #@1f
    const/4 v6, 0x1

    #@20
    invoke-direct {v3, v5, v6, v2}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V

    #@23
    .line 71
    .local v3, "wsi":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@26
    move-result v5

    #@27
    invoke-virtual {v3, v5}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setUid(I)V

    #@2a
    .line 73
    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/Stylesheet;->setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    #@2d
    .line 68
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 75
    .end local v3    # "wsi":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->clearElements()V

    #@33
    .line 60
    return-void
.end method
