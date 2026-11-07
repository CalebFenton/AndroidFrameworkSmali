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
.field greylist m_index:I

.field final synthetic greylist this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V
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

    .line 624
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput p2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    return-void
.end method


# virtual methods
.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .line 633
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->-$$Nest$fgetm_predicates(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 3

    .line 642
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 643
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->this$0:Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-static {v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->-$$Nest$fgetm_predicates(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;->m_index:I

    aput-object p1, v0, p0

    return-void
.end method
