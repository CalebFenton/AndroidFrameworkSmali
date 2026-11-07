.class Ljava/util/stream/ReduceOps$16;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava/util/stream/ReduceOps$13ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/ObjDoubleConsumer;

.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 757
    iput-object p2, p0, Ljava/util/stream/ReduceOps$16;->val$combiner:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$16;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    iput-object p4, p0, Ljava/util/stream/ReduceOps$16;->val$supplier:Ljava/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$13ReducingSink;
    .registers 5

    .line 760
    new-instance v0, Ljava/util/stream/ReduceOps$13ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$16;->val$supplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/ReduceOps$16;->val$accumulator:Ljava/util/function/ObjDoubleConsumer;

    iget-object v3, p0, Ljava/util/stream/ReduceOps$16;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$13ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 757
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$16;->makeSink()Ljava/util/stream/ReduceOps$13ReducingSink;

    move-result-object v0

    return-object v0
.end method
