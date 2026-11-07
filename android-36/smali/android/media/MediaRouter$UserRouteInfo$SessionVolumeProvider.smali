.class Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
.super Landroid/media/VolumeProvider;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$UserRouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionVolumeProvider"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter$UserRouteInfo;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter$UserRouteInfo;III)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/MediaRouter$UserRouteInfo;
    .param p2, "volumeControl"    # I
    .param p3, "maxVolume"    # I
    .param p4, "currentVolume"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2557
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    .line 2558
    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    .line 2559
    return-void
.end method


# virtual methods
.method public whitelist onAdjustVolume(I)V
    .registers 4
    .param p1, "direction"    # I

    .line 2575
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2583
    return-void
.end method

.method public whitelist onSetVolumeTo(I)V
    .registers 4
    .param p1, "volume"    # I

    .line 2563
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;-><init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2571
    return-void
.end method
