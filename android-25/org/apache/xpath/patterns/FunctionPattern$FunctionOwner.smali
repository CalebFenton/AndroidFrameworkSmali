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
.field final synthetic this$0:Lorg/apache/xpath/patterns/FunctionPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/FunctionPattern;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/patterns/FunctionPattern;

    #@0
    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

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
    .line 225
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    #@2
    iget-object v0, v0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@4
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 235
    iget-object v0, p0, Lorg/apache/xpath/patterns/FunctionPattern$FunctionOwner;->this$0:Lorg/apache/xpath/patterns/FunctionPattern;

    #@7
    iput-object p1, v0, Lorg/apache/xpath/patterns/FunctionPattern;->m_functionExpr:Lorg/apache/xpath/Expression;

    #@9
    .line 232
    return-void
.end method
