.class public Landroid/apex/IApexService$Default;
.super Ljava/lang/Object;
.source "IApexService.java"

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortStagedSession(I)V
    .registers 2
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .registers 4
    .param p1, "compressed_apex_info_list"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist destroyCeSnapshots(II)V
    .registers 3
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist destroyCeSnapshotsNotSpecified(I[I)V
    .registers 3
    .param p1, "user_id"    # I
    .param p2, "retain_rollback_ids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist destroyDeSnapshots(I)V
    .registers 2
    .param p1, "rollback_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist getActivePackages()[Landroid/apex/ApexInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllPackages()[Landroid/apex/ApexInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSessions()[Landroid/apex/ApexSessionInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .registers 3
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 3
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;
    .registers 4
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist markBootCompleted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist markStagedSessionReady(I)V
    .registers 2
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist markStagedSessionSuccessful(I)V
    .registers 2
    .param p1, "session_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist recollectPreinstalledData()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .registers 2
    .param p1, "compressed_apex_info_list"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist restoreCeData(IILjava/lang/String;)V
    .registers 4
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .param p3, "apex_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public blacklist resumeRevertIfNeeded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist revertActiveSessions()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist snapshotCeData(IILjava/lang/String;)V
    .registers 4
    .param p1, "user_id"    # I
    .param p2, "rollback_id"    # I
    .param p3, "apex_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist stagePackages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    .local p1, "package_tmp_paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    .registers 3
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .param p2, "packages"    # Landroid/apex/ApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist unstagePackages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    .local p1, "active_package_paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
