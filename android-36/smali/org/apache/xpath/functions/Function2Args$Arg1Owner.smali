.class Lorg/apache/xpath/functions/Function2Args$Arg1Owner;
.super Ljava/lang/Object;
.source "Function2Args.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/Function2Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Arg1Owner"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xpath/functions/Function2Args;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/functions/Function2Args;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;->this$0:Lorg/apache/xpath/functions/Function2Args;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 137
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;->this$0:Lorg/apache/xpath/functions/Function2Args;

    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;->this$0:Lorg/apache/xpath/functions/Function2Args;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 147
    iget-object p0, p0, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;->this$0:Lorg/apache/xpath/functions/Function2Args;

    iput-object p1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    return-void
.end method
