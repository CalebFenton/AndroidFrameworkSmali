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
.field static final whitelist serialVersionUID:J = 0x35c805222327c5cfL


# instance fields
.field private greylist m_attrSets:Ljava/util/HashMap;

.field private greylist m_availElems:Ljava/util/HashMap;

.field private transient greylist m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

.field private greylist m_decimalFormatSymbols:Ljava/util/Hashtable;

.field private greylist m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private greylist m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private greylist m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private transient greylist m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

.field private greylist m_extensionHandlerClass:Ljava/lang/String;

.field private greylist m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

.field private greylist m_incremental:Z

.field private greylist m_isSecureProcessing:Z

.field private greylist m_keyDecls:Ljava/util/Vector;

.field private greylist m_namespaceAliasComposed:Ljava/util/Hashtable;

.field private greylist m_optimizer:Z

.field private greylist m_outputMethodSet:Z

.field private greylist m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

.field greylist m_selectDefault:Lorg/apache/xpath/XPath;

.field private greylist m_source_location:Z

.field private greylist m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

.field private greylist m_templateList:Lorg/apache/xalan/templates/TemplateList;

.field private greylist m_variables:Ljava/util/Vector;

.field private greylist m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_variables(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object p0
.end method

.method public constructor greylist <init>(Ljavax/xml/transform/ErrorListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v1}, Lorg/apache/xalan/templates/StylesheetComposed;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    .line 71
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    .line 76
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    .line 158
    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    .line 526
    iput-boolean v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    .line 1221
    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerExsltFunction"

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p0}, Lorg/apache/xalan/templates/Stylesheet;->setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 91
    :try_start_19
    new-instance v2, Lorg/apache/xpath/XPath;

    const-string v3, "node()"

    const/4 v6, 0x0

    move-object v5, p0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object v2, v4, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    .line 93
    invoke-direct {v4, v7}, Lorg/apache/xalan/templates/StylesheetRoot;->initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    :try_end_29
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 97
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v0, "ER_CANNOT_INIT_DEFAULT_TEMPLATES"

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Ljavax/xml/transform/ErrorListener;)V

    .line 118
    invoke-virtual {p1}, Lorg/apache/xalan/processor/XSLTSchema;->getElemsAvailable()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    return-void
.end method

.method private greylist QuickSort2(Ljava/util/Vector;II)V
    .registers 9

    if-le p3, p2, :cond_53

    add-int v0, p2, p3

    .line 1148
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move v1, p2

    move v2, p3

    :cond_e
    :goto_e
    if-gt v1, v2, :cond_49

    :goto_10
    if-ge v1, p3, :cond_21

    .line 1155
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v3, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    :goto_21
    if-le v2, p2, :cond_32

    .line 1162
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v3, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_32

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_32
    if-gt v1, v2, :cond_e

    .line 1169
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1170
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1171
    invoke-virtual {p1, v3, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_49
    if-ge p2, v2, :cond_4e

    .line 1182
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_4e
    if-ge v1, p3, :cond_53

    .line 1189
    invoke-direct {p0, p1, v1, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_53
    return-void
.end method

.method private greylist clearComposeState()V
    .registers 2

    const/4 v0, 0x0

    .line 1218
    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method private greylist initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1071
    new-instance v0, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1073
    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1075
    new-instance v1, Lorg/apache/xpath/XPath;

    const-string v2, "*"

    const/4 v5, 0x1

    move-object v4, p0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    move-object v8, v3

    move-object v11, v6

    .line 1077
    iget-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1079
    new-instance p0, Lorg/apache/xalan/templates/ElemApplyTemplates;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    const/4 p1, 0x1

    .line 1081
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    .line 1082
    iget-object v0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 1083
    iget-object v0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1085
    iget-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1088
    new-instance p0, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1090
    invoke-virtual {p0, v8}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1092
    new-instance v6, Lorg/apache/xpath/XPath;

    const-string v7, "text() | @*"

    const/4 v10, 0x1

    move-object v9, v8

    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1094
    iget-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, v6}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1096
    new-instance p0, Lorg/apache/xalan/templates/ElemValueOf;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemValueOf;-><init>()V

    .line 1098
    iget-object v0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1100
    new-instance v6, Lorg/apache/xpath/XPath;

    const-string v7, "."

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1102
    invoke-virtual {p0, v6}, Lorg/apache/xalan/templates/ElemValueOf;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 1105
    new-instance p0, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    .line 1107
    invoke-virtual {p0, v8}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1109
    new-instance v6, Lorg/apache/xpath/XPath;

    const-string v7, "/"

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v11}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 1111
    iget-object p0, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, v6}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 1113
    new-instance p0, Lorg/apache/xalan/templates/ElemApplyTemplates;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemApplyTemplates;-><init>()V

    .line 1115
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    .line 1116
    iget-object p1, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1117
    iget-object p1, v8, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->setSelect(Lorg/apache/xpath/XPath;)V

    return-void
