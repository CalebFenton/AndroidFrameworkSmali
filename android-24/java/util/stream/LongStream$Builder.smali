.class public interface abstract Ljava/util/stream/LongStream$Builder;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public add(J)Ljava/util/stream/LongStream$Builder;
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 911
    invoke-interface {p0, p1, p2}, Ljava/util/stream/LongStream$Builder;->accept(J)V

    #@3
    .line 912
    return-object p0
.end method

.method public abstract build()Ljava/util/stream/LongStream;
.end method
