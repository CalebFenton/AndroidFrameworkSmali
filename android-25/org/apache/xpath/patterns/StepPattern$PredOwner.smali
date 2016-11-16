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
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/patterns/StepPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/StepPattern;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 940
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 942
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    #@7
    .line 940
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@4
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

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
    .line 959
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 960
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->this$0:Lorg/apache/xpath/patterns/StepPattern;

    #@7
    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@9
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern$PredOwner;->m_index:I

    #@b
    aput-object p1, v0, v1

    #@d
    .line 957
    return-void
.end method
