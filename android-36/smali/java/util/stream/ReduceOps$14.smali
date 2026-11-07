.class Ljava/util/stream/ReduceOps$14;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/ReduceOps$11ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$identity:D

.field final synthetic blacklist val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;D)V
    .registers 5
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 664
    iput-object p2, p0, Ljava/util/stream/ReduceOps$14;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iput-wide p3, p0, Ljava/util/stream/ReduceOps$14;->val$identity:D

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$11ReducingSink;
    .registers 5

    .line 667
    new-instance v0, Ljava/util/stream/ReduceOps$11ReducingSink;

    iget-wide v1, p0, Ljava/util/stream/ReduceOps$14;->val$identity:D

    iget-object v3, p0, Ljava/util/stream/ReduceOps$14;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$11ReducingSink;-><init>(DLjava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 664
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$14;->makeSink()Ljava/util/stream/ReduceOps$11ReducingSink;

    move-result-object v0

    return-object v0
.end method
