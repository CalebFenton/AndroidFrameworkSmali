.class public interface abstract Ljava/util/stream/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
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
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/stream/Stream$Builder",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1126
    .local p0, "this":Ljava/util/stream/Stream$Builder;, "Ljava/util/stream/Stream<TT;>.Builder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/stream/Stream$Builder;->accept(Ljava/lang/Object;)V

    #@3
    .line 1127
    return-object p0
.end method

.method public abstract build()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation
.end method
