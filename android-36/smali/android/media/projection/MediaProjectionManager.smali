.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final blacklist EXTRA_LAUNCH_COOKIE:Ljava/lang/String; = "android.media.projection.extra.EXTRA_LAUNCH_COOKIE"

.field public static final greylist-max-o EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field public static final blacklist EXTRA_MEDIA_PROJECTION_CONFIG:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION_CONFIG"

.field public static final blacklist OVERRIDE_DISABLE_MEDIA_PROJECTION_SINGLE_APP_OPTION:J = 0x12e3782aL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final greylist-max-o TYPE_MIRRORING:I = 0x1

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x2

.field public static final greylist-max-o TYPE_SCREEN_CAPTURE:I


# instance fields
.field private greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 125
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 127
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    .line 128
    return-void
.end method


# virtual methods
.method public greylist-max-o addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 319
    const-string v0, "MediaProjectionManager"

    if-eqz p1, :cond_1b

    .line 323
    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 324
    .local v1, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :try_start_e
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v1}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 329
    goto :goto_1a

    .line 327
    :catch_14
    move-exception v2

    .line 328
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void

    .line 320
    .end local v1    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_1b
    const-string v1, "Content Recording: cannot add null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createScreenCaptureIntent()Landroid/content/Intent;
    .registers 4

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 153
    .local v1, "mediaProjectionPermissionDialogComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    return-object v0
.end method

.method public blacklist createScreenCaptureIntent(Landroid/app/ActivityOptions$LaunchCookie;)Landroid/content/Intent;
    .registers 4
    .param p1, "launchCookie"    # Landroid/app/ActivityOptions$LaunchCookie;

    .line 212
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.media.projection.extra.EXTRA_LAUNCH_COOKIE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    return-object v0
.end method

.method public whitelist createScreenCaptureIntent(Landroid/media/projection/MediaProjectionConfig;)Landroid/content/Intent;
    .registers 4
    .param p1, "config"    # Landroid/media/projection/MediaProjectionConfig;

    .line 195
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION_CONFIG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    return-object v0
.end method

.method public greylist-max-o getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 294
    :catch_7
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 275
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1c

    if-nez p2, :cond_7

    goto :goto_1c

    .line 278
    :cond_7
    const-string v0, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 279
    .local v0, "projection":Landroid/os/IBinder;
    if-nez v0, :cond_10

    .line 280
    return-object v1

    .line 284
    :cond_10
    new-instance v1, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v1

    .line 276
    .end local v0    # "projection":Landroid/os/IBinder;
    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public greylist-max-o removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;

    .line 337
    const-string v0, "MediaProjectionManager"

    if-eqz p1, :cond_1d

    .line 341
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 343
    .local v1, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    if-eqz v1, :cond_1b

    .line 344
    :try_start_e
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v1}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_1b

    .line 346
    :catch_14
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 348
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    nop

    .line 349
    :goto_1c
    return-void

    .line 338
    .end local v1    # "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    :cond_1d
    const-string v1, "ContentRecording: cannot remove null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist stopActiveProjection(I)V
    .registers 5
    .param p1, "stopReason"    # I

    .line 306
    const-string v0, "MediaProjectionManager"

    :try_start_2
    const-string v1, "Content Recording: stopping active projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, p1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 310
    goto :goto_13

    .line 308
    :catch_d
    move-exception v1

    .line 309
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to stop the currently active media projection"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
