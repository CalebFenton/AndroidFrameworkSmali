.class public Landroid/content/pm/IPackageManagerNative$Default;
.super Ljava/lang/Object;
.source "IPackageManagerNative.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLocationFlags(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getModuleMetadataPackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNamesForUids([I)[Ljava/lang/String;
    .registers 3
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackageUid(Ljava/lang/String;JI)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStagedApexInfos()[Landroid/content/pm/StagedApexInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVersionCodeForPackage(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSystemFeature(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isPackageDebuggable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/content/pm/IStagedApexObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public blacklist unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/content/pm/IStagedApexObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method
