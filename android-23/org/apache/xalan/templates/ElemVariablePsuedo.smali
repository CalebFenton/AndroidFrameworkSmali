.class public Lorg/apache/xalan/templates/ElemVariablePsuedo;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemVariablePsuedo.java"


# static fields
.field static final serialVersionUID:J = 0x99b8743bcdbe1c6L


# instance fields
.field m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@7
    move-result-object v0

    #@8
    iget v1, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_index:I

    #@a
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    #@c
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    #@f
    .line 57
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 45
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    #@3
    .line 46
    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    #@5
    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    #@8
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemVariablePsuedo;->m_lazyVar:Lorg/apache/xalan/templates/XUnresolvedVariableSimple;

    #@a
    .line 43
    return-void
.end method
