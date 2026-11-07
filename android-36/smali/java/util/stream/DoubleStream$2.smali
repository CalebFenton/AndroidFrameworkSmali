.class Ljava/util/stream/DoubleStream$2;
.super Ljava/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoubleStream;->iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist finished:Z

.field blacklist prev:D

.field blacklist started:Z

.field final synthetic blacklist val$hasNext:Ljava/util/function/DoublePredicate;

.field final synthetic blacklist val$next:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic blacklist val$seed:D


# direct methods
.method constructor blacklist <init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V
    .registers 8
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1067
    iput-object p4, p0, Ljava/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljava/util/stream/DoubleStream$2;->val$seed:D

    iput-object p7, p0, Ljava/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1067
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/DoubleStream$2;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1093
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-boolean v0, p0, Ljava/util/stream/DoubleStream$2;->finished:Z

    if-eqz v0, :cond_8

    .line 1095
    return-void

    .line 1096
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/DoubleStream$2;->finished:Z

    .line 1097
    iget-boolean v0, p0, Ljava/util/stream/DoubleStream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v1, p0, Ljava/util/stream/DoubleStream$2;->prev:D

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_1a

    :cond_18
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$2;->val$seed:D

    .line 1098
    .local v0, "t":D
    :goto_1a
    iget-object v2, p0, Ljava/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1099
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1100
    iget-object v2, p0, Ljava/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_1a

    .line 1102
    :cond_2c
    return-void
.end method

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

    .line 1067
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/DoubleStream$2;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1073
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-boolean v0, p0, Ljava/util/stream/DoubleStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1075
    return v1

    .line 1077
    :cond_9
    iget-boolean v0, p0, Ljava/util/stream/DoubleStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1078
    iget-object v0, p0, Ljava/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Ljava/util/stream/DoubleStream$2;->prev:D

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    .local v3, "t":D
    goto :goto_1b

    .line 1080
    .end local v3    # "t":D
    :cond_17
    iget-wide v3, p0, Ljava/util/stream/DoubleStream$2;->val$seed:D

    .line 1081
    .restart local v3    # "t":D
    iput-boolean v2, p0, Ljava/util/stream/DoubleStream$2;->started:Z

    .line 1083
    :goto_1b
    iget-object v0, p0, Ljava/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1084
    iput-boolean v2, p0, Ljava/util/stream/DoubleStream$2;->finished:Z

    .line 1085
    return v1

    .line 1087
    :cond_26
    iput-wide v3, p0, Ljava/util/stream/DoubleStream$2;->prev:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1088
    return v2
.end method
