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
.field greylist m_exp:Lorg/apache/xpath/Expression;

.field final synthetic greylist this$0:Lorg/apache/xpath/functions/FuncExtFunction;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/functions/FuncExtFunction;Lorg/apache/xpath/Expression;)V
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

    .line 256
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->this$0:Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 265
    iget-object p0, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 274
    iget-object v0, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->this$0:Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 275
    iput-object p1, p0, Lorg/apache/xpath/functions/FuncExtFunction$ArgExtOwner;->m_exp:Lorg/apache/xpath/Expression;

    return-void
.end method
