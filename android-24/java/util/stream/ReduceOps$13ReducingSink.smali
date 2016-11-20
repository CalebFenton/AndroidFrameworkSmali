.class Ljava/util/stream/ReduceOps$13ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box",
        "<TR;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava/util/stream/ReduceOps$13ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/ObjDoubleConsumer;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0

    #@0
    .prologue
    .line 619
    .local p1, "val$supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "val$accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "val$combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    #@2
    iput-object p2, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    #@4
    iput-object p3, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    #@6
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    #@7
    .line 627
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    #@2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@8
    .line 622
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$13ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$13ReducingSink;

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Ljava/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@4
    iget-object v2, p1, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@6
    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@c
    .line 632
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 632
    check-cast p1, Ljava/util/stream/ReduceOps$13ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$13ReducingSink;->combine(Ljava/util/stream/ReduceOps$13ReducingSink;)V

    #@5
    return-void
.end method
