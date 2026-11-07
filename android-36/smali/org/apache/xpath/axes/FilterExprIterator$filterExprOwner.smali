.class Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;
.super Ljava/lang/Object;
.source "FilterExprIterator.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/FilterExprIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "filterExprOwner"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xpath/axes/FilterExprIterator;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/axes/FilterExprIterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 171
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-static {p0}, Lorg/apache/xpath/axes/FilterExprIterator;->-$$Nest$fgetm_expr(Lorg/apache/xpath/axes/FilterExprIterator;)Lorg/apache/xpath/Expression;

    move-result-object p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 180
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIterator$filterExprOwner;->this$0:Lorg/apache/xpath/axes/FilterExprIterator;

    invoke-static {p0, p1}, Lorg/apache/xpath/axes/FilterExprIterator;->-$$Nest$fputm_expr(Lorg/apache/xpath/axes/FilterExprIterator;Lorg/apache/xpath/Expression;)V

    return-void
.end method
