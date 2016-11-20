.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final AGENT_ERROR:I = -0x3eb

.field public static final AGENT_UNKNOWN:I = -0x3ec

.field public static final FLAG_USER_INITIATED:I = 0x1

.field public static final NO_MORE_DATA:I = -0x1

.field public static final TRANSPORT_ERROR:I = -0x3e8

.field public static final TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final TRANSPORT_OK:I = 0x0

.field public static final TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed


# instance fields
.field mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    #@5
    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    #@8
    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    #@a
    .line 35
    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 1

    #@0
    .prologue
    .line 563
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public cancelFullBackup()V
    .locals 2

    #@0
    .prologue
    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 483
    const-string/jumbo v1, "Transport cancelFullBackup() not implemented"

    #@5
    .line 482
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkFullBackupSize(J)I
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 448
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 195
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 104
    const-string/jumbo v1, "Transport currentDestinationString() not implemented"

    #@5
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 141
    const-string/jumbo v1, "Transport dataManagementLabel() not implemented"

    #@5
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public finishBackup()I
    .locals 1

    #@0
    .prologue
    .line 207
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public finishRestore()V
    .locals 2

    #@0
    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 351
    const-string/jumbo v1, "Transport finishRestore() not implemented"

    #@5
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 1

    #@0
    .prologue
    .line 269
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    #@0
    .prologue
    .line 507
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    #@2
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    #@0
    .prologue
    .line 281
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 546
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 342
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public initializeDevice()I
    .locals 1

    #@0
    .prologue
    .line 183
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z

    #@0
    .prologue
    .line 495
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Transport name() not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 1

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 256
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 421
    const/16 v0, -0x3ea

    #@2
    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public requestBackupTime()J
    .locals 2

    #@0
    .prologue
    .line 225
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    #@0
    .prologue
    .line 371
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 1
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 464
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 298
    const/16 v0, -0x3e8

    #@2
    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 158
    const-string/jumbo v1, "Transport transportDirName() not implemented"

    #@5
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
