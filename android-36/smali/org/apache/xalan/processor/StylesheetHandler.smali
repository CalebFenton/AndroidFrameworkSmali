.class public Lorg/apache/xalan/processor/StylesheetHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetHandler.java"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Lorg/apache/xml/utils/NodeConsumer;


# static fields
.field public static final greylist STYPE_IMPORT:I = 0x3

.field public static final greylist STYPE_INCLUDE:I = 0x2

.field public static final greylist STYPE_ROOT:I = 0x1


# instance fields
.field greylist m_baseIdentifiers:Ljava/util/Stack;

.field private greylist m_docOrderCount:I

.field private greylist m_elementID:I

.field private greylist m_elems:Ljava/util/Stack;

.field private greylist m_fragmentID:I

.field private greylist m_fragmentIDString:Ljava/lang/String;

.field private greylist m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private greylist m_importSourceStack:Ljava/util/Stack;

.field private greylist m_importStack:Ljava/util/Stack;

.field private greylist m_incremental:Z

.field greylist m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field greylist m_nsSupportStack:Ljava/util/Stack;

.field private greylist m_optimize:Z

.field private greylist m_originatingNode:Lorg/w3c/dom/Node;

.field private greylist m_parsingComplete:Z

.field private greylist m_prefixMappings:Ljava/util/Vector;

.field private greylist m_processors:Ljava/util/Stack;

.field private greylist m_schema:Lorg/apache/xalan/processor/XSLTSchema;

.field private greylist m_shouldProcess:Z

.field private greylist m_source_location:Z

.field private greylist m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

.field private greylist m_stylesheetLevel:I

.field private greylist m_stylesheetLocatorStack:Ljava/util/Stack;

.field private greylist m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

.field greylist m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private greylist m_stylesheetType:I

.field private greylist m_stylesheets:Ljava/util/Stack;

.field private greylist warnedAboutOldXSLTNamespace:Z


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    .line 89
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    const/4 v2, -0x1

    .line 419
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    .line 439
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    .line 498
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    .line 1042
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1059
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 1065
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    .line 1139
    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    .line 1166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    .line 1253
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    .line 1290
    new-instance v0, Lorg/apache/xalan/processor/XSLTSchema;

    invoke-direct {v0}, Lorg/apache/xalan/processor/XSLTSchema;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    .line 1307
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    .line 1329
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    .line 1369
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    .line 1438
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    .line 1466
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    .line 1473
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    .line 1542
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->warnedAboutOldXSLTNamespace:Z

    .line 1545
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    .line 1608
    new-instance v0, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    .line 103
    const-class v0, Lorg/apache/xalan/templates/FuncDocument;

    .line 104
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "document"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    .line 108
    const-class v0, Lorg/apache/xalan/templates/FuncFormatNumb;

    .line 110
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "format-number"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    .line 112
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    .line 114
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    .line 116
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-void
.end method

