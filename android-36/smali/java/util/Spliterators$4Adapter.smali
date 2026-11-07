.class Ljava/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field blacklist nextElement:D

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfDouble;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 837
    iput-object p1, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 844
    iput-wide p1, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    .line 845
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

    .line 837
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$4Adapter;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 866
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-eqz v0, :cond_f

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 869
    iget-wide v0, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 871
    :cond_f
    iget-object v0, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 872
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 849
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 850
    iget-object v0, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 851
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist test-api nextDouble()D
    .registers 3

    .line 856
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 857
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 859
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 860
    iget-wide v0, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method
