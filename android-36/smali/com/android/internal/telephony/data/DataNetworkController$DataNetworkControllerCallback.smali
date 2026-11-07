.class public Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataNetworkControllerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 633
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onAnyDataNetworkExistingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist onDataServiceBound(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onInternetDataNetworkValidationStatusChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onNrAdvancedCapableByPcoChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onPhysicalLinkStatusChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onQosSessionsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onSubscriptionPlanOverride()V
    .registers 1

    .line 0
    return-void
.end method
