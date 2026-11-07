.class Ljava/util/stream/ReduceOps$8;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Integer;",
        "TR;",
        "Ljava/util/stream/ReduceOps$7ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/ObjIntConsumer;

.field final synthetic blacklist val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic blacklist val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/ObjIntConsumer;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 405
    iput-object p2, p0, Ljava/util/stream/ReduceOps$8;->val$combiner:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$8;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    iput-object p4, p0, Ljava/util/stream/ReduceOps$8;->val$supplier:Ljava/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$7ReducingSink;
    .registers 5

    .line 408
    new-instance v0, Ljava/util/stream/ReduceOps$7ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$8;->val$supplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/ReduceOps$8;->val$accumulator:Ljava/util/function/ObjIntConsumer;

    iget-object v3, p0, Ljava/util/stream/ReduceOps$8;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$7ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 405
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$8;->makeSink()Ljava/util/stream/ReduceOps$7ReducingSink;

    move-result-object v0

    return-object v0
.end method
