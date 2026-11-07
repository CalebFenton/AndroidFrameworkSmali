.class public Lorg/apache/xpath/axes/FilterExprWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "FilterExprWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x4bbbce8b5bbeb3b7L


# instance fields
.field private greylist m_canDetachNodeset:Z

.field private greylist m_expr:Lorg/apache/xpath/Expression;

.field private transient greylist m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private greylist m_mustHardReset:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_expr(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputm_expr(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/axes/WalkingIterator;)V
    .registers 3

    const/16 v0, 0x14

    .line 50
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    return-void
.end method


# virtual methods
.method public greylist acceptNode(I)S
    .registers 3

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 171
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z

    move-result p0
    :try_end_14
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_14} :catch_1a

    if-nez p0, :cond_18

    const/4 p0, 0x3

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 326
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprWalker;)V

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 328
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 147
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    .line 149
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz p0, :cond_12

    .line 150
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XNodeSet;

    iput-object p0, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    :cond_12
    return-object v0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 337
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 340
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/FilterExprWalker;

    .line 341
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    iget-object p1, p1, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 2

    .line 112
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    .line 113
    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->detach()V

    :cond_c
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 239
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 240
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 2

    .line 267
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_f

    .line 269
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result p0

    return p0

    :cond_f
    const/high16 p0, 0x4000000

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 294
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getAxis()I

    move-result p0

    return p0
.end method

.method public greylist getInnerExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 248
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 214
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getLength()I

    move-result p0

    return p0
.end method

.method public greylist getNextNode()I
    .registers 1

    .line 195
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz p0, :cond_9

    .line 197
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public greylist init(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    packed-switch p3, :pswitch_data_28

    add-int/lit8 p2, p2, 0x2

    .line 86
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .line 87
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void

    :pswitch_12
    const/4 p3, 0x1

    .line 73
    iput-boolean p3, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    .line 76
    :pswitch_15
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .line 77
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 79
    iget-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    instance-of p1, p1, Lorg/apache/xpath/operations/Variable;

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    :cond_27
    return-void

    :pswitch_data_28
    .packed-switch 0x16
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 283
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->isDocOrdered()Z

    move-result p0

    return p0
.end method

.method public greylist setInnerExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 256
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 257
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setRoot(I)V
    .registers 9

    .line 129
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 131
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 132
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 133
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v4

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    iget v5, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v6, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    move v1, p1

    .line 131
    invoke-static/range {v1 .. v6}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method
