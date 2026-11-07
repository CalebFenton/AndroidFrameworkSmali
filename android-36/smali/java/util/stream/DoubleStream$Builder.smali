.class public interface abstract Ljava/util/stream/DoubleStream$Builder;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract whitelist test-api accept(D)V
.end method

.method public whitelist test-api add(D)Ljava/util/stream/DoubleStream$Builder;
    .registers 3
    .param p1, "t"    # D

    .line 1204
    invoke-interface {p0, p1, p2}, Ljava/util/stream/DoubleStream$Builder;->accept(D)V

    .line 1205
    return-object p0
.end method

.method public abstract whitelist test-api build()Ljava/util/stream/DoubleStream;
.end method