.method private greylist assertion(ZLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_3

    return-void

    .line 881
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist checkForFragmentID(Lorg/xml/sax/Attributes;)V
    .registers 6

    .line 1076
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_33

    if-eqz p1, :cond_33

    .line 1078
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 1080
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_33

    .line 1084
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 1086
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1088
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    iget-object v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    .line 1092
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1093
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_33
    return-void
.end method

.method private greylist flushCharacters()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 558
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    :cond_9
    return-void
.end method

.method private greylist getElemVersion()D
    .registers 9

    .line 1681
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-wide v2, v0

    :goto_7
    cmpl-double v4, v2, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_11

    cmpl-double v7, v2, v5

    if-nez v7, :cond_26

    :cond_11
    if-eqz p0, :cond_26

    .line 1686
    :try_start_13
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getXmlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-wide v2, v0

    .line 1692
    :goto_21
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_7

    :cond_26
    if-nez v4, :cond_29

    move-wide v2, v5

    :cond_29
    return-wide v2
.end method

.method private greylist stackContains(Ljava/util/Stack;Ljava/lang/String;)Z
    .registers 6

    .line 229
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_19

    .line 234
    invoke-virtual {p1, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    return v0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 686
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_5

    goto :goto_2c

    .line 689
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementDef;->getType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1b

    .line 693
    const-string v0, "text()"

    invoke-virtual {v1, v4, v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    :cond_1b
    if-nez v0, :cond_2d

    .line 699
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 700
    const-string p1, "ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION"

    .line 701
    invoke-static {p1, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-virtual {p0, p1, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2c
    :goto_2c
    return-void

    .line 705
    :cond_2d
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    return-void
.end method

.method greylist createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    .line 176
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v5, 0x1

    iget-object v7, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 179
    new-instance p0, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v1, v1, p0}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-object v1
.end method

.method public greylist createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    .line 155
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v5, 0x0

    iget-object v7, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 158
    new-instance p0, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v1, v1, p0}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-object v1
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 470
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-nez v0, :cond_11

    .line 471
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->recompose()V

    .line 476
    :cond_11
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 479
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    .line 481
    :cond_1a
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    .line 483
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    .line 490
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-gez v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    return-void

    .line 474
    :cond_2c
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "ER_NO_STYLESHEETROOT"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    move-exception p0

    .line 494
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 651
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 653
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v1, :cond_b

    return-void

    .line 656
    :cond_b
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    .line 657
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 659
    :cond_12
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 661
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    .line 663
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 665
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 667
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected greylist error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    .line 902
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 905
    instance-of v1, p2, Ljavax/xml/transform/TransformerException;

    if-nez v1, :cond_1d

    if-nez p2, :cond_16

    .line 908
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    goto :goto_1f

    .line 909
    :cond_16
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    move-object p2, v1

    goto :goto_1f

    .line 912
    :cond_1d
    check-cast p2, Ljavax/xml/transform/TransformerException;

    :goto_1f
    if-eqz p0, :cond_2c

    .line 918
    :try_start_21
    invoke-interface {p0, p2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_24
    .catch Ljavax/xml/transform/TransformerException; {:try_start_21 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 922
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 926
    :cond_2c
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method protected greylist error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 948
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 950
    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 995
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 996
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    .line 997
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 1001
    :try_start_e
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_16
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 1005
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1024
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    .line 1025
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 1029
    :try_start_e
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_16
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 1033
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist getBaseIdentifier()Ljava/lang/String;
    .registers 2

    .line 1420
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    .line 1421
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_10
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_22

    .line 1426
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p0

    if-nez p0, :cond_1d

    .line 1428
    const-string p0, ""

    return-object p0

    :cond_1d
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    return-object v0
.end method

.method greylist getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 1

    .line 1262
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object p0
.end method

.method greylist getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1318
    :try_start_0
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_8
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIncremental()Z
    .registers 1

    .line 1714
    iget-boolean p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    return p0
.end method

.method greylist getLastPoppedStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .line 1187
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public greylist getLocator()Lorg/apache/xml/utils/SAXSourceLocator;
    .registers 2

    .line 1448
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1450
    new-instance v0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    .line 1452
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getDOMsystemID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-object v0

    .line 1459
    :cond_19
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x1

    .line 213
    const-string p2, "can\'t process a context node in StylesheetHandler!"

    invoke-direct {p0, p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;
    .registers 1

    .line 1572
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/helpers/NamespaceSupport;

    return-object p0
.end method

.method public greylist getOptimize()Z
    .registers 1

    .line 1707
    iget-boolean p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    return p0
.end method

.method public greylist getOriginatingNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 1601
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method greylist getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v1

    .line 372
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    if-nez v2, :cond_46

    .line 374
    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    if-nez v3, :cond_46

    .line 376
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 377
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/Stylesheet;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_42

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    .line 379
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    instance-of v0, v0, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    if-nez v0, :cond_42

    .line 381
    :cond_3a
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemVersion()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-lez v0, :cond_46

    .line 384
    :cond_42
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    :cond_46
    if-nez v2, :cond_56

    .line 388
    const-string p1, "ER_NOT_ALLOWED_IN_POSITION"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_56
    return-object v2
.end method

.method public greylist getSchema()Lorg/apache/xalan/processor/XSLTSchema;
    .registers 1

    .line 1301
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    return-object p0
.end method

.method public greylist getSource_location()Z
    .registers 1

    .line 1721
    iget-boolean p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    return p0
.end method

.method greylist getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 2

    .line 1176
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1177
    :cond_a
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public greylist getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .registers 1

    .line 1114
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    return-object p0
.end method

.method public greylist getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 3

    .line 1197
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    if-eqz v0, :cond_17

    .line 1198
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setOptimizer(Z)V

    .line 1199
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setIncremental(Z)V

    .line 1200
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSource_location(Z)V

    .line 1202
    :cond_17
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object p0
.end method

.method greylist getStylesheetType()I
    .registers 1

    .line 1149
    iget p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    return p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 288
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTemplates()Ljavax/xml/transform/Templates;
    .registers 1

    .line 265
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public greylist handlesNullPrefixes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 724
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_5

    return-void

    .line 727
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    return-void
.end method

.method greylist importStackContains(Ljava/lang/String;)Z
    .registers 3

    .line 1506
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-direct {p0, v0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->stackContains(Ljava/util/Stack;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method greylist init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    .line 133
    iget-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V

    return-void
.end method

.method greylist isSpacePreserve()Z
    .registers 1

    .line 1618
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result p0

    return p0
.end method

.method public greylist isStylesheetParsingComplete()Z
    .registers 1

    .line 452
    iget-boolean p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    return p0
.end method

.method greylist nextUid()I
    .registers 3

    .line 1336
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    return v0
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist peekImportURL()Ljava/lang/String;
    .registers 1

    .line 1521
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method greylist peekSourceFromURIResolver()Ljavax/xml/transform/Source;
    .registers 1

    .line 1526
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/Source;

    return-object p0
.end method

.method greylist popBaseIndentifier()Ljava/lang/String;
    .registers 1

    .line 1406
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method greylist popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .line 1362
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0
.end method

.method greylist popImportSource()Ljavax/xml/transform/Source;
    .registers 1

    .line 1535
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/Source;

    return-object p0
.end method

.method greylist popImportURL()Ljava/lang/String;
    .registers 1

    .line 1516
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method greylist popNamespaceSupport()V
    .registers 1

    .line 1561
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method greylist popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 1

    .line 1281
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object p0
.end method

.method greylist popSpaceHandling()V
    .registers 1

    .line 1626
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    return-void
.end method

.method greylist popStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 2

    .line 1240
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1241
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1243
    :cond_d
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1244
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    .line 1247
    :cond_1f
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 757
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x3a

    .line 770
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1d

    const/4 v2, 0x0

    .line 773
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 774
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 771
    :cond_1d
    const-string v2, ""

    move-object v0, p1

    .line 786
    :goto_20
    :try_start_20
    const-string v3, "xalan-doc-cache-off"

    .line 787
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "xalan:doc-cache-off"

    .line 788
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "doc-cache-off"

    .line 789
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "org.apache.xalan.xslt.extensions.Redirect"

    .line 790
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 793
    :cond_40
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xalan/templates/ElemForEach;

    if-eqz v0, :cond_55

    .line 797
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    .line 799
    iput-boolean v1, v0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    goto :goto_61

    .line 794
    :cond_55
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "xalan:doc-cache-off not allowed here!"

    .line 796
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_61} :catch_61

    .line 811
    :catch_61
    :cond_61
    :goto_61
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 812
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist pushBaseIndentifier(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    const/16 v1, 0x23

    .line 1384
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_17

    add-int/2addr v1, v0

    .line 1388
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1389
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_1c

    .line 1392
    :cond_17
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_1c

    .line 1395
    :cond_1a
    iput-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 1397
    :goto_1c
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 4

    .line 1350
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1351
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    .line 1353
    :cond_e
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushImportSource(Ljavax/xml/transform/Source;)V
    .registers 2

    .line 1493
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushImportURL(Ljava/lang/String;)V
    .registers 2

    .line 1483
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushNewNamespaceSupport()V
    .registers 2

    .line 1552
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v0, Lorg/apache/xml/utils/NamespaceSupport2;

    invoke-direct {v0}, Lorg/apache/xml/utils/NamespaceSupport2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .registers 2

    .line 1272
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist pushSpaceHandling(Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1649
    const-string v0, "xml:space"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    .line 1652
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->peekOrFalse()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void

    .line 1654
    :cond_12
    const-string v0, "preserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1656
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void

    .line 1658
    :cond_21
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1660
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void

    .line 1664
    :cond_30
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p1

    .line 1665
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 1669
    :try_start_3a
    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_ILLEGAL_XMLSPACE_VALUE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_49
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3a .. :try_end_49} :catch_53

    .line 1675
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void

    :catch_53
    move-exception p0

    .line 1673
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v0
.end method

.method greylist pushSpaceHandling(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1637
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public greylist pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 3

    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 1222
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/StylesheetRoot;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1224
    :cond_d
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 413
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v0, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setOriginatingNode(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 1590
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method greylist setStylesheetType(I)V
    .registers 2

    .line 1160
    iput p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 832
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_5

    return-void

    .line 835
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 431
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Z)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 578
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_29

    .line 582
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 583
    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 584
    invoke-virtual {v0, v4, v5}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .line 587
    :cond_29
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 589
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    .line 611
    invoke-direct {p0, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->checkForFragmentID(Lorg/xml/sax/Attributes;)V

    .line 613
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_3c

    return-void

    .line 616
    :cond_3c
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    .line 618
    invoke-virtual {p0, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Lorg/xml/sax/Attributes;)V

    .line 620
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 625
    invoke-virtual {p0, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 626
    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_54
    move-object v4, p0

    .line 630
    iput-boolean v2, v4, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    .line 631
    invoke-virtual {v4}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 524
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 348
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 854
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object p2

    .line 856
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 861
    :try_start_10
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 865
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_20
    return-void
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 967
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v0

    .line 969
    iget-object p0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 973
    :try_start_e
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_16
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 977
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
