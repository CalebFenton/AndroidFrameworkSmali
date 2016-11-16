.class Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;
.super Ljava/lang/Object;
.source "PredicatedNodeTest.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/PredicatedNodeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PredOwner"
.end annotation


# instance fields
.field m_index:I

.field final synthetic this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/axes/PredicatedNodeTest;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 623
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 625
    iput p2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    #@7
    .line 623
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 2

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@2
    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->-get0(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

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
    .line 642
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@2
    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 643
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@7
    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->-get0(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    #@d
    aput-object p1, v0, v1

    #@f
    .line 640
    return-void
.end method
