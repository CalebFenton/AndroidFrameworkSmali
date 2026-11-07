.class public final Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;
.super Ljava/lang/Object;
.source "CloudMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudMediaSurfaceStateChangedCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback$PlaybackState;
    }
.end annotation


# static fields
.field public static final whitelist PLAYBACK_STATE_BUFFERING:I = 0x1

.field public static final whitelist PLAYBACK_STATE_COMPLETED:I = 0x5

.field public static final whitelist PLAYBACK_STATE_ERROR_PERMANENT_FAILURE:I = 0x7

.field public static final whitelist PLAYBACK_STATE_ERROR_RETRIABLE_FAILURE:I = 0x6

.field public static final whitelist PLAYBACK_STATE_MEDIA_SIZE_CHANGED:I = 0x8

.field public static final whitelist PLAYBACK_STATE_PAUSED:I = 0x4

.field public static final whitelist PLAYBACK_STATE_READY:I = 0x2

.field public static final whitelist PLAYBACK_STATE_STARTED:I = 0x3


# instance fields
.field private final blacklist mCallback:Landroid/provider/ICloudMediaSurfaceStateChangedCallback;


# direct methods
.method constructor blacklist <init>(Landroid/provider/ICloudMediaSurfaceStateChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/provider/ICloudMediaSurfaceStateChangedCallback;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    iput-object p1, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;->mCallback:Landroid/provider/ICloudMediaSurfaceStateChangedCallback;

    .line 1249
    return-void
.end method


# virtual methods
.method public blacklist getIBinder()Landroid/os/IBinder;
    .registers 2

    .line 1278
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;->mCallback:Landroid/provider/ICloudMediaSurfaceStateChangedCallback;

    invoke-interface {v0}, Landroid/provider/ICloudMediaSurfaceStateChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setPlaybackState(IILandroid/os/Bundle;)V
    .registers 7
    .param p1, "surfaceId"    # I
    .param p2, "playbackState"    # I
    .param p3, "playbackStateInfo"    # Landroid/os/Bundle;

    .line 1264
    :try_start_0
    iget-object v0, p0, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;->mCallback:Landroid/provider/ICloudMediaSurfaceStateChangedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/provider/ICloudMediaSurfaceStateChangedCallback;->setPlaybackState(IILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1269
    goto :goto_33

    .line 1265
    :catch_6
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify playback state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for surfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; playbackStateInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudMediaProvider"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method
