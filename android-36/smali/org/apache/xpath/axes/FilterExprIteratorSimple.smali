.class public Lorg/apache/xpath/axes/FilterExprIteratorSimple;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "FilterExprIteratorSimple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0x60da4ec68033d15bL


# instance fields
.field private greylist m_canDetachNodeset:Z

.field private greylist m_expr:Lorg/apache/xpath/Expression;

.field private transient greylist m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private greylist m_mustHardReset:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_expr(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputm_expr(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/Expression;)V
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    .line 66
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public static greylist executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/WrappedRuntimeException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0

    .line 99
    :try_start_4
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 100
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    if-eqz p3, :cond_29

    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result p2

    .line 114
    invoke-virtual {p0, p4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 116
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p3

    check-cast p3, Lorg/apache/xpath/objects/XNodeSet;

    const/4 p4, 0x1

    .line 117
    invoke-virtual {p3, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_30

    :catchall_25
    move-exception p0

    goto :goto_3d

    :catch_27
    move-exception p0

    goto :goto_37

    .line 123
    :cond_29
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lorg/apache/xpath/objects/XNodeSet;
    :try_end_30
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_30} :catch_27
    .catchall {:try_start_4 .. :try_end_30} :catchall_25

    .line 134
    :goto_30
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 135
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    return-object p3

    .line 130
    :goto_37
    :try_start_37
    new-instance p2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p2, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_25

    .line 134
    :goto_3d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 135
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 136
    throw p0
.end method


# virtual methods
.method public greylist callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4

    .line 279
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 281
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 289
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 292
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    .line 293
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    iget-object p1, p1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

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

    .line 183
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_f

    .line 185
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 186
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->detach()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    :cond_f
    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 203
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 204
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 2

    .line 230
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_f

    .line 232
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

    .line 307
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz p0, :cond_9

    .line 308
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getAxis()I

    move-result p0

    return p0

    :cond_9
    const/16 p0, 0x14

    return p0
.end method

.method public greylist getInnerExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 212
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 246
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->isDocOrdered()Z

    move-result p0

    return p0
.end method

.method public greylist nextNode()I
    .registers 4

    .line 150
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 155
    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_11

    .line 157
    invoke-virtual {v0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    goto :goto_14

    .line 160
    :cond_11
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    move v0, v1

    :goto_14
    const/4 v2, 0x1

    if-eq v1, v0, :cond_1d

    .line 165
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return v0

    .line 170
    :cond_1d
    iput-boolean v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    return v1
.end method

.method public greylist setInnerExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 220
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 221
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 9

    .line 78
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    .line 79
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    return-void
.end method
