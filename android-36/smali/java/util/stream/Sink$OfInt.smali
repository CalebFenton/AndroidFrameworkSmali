.class public interface abstract Ljava/util/stream/Sink$OfInt;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api accept(I)V
.end method

.method public greylist-max-o accept(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "i"    # Ljava/lang/Integer;

    .line 198
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 200
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/stream/Sink$OfInt;->accept(I)V

    .line 201
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

    .line 191
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method
