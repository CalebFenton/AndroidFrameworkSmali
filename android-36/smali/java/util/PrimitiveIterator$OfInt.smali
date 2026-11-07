.class public interface abstract Ljava/util/PrimitiveIterator$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
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

    .line 94
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_b

    .line 145
    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_26

    .line 149
    :cond_b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1b

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    :cond_1b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfInt$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 154
    :goto_26
    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_3
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 117
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_3

    .line 118
    :cond_11
    return-void
.end method

.method public whitelist test-api next()Ljava/lang/Integer;
    .registers 3

    .line 128
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling PrimitiveIterator.OfInt.nextInt()"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 130
    :cond_d
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api nextInt()I
.end method
