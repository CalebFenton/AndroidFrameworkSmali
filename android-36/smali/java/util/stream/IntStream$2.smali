.class Ljava/util/stream/IntStream$2;
.super Ljava/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist finished:Z

.field blacklist prev:I

.field blacklist started:Z

.field final synthetic blacklist val$hasNext:Ljava/util/function/IntPredicate;

.field final synthetic blacklist val$next:Ljava/util/function/IntUnaryOperator;

.field final synthetic blacklist val$seed:I


# direct methods
.method constructor blacklist <init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V
    .registers 7
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1008
    iput-object p4, p0, Ljava/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Ljava/util/stream/IntStream$2;->val$seed:I

    iput-object p6, p0, Ljava/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

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

    .line 1008
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/IntStream$2;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1034
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iget-boolean v0, p0, Ljava/util/stream/IntStream$2;->finished:Z

    if-eqz v0, :cond_8

    .line 1036
    return-void

    .line 1037
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/IntStream$2;->finished:Z

    .line 1038
    iget-boolean v0, p0, Ljava/util/stream/IntStream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v1, p0, Ljava/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_1a

    :cond_18
    iget v0, p0, Ljava/util/stream/IntStream$2;->val$seed:I

    .line 1039
    .local v0, "t":I
    :goto_1a
    iget-object v1, p0, Ljava/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v1, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1040
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1041
    iget-object v1, p0, Ljava/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_1a

    .line 1043
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

    .line 1008
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/IntStream$2;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1014
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-boolean v0, p0, Ljava/util/stream/IntStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1016
    return v1

    .line 1018
    :cond_9
    iget-boolean v0, p0, Ljava/util/stream/IntStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1019
    iget-object v0, p0, Ljava/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v3, p0, Ljava/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v3}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .local v0, "t":I
    goto :goto_1b

    .line 1021
    .end local v0    # "t":I
    :cond_17
    iget v0, p0, Ljava/util/stream/IntStream$2;->val$seed:I

    .line 1022
    .restart local v0    # "t":I
    iput-boolean v2, p0, Ljava/util/stream/IntStream$2;->started:Z

    .line 1024
    :goto_1b
    iget-object v3, p0, Ljava/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v3, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1025
    iput-boolean v2, p0, Ljava/util/stream/IntStream$2;->finished:Z

    .line 1026
    return v1

    .line 1028
    :cond_26
    iput v0, p0, Ljava/util/stream/IntStream$2;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1029
    return v2
.end method
