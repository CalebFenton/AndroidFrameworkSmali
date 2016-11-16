.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$Callback;,
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    }
.end annotation


# static fields
.field public static final EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final TYPE_MIRRORING:I = 0x1

.field public static final TYPE_PRESENTATION:I = 0x2

.field public static final TYPE_SCREEN_CAPTURE:I


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    #@5
    .line 66
    const-string/jumbo v1, "media_projection"

    #@8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 67
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    #@12
    .line 68
    new-instance v1, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    #@19
    .line 64
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 136
    if-nez p1, :cond_0

    #@2
    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "callback must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 139
    :cond_0
    new-instance v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    #@d
    invoke-direct {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    #@10
    .line 140
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    #@12
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 142
    :try_start_0
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    #@17
    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 135
    :goto_0
    return-void

    #@1b
    .line 143
    :catch_0
    move-exception v1

    #@1c
    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaProjectionManager"

    #@1f
    const-string/jumbo v3, "Unable to add callbacks to MediaProjection service"

    #@22
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method public createScreenCaptureIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 79
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    #@8
    .line 80
    const-string/jumbo v2, "com.android.systemui.media.MediaProjectionPermissionActivity"

    #@b
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 81
    return-object v0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    #@0
    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    #@2
    invoke-interface {v1}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 112
    :catch_0
    move-exception v0

    #@8
    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaProjectionManager"

    #@b
    const-string/jumbo v2, "Unable to get the active projection info"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 115
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    const/4 v1, -0x1

    #@2
    if-ne p1, v1, :cond_0

    #@4
    if-nez p2, :cond_1

    #@6
    .line 96
    :cond_0
    return-object v2

    #@7
    .line 98
    :cond_1
    const-string/jumbo v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    #@a
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 99
    .local v0, "projection":Landroid/os/IBinder;
    if-nez v0, :cond_2

    #@10
    .line 100
    return-object v2

    #@11
    .line 102
    :cond_2
    new-instance v1, Landroid/media/projection/MediaProjection;

    #@13
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v1, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    #@1c
    return-object v1
.end method

.method public removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "callback must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 156
    :cond_0
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    #@d
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    #@13
    .line 158
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    if-eqz v0, :cond_1

    #@15
    .line 159
    :try_start_0
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    #@17
    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 152
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 161
    :catch_0
    move-exception v1

    #@1c
    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaProjectionManager"

    #@1f
    const-string/jumbo v3, "Unable to add callbacks to MediaProjection service"

    #@22
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method public stopActiveProjection()V
    .locals 3

    #@0
    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    #@2
    invoke-interface {v1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 122
    :goto_0
    return-void

    #@6
    .line 125
    :catch_0
    move-exception v0

    #@7
    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaProjectionManager"

    #@a
    const-string/jumbo v2, "Unable to stop the currently active media projection"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
