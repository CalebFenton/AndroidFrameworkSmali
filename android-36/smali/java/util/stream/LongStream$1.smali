.class Ljava/util/stream/LongStream$1;
.super Ljava/util/Spliterators$AbstractLongSpliterator;
.source "LongStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongStream;->iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist prev:J

.field blacklist started:Z

.field final synthetic blacklist val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic blacklist val$seed:J


# direct methods
.method constructor blacklist <init>(JILjava/util/function/LongUnaryOperator;J)V
    .registers 7
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 935
    iput-object p4, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

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

    .line 935
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/LongStream$1;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 6
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 941
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-boolean v0, p0, Ljava/util/stream/LongStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 944
    iget-object v0, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iget-wide v2, p0, Ljava/util/stream/LongStream$1;->prev:J

    invoke-interface {v0, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    .local v2, "t":J
    goto :goto_15

    .line 946
    .end local v2    # "t":J
    :cond_11
    iget-wide v2, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    .line 947
    .restart local v2    # "t":J
    iput-boolean v1, p0, Ljava/util/stream/LongStream$1;->started:Z

    .line 949
    :goto_15
    iput-wide v2, p0, Ljava/util/stream/LongStream$1;->prev:J

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 950
    return v1
.end method
