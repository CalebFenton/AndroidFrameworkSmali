.class public interface abstract Ljava/util/PrimitiveIterator$OfLong;
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
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
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

    .line 162
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    .line 213
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_26

    .line 217
    :cond_b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1b

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    :cond_1b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfLong$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 222
    :goto_26
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_3
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 185
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_3

    .line 186
    :cond_11
    return-void
.end method

.method public whitelist test-api next()Ljava/lang/Long;
    .registers 3

    .line 196
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfLong.nextLong()"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    :cond_d
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api nextLong()J
.end method
