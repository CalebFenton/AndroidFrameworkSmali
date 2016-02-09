.class Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
.super Ljava/lang/Object;
.source "UnionPathIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/UnionPathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "iterOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/axes/UnionPathIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/axes/UnionPathIterator;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 495
    iput-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 497
    iput p2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    #@7
    .line 495
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@2
    iget-object v0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@4
    iget v1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 4
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 514
    instance-of v2, p1, Lorg/apache/xpath/axes/LocPathIterator;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 518
    new-instance v1, Lorg/apache/xpath/axes/WalkingIterator;

    #@6
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@8
    invoke-virtual {v2}, Lorg/apache/xpath/axes/UnionPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@f
    .line 519
    .local v1, "wi":Lorg/apache/xpath/axes/WalkingIterator;
    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    #@11
    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    #@14
    .line 520
    .local v0, "few":Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v1, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@17
    .line 521
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    #@1a
    .line 522
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@1c
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@1f
    .line 523
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@22
    .line 524
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@25
    .line 525
    move-object p1, v1

    #@26
    .line 529
    .end local v0    # "few":Lorg/apache/xpath/axes/FilterExprWalker;
    .end local v1    # "wi":Lorg/apache/xpath/axes/WalkingIterator;
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@28
    iget-object v2, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@2a
    iget v3, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    #@2c
    check-cast p1, Lorg/apache/xpath/axes/LocPathIterator;

    #@2e
    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    aput-object p1, v2, v3

    #@30
    .line 511
    return-void

    #@31
    .line 528
    .restart local p1    # "exp":Lorg/apache/xpath/Expression;
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    #@33
    invoke-virtual {p1, v2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@36
    goto :goto_0
.end method
