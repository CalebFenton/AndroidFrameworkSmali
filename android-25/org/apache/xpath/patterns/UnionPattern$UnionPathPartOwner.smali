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
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/patterns/UnionPattern;


# direct methods
.method constructor <init>(Lorg/apache/xpath/patterns/UnionPattern;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/patterns/UnionPattern;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 150
    iput p2, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    #@7
    .line 148
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #@2
    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->-get0(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 2
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 168
    iget-object v0, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->this$0:Lorg/apache/xpath/patterns/UnionPattern;

    #@7
    invoke-static {v0}, Lorg/apache/xpath/patterns/UnionPattern;->-get0(Lorg/apache/xpath/patterns/UnionPattern;)[Lorg/apache/xpath/patterns/StepPattern;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lorg/apache/xpath/patterns/UnionPattern$UnionPathPartOwner;->m_index:I

    #@d
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    #@f
    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    aput-object p1, v0, v1

    #@11
    .line 165
    return-void
.end method
