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
        "Ljava/util/stream/Sink",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 230
    .local p0, "this":Ljava/util/stream/Sink$OfDouble;, "Ljava/util/stream/Sink<TT;>.OfDouble;"
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "{0} calling Sink.OfDouble.accept(Double)"

    #@b
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@11
    move-result-wide v0

    #@12
    invoke-interface {p0, v0, v1}, Ljava/util/stream/Sink$OfDouble;->accept(D)V

    #@15
    .line 229
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    .local p0, "this":Ljava/util/stream/Sink$OfDouble;, "Ljava/util/stream/Sink<TT;>.OfDouble;"
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    #@5
    return-void
.end method
