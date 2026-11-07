.class public interface abstract Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UceControllerCallback"
.end annotation


# virtual methods
.method public abstract blacklist clearResetDeviceStateTimer()V
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

.method public abstract blacklist refreshCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist refreshDeviceState(ILjava/lang/String;I)V
.end method

.method public abstract blacklist resetDeviceState()V
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

.method public abstract blacklist setupResetDeviceStateTimer(J)V
.end method
