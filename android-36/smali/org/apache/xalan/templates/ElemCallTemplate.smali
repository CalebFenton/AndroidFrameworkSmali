.class public Lorg/apache/xalan/templates/ElemCallTemplate;
.super Lorg/apache/xalan/templates/ElemForEach;
.source "ElemCallTemplate.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected greylist m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

.field private greylist m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field public greylist m_templateName:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemForEach;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    .line 84
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 269
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    return-void
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4

    .line 333
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_d

    .line 337
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemWithParam;

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemCallTemplate;->setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V

    .line 342
    :cond_d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 3

    .line 362
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemForEach;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 115
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_15

    .line 122
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v3

    .line 123
    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemWithParam;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 126
    :cond_15
    iget-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    if-eqz p1, :cond_79

    iget-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez p1, :cond_79

    .line 128
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-eqz p1, :cond_67

    .line 140
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result p1

    move v0, v1

    :goto_30
    if-ge v0, p1, :cond_79

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v2

    const/4 v3, -0x1

    .line 144
    iput v3, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    .line 148
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    move v4, v1

    :goto_40
    if-eqz v3, :cond_64

    .line 151
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_64

    .line 153
    move-object v5, v3

    check-cast v5, Lorg/apache/xalan/templates/ElemParam;

    .line 154
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemWithParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 156
    iput v4, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    .line 149
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    goto :goto_40

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 131
    :cond_67
    iget-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 132
    const-string v0, "ER_ELEMTEMPLATEELEM_ERR"

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v0

    :cond_79
    return-void
.end method

.method public greylist endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 176
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 180
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-eqz v0, :cond_71

    .line 198
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v2

    .line 202
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v3, v3, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v1, v3}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v3

    .line 206
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v4, v4, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v4, :cond_49

    const/4 v5, 0x0

    .line 208
    invoke-virtual {v1, v5, v4}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    .line 210
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-eqz v4, :cond_49

    .line 212
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    .line 213
    invoke-virtual {v1, v2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 214
    iget-object v6, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v6, v6

    :goto_30
    if-ge v5, v6, :cond_46

    .line 218
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v7, v7, v5

    .line 219
    iget v8, v7, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    if-ltz v8, :cond_43

    .line 221
    invoke-virtual {v7, p1, v4}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v8

    .line 226
    iget v7, v7, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    invoke-virtual {v1, v7, v8, v3}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 229
    :cond_46
    invoke-virtual {v1, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 233
    :cond_49
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    .line 237
    :try_start_4d
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0, v4}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 240
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p1, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 241
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_66

    .line 245
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v1, v2}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    return-void

    :catchall_66
    move-exception p0

    .line 245
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v1, v2}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 257
    throw p0

    .line 261
    :cond_71
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_TEMPLATE_NOT_FOUND"

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 77
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 104
    const-string p0, "call-template"

    return-object p0
.end method

.method public greylist getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;
    .registers 2

    .line 289
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getParamElemCount()I
    .registers 1

    .line 277
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length p0, p0

    return p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x11

    return p0
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V
    .registers 6

    .line 299
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 301
    new-array v0, v0, [Lorg/apache/xalan/templates/ElemWithParam;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 302
    aput-object p1, v0, v1

    return-void

    .line 308
    :cond_d
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 309
    new-array v3, v3, [Lorg/apache/xalan/templates/ElemWithParam;

    .line 310
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iput-object v3, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 312
    aput-object p1, v3, v2

    return-void
.end method
