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
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_REMOVE_VIDEO_CALLBACK:I = 0xc

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_ZOOM:I = 0x6

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 536
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    const/16 v1, 0x8

    #@7
    const v2, 0x3f666666    # 0.9f

    #@a
    const/4 v3, 0x1

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 535
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    .line 684
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    #@16
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    #@18
    .line 685
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@1a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    #@21
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@23
    .line 683
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 536
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    const/16 v1, 0x8

    #@7
    const v2, 0x3f666666    # 0.9f

    #@a
    const/4 v3, 0x1

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@e
    .line 535
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    .line 695
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    #@16
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    #@18
    .line 696
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@1a
    invoke-direct {v0, p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    #@1d
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@1f
    .line 694
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 1
    .param p1, "dataUsage"    # J

    #@0
    .prologue
    .line 982
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    #@3
    .line 981
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 6
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    #@0
    .prologue
    .line 1000
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1001
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 1003
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 1004
    :catch_0
    move-exception v2

    #@1f
    .line 1005
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeCameraCapabilities callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 999
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 936
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 937
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 939
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 940
    :catch_0
    move-exception v2

    #@1f
    .line 941
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changePeerDimensions callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 935
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 6
    .param p1, "videoQuality"    # I

    #@0
    .prologue
    .line 1025
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1026
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 1028
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 1029
    :catch_0
    move-exception v2

    #@1f
    .line 1030
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeVideoQuality callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1024
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    #@2
    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 6
    .param p1, "event"    # I

    #@0
    .prologue
    .line 911
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 912
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 914
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 915
    :catch_0
    move-exception v2

    #@1f
    .line 916
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "handleCallSessionEvent callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 910
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onRequestConnectionDataUsage()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 853
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 854
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 856
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 857
    :catch_0
    move-exception v2

    #@1f
    .line 858
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyRequest callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 852
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 884
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 885
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 887
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 889
    :catch_0
    move-exception v2

    #@1f
    .line 890
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyResponse callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 883
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setCallDataUsage(J)V
    .locals 7
    .param p1, "dataUsage"    # J

    #@0
    .prologue
    .line 963
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 964
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@1a
    .line 966
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 967
    :catch_0
    move-exception v2

    #@1f
    .line 968
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallDataUsage callback failed"

    #@22
    const/4 v4, 0x1

    #@23
    new-array v4, v4, [Ljava/lang/Object;

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v2, v4, v5

    #@28
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@2b
    goto :goto_0

    #@2c
    .line 962
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
