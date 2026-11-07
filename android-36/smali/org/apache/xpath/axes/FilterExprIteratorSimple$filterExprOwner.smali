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
.field final synthetic greylist this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 256
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-static {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->-$$Nest$fgetm_expr(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 265
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-static {p0, p1}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->-$$Nest$fputm_expr(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)V

    return-void
.end method
