.class Ljava/util/stream/LongStream$2;
.super Ljava/util/Spliterators$AbstractLongSpliterator;
.source "LongStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongStream;->iterate(JLjava/util/function/LongPredicate;Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist finished:Z

.field blacklist prev:J

.field blacklist started:Z

.field final synthetic blacklist val$hasNext:Ljava/util/function/LongPredicate;

.field final synthetic blacklist val$next:Ljava/util/function/LongUnaryOperator;

.field final synthetic blacklist val$seed:J


# direct methods
.method constructor blacklist <init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V
    .registers 8
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 997
    iput-object p4, p0, Ljava/util/stream/LongStream$2;->val$next:Ljava/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljava/util/stream/LongStream$2;->val$seed:J

    iput-object p7, p0, Ljava/util/stream/LongStream$2;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

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

    .line 997
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/LongStream$2;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1023
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-boolean v0, p0, Ljava/util/stream/LongStream$2;->finished:Z

    if-eqz v0, :cond_8

    .line 1025
    return-void

    .line 1026
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/LongStream$2;->finished:Z

    .line 1027
    iget-boolean v0, p0, Ljava/util/stream/LongStream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/stream/LongStream$2;->val$next:Ljava/util/function/LongUnaryOperator;

    iget-wide v1, p0, Ljava/util/stream/LongStream$2;->prev:J

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_1a

    :cond_18
    iget-wide v0, p0, Ljava/util/stream/LongStream$2;->val$seed:J

    .line 1028
    .local v0, "t":J
    :goto_1a
    iget-object v2, p0, Ljava/util/stream/LongStream$2;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-interface {v2, v0, v1}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1029
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1030
    iget-object v2, p0, Ljava/util/stream/LongStream$2;->val$next:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_1a

    .line 1032
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

    .line 997
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/LongStream$2;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 7
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1003
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-boolean v0, p0, Ljava/util/stream/LongStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1005
    return v1

    .line 1007
    :cond_9
    iget-boolean v0, p0, Ljava/util/stream/LongStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1008
    iget-object v0, p0, Ljava/util/stream/LongStream$2;->val$next:Ljava/util/function/LongUnaryOperator;

    iget-wide v3, p0, Ljava/util/stream/LongStream$2;->prev:J

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v3

    .local v3, "t":J
    goto :goto_1b

    .line 1010
    .end local v3    # "t":J
    :cond_17
    iget-wide v3, p0, Ljava/util/stream/LongStream$2;->val$seed:J

    .line 1011
    .restart local v3    # "t":J
    iput-boolean v2, p0, Ljava/util/stream/LongStream$2;->started:Z

    .line 1013
    :goto_1b
    iget-object v0, p0, Ljava/util/stream/LongStream$2;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1014
    iput-boolean v2, p0, Ljava/util/stream/LongStream$2;->finished:Z

    .line 1015
    return v1

    .line 1017
    :cond_26
    iput-wide v3, p0, Ljava/util/stream/LongStream$2;->prev:J

    invoke-interface {p1, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1018
    return v2
.end method
