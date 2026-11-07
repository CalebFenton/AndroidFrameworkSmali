.class public Landroid/provider/ICloudMediaSurfaceStateChangedCallback$Default;
.super Ljava/lang/Object;
.source "ICloudMediaSurfaceStateChangedCallback.java"

# interfaces
.implements Landroid/provider/ICloudMediaSurfaceStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ICloudMediaSurfaceStateChangedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPlaybackState(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "surfaceId"    # I
    .param p2, "playbackState"    # I
    .param p3, "playbackStateInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
