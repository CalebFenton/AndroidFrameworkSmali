.class Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;
.super Ljava/lang/Object;
.source "FuncExtFunction.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/FuncExtFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArgExtOwner"
.end annotation


# instance fields
.field m_exp:Lorg/apache/xpath/Expression;

.field final synthetic this$0:Lorg/apache/xpath/functions/FuncExtFunction;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/FuncExtFunction;Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/functions/FuncExtFunction;
    .param p2, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->this$0:Lorg/apache/xpath/functions/FuncExtFunction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 257
    iput-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    #@7
    .line 255
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->this$0:Lorg/apache/xpath/functions/FuncExtFunction;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 275
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    #@7
    .line 272
    return-void
.end method
