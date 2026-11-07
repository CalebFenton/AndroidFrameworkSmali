.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallingPackage:Ljava/lang/String;

.field private final greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final greylist-max-o mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final greylist-max-o mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V
    .registers 8
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 446
    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 460
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    .line 466
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 467
    iput-object p2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallingPackage:Ljava/lang/String;

    .line 468
    iput p3, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mTargetSdkVersion:I

    .line 470
    :try_start_2a
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_39} :catch_3a

    .line 472
    goto :goto_3b

    .line 471
    :catch_3a
    move-exception v0

    .line 473
    :goto_3b
    return-void
.end method


# virtual methods
.method public whitelist registerCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 481
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public whitelist requestCallDataUsage()V
    .registers 2

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 615
    goto :goto_7

    .line 614
    :catch_6
    move-exception v0

    .line 616
    :goto_7
    return-void
.end method

.method public whitelist requestCameraCapabilities()V
    .registers 2

    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 602
    goto :goto_7

    .line 601
    :catch_6
    move-exception v0

    .line 603
    :goto_7
    return-void
.end method

.method public whitelist sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 575
    goto :goto_7

    .line 574
    :catch_6
    move-exception v0

    .line 576
    :goto_7
    return-void
.end method

.method public whitelist sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 589
    goto :goto_7

    .line 588
    :catch_6
    move-exception v0

    .line 590
    :goto_7
    return-void
.end method

.method public whitelist setCamera(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallingPackage:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mTargetSdkVersion:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 505
    goto :goto_b

    .line 504
    :catch_a
    move-exception v0

    .line 506
    :goto_b
    return-void
.end method

.method public whitelist setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 547
    goto :goto_7

    .line 546
    :catch_6
    move-exception v0

    .line 548
    :goto_7
    return-void
.end method

.method public whitelist setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 531
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 533
    goto :goto_7

    .line 532
    :catch_6
    move-exception v0

    .line 534
    :goto_7
    return-void
.end method

.method public whitelist setPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 626
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 628
    goto :goto_7

    .line 627
    :catch_6
    move-exception v0

    .line 629
    :goto_7
    return-void
.end method

.method public whitelist setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 519
    goto :goto_7

    .line 518
    :catch_6
    move-exception v0

    .line 520
    :goto_7
    return-void
.end method

.method public whitelist setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .line 558
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 560
    goto :goto_7

    .line 559
    :catch_6
    move-exception v0

    .line 561
    :goto_7
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 490
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method
