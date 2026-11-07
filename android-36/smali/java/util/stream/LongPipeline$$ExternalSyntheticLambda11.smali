.class public final synthetic Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(Ljava/lang/Object;)J
    .registers 4

    .line 0
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Ljava/util/stream/LongPipeline;->lambda$distinct$0(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
