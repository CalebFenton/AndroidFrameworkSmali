.class Ljava/util/stream/IntStream$1;
.super Ljava/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist prev:I

.field blacklist started:Z

.field final synthetic blacklist val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic blacklist val$seed:I


# direct methods
.method constructor blacklist <init>(JILjava/util/function/IntUnaryOperator;I)V
    .registers 6
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 946
    iput-object p4, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

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

    .line 946
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/IntStream$1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 952
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-boolean v0, p0, Ljava/util/stream/IntStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 955
    iget-object v0, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Ljava/util/stream/IntStream$1;->prev:I

    invoke-interface {v0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .local v0, "t":I
    goto :goto_15

    .line 957
    .end local v0    # "t":I
    :cond_11
    iget v0, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    .line 958
    .restart local v0    # "t":I
    iput-boolean v1, p0, Ljava/util/stream/IntStream$1;->started:Z

    .line 960
    :goto_15
    iput v0, p0, Ljava/util/stream/IntStream$1;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 961
    return v1
.end method
