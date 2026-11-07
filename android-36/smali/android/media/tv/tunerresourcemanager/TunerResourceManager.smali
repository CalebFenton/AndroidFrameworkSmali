.class public Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
.super Ljava/lang/Object;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;,
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$TunerResourceType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist INVALID_OWNER_ID:I = -0x1

.field public static final blacklist INVALID_RESOURCE_HANDLE:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "TunerResourceManager"

.field public static final blacklist TUNER_RESOURCE_TYPE_CAS_SESSION:I = 0x4

.field public static final blacklist TUNER_RESOURCE_TYPE_DEMUX:I = 0x1

.field public static final blacklist TUNER_RESOURCE_TYPE_DESCRAMBLER:I = 0x2

.field public static final blacklist TUNER_RESOURCE_TYPE_FRONTEND:I = 0x0

.field public static final blacklist TUNER_RESOURCE_TYPE_FRONTEND_CICAM:I = 0x5

.field public static final blacklist TUNER_RESOURCE_TYPE_LNB:I = 0x3

.field public static final blacklist TUNER_RESOURCE_TYPE_MAX:I = 0x6


# instance fields
.field private final blacklist mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    const-string v0, "TunerResourceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;I)V
    .registers 3
    .param p1, "service"    # Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
    .param p2, "userId"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    .line 106
    iput p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mUserId:I

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist acquireLock(I)Z
    .registers 5
    .param p1, "clientId"    # I

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->acquireLock(IJ)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 383
    :catch_f
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->clearResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getClientPriority(II)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "pid"    # I

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getClientPriority(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 819
    :catch_7
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getConfigPriority(IZ)I
    .registers 5
    .param p1, "useCase"    # I
    .param p2, "isForeground"    # Z

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getConfigPriority(IZ)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 842
    :catch_7
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMaxNumberOfFrontends(I)I
    .registers 5
    .param p1, "frontendType"    # I

    .line 472
    const/4 v0, -0x1

    .line 474
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 477
    .end local v0    # "result":I
    .local v1, "result":I
    nop

    .line 478
    return v1

    .line 475
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :catch_9
    move-exception v1

    .line 476
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist hasUnusedFrontend(I)Z
    .registers 5
    .param p1, "frontendType"    # I

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 199
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 200
    return v1

    .line 197
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 5
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 798
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 799
    :catch_7
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isLowestPriority(II)Z
    .registers 6
    .param p1, "clientId"    # I
    .param p2, "frontendType"    # I

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isLowestPriority(II)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 222
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 223
    return v1

    .line 220
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
    .registers 7
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
    .param p4, "clientId"    # [I

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v0, p1, v1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 144
    nop

    .line 145
    return-void

    .line 142
    :catch_c
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseCasSession(JI)V
    .registers 6
    .param p1, "casSessionHandle"    # J
    .param p3, "clientId"    # I

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCasSession(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catch_7
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseCiCam(JI)V
    .registers 6
    .param p1, "ciCamHandle"    # J
    .param p3, "clientId"    # I

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCiCam(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catch_7
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseDemux(JI)V
    .registers 6
    .param p1, "demuxHandle"    # J
    .param p3, "clientId"    # I

    .line 709
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDemux(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 712
    nop

    .line 713
    return-void

    .line 710
    :catch_7
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseDescrambler(JI)V
    .registers 6
    .param p1, "descramblerHandle"    # J
    .param p3, "clientId"    # I

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDescrambler(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 728
    nop

    .line 729
    return-void

    .line 726
    :catch_7
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseFrontend(JI)V
    .registers 6
    .param p1, "frontendHandle"    # J
    .param p3, "clientId"    # I

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseFrontend(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 696
    nop

    .line 697
    return-void

    .line 694
    :catch_7
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseLnb(JI)V
    .registers 6
    .param p1, "lnbHandle"    # J
    .param p3, "clientId"    # I

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLnb(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 784
    nop

    .line 785
    return-void

    .line 782
    :catch_7
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist releaseLock(I)Z
    .registers 4
    .param p1, "clientId"    # I

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLock(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 403
    :catch_7
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [J

    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 611
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 612
    return v1

    .line 609
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 610
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .param p2, "ciCamHandle"    # [J

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 643
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 644
    return v1

    .line 641
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 642
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [J

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 544
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 545
    return v1

    .line 542
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 543
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [J

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 578
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 579
    return v1

    .line 576
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 577
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [J

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 440
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 441
    return v1

    .line 438
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 439
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 6
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [J

    .line 671
    const/4 v0, 0x0

    .line 673
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 676
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 677
    return v1

    .line 674
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist restoreResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->restoreResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 295
    nop

    .line 296
    return-void

    .line 293
    :catch_7
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 4
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_7
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 4
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catch_7
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setLnbInfoList([J)V
    .registers 4
    .param p1, "lnbIds"    # [J

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setLnbInfoList([J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 363
    nop

    .line 364
    return-void

    .line 361
    :catch_7
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMaxNumberOfFrontends(II)Z
    .registers 6
    .param p1, "frontendType"    # I
    .param p2, "maxNum"    # I

    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 459
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 460
    return v1

    .line 457
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setResourceOwnershipRetention(IZ)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "enabled"    # Z

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setResourceOwnershipRetention(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_7
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shareFrontend(II)V
    .registers 5
    .param p1, "selfClientId"    # I
    .param p2, "targetClientId"    # I

    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->shareFrontend(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 495
    nop

    .line 496
    return-void

    .line 493
    :catch_7
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist storeResourceMap(I)V
    .registers 4
    .param p1, "resourceType"    # I

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->storeResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_7
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist transferOwner(III)Z
    .registers 6
    .param p1, "resourceType"    # I
    .param p2, "currentOwnerId"    # I
    .param p3, "newOwnerId"    # I

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->transferOwner(III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 512
    :catch_7
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterClientProfile(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->unregisterClientProfile(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_7
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateCasInfo(II)V
    .registers 5
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateCasInfo(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_7
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateClientPriority(III)Z
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateClientPriority(III)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 184
    .end local v0    # "result":Z
    .local v1, "result":Z
    nop

    .line 185
    return v1

    .line 182
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catch_9
    move-exception v1

    .line 183
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
