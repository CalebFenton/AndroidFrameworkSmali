.class public interface abstract Ljava/util/PrimitiveIterator$OfDouble;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
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

    .line 229
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

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

    .line 280
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    .line 281
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_26

    .line 285
    :cond_b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1b

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 288
    :cond_1b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 290
    :goto_26
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_3
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 252
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_3

    .line 253
    :cond_11
    return-void
.end method

.method public whitelist test-api next()Ljava/lang/Double;
    .registers 3

    .line 263
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 265
    :cond_d
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 229
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api nextDouble()D
.end method
