.class Ljava/util/Spliterators$3Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field blacklist nextElement:J

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfLong;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 789
    iput-wide p1, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    .line 790
    return-void
.end method

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

    .line 782
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$3Adapter;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 811
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-eqz v0, :cond_f

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 814
    iget-wide v0, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 816
    :cond_f
    iget-object v0, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 817
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 794
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 795
    iget-object v0, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 796
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 801
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 802
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 804
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 805
    iget-wide v0, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    return-wide v0
.end method
