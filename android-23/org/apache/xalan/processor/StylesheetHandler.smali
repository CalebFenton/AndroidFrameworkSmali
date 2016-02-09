.class public Lorg/apache/xalan/processor/StylesheetHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetHandler.java"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Lorg/apache/xml/utils/NodeConsumer;


# static fields
.field public static final STYPE_IMPORT:I = 0x3

.field public static final STYPE_INCLUDE:I = 0x2

.field public static final STYPE_ROOT:I = 0x1


# instance fields
.field m_baseIdentifiers:Ljava/util/Stack;

.field private m_docOrderCount:I

.field private m_elementID:I

.field private m_elems:Ljava/util/Stack;

.field private m_fragmentID:I

.field private m_fragmentIDString:Ljava/lang/String;

.field private m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_importSourceStack:Ljava/util/Stack;

.field private m_importStack:Ljava/util/Stack;

.field private m_incremental:Z

.field m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field m_nsSupportStack:Ljava/util/Stack;

.field private m_optimize:Z

.field private m_originatingNode:Lorg/w3c/dom/Node;

.field private m_parsingComplete:Z

.field private m_prefixMappings:Ljava/util/Vector;

.field private m_processors:Ljava/util/Stack;

.field private m_schema:Lorg/apache/xalan/processor/XSLTSchema;

.field private m_shouldProcess:Z

.field private m_source_location:Z

.field private m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

.field private m_stylesheetLevel:I

.field private m_stylesheetLocatorStack:Ljava/util/Stack;

.field private m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

.field m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_stylesheetType:I

.field private m_stylesheets:Ljava/util/Stack;

.field private warnedAboutOldXSLTNamespace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 4
    .param p1, "processor"    # Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 100
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@5
    .line 74
    new-instance v1, Lorg/apache/xpath/compiler/FunctionTable;

    #@7
    invoke-direct {v1}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    #@a
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@c
    .line 79
    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    #@e
    .line 84
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    #@10
    .line 89
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    #@12
    .line 419
    const/4 v1, -0x1

    #@13
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@15
    .line 439
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    #@17
    .line 498
    new-instance v1, Ljava/util/Vector;

    #@19
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@1c
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@1e
    .line 1042
    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@20
    .line 1059
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@22
    .line 1065
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    #@24
    .line 1139
    iput v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    #@26
    .line 1166
    new-instance v1, Ljava/util/Stack;

    #@28
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@2b
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@2d
    .line 1253
    new-instance v1, Ljava/util/Stack;

    #@2f
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@32
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    #@34
    .line 1290
    new-instance v1, Lorg/apache/xalan/processor/XSLTSchema;

    #@36
    invoke-direct {v1}, Lorg/apache/xalan/processor/XSLTSchema;-><init>()V

    #@39
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    #@3b
    .line 1307
    new-instance v1, Ljava/util/Stack;

    #@3d
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@40
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@42
    .line 1329
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    #@44
    .line 1369
    new-instance v1, Ljava/util/Stack;

    #@46
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@49
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    #@4b
    .line 1438
    new-instance v1, Ljava/util/Stack;

    #@4d
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@50
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@52
    .line 1466
    new-instance v1, Ljava/util/Stack;

    #@54
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@57
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    #@59
    .line 1473
    new-instance v1, Ljava/util/Stack;

    #@5b
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@5e
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    #@60
    .line 1542
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->warnedAboutOldXSLTNamespace:Z

    #@62
    .line 1545
    new-instance v1, Ljava/util/Stack;

    #@64
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    #@67
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    #@69
    .line 1608
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    #@6b
    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    #@6e
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@70
    .line 103
    const-class v0, Lorg/apache/xalan/templates/FuncDocument;

    #@72
    .line 104
    .local v0, "func":Ljava/lang/Class;
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@74
    const-string/jumbo v2, "document"

    #@77
    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    #@7a
    .line 108
    const-class v0, Lorg/apache/xalan/templates/FuncFormatNumb;

    #@7c
    .line 110
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@7e
    const-string/jumbo v2, "format-number"

    #@81
    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    #@84
    .line 113
    const-string/jumbo v1, "http://xml.apache.org/xalan/features/optimize"

    #@87
    .line 112
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@8a
    move-result-object v1

    #@8b
    check-cast v1, Ljava/lang/Boolean;

    #@8d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@90
    move-result v1

    #@91
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    #@93
    .line 115
    const-string/jumbo v1, "http://xml.apache.org/xalan/features/incremental"

    #@96
    .line 114
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@99
    move-result-object v1

    #@9a
    check-cast v1, Ljava/lang/Boolean;

    #@9c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@9f
    move-result v1

    #@a0
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    #@a2
    .line 117
    const-string/jumbo v1, "http://xml.apache.org/xalan/properties/source-location"

    #@a5
    .line 116
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v1

    #@a9
    check-cast v1, Ljava/lang/Boolean;

    #@ab
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@ae
    move-result v1

    #@af
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    #@b1
    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    #@b4
    .line 101
    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 880
    if-nez p1, :cond_0

    #@2
    .line 881
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 878
    :cond_0
    return-void
