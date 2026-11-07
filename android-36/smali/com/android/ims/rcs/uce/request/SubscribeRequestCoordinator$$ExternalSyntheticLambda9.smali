.class public final synthetic Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

.field public final synthetic blacklist f$1:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;->f$0:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    iput-object p2, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;->f$1:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;->f$0:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$$ExternalSyntheticLambda9;->f$1:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->$r8$lambda$PGCbIUZAMCKOBClNhMGRuR0Qnl4(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;Ljava/lang/Integer;)V

    return-void
.end method
