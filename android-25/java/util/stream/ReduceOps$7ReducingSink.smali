.class Ljava/util/stream/ReduceOps$7ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Integer;",
        "TR;",
        "Ljava/util/stream/ReduceOps$7ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/ObjIntConsumer;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0

    #@0
    .prologue
    .line 347
    .local p1, "val$supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "val$accumulator":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<TR;>;"
    .local p3, "val$combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    iput-object p1, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    #@2
    iput-object p2, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    #@4
    iput-object p3, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    #@6
    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    #@2
    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@4
    invoke-interface {v0, v1, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    #@7
    .line 355
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    #@2
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    #@8
    .line 350
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$7ReducingSink;)V
    .locals 3
    .param p1, "other"    # Ljava/util/stream/ReduceOps$7ReducingSink;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Ljava/util/stream/ReduceOps$7ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

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
    .line 360
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    #@0
    .prologue
    .line 360
    check-cast p1, Ljava/util/stream/ReduceOps$7ReducingSink;

    #@2
    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$7ReducingSink;->combine(Ljava/util/stream/ReduceOps$7ReducingSink;)V

    #@5
    return-void
.end method
