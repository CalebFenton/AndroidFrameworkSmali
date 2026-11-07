.class public Landroid/content/pm/dex/ArtManager;
.super Ljava/lang/Object;
.source "ArtManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;,
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;,
        Landroid/content/pm/dex/ArtManager$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist PROFILE_APPS:I = 0x0

.field public static final whitelist PROFILE_BOOT_IMAGE:I = 0x1

.field public static final whitelist SNAPSHOT_FAILED_CODE_PATH_NOT_FOUND:I = 0x1

.field public static final whitelist SNAPSHOT_FAILED_INTERNAL_ERROR:I = 0x2

.field public static final whitelist SNAPSHOT_FAILED_PACKAGE_NOT_FOUND:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArtManager"


# instance fields
.field private final greylist-max-o mArtManager:Landroid/content/pm/dex/IArtManager;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/dex/IArtManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/content/pm/dex/IArtManager;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    .line 78
    return-void
.end method

.method public static greylist-max-o getCurrentProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "splitName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1, p0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 200
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "splitName"    # Ljava/lang/String;

    .line 190
    if-nez p0, :cond_6

    const-string/jumbo v0, "primary.prof"

    goto :goto_19

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".split.prof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public static greylist-max-o getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "profileName"    # Ljava/lang/String;

    .line 222
    invoke-static {p0}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 223
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".snapshot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist getReferenceProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "splitName"    # Ljava/lang/String;

    .line 209
    invoke-static {p0}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist isRuntimeProfilingEnabled(I)Z
    .registers 4
    .param p1, "profileType"    # I

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 135
    :catch_d
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;)V
    .registers 14
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting profile snapshot for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p5, p4, v1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager-IA;)V

    move-object v6, v0

    .line 116
    .local v6, "delegate":Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;
    :try_start_29
    iget-object v2, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_3c

    .line 116
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "profileType":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "codePath":Ljava/lang/String;
    .local v3, "profileType":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "codePath":Ljava/lang/String;
    :try_start_34
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_39

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_39
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .end local v3    # "profileType":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "codePath":Ljava/lang/String;
    .restart local p1    # "profileType":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "codePath":Ljava/lang/String;
    :catch_3c
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 119
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "codePath":Ljava/lang/String;
    .restart local v3    # "profileType":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "codePath":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_41
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
