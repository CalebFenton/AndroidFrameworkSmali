.class Lorg/apache/xpath/patterns/StepPattern$PredOwner;
.super Ljava/lang/Object;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/StepPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PredOwner"
.end annotation


# instance fields
.field greylist m_index:I

.field final synthetic greylist this$0:Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/patterns/StepPattern;I)V
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

    .line 941
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .line 950
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    iget p0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 959
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 960
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    iget p0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    aput-object p1, v0, p0

    return-void
.end method
