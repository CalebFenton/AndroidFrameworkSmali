.class public Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Default;
.super Ljava/lang/Object;
.source "ITunerResourceManager.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquireLock(IJ)Z
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "clientThreadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearResourceMap(I)V
    .registers 2
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    return-void
.end method

.method public blacklist getClientPriority(II)I
    .registers 4
    .param p1, "useCase"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConfigPriority(IZ)I
    .registers 4
    .param p1, "useCase"    # I
    .param p2, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxNumberOfFrontends(I)I
    .registers 3
    .param p1, "frontendType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUnusedFrontend(I)Z
    .registers 3
    .param p1, "frontendType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 4
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLowestPriority(II)Z
    .registers 4
    .param p1, "clientId"    # I
    .param p2, "frontendType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 4
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .param p3, "clientId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist releaseCasSession(JI)V
    .registers 4
    .param p1, "casSessionHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    return-void
.end method

.method public blacklist releaseCiCam(JI)V
    .registers 4
    .param p1, "ciCamHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    return-void
.end method

.method public blacklist releaseDemux(JI)V
    .registers 4
    .param p1, "demuxHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    return-void
.end method

.method public blacklist releaseDescrambler(JI)V
    .registers 4
    .param p1, "descramblerHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    return-void
.end method

.method public blacklist releaseFrontend(JI)V
    .registers 4
    .param p1, "frontendHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    return-void
.end method

.method public blacklist releaseLnb(JI)V
    .registers 4
    .param p1, "lnbHandle"    # J
    .param p3, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    return-void
.end method

.method public blacklist releaseLock(I)Z
    .registers 3
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .param p2, "ciCamHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restoreResourceMap(I)V
    .registers 2
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    return-void
.end method

.method public blacklist setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 2
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 2
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist setLnbInfoList([J)V
    .registers 2
    .param p1, "lnbIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist setMaxNumberOfFrontends(II)Z
    .registers 4
    .param p1, "frontendType"    # I
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setResourceOwnershipRetention(IZ)V
    .registers 3
    .param p1, "clientId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist shareFrontend(II)V
    .registers 3
    .param p1, "selfClientId"    # I
    .param p2, "targetClientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    return-void
.end method

.method public blacklist storeResourceMap(I)V
    .registers 2
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    return-void
.end method

.method public blacklist transferOwner(III)Z
    .registers 5
    .param p1, "resourceType"    # I
    .param p2, "currentOwnerId"    # I
    .param p3, "newOwnerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterClientProfile(I)V
    .registers 2
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist updateCasInfo(II)V
    .registers 3
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public blacklist updateClientPriority(III)Z
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return v0
.end method
