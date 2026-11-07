.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ADD_VIDEO_CALLBACK:I = 0x1

.field private static final greylist-max-o MSG_REMOVE_VIDEO_CALLBACK:I = 0xc

.field private static final greylist-max-o MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final greylist-max-o MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final greylist-max-o MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final greylist-max-o MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final greylist-max-o MSG_SET_CAMERA:I = 0x2

.field private static final greylist-max-o MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final greylist-max-o MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final greylist-max-o MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final greylist-max-o MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final greylist-max-o MSG_SET_ZOOM:I = 0x6

.field public static final whitelist SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field private static final greylist-max-o SESSION_EVENT_CAMERA_FAILURE_STR:Ljava/lang/String; = "CAMERA_FAIL"

.field public static final whitelist SESSION_EVENT_CAMERA_PERMISSION_ERROR:I = 0x7

.field private static final greylist-max-o SESSION_EVENT_CAMERA_PERMISSION_ERROR_STR:Ljava/lang/String; = "CAMERA_PERMISSION_ERROR"

.field public static final whitelist SESSION_EVENT_CAMERA_READY:I = 0x6

.field private static final greylist-max-o SESSION_EVENT_CAMERA_READY_STR:Ljava/lang/String; = "CAMERA_READY"

.field public static final whitelist SESSION_EVENT_RX_PAUSE:I = 0x1

.field private static final greylist-max-o SESSION_EVENT_RX_PAUSE_STR:Ljava/lang/String; = "RX_PAUSE"

.field public static final whitelist SESSION_EVENT_RX_RESUME:I = 0x2

.field private static final greylist-max-o SESSION_EVENT_RX_RESUME_STR:Ljava/lang/String; = "RX_RESUME"

.field public static final whitelist SESSION_EVENT_TX_START:I = 0x3

.field private static final greylist-max-o SESSION_EVENT_TX_START_STR:Ljava/lang/String; = "TX_START"

.field public static final whitelist SESSION_EVENT_TX_STOP:I = 0x4

.field private static final greylist-max-o SESSION_EVENT_TX_STOP_STR:Ljava/lang/String; = "TX_STOP"

.field private static final greylist-max-o SESSION_EVENT_UNKNOWN_STR:Ljava/lang/String; = "UNKNOWN"

.field public static final whitelist SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final whitelist SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final whitelist SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final whitelist SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final whitelist SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final greylist-max-o mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private greylist-max-o mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private greylist-max-o mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallbacks(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1735
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection-IA;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1736
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1737
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1747
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection-IA;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1748
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1749
    return-void
.end method

.method public static greylist-max-o sessionEventToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "event"    # I

    .line 2123
    packed-switch p0, :pswitch_data_2c

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2137
    :pswitch_17
    const-string v0, "CAMERA_PERMISSION_ERROR"

    return-object v0

    .line 2127
    :pswitch_1a
    const-string v0, "CAMERA_READY"

    return-object v0

    .line 2125
    :pswitch_1d
    const-string v0, "CAMERA_FAIL"

    return-object v0

    .line 2135
    :pswitch_20
    const-string v0, "TX_STOP"

    return-object v0

    .line 2133
    :pswitch_23
    const-string v0, "TX_START"

    return-object v0

    .line 2131
    :pswitch_26
    const-string v0, "RX_RESUME"

    return-object v0

    .line 2129
    :pswitch_29
    const-string v0, "RX_PAUSE"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o changeCallDataUsage(J)V
    .registers 3
    .param p1, "dataUsage"    # J

    .line 2061
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    .line 2062
    return-void
.end method

.method public whitelist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 7
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 2079
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_29

    .line 2080
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2082
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2085
    goto :goto_28

    .line 2083
    :catch_1e
    move-exception v2

    .line 2084
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string v3, "changeCameraCapabilities callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_28
    goto :goto_e

    .line 2088
    :cond_29
    return-void
.end method

.method public whitelist changePeerDimensions(II)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2015
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_29

    .line 2016
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2018
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2021
    goto :goto_28

    .line 2019
    :catch_1e
    move-exception v2

    .line 2020
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string v3, "changePeerDimensions callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_28
    goto :goto_e

    .line 2024
    :cond_29
    return-void
.end method

.method public whitelist changeVideoQuality(I)V
    .registers 7
    .param p1, "videoQuality"    # I

    .line 2104
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_29

    .line 2105
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2107
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2110
    goto :goto_28

    .line 2108
    :catch_1e
    move-exception v2

    .line 2109
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string v3, "changeVideoQuality callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2111
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_28
    goto :goto_e

    .line 2113
    :cond_29
    return-void
.end method

.method public final greylist-max-o getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 1756
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public whitelist handleCallSessionEvent(I)V
    .registers 7
    .param p1, "event"    # I

    .line 1990
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2a

    .line 1991
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 1993
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 1996
    goto :goto_29

    .line 1994
    :catch_1e
    move-exception v2

    .line 1995
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "handleCallSessionEvent callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1997
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_29
    goto :goto_e

    .line 1999
    :cond_2a
    return-void
.end method

.method public abstract whitelist onRequestCameraCapabilities()V
.end method

.method public abstract whitelist onRequestConnectionDataUsage()V
.end method

.method public abstract whitelist onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract whitelist onSetCamera(Ljava/lang/String;)V
.end method

.method public greylist-max-o onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "targetSdkVersion"    # I

    .line 1796
    return-void
.end method

.method public abstract whitelist onSetDeviceOrientation(I)V
.end method

.method public abstract whitelist onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract whitelist onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract whitelist onSetZoom(F)V
.end method

.method public whitelist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 7
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 1931
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2a

    .line 1932
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 1934
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 1937
    goto :goto_29

    .line 1935
    :catch_1e
    move-exception v2

    .line 1936
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyRequest callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_29
    goto :goto_e

    .line 1940
    :cond_2a
    return-void
.end method

.method public whitelist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1962
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2a

    .line 1963
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 1965
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 1969
    goto :goto_29

    .line 1967
    :catch_1e
    move-exception v2

    .line 1968
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyResponse callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_29
    goto :goto_e

    .line 1972
    :cond_2a
    return-void
.end method

.method public whitelist setCallDataUsage(J)V
    .registers 8
    .param p1, "dataUsage"    # J

    .line 2042
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2a

    .line 2043
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IVideoCallback;

    .line 2045
    .local v1, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_1a
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2048
    goto :goto_29

    .line 2046
    :catch_1e
    move-exception v2

    .line 2047
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallDataUsage callback failed"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    .end local v1    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :goto_29
    goto :goto_e

    .line 2051
    :cond_2a
    return-void
.end method
