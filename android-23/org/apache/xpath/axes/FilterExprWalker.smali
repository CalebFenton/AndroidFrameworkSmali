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
.field static final serialVersionUID:J = 0x4bbbce8b5bbeb3b7L


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lorg/apache/xpath/axes/WalkingIterator;)V
    .locals 1
    .param p1, "locPathIterator"    # Lorg/apache/xpath/axes/WalkingIterator;

    #@0
    .prologue
    .line 50
    const/16 v0, 0x14

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@5
    .line 224
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    #@8
    .line 225
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    #@b
    .line 48
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprWalker;->getPredicateCount()I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 169
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->countProximityPosition(I)V

    #@a
    .line 171
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@c
    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 172
    const/4 v1, 0x3

    #@17
    return v1

    #@18
    .line 175
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 178
    :catch_0
    move-exception v0

    #@1b
    .line 179
    .local v0, "se":Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    new-instance v1, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;

    #@4
    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprWalker;)V

    #@7
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@a
    .line 328
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@d
    .line 324
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    #@6
    .line 149
    .local v0, "clone":Lorg/apache/xpath/axes/FilterExprWalker;
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 150
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@c
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/apache/xpath/objects/XNodeSet;

    #@12
    iput-object v1, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@14
    .line 152
    :cond_0
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 337
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 338
    return v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 340
    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    #@b
    .line 341
    .local v0, "walker":Lorg/apache/xpath/axes/FilterExprWalker;
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@d
    iget-object v2, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@f
    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 342
    return v3

    #@16
    .line 344
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    #@3
    .line 113
    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 115
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@9
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    #@c
    .line 117
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@f
    .line 110
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 240
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@8
    .line 237
    return-void
.end method

.method public getAnalysisBits()I
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@6
    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 269
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@c
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    #@e
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 271
    :cond_0
    const/high16 v0, 0x4000000

    #@15
    return v0
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNextNode()I
    .locals 2

    #@0
    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 197
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@6
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@9
    move-result v0

    #@a
    .line 198
    .local v0, "next":I
    return v0

    #@b
    .line 201
    .end local v0    # "next":I
    :cond_0
    const/4 v1, -0x1

    #@c
    return v1
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3
    .line 69
    packed-switch p3, :pswitch_data_0

    #@6
    .line 86
    add-int/lit8 v0, p2, 0x2

    #@8
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@e
    .line 87
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@10
    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@13
    .line 63
    :cond_0
    :goto_0
    return-void

    #@14
    .line 73
    :pswitch_0
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    #@17
    .line 76
    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@1d
    .line 77
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@1f
    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@22
    .line 79
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@24
    instance-of v0, v0, Lorg/apache/xpath/operations/Variable;

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 82
    const/4 v0, 0x0

    #@29
    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    #@2b
    goto :goto_0

    #@2c
    .line 69
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 256
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 257
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@5
    .line 254
    return-void
.end method

.method public setRoot(I)V
    .locals 6
    .param p1, "root"    # I

    #@0
    .prologue
    .line 129
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    #@3
    .line 132
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@5
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@8
    move-result-object v1

    #@9
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@b
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@e
    move-result-object v2

    #@f
    .line 133
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@11
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    #@14
    move-result v3

    #@15
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@17
    iget v4, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    #@19
    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    #@1b
    move v0, p1

    #@1c
    .line 131
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    #@22
    .line 126
    return-void
.end method
