.class public interface abstract Ljava/util/Spliterator$OfDouble;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;"
    }
.end annotation


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

    .line 792
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 842
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    .line 843
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_23

    .line 846
    :cond_b
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 847
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 849
    :cond_18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 851
    :goto_23
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 803
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
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

    .line 792
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 818
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_c

    .line 819
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0

    .line 822
    :cond_c
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_19

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 825
    :cond_19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
.end method

.method public abstract whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 792
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 792
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
