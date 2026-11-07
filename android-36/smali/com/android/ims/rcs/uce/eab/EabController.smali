.class public interface abstract Lcom/android/ims/rcs/uce/eab/EabController;
.super Ljava/lang/Object;
.source "EabController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/ControllerBase;


# virtual methods
.method public abstract blacklist getAvailability(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
.end method

.method public abstract blacklist getAvailabilityIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
.end method

.method public abstract blacklist getCapabilities(Ljava/util/List;)Ljava/util/List;
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

.method public abstract blacklist getCapabilitiesIncludingExpired(Ljava/util/List;)Ljava/util/List;
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

.method public abstract blacklist setUceRequestCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
.end method
