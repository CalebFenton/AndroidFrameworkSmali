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
.field greylist m_index:I

.field final synthetic greylist this$0:Lorg/apache/xpath/axes/UnionPathIterator;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .line 505
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget p0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 5

    .line 514
    instance-of v0, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v0, :cond_27

    .line 518
    new-instance v0, Lorg/apache/xpath/axes/WalkingIterator;

    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 519
    new-instance v1, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v1, v0}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 520
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 521
    invoke-virtual {v1, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    .line 522
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {v0, v2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 523
    invoke-virtual {v1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 524
    invoke-virtual {p1, v1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    move-object p1, v0

    goto :goto_2c

    .line 528
    :cond_27
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 529
    :goto_2c
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->this$0:Lorg/apache/xpath/axes/UnionPathIterator;

    iget-object v0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    iget p0, p0, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;->m_index:I

    check-cast p1, Lorg/apache/xpath/axes/LocPathIterator;

    aput-object p1, v0, p0

    return-void
.end method
