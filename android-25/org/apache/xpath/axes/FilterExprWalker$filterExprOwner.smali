.class Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;
.super Ljava/lang/Object;
.source "FilterExprWalker.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/FilterExprWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "filterExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/axes/FilterExprWalker;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/FilterExprWalker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/axes/FilterExprWalker;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #@2
    invoke-static {v0}, Lorg/apache/xpath/axes/FilterExprWalker;->-get0(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 313
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprWalker;

    #@7
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/FilterExprWalker;->-set0(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;

    #@a
    .line 310
    return-void
.end method
