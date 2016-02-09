.class public Lorg/apache/xalan/templates/StylesheetRoot;
.super Lorg/apache/xalan/templates/StylesheetComposed;
.source "StylesheetRoot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/xml/transform/Templates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35c805222327c5cfL


# instance fields
.field private m_attrSets:Ljava/util/HashMap;

.field private m_availElems:Ljava/util/HashMap;

.field private transient m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

.field private m_decimalFormatSymbols:Ljava/util/Hashtable;

.field private m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private transient m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

.field private m_extensionHandlerClass:Ljava/lang/String;

.field private m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_keyDecls:Ljava/util/Vector;

.field private m_namespaceAliasComposed:Ljava/util/Hashtable;

.field private m_optimizer:Z

.field private m_outputMethodSet:Z

.field private m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

.field m_selectDefault:Lorg/apache/xpath/XPath;

.field private m_source_location:Z

.field private m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_templateList:Lorg/apache/xalan/templates/TemplateList;

.field private m_variables:Ljava/util/Vector;

.field private m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method static synthetic -get0(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 8
    .param p1, "errorListener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 85
    invoke-direct {p0, v7}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@5
    .line 61
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    #@8
    .line 66
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    #@a
    .line 71
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    #@c
    .line 76
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    #@e
    .line 158
    iput-object v7, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@10
    .line 526
    iput-boolean v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    #@12
    .line 1222
    const-string/jumbo v0, "org.apache.xalan.extensions.ExtensionHandlerExsltFunction"

    #@15
    .line 1221
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    #@17
    .line 87
    invoke-virtual {p0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@1a
    .line 91
    :try_start_0
    new-instance v0, Lorg/apache/xpath/XPath;

    #@1c
    const-string/jumbo v1, "node()"

    #@1f
    const/4 v4, 0x0

    #@20
    move-object v2, p0

    #@21
    move-object v3, p0

    #@22
    move-object v5, p1

    #@23
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@26
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    #@28
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/StylesheetRoot;->initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 82
    return-void

    #@2c
    .line 96
    :catch_0
    move-exception v6

    #@2d
    .line 97
    .local v6, "se":Ljavax/xml/transform/TransformerException;
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    #@2f
    const-string/jumbo v1, "ER_CANNOT_INIT_DEFAULT_TEMPLATES"

    #@32
    invoke-static {v1, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v0
.end method

.method public constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Ljavax/xml/transform/ErrorListener;)V

    #@3
    .line 118
    invoke-virtual {p1}, Lorg/apache/xalan/processor/XSLTSchema;->getElemsAvailable()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    #@9
    .line 114
    return-void
.end method

.method private QuickSort2(Ljava/util/Vector;II)V
    .locals 5
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "lo0"    # I
    .param p3, "hi0"    # I

    #@0
    .prologue
    .line 1141
    move v1, p2

    #@1
    .line 1142
    .local v1, "lo":I
    move v0, p3

    #@2
    .line 1144
    .local v0, "hi":I
    if-le p3, p2, :cond_5

    #@4
    .line 1148
    add-int v4, p2, p3

    #@6
    div-int/lit8 v4, v4, 0x2

    #@8
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@e
    .line 1151
    .local v2, "midNode":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_0
    :goto_0
    if-gt v1, v0, :cond_3

    #@10
    .line 1155
    :goto_1
    if-ge v1, p3, :cond_1

    #@12
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@18
    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    #@1b
    move-result v4

    #@1c
    if-gez v4, :cond_1

    #@1e
    .line 1157
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_1

    #@21
    .line 1162
    :cond_1
    :goto_2
    if-le v0, p2, :cond_2

    #@23
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@29
    invoke-virtual {v4, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    #@2c
    move-result v4

    #@2d
    if-lez v4, :cond_2

    #@2f
    .line 1163
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_2

    #@32
    .line 1167
    :cond_2
    if-gt v1, v0, :cond_0

    #@34
    .line 1169
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3a
    .line 1170
    .local v3, "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {p1, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@41
    .line 1171
    invoke-virtual {p1, v3, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@44
    .line 1173
    add-int/lit8 v1, v1, 0x1

    #@46
    .line 1174
    add-int/lit8 v0, v0, -0x1

    #@48
    goto :goto_0

    #@49
    .line 1180
    .end local v3    # "node":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_3
    if-ge p2, v0, :cond_4

    #@4b
    .line 1182
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    #@4e
    .line 1187
    :cond_4
    if-ge v1, p3, :cond_5

    #@50
    .line 1189
    invoke-direct {p0, p1, v1, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    #@53
    .line 1139
    .end local v2    # "midNode":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_5
    return-void
.end method

.method private clearComposeState()V
    .locals 1

    #@0
    .prologue
    .line 1218
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@3
    .line 1216
    return-void
.end method

.method private initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    .locals 14
    .param p1, "errorListener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1071
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@3
    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@6
    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@8
    .line 1073
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@a
    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@d
    .line 1075
    new-instance v0, Lorg/apache/xpath/XPath;

    #@f
    const-string/jumbo v1, "*"

    #@12
    move-object v2, p0

    #@13
    move-object v3, p0

    #@14
    move-object v5, p1

    #@15
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@18
    .line 1077
    .local v0, "defMatch":Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@1a
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    #@1d
    .line 1079
    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    #@1f
    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    #@22
    .line 1081
    .local v12, "childrenElement":Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    #@25
    .line 1082
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    #@27
    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    #@2a
    .line 1083
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@2c
    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2f
    .line 1085
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@31
    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@33
    .line 1088
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@35
    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@38
    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@3a
    .line 1090
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@3c
    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@3f
    .line 1092
    new-instance v0, Lorg/apache/xpath/XPath;

    #@41
    .end local v0    # "defMatch":Lorg/apache/xpath/XPath;
    const-string/jumbo v1, "text() | @*"

    #@44
    move-object v2, p0

    #@45
    move-object v3, p0

    #@46
    move-object v5, p1

    #@47
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@4a
    .line 1094
    .restart local v0    # "defMatch":Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@4c
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    #@4f
    .line 1096
    new-instance v13, Lorg/apache/xalan/templates/ElemValueOf;

    #@51
    invoke-direct {v13}, Lorg/apache/xalan/templates/ElemValueOf;-><init>()V

    #@54
    .line 1098
    .local v13, "elemValueOf":Lorg/apache/xalan/templates/ElemValueOf;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@56
    invoke-virtual {v1, v13}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@59
    .line 1100
    new-instance v5, Lorg/apache/xpath/XPath;

    #@5b
    const-string/jumbo v6, "."

    #@5e
    const/4 v9, 0x0

    #@5f
    move-object v7, p0

    #@60
    move-object v8, p0

    #@61
    move-object v10, p1

    #@62
    invoke-direct/range {v5 .. v10}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@65
    .line 1102
    .local v5, "selectPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {v13, v5}, Lorg/apache/xalan/templates/ElemValueOf;->setSelect(Lorg/apache/xpath/XPath;)V

    #@68
    .line 1105
    new-instance v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@6a
    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    #@6d
    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@6f
    .line 1107
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@71
    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@74
    .line 1109
    new-instance v0, Lorg/apache/xpath/XPath;

    #@76
    .end local v0    # "defMatch":Lorg/apache/xpath/XPath;
    const-string/jumbo v7, "/"

    #@79
    move-object v6, v0

    #@7a
    move-object v8, p0

    #@7b
    move-object v9, p0

    #@7c
    move v10, v4

    #@7d
    move-object v11, p1

    #@7e
    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@81
    .line 1111
    .restart local v0    # "defMatch":Lorg/apache/xpath/XPath;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@83
    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    #@86
    .line 1113
    new-instance v12, Lorg/apache/xalan/templates/ElemApplyTemplates;

    #@88
    .end local v12    # "childrenElement":Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-direct {v12}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    #@8b
    .line 1115
    .restart local v12    # "childrenElement":Lorg/apache/xalan/templates/ElemApplyTemplates;
    invoke-virtual {v12, v4}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    #@8e
    .line 1116
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@90
    invoke-virtual {v1, v12}, Lorg/apache/xalan/templates/ElemTemplate;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@93
    .line 1117
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    #@95
    invoke-virtual {v12, v1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setSelect(Lorg/apache/xpath/XPath;)V

    #@98
    .line 1067
    return-void
.end method


# virtual methods
.method protected addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V
    .locals 6
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/Stylesheet;
    .param p2, "addToList"    # Z
    .param p3, "importList"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 404
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    #@4
    move-result v3

    #@5
    .line 406
    .local v3, "n":I
    if-lez v3, :cond_0

    #@7
    .line 408
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@a
    .line 410
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@d
    move-result-object v1

    #@e
    .line 412
    .local v1, "imported":Lorg/apache/xalan/templates/Stylesheet;
    const/4 v4, 0x1

    #@f
    invoke-virtual {p0, v1, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    #@12
    .line 408
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 416
    .end local v0    # "i":I
    .end local v1    # "imported":Lorg/apache/xalan/templates/Stylesheet;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    #@18
    move-result v3

    #@19
    .line 418
    if-lez v3, :cond_1

    #@1b
    .line 420
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    #@1e
    .line 422
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    #@21
    move-result-object v2

    #@22
    .line 424
    .local v2, "included":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {p0, v2, v5, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    #@25
    .line 420
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 428
    .end local v0    # "i":I
    .end local v2    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_1
    if-eqz p2, :cond_2

    #@2a
    .line 429
    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2d
    .line 399
    :cond_2
    return-void
.end method

.method public canStripWhiteSpace()Z
    .locals 1

    #@0
    .prologue
    .line 970
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "templ"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 363
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    move-result-object v0

    #@7
    .local v0, "child":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 366
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@c
    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@f
    move-result-object v0

    #@10
    goto :goto_0

    #@11
    .line 369
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@14
    .line 358
    return-void
.end method

.method public getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public getAvailableElements()Ljava/util/HashMap;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    .locals 1

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@2
    return-object v0
.end method

.method public getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@8
    return-object v0
.end method

.method public getDefaultOutputProps()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    return-object v0
.end method

.method public final getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    return-object v0
.end method

.method public final getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    return-object v0
.end method

.method public getExtensionHandlerClass()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1240
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 167
    new-instance v0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@6
    invoke-direct {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@b
    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@d
    return-object v0
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@7
    invoke-virtual {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getGlobalImportCount()I
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@6
    array-length v0, v0

    #@7
    .line 456
    :goto_0
    return v0

    #@8
    .line 458
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I
    .locals 3
    .param p1, "sheet"    # Lorg/apache/xalan/templates/StylesheetComposed;

    #@0
    .prologue
    .line 472
    if-ne p0, p1, :cond_0

    #@2
    .line 473
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 475
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@7
    move-result v1

    #@8
    .line 477
    .local v1, "n":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@b
    .line 479
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@e
    move-result-object v2

    #@f
    if-ne p1, v2, :cond_1

    #@11
    .line 480
    return v0

    #@12
    .line 477
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 483
    :cond_2
    const/4 v2, -0x1

    #@16
    return v2
.end method

.method public getIncremental()Z
    .locals 1

    #@0
    .prologue
    .line 1381
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    #@2
    return v0
.end method

.method public getKeysComposed()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 699
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    check-cast v0, Lorg/apache/xalan/templates/NamespaceAlias;

    #@7
    return-object v0

    #@8
    .line 700
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public getOptimizer()Z
    .locals 1

    #@0
    .prologue
    .line 1367
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    #@2
    return v0
.end method

.method public getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;
    .locals 1

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultOutputProps()Ljava/util/Properties;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Properties;

    #@a
    return-object v0
.end method

.method public getSource_location()Z
    .locals 1

    #@0
    .prologue
    .line 1388
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    #@2
    return v0
.end method

.method public final getStartRule()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "maxImportLevel"    # I
    .param p5, "endImportLevel"    # I
    .param p6, "quietConflictWarnings"    # Z
    .param p7, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 796
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move-object v7, p7

    #@9
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "quietConflictWarnings"    # Z
    .param p5, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;
    .locals 1

    #@0
    .prologue
    .line 727
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    return-object v0
.end method

.method public getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 5
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 848
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 850
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@7
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@a
    move-result v1

    #@b
    .line 852
    .local v1, "n":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@e
    .line 854
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    #@16
    .line 855
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 856
    return-object v2

    #@21
    .line 852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 860
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-object v4
.end method

.method public getVariablesAndParamsComposed()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 6
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetElement"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 921
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 922
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@7
    .line 923
    const/4 v4, 0x0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v5, p3

    #@b
    .line 922
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@11
    return-object v0

    #@12
    .line 925
    :cond_0
    return-object v3
.end method

.method initComposeState()V
    .locals 1

    #@0
    .prologue
    .line 1201
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@5
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@7
    .line 1199
    return-void
.end method

.method public isOutputMethodSet()Z
    .locals 1

    #@0
    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    #@2
    return v0
.end method

.method public isRoot()Z
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    #@2
    return v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    #@0
    .prologue
    .line 200
    new-instance v0, Lorg/apache/xalan/transformer/TransformerImpl;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerImpl;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@5
    return-object v0
.end method

.method public recompose()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 242
    new-instance v8, Ljava/util/Vector;

    #@3
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    #@6
    .line 246
    .local v8, "recomposableElements":Ljava/util/Vector;
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@8
    if-nez v9, :cond_0

    #@a
    .line 249
    new-instance v1, Ljava/util/Vector;

    #@c
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@f
    .line 251
    .local v1, "importList":Ljava/util/Vector;
    const/4 v9, 0x1

    #@10
    invoke-virtual {p0, p0, v9, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    #@13
    .line 259
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@16
    move-result v9

    #@17
    new-array v9, v9, [Lorg/apache/xalan/templates/StylesheetComposed;

    #@19
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@1b
    .line 261
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1f
    move-result v9

    #@20
    add-int/lit8 v5, v9, -0x1

    #@22
    .local v5, "j":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@25
    move-result v9

    #@26
    if-ge v0, v9, :cond_0

    #@28
    .line 263
    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@2a
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    check-cast v9, Lorg/apache/xalan/templates/StylesheetComposed;

    #@30
    aput-object v9, v10, v5

    #@32
    .line 267
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@34
    aget-object v9, v9, v5

    #@36
    iget-object v10, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@38
    aget-object v10, v10, v5

    #@3a
    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    #@3d
    .line 269
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    #@3f
    add-int/lit8 v6, v5, -0x1

    #@41
    .end local v5    # "j":I
    .local v6, "j":I
    aget-object v9, v9, v5

    #@43
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeImports()V

    #@46
    .line 261
    add-int/lit8 v0, v0, 0x1

    #@48
    move v5, v6

    #@49
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_0

    #@4a
    .line 273
    .end local v0    # "i":I
    .end local v1    # "importList":Ljava/util/Vector;
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@4d
    move-result v7

    #@4e
    .line 275
    .local v7, "n":I
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v7, :cond_1

    #@51
    .line 277
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@54
    move-result-object v2

    #@55
    .line 278
    .local v2, "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v2, v8}, Lorg/apache/xalan/templates/StylesheetComposed;->recompose(Ljava/util/Vector;)V

    #@58
    .line 275
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_1

    #@5b
    .line 283
    .end local v2    # "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    :cond_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@5e
    move-result v9

    #@5f
    add-int/lit8 v9, v9, -0x1

    #@61
    invoke-direct {p0, v8, v11, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    #@64
    .line 288
    new-instance v9, Lorg/apache/xalan/templates/OutputProperties;

    #@66
    const-string/jumbo v10, ""

    #@69
    invoke-direct {v9, v10}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@6c
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@6e
    .line 291
    new-instance v9, Ljava/util/HashMap;

    #@70
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@73
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    #@75
    .line 292
    new-instance v9, Ljava/util/Hashtable;

    #@77
    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    #@7a
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    #@7c
    .line 293
    new-instance v9, Ljava/util/Vector;

    #@7e
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    #@81
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    #@83
    .line 294
    new-instance v9, Ljava/util/Hashtable;

    #@85
    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    #@88
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    #@8a
    .line 295
    new-instance v9, Lorg/apache/xalan/templates/TemplateList;

    #@8c
    invoke-direct {v9}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    #@8f
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@91
    .line 296
    new-instance v9, Ljava/util/Vector;

    #@93
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    #@96
    iput-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@98
    .line 302
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@9b
    move-result v9

    #@9c
    add-int/lit8 v0, v9, -0x1

    #@9e
    :goto_2
    if-ltz v0, :cond_2

    #@a0
    .line 303
    invoke-virtual {v8, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a3
    move-result-object v9

    #@a4
    check-cast v9, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@a6
    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@a9
    .line 302
    add-int/lit8 v0, v0, -0x1

    #@ab
    goto :goto_2

    #@ac
    .line 320
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->initComposeState()V

    #@af
    .line 323
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@b1
    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/TemplateList;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@b4
    .line 326
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@b6
    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@b9
    .line 327
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@bb
    invoke-virtual {v9, p0}, Lorg/apache/xalan/templates/OutputProperties;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@be
    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@c1
    move-result v7

    #@c2
    .line 334
    const/4 v0, 0x0

    #@c3
    :goto_3
    if-ge v0, v7, :cond_4

    #@c5
    .line 336
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@c8
    move-result-object v2

    #@c9
    .line 337
    .restart local v2    # "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    #@cc
    move-result v4

    #@cd
    .line 338
    .local v4, "includedCount":I
    const/4 v5, -0x1

    #@ce
    .restart local v5    # "j":I
    :goto_4
    if-ge v5, v4, :cond_3

    #@d0
    .line 340
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    #@d3
    move-result-object v3

    #@d4
    .line 341
    .local v3, "included":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@d7
    .line 338
    add-int/lit8 v5, v5, 0x1

    #@d9
    goto :goto_4

    #@da
    .line 334
    .end local v3    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@dc
    goto :goto_3

    #@dd
    .line 345
    .end local v2    # "imported":Lorg/apache/xalan/templates/StylesheetComposed;
    .end local v4    # "includedCount":I
    .end local v5    # "j":I
    :cond_4
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@df
    if-eqz v9, :cond_5

    #@e1
    .line 346
    iget-object v9, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    #@e3
    invoke-virtual {v9}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerUnregisteredNamespaces()V

    #@e6
    .line 348
    :cond_5
    invoke-direct {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->clearComposeState()V

    #@e9
    .line 238
    return-void
.end method

.method recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 3
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    #@0
    .prologue
    .line 553
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/ArrayList;

    #@c
    .line 555
    .local v0, "attrSetList":Ljava/util/ArrayList;
    if-nez v0, :cond_0

    #@e
    .line 557
    new-instance v0, Ljava/util/ArrayList;

    #@10
    .end local v0    # "attrSetList":Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 559
    .restart local v0    # "attrSetList":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    #@15
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 562
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 551
    return-void
.end method

.method recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .locals 6
    .param p1, "dfp"    # Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 595
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    #@3
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    #@d
    .line 596
    .local v0, "oldDfs":Ljava/text/DecimalFormatSymbols;
    if-nez v0, :cond_1

    #@f
    .line 598
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    #@11
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 592
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 600
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v0}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 603
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    #@2a
    move-result-object v2

    #@2b
    new-instance v3, Lorg/apache/xml/utils/QName;

    #@2d
    const-string/jumbo v4, ""

    #@30
    invoke-direct {v3, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 607
    const-string/jumbo v2, "WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED"

    #@3c
    .line 608
    new-array v3, v5, [Ljava/lang/Object;

    #@3e
    .line 606
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 618
    .local v1, "themsg":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    #@45
    goto :goto_0

    #@46
    .line 614
    .end local v1    # "themsg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE"

    #@49
    .line 615
    const/4 v3, 0x1

    #@4a
    new-array v3, v3, [Ljava/lang/Object;

    #@4c
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    #@4f
    move-result-object v4

    #@50
    aput-object v4, v3, v5

    #@52
    .line 613
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .restart local v1    # "themsg":Ljava/lang/String;
    goto :goto_1
.end method

.method recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .locals 1
    .param p1, "keyDecl"    # Lorg/apache/xalan/templates/KeyDeclaration;

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 655
    return-void
.end method

.method recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .locals 2
    .param p1, "nsAlias"    # Lorg/apache/xalan/templates/NamespaceAlias;

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    #@2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetNamespace()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 682
    return-void
.end method

.method recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .param p1, "oprops"    # Lorg/apache/xalan/templates/OutputProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V

    #@5
    .line 499
    return-void
.end method

.method recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 1
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplate;

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    #@5
    .line 714
    return-void
.end method

.method recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1
    .param p1, "elemVar"    # Lorg/apache/xalan/templates/ElemVariable;

    #@0
    .prologue
    .line 830
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 832
    const/4 v0, 0x1

    #@b
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    #@e
    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    #@17
    .line 834
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1c
    .line 827
    :cond_0
    return-void
.end method

.method recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1
    .param p1, "wsi"    # Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 889
    new-instance v0, Lorg/apache/xalan/templates/TemplateList;

    #@6
    invoke-direct {v0}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@b
    .line 891
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@d
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    #@10
    .line 886
    return-void
.end method

.method public setExtensionHandlerClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "handlerClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1231
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    #@2
    .line 1232
    .local v0, "oldvalue":Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    #@4
    .line 1233
    return-object v0
.end method

.method public setIncremental(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1395
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    #@2
    .line 1394
    return-void
.end method

.method public setOptimizer(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1374
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    #@2
    .line 1373
    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    #@2
    .line 134
    return-void
.end method

.method public setSource_location(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1402
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    #@2
    .line 1401
    return-void
.end method

.method public final setTemplateListComposed(Lorg/apache/xalan/templates/TemplateList;)V
    .locals 0
    .param p1, "templateList"    # Lorg/apache/xalan/templates/TemplateList;

    #@0
    .prologue
    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    .line 737
    return-void
.end method

.method public shouldCheckWhitespace()Z
    .locals 1

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;I)Z
    .locals 9
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetElement"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 942
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 944
    :goto_0
    if-eq v8, p2, :cond_2

    #@9
    .line 946
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@c
    move-result-object v5

    #@d
    .line 947
    .local v5, "dtm":Lorg/apache/xml/dtm/DTM;
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    #@f
    move-object v1, p1

    #@10
    move v2, p2

    #@11
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@17
    .line 949
    .local v6, "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    if-eqz v6, :cond_0

    #@19
    .line 950
    invoke-virtual {v6}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 952
    :cond_0
    invoke-interface {v5, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@21
    move-result v7

    #@22
    .line 953
    .local v7, "parent":I
    if-eq v8, v7, :cond_1

    #@24
    invoke-interface {v5, v7}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@27
    move-result v0

    #@28
    const/4 v1, 0x1

    #@29
    if-ne v1, v0, :cond_1

    #@2b
    .line 954
    move p2, v7

    #@2c
    goto :goto_0

    #@2d
    .line 956
    :cond_1
    const/4 p2, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 959
    .end local v5    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v6    # "info":Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .end local v7    # "parent":I
    :cond_2
    return v4
.end method
