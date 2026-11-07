.class public abstract Landroid/telecom/InCallService$VideoCall$Callback;
.super Ljava/lang/Object;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService$VideoCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onCallDataUsageChanged(J)V
.end method

.method public abstract whitelist onCallSessionEvent(I)V
.end method

.method public abstract whitelist onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
.end method

.method public abstract whitelist onPeerDimensionsChanged(II)V
.end method

.method public abstract whitelist onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onVideoQualityChanged(I)V
.end method
