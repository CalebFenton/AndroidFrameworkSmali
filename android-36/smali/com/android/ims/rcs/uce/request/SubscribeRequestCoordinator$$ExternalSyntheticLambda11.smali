.class public final synthetic Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda11;
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
    check-cast p1, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    invoke-static {p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->lambda$checkAndFinishRequestCoordinator$11(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;)J

    move-result-wide v0

    return-wide v0
.end method
