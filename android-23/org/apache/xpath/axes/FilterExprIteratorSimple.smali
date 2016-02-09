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
.field static final serialVersionUID:J = -0x60da4ec68033d15bL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 47
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    #@7
    .line 48
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@4
    .line 47
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    #@7
    .line 48
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    #@a
    .line 66
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@c
    .line 63
    return-void
.end method

.method public static executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 7
    .param p0, "context"    # I
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "prefixResolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "isTopLevel"    # Z
    .param p4, "stackFrame"    # I
    .param p5, "expr"    # Lorg/apache/xpath/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/WrappedRuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@3
    move-result-object v2

    #@4
    .line 95
    .local v2, "savedResolver":Lorg/apache/xml/utils/PrefixResolver;
    const/4 v1, 0x0

    #@5
    .line 99
    .local v1, "result":Lorg/apache/xpath/objects/XNodeSet;
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@8
    .line 100
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@b
    .line 107
    if-eqz p3, :cond_0

    #@d
    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    #@10
    move-result-object v5

    #@11
    .line 113
    .local v5, "vars":Lorg/apache/xpath/VariableStack;
    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    #@14
    move-result v3

    #@15
    .line 114
    .local v3, "savedStart":I
    invoke-virtual {v5, p4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    #@18
    .line 116
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@1b
    move-result-object v6

    #@1c
    move-object v0, v6

    #@1d
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@1f
    move-object v1, v0

    #@20
    .line 117
    .local v1, "result":Lorg/apache/xpath/objects/XNodeSet;
    const/4 v6, 0x1

    #@21
    invoke-virtual {v1, v6}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    #@24
    .line 120
    invoke-virtual {v5, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 134
    .end local v3    # "savedStart":I
    .end local v5    # "vars":Lorg/apache/xpath/VariableStack;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2a
    .line 135
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@2d
    .line 137
    return-object v1

    #@2e
    .line 123
    .local v1, "result":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    :try_start_1
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@31
    move-result-object v6

    #@32
    move-object v0, v6

    #@33
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@35
    move-object v1, v0
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .local v1, "result":Lorg/apache/xpath/objects/XNodeSet;
    goto :goto_0

    #@37
    .line 127
    .end local v1    # "result":Lorg/apache/xpath/objects/XNodeSet;
    :catch_0
    move-exception v4

    #@38
    .line 130
    .local v4, "se":Ljavax/xml/transform/TransformerException;
    :try_start_2
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@3a
    invoke-direct {v6, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@3d
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 133
    .end local v4    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v6

    #@3f
    .line 134
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@42
    .line 135
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@45
    .line 133
    throw v6
.end method


# virtual methods
.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;

    #@4
    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V

    #@7
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@a
    .line 281
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 277
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 289
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 290
    return v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 292
    check-cast v0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@b
    .line 293
    .local v0, "fet":Lorg/apache/xpath/axes/FilterExprIteratorSimple;
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@d
    iget-object v2, v0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@f
    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 294
    return v3

    #@16
    .line 296
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_allowDetach:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 185
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    #@7
    .line 186
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@9
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    #@c
    .line 187
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@f
    .line 181
    :cond_0
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 204
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@8
    .line 201
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@6
    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 232
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@c
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    #@e
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 234
    :cond_0
    const/high16 v0, 0x4000000

    #@15
    return v0
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 308
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 310
    :cond_0
    const/16 v0, 0x14

    #@d
    return v0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextNode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 150
    iget-boolean v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_foundLast:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 151
    return v2

    #@6
    .line 155
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 157
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@c
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@f
    move-result v0

    #@10
    .local v0, "next":I
    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_lastFetched:I

    #@12
    .line 163
    :goto_0
    if-eq v2, v0, :cond_2

    #@14
    .line 165
    iget v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_pos:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_pos:I

    #@1a
    .line 166
    return v0

    #@1b
    .line 160
    .end local v0    # "next":I
    :cond_1
    const/4 v0, -0x1

    #@1c
    .restart local v0    # "next":I
    iput v2, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_lastFetched:I

    #@1e
    goto :goto_0

    #@1f
    .line 170
    :cond_2
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_foundLast:Z

    #@22
    .line 172
    return v2
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 220
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 221
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    .line 218
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 6
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 79
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@5
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@8
    move-result-object v2

    #@9
    .line 80
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getIsTopLevel()Z

    #@c
    move-result v3

    #@d
    iget v4, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_stackFrame:I

    #@f
    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    #@11
    move v0, p1

    #@12
    .line 79
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@18
    .line 76
    return-void
.end method
