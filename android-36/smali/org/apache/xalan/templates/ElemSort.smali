.class public Lorg/apache/xalan/templates/ElemSort;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemSort.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x454568220538dba2L


# instance fields
.field private greylist m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_dataType_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_order_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 102
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 135
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    .line 216
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    .line 249
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 319
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemSort;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 318
    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 335
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 336
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_16

    .line 339
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 340
    :cond_16
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_21

    .line 341
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 342
    :cond_21
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_2c

    .line 343
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 344
    :cond_2c
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_37

    .line 345
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 346
    :cond_37
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_42

    .line 347
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_42
    return-void
.end method

.method public greylist getCaseOrder()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 282
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getDataType()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 208
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getLang()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 127
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 303
    const-string p0, "sort"

    return-object p0
.end method

.method public greylist getOrder()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 241
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getSelect()Lorg/apache/xpath/XPath;
    .registers 1

    .line 95
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x40

    return p0
.end method

.method public greylist setCaseOrder(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setDataType(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setLang(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setOrder(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 4

    .line 73
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f

    .line 74
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void

    .line 76
    :cond_f
    const-string p1, "ER_NO_CURLYBRACE"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
