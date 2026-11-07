.class public interface abstract Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
.super Ljava/lang/Object;
.source "PublishController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PublishControllerCallback"
.end annotation


# virtual methods
.method public abstract blacklist clearRequestCanceledTimer()V
.end method

.method public abstract blacklist notifyPendingPublishRequest()V
.end method

.method public abstract blacklist onRequestCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
.end method

.method public abstract blacklist onRequestNetworkResp(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
.end method

.method public abstract blacklist refreshDeviceState(ILjava/lang/String;)V
.end method

.method public abstract blacklist requestPublishFromInternal(I)V
.end method

.method public abstract blacklist setupRequestCanceledTimer(JJ)V
.end method

.method public abstract blacklist updateImsUnregistered()V
.end method

.method public abstract blacklist updatePublishRequestResult(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
.end method

.method public abstract blacklist updatePublishThrottle(I)V
.end method
