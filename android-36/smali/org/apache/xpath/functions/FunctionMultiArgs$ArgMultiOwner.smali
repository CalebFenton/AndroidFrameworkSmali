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
.field greylist m_argIndex:I

.field final synthetic greylist this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V
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

    .line 167
    iput-object p1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .line 176
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget p0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 185
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 186
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->this$0:Lorg/apache/xpath/functions/FunctionMultiArgs;

    iget-object v0, v0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget p0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;->m_argIndex:I

    aput-object p1, v0, p0

    return-void
.end method
