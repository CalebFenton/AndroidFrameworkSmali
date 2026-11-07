.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final whitelist AGENT_ERROR:I = -0x3eb

.field public static final whitelist AGENT_UNKNOWN:I = -0x3ec

.field public static final whitelist EXTRA_TRANSPORT_REGISTRATION:Ljava/lang/String; = "android.app.backup.extra.TRANSPORT_REGISTRATION"

.field public static final whitelist FLAG_DATA_NOT_CHANGED:I = 0x8

.field public static final whitelist FLAG_INCREMENTAL:I = 0x2

.field public static final whitelist FLAG_NON_INCREMENTAL:I = 0x4

.field public static final whitelist FLAG_USER_INITIATED:I = 0x1

.field public static final whitelist NO_MORE_DATA:I = -0x1

.field public static final whitelist TRANSPORT_ERROR:I = -0x3e8

.field public static final whitelist TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED:I = -0x3ee

.field public static final whitelist TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final whitelist TRANSPORT_OK:I = 0x0

.field public static final whitelist TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final whitelist TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed


# instance fields
.field greylist-max-o mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public whitelist abortFullRestore()I
    .registers 2

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist cancelFullBackup()V
    .registers 3

    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport cancelFullBackup() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkFullBackupSize(J)I
    .registers 4
    .param p1, "size"    # J

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearBackupData(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 265
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist configurationIntent()Landroid/content/Intent;
    .registers 2

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist currentDestinationString()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport currentDestinationString() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dataManagementIntent()Landroid/content/Intent;
    .registers 2

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist dataManagementIntentLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 211
    invoke-virtual {p0}, Landroid/app/backup/BackupTransport;->dataManagementLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dataManagementLabel()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport dataManagementLabel() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishBackup()I
    .registers 2

    .line 277
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist finishRestore()V
    .registers 3

    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport finishRestore() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .registers 2

    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBackupManagerMonitor()Landroid/app/backup/BackupManagerMonitor;
    .registers 2

    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBackupQuota(Ljava/lang/String;Z)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    .line 593
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentRestoreSet()J
    .registers 3

    .line 367
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .registers 3
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackagesThatShouldNotUseRestrictedMode(Ljava/util/List;I)Ljava/util/List;
    .registers 4
    .param p2, "operationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 689
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .registers 3
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .line 428
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist getTransportFlags()I
    .registers 2

    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist initializeDevice()I
    .registers 2

    .line 253
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .registers 4
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z

    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist name()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport name() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .registers 2

    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;

    .line 342
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    .line 334
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .line 507
    const/16 v0, -0x3ea

    return v0
.end method

.method public whitelist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    .line 499
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public whitelist requestBackupTime()J
    .registers 3

    .line 295
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist requestFullBackupTime()J
    .registers 3

    .line 457
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist sendBackupData(I)I
    .registers 3
    .param p1, "numBytes"    # I

    .line 550
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist startRestore(J[Landroid/content/pm/PackageInfo;)I
    .registers 5
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .line 384
    const/16 v0, -0x3e8

    return v0
.end method

.method public whitelist transportDirName()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transport transportDirName() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
