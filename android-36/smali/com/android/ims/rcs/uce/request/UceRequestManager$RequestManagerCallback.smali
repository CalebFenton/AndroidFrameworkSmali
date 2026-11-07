.class public interface abstract Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
.super Ljava/lang/Object;
.source "UceRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestManagerCallback"
.end annotation


# virtual methods
.method public abstract blacklist addToThrottlingList(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist getAvailabilityFromCache(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
.end method

.method public abstract blacklist getAvailabilityFromCacheIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
.end method

.method public abstract blacklist getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
.end method

.method public abstract blacklist getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
.end method

.method public abstract blacklist getInThrottlingListUris(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist notifyCachedCapabilitiesUpdated(JJ)V
.end method

.method public abstract blacklist notifyCapabilitiesUpdated(JJ)V
.end method

.method public abstract blacklist notifyCommandError(JJ)V
.end method

.method public abstract blacklist notifyNetworkResponse(JJ)V
.end method

.method public abstract blacklist notifyNoNeedRequestFromNetwork(JJ)V
.end method

.method public abstract blacklist notifyRemoteRequestDone(JJ)V
.end method

.method public abstract blacklist notifyRequestCoordinatorFinished(J)V
.end method

.method public abstract blacklist notifyRequestError(JJ)V
.end method

.method public abstract blacklist notifyResourceTerminated(JJ)V
.end method

.method public abstract blacklist notifySendingRequest(JJJ)V
.end method

.method public abstract blacklist notifyTerminated(JJ)V
.end method

.method public abstract blacklist notifyUceRequestFinished(JJ)V
.end method

.method public abstract blacklist refreshDeviceState(ILjava/lang/String;)V
.end method

.method public abstract blacklist removeRequestTimeoutTimer(J)V
.end method

.method public abstract blacklist saveCapabilities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist sendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequest;)V
.end method

.method public abstract blacklist setRequestTimeoutTimer(JJJ)V
.end method
