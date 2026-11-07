.class public final synthetic Ljava/util/stream/IntStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/IntStream$IntMapMultiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/IntStream$IntMapMultiConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/IntStream$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/IntStream$IntMapMultiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/stream/IntStream$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/IntStream$IntMapMultiConsumer;

    invoke-static {v0, p1}, Ljava/util/stream/IntStream;->lambda$mapMulti$0(Ljava/util/stream/IntStream$IntMapMultiConsumer;I)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method
