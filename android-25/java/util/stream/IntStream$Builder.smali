.class public interface abstract Ljava/util/stream/IntStream$Builder;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method

.method public add(I)Ljava/util/stream/IntStream$Builder;
    .locals 0
    .param p1, "t"    # I

    #@0
    .prologue
    .line 896
    invoke-interface {p0, p1}, Ljava/util/stream/IntStream$Builder;->accept(I)V

    #@3
    .line 897
    return-object p0
.end method

.method public abstract build()Ljava/util/stream/IntStream;
.end method
