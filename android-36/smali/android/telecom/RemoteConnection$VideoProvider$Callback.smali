.class public abstract Landroid/telecom/RemoteConnection$VideoProvider$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V
    .registers 4
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "dataUsage"    # J

    .line 355
    return-void
.end method

.method public whitelist onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .registers 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "event"    # I

    .line 331
    return-void
.end method

.method public whitelist onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 370
    return-void
.end method

.method public whitelist onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V
    .registers 4
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 344
    return-void
.end method

.method public whitelist onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 301
    return-void
.end method

.method public whitelist onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "status"    # I
    .param p3, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p4, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 320
    return-void
.end method

.method public whitelist onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .registers 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2, "videoQuality"    # I

    .line 381
    return-void
.end method
