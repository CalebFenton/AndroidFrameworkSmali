.class Ljava/util/stream/ReduceOps$7;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Integer;",
        "Ljava/util/OptionalInt;",
        "Ljava/util/stream/ReduceOps$6ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;)V
    .registers 3
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 362
    iput-object p2, p0, Ljava/util/stream/ReduceOps$7;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$6ReducingSink;
    .registers 3

    .line 365
    new-instance v0, Ljava/util/stream/ReduceOps$6ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$7;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {v0, v1}, Ljava/util/stream/ReduceOps$6ReducingSink;-><init>(Ljava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 362
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$7;->makeSink()Ljava/util/stream/ReduceOps$6ReducingSink;

    move-result-object v0

    return-object v0
.end method
