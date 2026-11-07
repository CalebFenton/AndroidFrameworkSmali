.class public interface abstract Ljava/util/stream/Sink$OfLong;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api accept(J)V
.end method

.method public greylist-max-o accept(Ljava/lang/Long;)V
    .registers 4
    .param p1, "i"    # Ljava/lang/Long;

    .line 216
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 218
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Sink$OfLong;->accept(J)V

    .line 219
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

    .line 209
    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method
