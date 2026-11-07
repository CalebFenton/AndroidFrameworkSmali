.class public final synthetic Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$RequestResultCreator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createRequestResult(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 5

    .line 0
    invoke-static {p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->lambda$static$2(JLcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-result-object p1

    return-object p1
.end method
