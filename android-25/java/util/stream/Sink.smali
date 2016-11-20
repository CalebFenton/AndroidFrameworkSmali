.class public interface abstract Ljava/util/stream/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Sink$ChainedDouble;,
        Ljava/util/stream/Sink$ChainedInt;,
        Ljava/util/stream/Sink$ChainedLong;,
        Ljava/util/stream/Sink$ChainedReference;,
        Ljava/util/stream/Sink$OfDouble;,
        Ljava/util/stream/Sink$OfInt;,
        Ljava/util/stream/Sink$OfLong;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "value"    # D

    #@0
    .prologue
    .line 182
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "called wrong accept method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public accept(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 160
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "called wrong accept method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public accept(J)V
    .locals 2
    .param p1, "value"    # J

    #@0
    .prologue
    .line 171
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "called wrong accept method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    #@0
    .prologue
    .line 129
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    #@0
    .prologue
    .line 149
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public end()V
    .locals 0

    #@0
    .prologue
    .line 139
    .local p0, "this":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TT;>;"
    return-void
.end method
