.class public Lorg/apache/xalan/templates/ElemVariablePsuedo;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemVariablePsuedo.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x99b8743bcdbe1c6L


# instance fields
.field greylist m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p1

    iget v0, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    invoke-virtual {p1, v0, p0}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    return-void
.end method

.method public greylist setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 46
    new-instance p1, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    invoke-direct {p1, p0}, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    return-void
.end method
