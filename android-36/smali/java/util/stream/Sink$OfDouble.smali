.class public interface abstract Ljava/util/stream/Sink$OfDouble;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api accept(D)V
.end method

.method public greylist-max-o accept(Ljava/lang/Double;)V
    .registers 4
    .param p1, "i"    # Ljava/lang/Double;

    .line 234
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Sink.OfDouble.accept(Double)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 236
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Sink$OfDouble;->accept(D)V

    .line 237
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 227
    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method
