.class public interface abstract Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;
.super Ljava/lang/Object;
.source "RcsFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapabilityExchangeEventCallback"
.end annotation


# virtual methods
.method public abstract blacklist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
.end method

.method public abstract blacklist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist onRequestPublishCapabilities(I)V
.end method

.method public abstract blacklist onUnpublish()V
.end method
