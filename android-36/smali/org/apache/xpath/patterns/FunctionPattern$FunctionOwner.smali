.class Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;
.super Ljava/lang/Object;
.source "FunctionPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/FunctionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctionOwner"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xpath/patterns/FunctionPattern;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/patterns/FunctionPattern;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 225
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 235
    iget-object p0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    return-void
.end method