.end method

.method private checkForFragmentID(Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1076
    iget-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@2
    if-nez v4, :cond_1

    #@4
    .line 1078
    if-eqz p1, :cond_1

    #@6
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 1080
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@d
    move-result v1

    #@e
    .line 1082
    .local v1, "n":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@11
    .line 1084
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1086
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "id"

    #@18
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 1088
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1090
    .local v3, "val":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 1092
    const/4 v4, 0x1

    #@2b
    iput-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@2d
    .line 1093
    iget v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@2f
    iput v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    #@31
    .line 1082
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1073
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@3
    move-result-object v0

    #@4
    .line 557
    .local v0, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v0, :cond_0

    #@6
    .line 558
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    #@9
    .line 552
    :cond_0
    return-void
.end method

.method private getElemVersion()D
    .locals 10

    #@0
    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@2
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    #@4
    .line 1681
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@7
    move-result-object v0

    #@8
    .line 1682
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    #@a
    .line 1683
    .local v2, "version":D
    :goto_0
    cmpl-double v6, v2, v8

    #@c
    if-eqz v6, :cond_0

    #@e
    cmpl-double v6, v2, v4

    #@10
    if-nez v6, :cond_1

    #@12
    :cond_0
    if-eqz v0, :cond_1

    #@14
    .line 1686
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXmlVersion()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-wide v2

    #@20
    .line 1692
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@23
    move-result-object v0

    #@24
    goto :goto_0

    #@25
    .line 1689
    :catch_0
    move-exception v1

    #@26
    .line 1690
    .local v1, "ex":Ljava/lang/Exception;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    #@28
    goto :goto_1

    #@29
    .line 1694
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    cmpl-double v6, v2, v8

    #@2b
    if-nez v6, :cond_2

    #@2d
    move-wide v2, v4

    #@2e
    .end local v2    # "version":D
    :cond_2
    return-wide v2
.end method

.method private stackContains(Ljava/util/Stack;Ljava/lang/String;)Z
    .locals 5
    .param p1, "stack"    # Ljava/util/Stack;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    #@3
    move-result v2

    #@4
    .line 230
    .local v2, "n":I
    const/4 v0, 0x0

    #@5
    .line 232
    .local v0, "contains":Z
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    .line 234
    invoke-virtual {p1, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/lang/String;

    #@e
    .line 236
    .local v3, "url2":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 238
    const/4 v0, 0x1

    #@15
    .line 244
    .end local v3    # "url2":Ljava/lang/String;
    :cond_0
    return v0

    #@16
    .line 232
    .restart local v3    # "url2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 686
    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 687
    return-void

    #@6
    .line 689
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@9
    move-result-object v1

    #@a
    .line 690
    .local v1, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@d
    move-result-object v0

    #@e
    .line 692
    .local v0, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getType()I

    #@11
    move-result v2

    #@12
    const/4 v3, 0x2

    #@13
    if-eq v2, v3, :cond_1

    #@15
    .line 693
    const-string/jumbo v2, "text()"

    #@18
    invoke-virtual {v0, v4, v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@1b
    move-result-object v1

    #@1c
    .line 695
    :cond_1
    if-nez v1, :cond_3

    #@1e
    .line 699
    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 701
    const-string/jumbo v2, "ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION"

    #@27
    invoke-static {v2, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 700
    invoke-virtual {p0, v2, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@2e
    .line 683
    :cond_2
    :goto_0
    return-void

    #@2f
    .line 705
    :cond_3
    invoke-virtual {v1, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    #@32
    goto :goto_0
.end method

.method createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "owningTemplate"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@2
    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v5

    #@6
    .line 176
    .local v5, "handler":Ljavax/xml/transform/ErrorListener;
    new-instance v0, Lorg/apache/xpath/XPath;

    #@8
    .line 177
    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@a
    .line 176
    const/4 v4, 0x1

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move-object v3, p0

    #@e
    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    #@11
    .line 179
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    #@13
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@1a
    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@1d
    .line 180
    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "owningTemplate"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@2
    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v5

    #@6
    .line 155
    .local v5, "handler":Ljavax/xml/transform/ErrorListener;
    new-instance v0, Lorg/apache/xpath/XPath;

    #@8
    .line 156
    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@a
    .line 155
    const/4 v4, 0x0

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move-object v3, p0

    #@e
    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    #@11
    .line 158
    .local v0, "xpath":Lorg/apache/xpath/XPath;
    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    #@13
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@1a
    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@1d
    .line 159
    return-object v0
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 468
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@4
    move-result-object v3

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 470
    iget v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@9
    if-nez v3, :cond_0

    #@b
    .line 471
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->recompose()V

    #@12
    .line 476
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@15
    move-result-object v0

    #@16
    .line 478
    .local v0, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v0, :cond_1

    #@18
    .line 479
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    #@1b
    .line 481
    :cond_1
    iget v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    iput v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@21
    .line 483
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    #@24
    .line 490
    iget v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@26
    if-gez v3, :cond_2

    #@28
    const/4 v2, 0x1

    #@29
    :cond_2
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    #@2b
    .line 463
    return-void

    #@2c
    .line 474
    .end local v0    # "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    :cond_3
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@2e
    const-string/jumbo v3, "ER_NO_STYLESHEETROOT"

    #@31
    const/4 v4, 0x0

    #@32
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 493
    :catch_0
    move-exception v1

    #@3b
    .line 494
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@3d
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@40
    throw v2
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@6
    .line 653
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@8
    if-nez v1, :cond_0

    #@a
    .line 654
    return-void

    #@b
    .line 656
    :cond_0
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 657
    const/4 v1, 0x0

    #@14
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@16
    .line 659
    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    #@19
    .line 661
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    #@1c
    .line 663
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@1f
    move-result-object v0

    #@20
    .line 665
    .local v0, "p":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 666
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@26
    .line 667
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    #@2d
    .line 648
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@3
    move-result-object v1

    #@4
    .line 902
    .local v1, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@6
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@9
    move-result-object v0

    #@a
    .line 905
    .local v0, "handler":Ljavax/xml/transform/ErrorListener;
    instance-of v4, p2, Ljavax/xml/transform/TransformerException;

    #@c
    if-nez v4, :cond_1

    #@e
    .line 907
    if-nez p2, :cond_0

    #@10
    .line 908
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@12
    invoke-direct {v2, p1, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@15
    .line 914
    .local v2, "pe":Ljavax/xml/transform/TransformerException;
    :goto_0
    if-eqz v0, :cond_2

    #@17
    .line 918
    :try_start_0
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 898
    return-void

    #@1b
    .line 909
    .end local v2    # "pe":Ljavax/xml/transform/TransformerException;
    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@1d
    invoke-direct {v2, p1, v1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    #@20
    .restart local v2    # "pe":Ljavax/xml/transform/TransformerException;
    goto :goto_0

    #@21
    .end local v2    # "pe":Ljavax/xml/transform/TransformerException;
    :cond_1
    move-object v2, p2

    #@22
    .line 912
    check-cast v2, Ljavax/xml/transform/TransformerException;

    #@24
    .restart local v2    # "pe":Ljavax/xml/transform/TransformerException;
    goto :goto_0

    #@25
    .line 921
    :catch_0
    move-exception v3

    #@26
    .line 922
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@28
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@2b
    throw v4

    #@2c
    .line 926
    .end local v3    # "te":Ljavax/xml/transform/TransformerException;
    :cond_2
    new-instance v4, Lorg/xml/sax/SAXException;

    #@2e
    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@31
    throw v4
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 948
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 950
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@7
    .line 945
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 995
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 996
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@7
    move-result-object v2

    #@8
    .line 997
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@a
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@d
    move-result-object v1

    #@e
    .line 1001
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@10
    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@13
    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 992
    return-void

    #@17
    .line 1004
    :catch_0
    move-exception v3

    #@18
    .line 1005
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@1a
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1d
    throw v4
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1024
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@7
    move-result-object v2

    #@8
    .line 1025
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@a
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@d
    move-result-object v1

    #@e
    .line 1029
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@10
    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@13
    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1020
    return-void

    #@17
    .line 1032
    :catch_0
    move-exception v3

    #@18
    .line 1033
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@1a
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1d
    throw v4
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1420
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    #@3
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    :goto_0
    check-cast v0, Ljava/lang/String;

    #@b
    .line 1424
    .local v0, "base":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 1426
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@10
    move-result-object v1

    #@11
    .line 1428
    .local v1, "locator":Ljavax/xml/transform/SourceLocator;
    if-nez v1, :cond_2

    #@13
    const-string/jumbo v0, ""

    #@16
    .line 1431
    .end local v1    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_0
    :goto_1
    return-object v0

    #@17
    .line 1421
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    #@19
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0

    #@1e
    .line 1428
    .restart local v0    # "base":Ljava/lang/String;
    .restart local v1    # "locator":Ljavax/xml/transform/SourceLocator;
    :cond_2
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    goto :goto_1
.end method

.method getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    #@0
    .prologue
    .line 1262
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@8
    return-object v0
.end method

.method getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    #@0
    .prologue
    .line 1318
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@2
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 1321
    :catch_0
    move-exception v0

    #@a
    .line 1322
    .local v0, "ese":Ljava/util/EmptyStackException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getIncremental()Z
    .locals 1

    #@0
    .prologue
    .line 1714
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    #@2
    return v0
.end method

.method getLastPoppedStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    return-object v0
.end method

.method public getLocator()Lorg/apache/xml/utils/SAXSourceLocator;
    .locals 2

    #@0
    .prologue
    .line 1448
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1450
    new-instance v0, Lorg/apache/xml/utils/SAXSourceLocator;

    #@a
    invoke-direct {v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    #@d
    .line 1452
    .local v0, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getDOMsystemID()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    #@18
    .line 1454
    return-object v0

    #@19
    .line 1459
    .end local v0    # "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@1b
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    #@21
    return-object v1
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 213
    const-string/jumbo v0, "can\'t process a context node in StylesheetHandler!"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v1, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->assertion(ZLjava/lang/String;)V

    #@7
    .line 215
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;
    .locals 1

    #@0
    .prologue
    .line 1572
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/xml/sax/helpers/NamespaceSupport;

    #@8
    return-object v0
.end method

.method public getOptimize()Z
    .locals 1

    #@0
    .prologue
    .line 1707
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    #@2
    return v0
.end method

.method public getOriginatingNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 1601
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@2
    const/4 v6, 0x0

    #@3
    .line 370
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@6
    move-result-object v0

    #@7
    .line 371
    .local v0, "currentProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    #@a
    move-result-object v1

    #@b
    .line 372
    .local v1, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@e
    move-result-object v2

    #@f
    .line 374
    .local v2, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-nez v2, :cond_0

    #@11
    .line 375
    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 387
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@17
    .line 388
    const-string/jumbo v3, "ER_NOT_ALLOWED_IN_POSITION"

    #@1a
    const/4 v4, 0x1

    #@1b
    new-array v4, v4, [Ljava/lang/Object;

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object p3, v4, v5

    #@20
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    #@27
    .line 391
    :cond_1
    return-object v2

    #@28
    .line 376
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@2b
    move-result-object v3

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 377
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Lorg/apache/xalan/templates/Stylesheet;->getVersion()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@3d
    move-result-wide v4

    #@3e
    cmpl-double v3, v4, v8

    #@40
    if-lez v3, :cond_4

    #@42
    .line 384
    :cond_3
    :goto_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@45
    move-result-object v2

    #@46
    goto :goto_0

    #@47
    .line 379
    :cond_4
    const-string/jumbo v3, "http://www.w3.org/1999/XSL/Transform"

    #@4a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_5

    #@50
    .line 380
    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    #@52
    .line 376
    if-nez v3, :cond_3

    #@54
    .line 381
    :cond_5
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemVersion()D

    #@57
    move-result-wide v4

    #@58
    cmpl-double v3, v4, v8

    #@5a
    if-lez v3, :cond_0

    #@5c
    goto :goto_1
.end method

.method public getSchema()Lorg/apache/xalan/processor/XSLTSchema;
    .locals 1

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    #@2
    return-object v0
.end method

.method public getSource_location()Z
    .locals 1

    #@0
    .prologue
    .line 1721
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    #@2
    return v0
.end method

.method getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1177
    const/4 v0, 0x0

    #@9
    .line 1176
    :goto_0
    return-object v0

    #@a
    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@c
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    #@12
    goto :goto_0
.end method

.method public getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .locals 1

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@2
    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 2

    #@0
    .prologue
    .line 1197
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1198
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@6
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setOptimizer(Z)V

    #@b
    .line 1199
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@d
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    #@f
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setIncremental(Z)V

    #@12
    .line 1200
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@14
    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    #@16
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSource_location(Z)V

    #@19
    .line 1202
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@1b
    return-object v0
.end method

.method getStylesheetType()I
    .locals 1

    #@0
    .prologue
    .line 1149
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    #@2
    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 1

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    #@0
    .prologue
    .line 1700
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 724
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 725
    return-void

    #@5
    .line 727
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    #@c
    .line 721
    return-void
.end method

.method importStackContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hrefUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    #@2
    invoke-direct {p0, v0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->stackContains(Ljava/util/Stack;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 2
    .param p1, "processor"    # Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@2
    .line 133
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    #@4
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    #@6
    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTSchema;->getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V

    #@10
    .line 128
    return-void
.end method

.method isSpacePreserve()Z
    .locals 1

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStylesheetParsingComplete()Z
    .locals 1

    #@0
    .prologue
    .line 452
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    #@2
    return v0
.end method

.method nextUid()I
    .locals 2

    #@0
    .prologue
    .line 1336
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    #@6
    return v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 330
    return-void
.end method

.method peekImportURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1521
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method peekSourceFromURIResolver()Ljavax/xml/transform/Source;
    .locals 1

    #@0
    .prologue
    .line 1526
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/xml/transform/Source;

    #@8
    return-object v0
.end method

.method popBaseIndentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1406
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    #@0
    .prologue
    .line 1362
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    return-object v0
.end method

.method popImportSource()Ljavax/xml/transform/Source;
    .locals 1

    #@0
    .prologue
    .line 1535
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/xml/transform/Source;

    #@8
    return-object v0
.end method

.method popImportURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1516
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method popNamespaceSupport()V
    .locals 1

    #@0
    .prologue
    .line 1561
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 1559
    return-void
.end method

.method popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    #@0
    .prologue
    .line 1281
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@8
    return-object v0
.end method

.method popSpaceHandling()V
    .locals 1

    #@0
    .prologue
    .line 1626
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    #@5
    .line 1624
    return-void
.end method

.method popStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    #@0
    .prologue
    .line 1240
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1241
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@a
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@d
    .line 1243
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@f
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1244
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@17
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    #@1d
    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@1f
    .line 1247
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    #@21
    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 757
    iget-boolean v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 758
    return-void

    #@6
    .line 769
    :cond_0
    const-string/jumbo v5, ""

    #@9
    .local v5, "prefix":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@c
    .local v4, "ns":Ljava/lang/String;
    move-object v3, p1

    #@d
    .line 770
    .local v3, "localName":Ljava/lang/String;
    const/16 v6, 0x3a

    #@f
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v0

    #@13
    .line 771
    .local v0, "colon":I
    if-ltz v0, :cond_1

    #@15
    .line 773
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {p0, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 774
    add-int/lit8 v6, v0, 0x1

    #@1f
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 787
    :cond_1
    :try_start_0
    const-string/jumbo v6, "xalan-doc-cache-off"

    #@26
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_2

    #@2c
    .line 788
    const-string/jumbo v6, "xalan:doc-cache-off"

    #@2f
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    .line 787
    if-nez v6, :cond_2

    #@35
    .line 789
    const-string/jumbo v6, "doc-cache-off"

    #@38
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_3

    #@3e
    .line 790
    const-string/jumbo v6, "org.apache.xalan.xslt.extensions.Redirect"

    #@41
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v6

    #@45
    .line 786
    if-eqz v6, :cond_3

    #@47
    .line 793
    :cond_2
    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@49
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@4c
    move-result-object v6

    #@4d
    instance-of v6, v6, Lorg/apache/xalan/templates/ElemForEach;

    #@4f
    if-nez v6, :cond_4

    #@51
    .line 794
    new-instance v6, Ljavax/xml/transform/TransformerException;

    #@53
    .line 795
    const-string/jumbo v7, "xalan:doc-cache-off not allowed here!"

    #@56
    .line 796
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@59
    move-result-object v8

    #@5a
    .line 794
    invoke-direct {v6, v7, v8}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@5d
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 805
    :catch_0
    move-exception v1

    #@5f
    .line 811
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    #@62
    .line 812
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V

    #@69
    .line 755
    return-void

    #@6a
    .line 797
    :cond_4
    :try_start_1
    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@6c
    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Lorg/apache/xalan/templates/ElemForEach;

    #@72
    .line 799
    .local v2, "elem":Lorg/apache/xalan/templates/ElemForEach;
    const/4 v6, 0x1

    #@73
    iput-boolean v6, v2, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@75
    goto :goto_0
.end method

.method pushBaseIndentifier(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1382
    if-eqz p1, :cond_1

    #@3
    .line 1384
    const/16 v1, 0x23

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v0

    #@9
    .line 1386
    .local v0, "posOfHash":I
    const/4 v1, -0x1

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 1388
    add-int/lit8 v1, v0, 0x1

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    #@14
    .line 1389
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@17
    .line 1397
    .end local v0    # "posOfHash":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    #@19
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1379
    return-void

    #@1d
    .line 1392
    .restart local v0    # "posOfHash":I
    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@1f
    goto :goto_0

    #@20
    .line 1395
    .end local v0    # "posOfHash":I
    :cond_1
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@22
    goto :goto_0
.end method

.method pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 2
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 1350
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1351
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    #@e
    .line 1353
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1347
    return-void
.end method

.method pushImportSource(Ljavax/xml/transform/Source;)V
    .locals 1
    .param p1, "sourceFromURIResolver"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1491
    return-void
.end method

.method pushImportURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "hrefUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1483
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1481
    return-void
.end method

.method pushNewNamespaceSupport()V
    .locals 2

    #@0
    .prologue
    .line 1552
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    #@2
    new-instance v1, Lorg/apache/xml/utils/NamespaceSupport2;

    #@4
    invoke-direct {v1}, Lorg/apache/xml/utils/NamespaceSupport2;-><init>()V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 1550
    return-void
.end method

.method pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .locals 1
    .param p1, "processor"    # Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@0
    .prologue
    .line 1272
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1270
    return-void
.end method

.method pushSpaceHandling(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1649
    const-string/jumbo v4, "xml:space"

    #@3
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 1650
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    #@9
    .line 1652
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@b
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@d
    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peekOrFalse()Z

    #@10
    move-result v5

    #@11
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@14
    .line 1647
    :goto_0
    return-void

    #@15
    .line 1654
    :cond_0
    const-string/jumbo v4, "preserve"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 1656
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@20
    const/4 v5, 0x1

    #@21
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@24
    goto :goto_0

    #@25
    .line 1658
    :cond_1
    const-string/jumbo v4, "default"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 1660
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@30
    const/4 v5, 0x0

    #@31
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@34
    goto :goto_0

    #@35
    .line 1664
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@38
    move-result-object v1

    #@39
    .line 1665
    .local v1, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@3b
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@3e
    move-result-object v0

    #@3f
    .line 1669
    .local v0, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@41
    const-string/jumbo v5, "ER_ILLEGAL_XMLSPACE_VALUE"

    #@44
    const/4 v6, 0x0

    #@45
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-direct {v4, v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@4c
    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 1675
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@51
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@53
    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    #@56
    move-result v5

    #@57
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@5a
    goto :goto_0

    #@5b
    .line 1672
    :catch_0
    move-exception v2

    #@5c
    .line 1673
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXParseException;

    #@5e
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-direct {v4, v5, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    #@65
    throw v4
.end method

.method pushSpaceHandling(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1637
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@5
    .line 1635
    return-void
.end method

.method public pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "s"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    move-object v0, p1

    #@9
    .line 1222
    check-cast v0, Lorg/apache/xalan/templates/StylesheetRoot;

    #@b
    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@d
    .line 1224
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1218
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    #@2
    new-instance v1, Lorg/apache/xml/utils/SAXSourceLocator;

    #@4
    invoke-direct {v1, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/Locator;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 409
    return-void
.end method

.method public setOriginatingNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1590
    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    #@2
    .line 1588
    return-void
.end method

.method setStylesheetType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1160
    iput p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    #@2
    .line 1158
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    #@3
    .line 275
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 832
    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 833
    return-void

    #@5
    .line 835
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p0, p1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V

    #@c
    .line 829
    return-void
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
    .line 431
    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    #@6
    .line 432
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Z)V

    #@a
    .line 429
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "rawName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 575
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    #@3
    move-result-object v11

    #@4
    .line 576
    .local v11, "nssupport":Lorg/xml/sax/helpers/NamespaceSupport;
    invoke-virtual {v11}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    #@7
    .line 578
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@9
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@c
    move-result v9

    #@d
    .line 580
    .local v9, "n":I
    const/4 v7, 0x0

    #@e
    .local v7, "i":I
    move v8, v7

    #@f
    .end local v7    # "i":I
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    #@11
    .line 582
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@13
    add-int/lit8 v7, v8, 0x1

    #@15
    .end local v8    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v12

    #@19
    check-cast v12, Ljava/lang/String;

    #@1b
    .line 583
    .local v12, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@1d
    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v10

    #@21
    check-cast v10, Ljava/lang/String;

    #@23
    .line 584
    .local v10, "nsURI":Ljava/lang/String;
    invoke-virtual {v11, v12, v10}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    .line 580
    add-int/lit8 v7, v7, 0x1

    #@28
    move v8, v7

    #@29
    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    #@2a
    .line 587
    .end local v10    # "nsURI":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@2c
    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    #@2f
    .line 589
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@31
    add-int/lit8 v2, v2, 0x1

    #@33
    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    #@35
    .line 611
    move-object/from16 v0, p4

    #@37
    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->checkForFragmentID(Lorg/xml/sax/Attributes;)V

    #@3a
    .line 613
    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@3c
    if-nez v2, :cond_1

    #@3e
    .line 614
    return-void

    #@3f
    .line 616
    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    #@42
    .line 618
    move-object/from16 v0, p4

    #@44
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Lorg/xml/sax/Attributes;)V

    #@47
    .line 620
    invoke-virtual/range {p0 .. p3}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@4a
    move-result-object v1

    #@4b
    .line 623
    .local v1, "elemProcessor":Lorg/apache/xalan/processor/XSLTElementProcessor;
    if-eqz v1, :cond_2

    #@4d
    .line 625
    invoke-virtual {p0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    #@50
    move-object v2, p0

    #@51
    move-object v3, p1

    #@52
    move-object v4, p2

    #@53
    move-object/from16 v5, p3

    #@55
    move-object/from16 v6, p4

    #@57
    .line 626
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@5a
    .line 573
    :goto_1
    return-void

    #@5b
    .line 630
    :cond_2
    const/4 v2, 0x0

    #@5c
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    #@5e
    .line 631
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    #@61
    goto :goto_1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 524
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    #@7
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    .line 516
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@3
    move-result-object v0

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 346
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 854
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 855
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@7
    move-result-object v2

    #@8
    .line 856
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@a
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@d
    move-result-object v1

    #@e
    .line 860
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    if-eqz v1, :cond_0

    #@10
    .line 861
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@12
    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@15
    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 851
    :cond_0
    return-void

    #@19
    .line 864
    :catch_0
    move-exception v3

    #@1a
    .line 865
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@1c
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1f
    throw v4
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 967
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 968
    .local v0, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    #@7
    move-result-object v2

    #@8
    .line 969
    .local v2, "locator":Lorg/apache/xml/utils/SAXSourceLocator;
    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    #@a
    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@d
    move-result-object v1

    #@e
    .line 973
    .local v1, "handler":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@10
    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@13
    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 964
    return-void

    #@17
    .line 976
    :catch_0
    move-exception v3

    #@18
    .line 977
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@1a
    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@1d
    throw v4
.end method
