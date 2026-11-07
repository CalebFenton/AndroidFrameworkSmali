.class public final synthetic Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(D)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/DoubleStream;->lambda$mapMulti$0(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;D)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method
