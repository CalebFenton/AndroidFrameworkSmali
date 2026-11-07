.class Lorg/apache/xpath/functions/Function3Args$Arg2Owner;
.super Ljava/lang/Object;
.source "Function3Args.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/functions/Function3Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Arg2Owner"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xpath/functions/Function3Args;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/functions/Function3Args;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 135
    iget-object p0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    iget-object p0, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 145
    iget-object p0, p0, Lorg/apache/xpath/functions/Function3Args$Arg2Owner;->this$0:Lorg/apache/xpath/functions/Function3Args;

    iput-object p1, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    return-void
.end method
