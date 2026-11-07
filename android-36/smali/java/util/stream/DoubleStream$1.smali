.class Ljava/util/stream/DoubleStream$1;
.super Ljava/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoubleStream;->iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist prev:D

.field blacklist started:Z

.field final synthetic blacklist val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic blacklist val$seed:D


# direct methods
.method constructor blacklist <init>(JILjava/util/function/DoubleUnaryOperator;D)V
    .registers 7
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1005
    iput-object p4, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1005
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/DoubleStream$1;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 6
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1011
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-boolean v0, p0, Ljava/util/stream/DoubleStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 1014
    iget-object v0, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v2, p0, Ljava/util/stream/DoubleStream$1;->prev:D

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .local v2, "t":D
    goto :goto_15

    .line 1016
    .end local v2    # "t":D
    :cond_11
    iget-wide v2, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    .line 1017
    .restart local v2    # "t":D
    iput-boolean v1, p0, Ljava/util/stream/DoubleStream$1;->started:Z

    .line 1019
    :goto_15
    iput-wide v2, p0, Ljava/util/stream/DoubleStream$1;->prev:D

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1020
    return v1
.end method
