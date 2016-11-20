.class Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;
.super Ljava/lang/Object;
.source "FilterExprIteratorSimple.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/FilterExprIteratorSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "filterExprOwner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@0
    .prologue
    .line 249
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

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
    .line 256
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@2
    invoke-static {v0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->-get0(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;

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
    .line 264
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 265
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@7
    invoke-static {v0, p1}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->-set0(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;

    #@a
    .line 262
    return-void
.end method
