.class public interface abstract Ljava/util/stream/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Sink$ChainedDouble;,
        Ljava/util/stream/Sink$ChainedLong;,
        Ljava/util/stream/Sink$ChainedInt;,
        Ljava/util/stream/Sink$ChainedReference;,
        Ljava/util/stream/Sink$OfDouble;,
        Ljava/util/stream/Sink$OfLong;,
        Ljava/util/stream/Sink$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 5
    .param p1, "value"    # D

    .line 183
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "value"    # I

    .line 161
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api accept(J)V
    .registers 5
    .param p1, "value"    # J

    .line 172
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o begin(J)V
    .registers 3
    .param p1, "size"    # J

    .line 130
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    return-void
.end method

.method public greylist-max-o cancellationRequested()Z
    .registers 2

    .line 150
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o end()V
    .registers 1

    .line 140
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    return-void
.end method
