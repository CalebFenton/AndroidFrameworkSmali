.class Lorg/apache/xalan/processor/ProcessorStripSpace;
.super Lorg/apache/xalan/processor/ProcessorPreserveSpace;
.source "ProcessorStripSpace.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x4da3a1ec5b269f47L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p2

    .line 63
    new-instance p3, Lorg/apache/xalan/processor/WhitespaceInfoPaths;

    invoke-direct {p3, p2}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 64
    invoke-virtual {p0, p1, p4, p5, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 66
    invoke-virtual {p3}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    move-result-object p0

    const/4 p4, 0x0

    .line 68
    :goto_11
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p5

    if-ge p4, p5, :cond_30

    .line 70
    new-instance p5, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    invoke-virtual {p0, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/XPath;

    const/4 v1, 0x1

    invoke-direct {p5, v0, v1, p2}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p5, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    .line 73
    invoke-virtual {p2, p5}, Lorg/apache/xalan/templates/Stylesheet;->setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    .line 75
    :cond_30
    invoke-virtual {p3}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->clearElements()V

    return-void
.end method