.end method


# virtual methods
.method protected greylist addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V
    .registers 9

    .line 404
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_15

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_15

    .line 410
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    const/4 v4, 0x1

    .line 412
    invoke-virtual {p0, v3, v4, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 416
    :cond_15
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v0

    if-lez v0, :cond_28

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_28

    .line 422
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    .line 424
    invoke-virtual {p0, v3, v1, p3}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    if-eqz p2, :cond_2d

    .line 429
    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public greylist canStripWhiteSpace()Z
    .registers 1

    .line 970
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method greylist composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 363
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_7

    .line 369
    :cond_11
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 578
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist getAvailableElements()Ljava/util/HashMap;
    .registers 1

    .line 155
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_availElems:Ljava/util/HashMap;

    return-object p0
.end method

.method greylist getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    .registers 1

    .line 1210
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-object p0
.end method

.method public greylist getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;
    .registers 2

    .line 640
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public greylist getDefaultOutputProps()Ljava/util/Properties;
    .registers 1

    .line 206
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 1034
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRootRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public final greylist getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 1010
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public final greylist getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 991
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_defaultTextRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getExtensionHandlerClass()Ljava/lang/String;
    .registers 1

    .line 1240
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
    .registers 2

    .line 166
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-nez v0, :cond_b

    .line 167
    new-instance v0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    invoke-direct {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    .line 168
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    return-object p0
.end method

.method public greylist getExtensions()Ljava/util/Vector;
    .registers 1

    .line 178
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 2

    .line 443
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getGlobalImportCount()I
    .registers 1

    .line 456
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    if-eqz p0, :cond_6

    .line 457
    array-length p0, p0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 475
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_14

    .line 479
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    if-ne p1, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getIncremental()Z
    .registers 1

    .line 1381
    iget-boolean p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    return p0
.end method

.method public greylist getKeysComposed()Ljava/util/Vector;
    .registers 1

    .line 668
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    return-object p0
.end method

.method public greylist getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;
    .registers 2

    .line 699
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    .line 700
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_a
    check-cast p0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object p0
.end method

.method public greylist getOptimizer()Z
    .registers 1

    .line 1367
    iget-boolean p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    return p0
.end method

.method public greylist getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;
    .registers 1

    .line 521
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    return-object p0
.end method

.method public whitelist test-api getOutputProperties()Ljava/util/Properties;
    .registers 1

    .line 222
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultOutputProps()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public greylist getSource_location()Z
    .registers 1

    .line 1388
    iget-boolean p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    return p0
.end method

.method public final greylist getStartRule()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 1052
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_startRule:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .line 813
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public greylist getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 796
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual/range {p0 .. p7}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public greylist getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 764
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getTemplateListComposed()Lorg/apache/xalan/templates/TemplateList;
    .registers 1

    .line 727
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    return-object p0
.end method

.method public greylist getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 6

    .line 848
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    if-eqz v0, :cond_21

    .line 850
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_21

    .line 854
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    .line 855
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getVariablesAndParamsComposed()Ljava/util/Vector;
    .registers 1

    .line 871
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object p0
.end method

.method public greylist getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 922
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist initComposeState()V
    .registers 2

    .line 1201
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_composeState:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method public greylist isOutputMethodSet()Z
    .registers 1

    .line 536
    iget-boolean p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputMethodSet:Z

    return p0
.end method

.method public greylist isRoot()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isSecureProcessing()Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return p0
.end method

.method public whitelist test-api newTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .line 200
    new-instance v0, Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/TransformerImpl;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-object v0
.end method

.method public greylist recompose()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 246
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_45

    .line 249
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 251
    invoke-virtual {p0, p0, v3, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->addImports(Lorg/apache/xalan/templates/Stylesheet;ZLjava/util/Vector;)V

    .line 259
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/xalan/templates/StylesheetComposed;

    iput-object v4, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    .line 261
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    :goto_21
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_45

    .line 263
    iget-object v6, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xalan/templates/StylesheetComposed;

    aput-object v7, v6, v4

    .line 267
    iget-object v6, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    aget-object v6, v6, v4

    invoke-virtual {v6, v6}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 269
    iget-object v6, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_globalImportList:[Lorg/apache/xalan/templates/StylesheetComposed;

    add-int/lit8 v7, v4, -0x1

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeImports()V

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_21

    .line 273
    :cond_45
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    move v4, v2

    :goto_4a
    if-ge v4, v1, :cond_56

    .line 277
    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    .line 278
    invoke-virtual {v5, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->recompose(Ljava/util/Vector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 283
    :cond_56
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    .line 288
    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    const-string v4, ""

    invoke-direct {v1, v4}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    .line 292
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    .line 293
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    .line 294
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    .line 295
    new-instance v1, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v1}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    .line 296
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    .line 302
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_96
    if-ltz v1, :cond_a4

    .line 303
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v3, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_96

    .line 320
    :cond_a4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->initComposeState()V

    .line 323
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/TemplateList;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 326
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/OutputProperties;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 327
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 332
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v0

    :goto_ba
    if-ge v2, v0, :cond_d4

    .line 336
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v3

    const/4 v4, -0x1

    :goto_c5
    if-ge v4, v3, :cond_d1

    .line 340
    invoke-virtual {v1, v4}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v5

    .line 341
    invoke-virtual {p0, v5}, Lorg/apache/xalan/templates/StylesheetRoot;->composeTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    :cond_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 345
    :cond_d4
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extNsMgr:Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    if-eqz v0, :cond_db

    .line 346
    invoke-virtual {v0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerUnregisteredNamespaces()V

    .line 348
    :cond_db
    invoke-direct {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->clearComposeState()V

    return-void
.end method

.method greylist recomposeAttributeSets(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 4

    .line 553
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_attrSets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method greylist recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .registers 5

    .line 594
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    .line 595
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    if-nez v0, :cond_1c

    .line 598
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 600
    :cond_1c
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 603
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    new-instance v1, Lorg/apache/xml/utils/QName;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 p1, 0x0

    .line 606
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED"

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 615
    :cond_41
    invoke-virtual {p1}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 613
    const-string v0, "WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE"

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 618
    :goto_4f
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method greylist recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .registers 2

    .line 657
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method greylist recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .registers 3

    .line 684
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method greylist recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 502
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_outputProperties:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V

    return-void
.end method

.method greylist recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 2

    .line 716
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method greylist recomposeVariables(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 3

    .line 830
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 832
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    .line 834
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method greylist recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3

    .line 888
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-nez v0, :cond_b

    .line 889
    new-instance v0, Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {v0}, Lorg/apache/xalan/templates/TemplateList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    .line 891
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/TemplateList;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public greylist setExtensionHandlerClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1231
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 1232
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setIncremental(Z)V
    .registers 2

    .line 1395
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_incremental:Z

    return-void
.end method

.method public greylist setOptimizer(Z)V
    .registers 2

    .line 1374
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_optimizer:Z

    return-void
.end method

.method public greylist setSecureProcessing(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return-void
.end method

.method public greylist setSource_location(Z)V
    .registers 2

    .line 1402
    iput-boolean p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_source_location:Z

    return-void
.end method

.method public final greylist setTemplateListComposed(Lorg/apache/xalan/templates/TemplateList;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_templateList:Lorg/apache/xalan/templates/TemplateList;

    return-void
.end method

.method public greylist shouldCheckWhitespace()Z
    .registers 1

    .line 903
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    if-eqz v0, :cond_30

    move v3, p2

    :goto_5
    const/4 p2, -0x1

    if-eq p2, v3, :cond_30

    .line 946
    invoke-virtual {p1, v3}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    .line 947
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lorg/apache/xalan/templates/TemplateList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/templates/TemplateList;->getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    if-eqz p1, :cond_1e

    .line 950
    invoke-virtual {p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result p0

    return p0

    .line 952
    :cond_1e
    invoke-interface {v6, v3}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    if-eq p2, p1, :cond_2d

    const/4 v0, 0x1

    .line 953
    invoke-interface {v6, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_2d

    move v3, p1

    goto :goto_2e

    :cond_2d
    move v3, p2

    :goto_2e
    move-object p1, v2

    goto :goto_5

    :cond_30
    const/4 p0, 0x0

    return p0
.end method
