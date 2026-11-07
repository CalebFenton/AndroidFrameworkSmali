.class Ljava/util/stream/ReduceOps$10;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$8ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$identity:J

.field final synthetic blacklist val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;J)V
    .registers 5
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 488
    iput-object p2, p0, Ljava/util/stream/ReduceOps$10;->val$operator:Ljava/util/function/LongBinaryOperator;

    iput-wide p3, p0, Ljava/util/stream/ReduceOps$10;->val$identity:J

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;
    .registers 5

    .line 491
    new-instance v0, Ljava/util/stream/ReduceOps$8ReducingSink;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$10;->val$identity:J

    iget-object v3, p0, Ljava/util/stream/ReduceOps$10;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$8ReducingSink;-><init>(JLjava/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 488
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$10;->makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;

    move-result-object v0

    return-object v0
.end method
