.class Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;
.super Ljava/lang/Object;
.source "UnionPattern.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/patterns/UnionPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnionPathPartOwner"
.end annotation


# instance fields
.field greylist m_index:I

.field final synthetic greylist this$0:Lorg/apache/xpath/patterns/UnionPattern;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/patterns/UnionPattern;I)V
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

    .line 149
    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p2, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->-$$Nest$fgetm_patterns(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 168
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->-$$Nest$fgetm_patterns(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    aput-object p1, v0, p0

    return-void
.end method
