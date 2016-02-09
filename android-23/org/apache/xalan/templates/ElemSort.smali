.class public Lorg/apache/xalan/templates/ElemSort;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemSort.java"


# static fields
.field static final serialVersionUID:J = -0x454568220538dba2L


# instance fields
.field private m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

.field private m_dataType_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_order_avt:Lorg/apache/xalan/templates/AVT;

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@6
    .line 102
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@8
    .line 135
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    #@a
    .line 216
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    #@c
    .line 249
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    #@e
    .line 46
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    const-string/jumbo v0, "ER_CANNOT_ADD"

    #@3
    .line 319
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 320
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemSort;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 318
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    .line 323
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 336
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v0

    #@7
    .line 337
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v1

    #@b
    .line 338
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 339
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    #@11
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@18
    .line 340
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 341
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    #@1e
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@25
    .line 342
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 343
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@2b
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@32
    .line 344
    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 345
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    #@38
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@3f
    .line 346
    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@41
    if-eqz v2, :cond_4

    #@43
    .line 347
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@45
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@48
    move-result v3

    #@49
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@4c
    .line 333
    :cond_4
    return-void
.end method

.method public getCaseOrder()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getDataType()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    const-string/jumbo v0, "sort"

    #@3
    return-object v0
.end method

.method public getOrder()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 293
    const/16 v0, 0x40

    #@2
    return v0
.end method

.method public setCaseOrder(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 266
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 264
    return-void
.end method

.method public setDataType(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 169
    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 112
    return-void
.end method

.method public setOrder(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 226
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 2
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "{"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 74
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    #@f
    .line 70
    :goto_0
    return-void

    #@10
    .line 76
    :cond_0
    const-string/jumbo v0, "ER_NO_CURLYBRACE"

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    goto :goto_0
.end method
