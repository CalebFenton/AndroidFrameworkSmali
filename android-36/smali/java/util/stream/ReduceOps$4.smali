.class Ljava/util/stream/ReduceOps$4;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp<",
        "TT;TR;",
        "Ljava/util/stream/ReduceOps$4ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic blacklist val$reducer:Ljava/util/function/BiConsumer;

.field final synthetic blacklist val$seedFactory:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/StreamShape;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "shape"    # Ljava/util/stream/StreamShape;

    .line 228
    iput-object p2, p0, Ljava/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Ljava/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public blacklist makeSink()Ljava/util/stream/ReduceOps$4ReducingSink;
    .registers 5

    .line 231
    new-instance v0, Ljava/util/stream/ReduceOps$4ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$4;->val$seedFactory:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/ReduceOps$4;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Ljava/util/stream/ReduceOps$4;->val$reducer:Ljava/util/function/BiConsumer;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$4ReducingSink;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public bridge synthetic blacklist makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .registers 2

    .line 228
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$4;->makeSink()Ljava/util/stream/ReduceOps$4ReducingSink;

    move-result-object v0

    return-object v0
.end method
