.class Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
.super Ljava/lang/Object;
.source "FunctionMultiArgs.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/FunctionMultiArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArgMultiOwner"
.end annotation


# instance fields
.field m_argIndex:I

.field final synthetic this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/functions/FunctionMultiArgs;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 166
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 168
    iput p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    #@7
    .line 166
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    #@2
    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@4
    iget v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 2
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 186
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    #@7
    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    #@9
    iget v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    #@b
    aput-object p1, v0, v1

    #@d
    .line 183
    return-void
.end method
