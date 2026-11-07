.class Ljava/util/stream/ReduceOps$6;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/ReduceOps$5ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$identity:I

.field final synthetic blacklist val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;I)V
    .registers 4
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 312
    iput-object p2, p0, Ljava/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    iput p3, p0, Ljava/util/stream/ReduceOps$6;->val$identity:I

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$5ReducingSink;
    .registers 4

    .line 315
    new-instance v0, Ljava/util/stream/ReduceOps$5ReducingSink;

    iget v1, p0, Ljava/util/stream/ReduceOps$6;->val$identity:I

    iget-object v2, p0, Ljava/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/ReduceOps$5ReducingSink;-><init>(ILjava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 312
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$6;->makeSink()Ljava/util/stream/ReduceOps$5ReducingSink;

    move-result-object v0

    return-object v0
.end method
