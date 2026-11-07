.class Lorg/apache/xalan/processor/ProcessorPreserveSpace;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorPreserveSpace.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x4d0fa3596d3c0356L


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

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

    .line 63
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p2

    .line 64
    new-instance p3, Lorg/apache/xalan/processor/WhitespaceInfoPaths;

    invoke-direct {p3, p2}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 65
    invoke-virtual {p0, p1, p4, p5, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 67
    invoke-virtual {p3}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    move-result-object p0

    const/4 p4, 0x0

    move p5, p4

    .line 69
    :goto_12
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p5, v0, :cond_30

    .line 71
    new-instance v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    invoke-virtual {p0, p5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/XPath;

    invoke-direct {v0, v1, p4, p2}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    .line 74
    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/Stylesheet;->setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_12

    .line 76
    :cond_30
    invoke-virtual {p3}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->clearElements()V

    return-void
.end method
