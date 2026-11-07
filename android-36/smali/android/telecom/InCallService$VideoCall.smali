.class public abstract Landroid/telecom/InCallService$VideoCall;
.super Ljava/lang/Object;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall$Callback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o destroy()V
.end method

.method public abstract whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
.end method

.method public abstract whitelist registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
.end method

.method public abstract whitelist requestCallDataUsage()V
.end method

.method public abstract whitelist requestCameraCapabilities()V
.end method

.method public abstract whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist setCamera(Ljava/lang/String;)V
.end method

.method public abstract whitelist setDeviceOrientation(I)V
.end method

.method public abstract whitelist setDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist setPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract whitelist setPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist setZoom(F)V
.end method

.method public abstract whitelist unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
.end method
