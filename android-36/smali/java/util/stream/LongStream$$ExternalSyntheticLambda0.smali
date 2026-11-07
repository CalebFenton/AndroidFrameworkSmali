.class public final synthetic Ljava/util/stream/LongStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/LongStream$LongMapMultiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/LongStream$LongMapMultiConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/LongStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/LongStream$LongMapMultiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(J)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/LongStream$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/LongStream$LongMapMultiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/LongStream;->lambda$mapMulti$0(Ljava/util/stream/LongStream$LongMapMultiConsumer;J)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method
