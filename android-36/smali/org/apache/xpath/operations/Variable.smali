.class public Lorg/apache/xpath/operations/Variable;
.super Lorg/apache/xpath/Expression;
.source "Variable.java"

# interfaces
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final greylist PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field static final whitelist serialVersionUID:J = -0x3c28ed22ed41f899L


# instance fields
.field private greylist m_fixUpWasCalled:Z

.field protected greylist m_index:I

.field protected greylist m_isGlobal:Z

.field protected greylist m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 348
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z

    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 358
    :cond_8
    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    check-cast p1, Lorg/apache/xpath/operations/Variable;

    iget-object v2, p1, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 363
    :cond_15
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p1

    if-eq p0, p1, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    .line 211
    iget-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    if-eqz v0, :cond_21

    .line 213
    iget-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    if-eqz v0, :cond_16

    .line 214
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object p2

    goto :goto_2b

    .line 216
    :cond_16
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object p2

    goto :goto_2b

    .line 219
    :cond_21
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {p2, p1, v0}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    move-result-object p2

    :goto_2b
    if-nez p2, :cond_46

    .line 225
    iget-object p2, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 226
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 225
    const-string v0, "WG_ILLEGAL_VARIABLE_REFERENCE"

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance p0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    return-object p0

    :cond_46
    return-object p2
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 7

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    .line 120
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 122
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_b
    if-ltz v1, :cond_29

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    .line 126
    iget-object v3, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-ge v1, p2, :cond_22

    .line 131
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    .line 132
    iput v1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return-void

    :cond_22
    sub-int/2addr v1, p2

    .line 136
    iput v1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return-void

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 143
    :cond_29
    iget-object p1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 144
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 143
    const-string p2, "ER_COULD_NOT_FIND_VAR"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 148
    new-instance p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p0, p2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public greylist getAnalysisBits()I
    .registers 2

    .line 326
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 329
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 332
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 333
    instance-of v0, p0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_1d

    .line 335
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_1d
    const/high16 p0, 0x4000000

    return p0
.end method

.method public greylist getElemVariable()Lorg/apache/xalan/templates/ElemVariable;
    .registers 7

    .line 270
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 272
    instance-of v2, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v2, :cond_48

    .line 275
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 278
    instance-of v2, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v2, :cond_3b

    :goto_11
    if-eqz v0, :cond_3b

    .line 280
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v2, :cond_3b

    move-object v2, v0

    .line 284
    :cond_1c
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 286
    instance-of v3, v2, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v3, :cond_1c

    .line 288
    move-object v3, v2

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    .line 290
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return-object v3

    .line 297
    :cond_36
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_11

    :cond_3b
    if-eqz v0, :cond_48

    .line 301
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    return-object p0

    :cond_48
    return-object v1
.end method

.method public greylist getGlobal()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return p0
.end method

.method public greylist getIndex()I
    .registers 1

    .line 78
    iget p0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return p0
.end method

.method public greylist getQName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 170
    iget-object p0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public greylist isPsuedoVarRef()Z
    .registers 3

    .line 377
    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 378
    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 380
    iget-object p0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isStableNumber()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist setIndex(I)V
    .registers 2

    .line 68
    iput p1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return-void
.end method

.method public greylist setIsGlobal(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return-void
.end method

.method public greylist setQName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method
