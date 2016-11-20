.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$RestorePolicy:[I

.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mAllowApks:Z

.field mAllowObbs:Z

.field mBuffer:[B

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mMonitorTask:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOnlyPackage:Landroid/content/pm/PackageInfo;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->values()[Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@10
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@19
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@22
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "allowObbs"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5334
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@6
    .line 5272
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@8
    .line 5276
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 5275
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@f
    .line 5279
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    #@16
    .line 5283
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    .line 5282
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    #@1d
    .line 5286
    new-instance v0, Ljava/util/HashSet;

    #@1f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    #@24
    .line 5295
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@26
    .line 5298
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    #@28
    .line 5776
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@2f
    .line 5777
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    #@34
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    #@36
    .line 5336
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@38
    .line 5337
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3a
    .line 5338
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    #@3c
    .line 5339
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    #@3e
    .line 5340
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowObbs:Z

    #@40
    .line 5341
    const v0, 0x8000

    #@43
    new-array v0, v0, [B

    #@45
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@47
    .line 5342
    const-wide/16 v0, 0x0

    #@49
    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@4b
    .line 5335
    return-void
.end method

.method private HEXLOG([B)V
    .locals 10
    .param p1, "block"    # [B

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 6287
    const/4 v3, 0x0

    #@3
    .line 6288
    .local v3, "offset":I
    array-length v4, p1

    #@4
    .line 6289
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const/16 v5, 0x40

    #@8
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 6290
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    #@d
    .line 6291
    const-string/jumbo v5, "%04x   "

    #@10
    new-array v6, v9, [Ljava/lang/Object;

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v7

    #@16
    aput-object v7, v6, v8

    #@18
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 6292
    const/16 v5, 0x10

    #@21
    if-le v4, v5, :cond_0

    #@23
    const/16 v2, 0x10

    #@25
    .line 6293
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    #@28
    .line 6294
    const-string/jumbo v5, "%02x "

    #@2b
    new-array v6, v9, [Ljava/lang/Object;

    #@2d
    add-int v7, v3, v1

    #@2f
    aget-byte v7, p1, v7

    #@31
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v6, v8

    #@37
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 6293
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_2

    #@41
    .line 6292
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    #@42
    .restart local v2    # "numThisLine":I
    goto :goto_1

    #@43
    .line 6296
    .restart local v1    # "i":I
    :cond_1
    const-string/jumbo v5, "hexdump"

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 6297
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@50
    .line 6298
    sub-int/2addr v4, v2

    #@51
    .line 6299
    add-int/2addr v3, v2

    #@52
    goto :goto_0

    #@53
    .line 6286
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method

.method private isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6254
    const-string/jumbo v0, "c"

    #@4
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 6258
    return v2

    #@d
    .line 6261
    :cond_0
    const-string/jumbo v0, "r"

    #@10
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 6266
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1a
    const-string/jumbo v1, "no_backup/"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 6270
    return v2

    #@24
    .line 6275
    :cond_1
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@26
    const-string/jumbo v1, ".."

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_2

    #@2f
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@31
    const-string/jumbo v1, "//"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3

    #@3a
    .line 6279
    :cond_2
    return v2

    #@3b
    .line 6283
    :cond_3
    const/4 v0, 0x1

    #@3c
    return v0
.end method


# virtual methods
.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@0
    .prologue
    .line 6117
    return-void
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6100
    array-length v1, p1

    #@1
    .line 6101
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    #@3
    new-instance v3, Ljava/io/IOException;

    #@5
    const-string/jumbo v4, "Incomplete data"

    #@8
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 6104
    :cond_0
    move v2, p2

    #@d
    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@f
    .line 6105
    aget-byte v0, p1, v2

    #@11
    .line 6108
    .local v0, "c":B
    const/16 v3, 0xa

    #@13
    if-ne v0, v3, :cond_2

    #@15
    .line 6112
    .end local v0    # "c":B
    :cond_1
    new-instance v3, Ljava/lang/String;

    #@17
    sub-int v4, v2, p2

    #@19
    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    #@1c
    const/4 v4, 0x0

    #@1d
    aput-object v3, p3, v4

    #@1f
    .line 6113
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 6114
    return v2

    #@22
    .line 6104
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x30

    #@2
    .line 6390
    const-wide/16 v4, 0x0

    #@4
    .line 6391
    .local v4, "value":J
    add-int v1, p2, p3

    #@6
    .line 6392
    .local v1, "end":I
    move v2, p2

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@9
    .line 6393
    aget-byte v0, p1, v2

    #@b
    .line 6395
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@d
    const/16 v3, 0x20

    #@f
    if-ne v0, v3, :cond_1

    #@11
    .line 6402
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    #@12
    .line 6396
    .restart local v0    # "b":B
    :cond_1
    if-lt v0, v10, :cond_2

    #@14
    add-int/lit8 v3, p4, 0x30

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    if-le v0, v3, :cond_3

    #@1a
    .line 6397
    :cond_2
    new-instance v3, Ljava/io/IOException;

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "Invalid number in header: \'"

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    int-to-char v7, v0

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 6398
    const-string/jumbo v7, "\' for radix "

    #@30
    .line 6397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3

    #@40
    .line 6400
    :cond_3
    int-to-long v6, p4

    #@41
    mul-long/2addr v6, v4

    #@42
    add-int/lit8 v3, v0, -0x30

    #@44
    int-to-long v8, v3

    #@45
    add-long v4, v6, v8

    #@47
    .line 6392
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6406
    add-int v0, p2, p3

    #@2
    .line 6407
    .local v0, "end":I
    move v1, p2

    #@3
    .line 6409
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@5
    aget-byte v2, p1, v1

    #@7
    if-eqz v2, :cond_0

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 6410
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@e
    sub-int v3, v1, p2

    #@10
    const-string/jumbo v4, "US-ASCII"

    #@13
    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@16
    return-object v2
.end method

.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    #@0
    .prologue
    .line 5346
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@2
    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    #@0
    .prologue
    .line 5350
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    #@2
    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    #@0
    .prologue
    .line 5704
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    #@3
    .line 5705
    const/4 v0, -0x2

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    #@7
    .line 5706
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    #@b
    .line 5703
    return-void
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 5780
    const/4 v10, 0x1

    #@1
    .line 5782
    .local v10, "okay":Z
    const-string/jumbo v19, "RestoreEngine"

    #@4
    new-instance v20, Ljava/lang/StringBuilder;

    #@6
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v21, "Installing from backup: "

    #@c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v20

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@14
    move-object/from16 v21, v0

    #@16
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v20

    #@1a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v20

    #@1e
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 5786
    new-instance v4, Ljava/io/File;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    move-object/from16 v19, v0

    #@29
    move-object/from16 v0, v19

    #@2b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@2d
    move-object/from16 v19, v0

    #@2f
    move-object/from16 v0, p1

    #@31
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@33
    move-object/from16 v20, v0

    #@35
    move-object/from16 v0, v19

    #@37
    move-object/from16 v1, v20

    #@39
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c
    .line 5788
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    #@3e
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@41
    .line 5789
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v19, 0x8000

    #@44
    move/from16 v0, v19

    #@46
    new-array v6, v0, [B

    #@48
    .line 5790
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    #@4a
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4c
    .line 5791
    .local v14, "size":J
    :goto_0
    const-wide/16 v20, 0x0

    #@4e
    cmp-long v19, v14, v20

    #@50
    if-lez v19, :cond_2

    #@52
    .line 5792
    array-length v0, v6

    #@53
    move/from16 v19, v0

    #@55
    move/from16 v0, v19

    #@57
    int-to-long v0, v0

    #@58
    move-wide/from16 v20, v0

    #@5a
    cmp-long v19, v20, v14

    #@5c
    if-gez v19, :cond_1

    #@5e
    array-length v0, v6

    #@5f
    move/from16 v19, v0

    #@61
    move/from16 v0, v19

    #@63
    int-to-long v0, v0

    #@64
    move-wide/from16 v16, v0

    #@66
    .line 5793
    .local v16, "toRead":J
    :goto_1
    move-wide/from16 v0, v16

    #@68
    long-to-int v0, v0

    #@69
    move/from16 v19, v0

    #@6b
    const/16 v20, 0x0

    #@6d
    move-object/from16 v0, p3

    #@6f
    move/from16 v1, v20

    #@71
    move/from16 v2, v19

    #@73
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    #@76
    move-result v7

    #@77
    .line 5794
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@7d
    move-wide/from16 v20, v0

    #@7f
    int-to-long v0, v7

    #@80
    move-wide/from16 v22, v0

    #@82
    add-long v20, v20, v22

    #@84
    move-wide/from16 v0, v20

    #@86
    move-object/from16 v2, p0

    #@88
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@8a
    .line 5795
    :cond_0
    const/16 v19, 0x0

    #@8c
    move/from16 v0, v19

    #@8e
    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    #@91
    .line 5796
    int-to-long v0, v7

    #@92
    move-wide/from16 v20, v0

    #@94
    sub-long v14, v14, v20

    #@96
    goto :goto_0

    #@97
    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    #@99
    .line 5792
    goto :goto_1

    #@9a
    .line 5798
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    #@9d
    .line 5801
    const/16 v19, 0x1

    #@9f
    const/16 v20, 0x0

    #@a1
    move/from16 v0, v19

    #@a3
    move/from16 v1, v20

    #@a5
    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    #@a8
    .line 5804
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@ab
    move-result-object v11

    #@ac
    .line 5805
    .local v11, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@b0
    move-object/from16 v19, v0

    #@b2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->reset()V

    #@b5
    .line 5806
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b9
    move-object/from16 v19, v0

    #@bb
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@be
    move-result-object v19

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@c3
    move-object/from16 v20, v0

    #@c5
    .line 5807
    const/16 v21, 0x22

    #@c7
    .line 5806
    move-object/from16 v0, v19

    #@c9
    move-object/from16 v1, v20

    #@cb
    move/from16 v2, v21

    #@cd
    move-object/from16 v3, p2

    #@cf
    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    #@d2
    .line 5809
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@d6
    move-object/from16 v19, v0

    #@d8
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->waitForCompletion()V

    #@db
    .line 5811
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@df
    move-object/from16 v19, v0

    #@e1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->getResult()I

    #@e4
    move-result v19

    #@e5
    const/16 v20, 0x1

    #@e7
    move/from16 v0, v19

    #@e9
    move/from16 v1, v20

    #@eb
    if-eq v0, v1, :cond_4

    #@ed
    .line 5815
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@f1
    move-object/from16 v19, v0

    #@f3
    move-object/from16 v0, p1

    #@f5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@f7
    move-object/from16 v20, v0

    #@f9
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    move-result-object v19

    #@fd
    sget-object v20, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ff
    move-object/from16 v0, v19

    #@101
    move-object/from16 v1, v20

    #@103
    if-eq v0, v1, :cond_3

    #@105
    .line 5816
    const/4 v10, 0x0

    #@106
    .line 5875
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@109
    .line 5878
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v10

    #@10a
    .line 5820
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/16 v18, 0x0

    #@10c
    .line 5821
    .local v18, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@110
    move-object/from16 v19, v0

    #@112
    move-object/from16 v0, v19

    #@114
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@116
    move-object/from16 v19, v0

    #@118
    move-object/from16 v0, p1

    #@11a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@11c
    move-object/from16 v20, v0

    #@11e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v19

    #@122
    if-nez v19, :cond_6

    #@124
    .line 5822
    const-string/jumbo v19, "RestoreEngine"

    #@127
    new-instance v20, Ljava/lang/StringBuilder;

    #@129
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v21, "Restore stream claimed to include apk for "

    #@12f
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v20

    #@133
    .line 5823
    move-object/from16 v0, p1

    #@135
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@137
    move-object/from16 v21, v0

    #@139
    .line 5822
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v20

    #@13d
    .line 5823
    const-string/jumbo v21, " but apk was really "

    #@140
    .line 5822
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v20

    #@144
    .line 5824
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@148
    move-object/from16 v21, v0

    #@14a
    move-object/from16 v0, v21

    #@14c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@14e
    move-object/from16 v21, v0

    #@150
    .line 5822
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v20

    #@154
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v20

    #@158
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 5826
    const/4 v10, 0x0

    #@15c
    .line 5827
    const/16 v18, 0x1

    #@15e
    .line 5864
    :cond_5
    :goto_4
    if-eqz v18, :cond_3

    #@160
    .line 5865
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    #@164
    move-object/from16 v19, v0

    #@166
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->reset()V

    #@169
    .line 5866
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16d
    move-object/from16 v19, v0

    #@16f
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@172
    move-result-object v19

    #@173
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    #@177
    move-object/from16 v20, v0

    #@179
    move-object/from16 v0, v20

    #@17b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@17d
    move-object/from16 v20, v0

    #@17f
    .line 5867
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    #@183
    move-object/from16 v21, v0

    #@185
    const/16 v22, 0x0

    #@187
    .line 5866
    invoke-virtual/range {v19 .. v22}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    #@18a
    .line 5868
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    #@18e
    move-object/from16 v19, v0

    #@190
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@193
    goto/16 :goto_2

    #@195
    .line 5871
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catch_0
    move-exception v9

    #@196
    .line 5872
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "RestoreEngine"

    #@199
    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    #@19c
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19f
    .line 5873
    const/4 v10, 0x0

    #@1a0
    .line 5875
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@1a3
    goto/16 :goto_3

    #@1a5
    .line 5830
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    .restart local v18    # "uninstall":Z
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a9
    move-object/from16 v19, v0

    #@1ab
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1ae
    move-result-object v19

    #@1af
    move-object/from16 v0, p1

    #@1b1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1b3
    move-object/from16 v20, v0

    #@1b5
    .line 5831
    const/16 v21, 0x40

    #@1b7
    .line 5830
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1ba
    move-result-object v12

    #@1bb
    .line 5832
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1bd
    move-object/from16 v19, v0

    #@1bf
    move-object/from16 v0, v19

    #@1c1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1c3
    move/from16 v19, v0

    #@1c5
    const v20, 0x8000

    #@1c8
    and-int v19, v19, v20

    #@1ca
    if-nez v19, :cond_7

    #@1cc
    .line 5833
    const-string/jumbo v19, "RestoreEngine"

    #@1cf
    new-instance v20, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v21, "Restore stream contains apk of package "

    #@1d7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v20

    #@1db
    .line 5834
    move-object/from16 v0, p1

    #@1dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1df
    move-object/from16 v21, v0

    #@1e1
    .line 5833
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v20

    #@1e5
    .line 5834
    const-string/jumbo v21, " but it disallows backup/restore"

    #@1e8
    .line 5833
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v20

    #@1ec
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v20

    #@1f0
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f3
    .line 5835
    const/4 v10, 0x0

    #@1f4
    goto/16 :goto_4

    #@1f6
    .line 5838
    :cond_7
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    #@1fa
    move-object/from16 v19, v0

    #@1fc
    move-object/from16 v0, p1

    #@1fe
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@200
    move-object/from16 v20, v0

    #@202
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@205
    move-result-object v13

    #@206
    check-cast v13, [Landroid/content/pm/Signature;

    #@208
    .line 5839
    .local v13, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v13, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    #@20b
    move-result v19

    #@20c
    if-eqz v19, :cond_8

    #@20e
    .line 5842
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@210
    move-object/from16 v19, v0

    #@212
    move-object/from16 v0, v19

    #@214
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@216
    move/from16 v19, v0

    #@218
    const/16 v20, 0x2710

    #@21a
    move/from16 v0, v19

    #@21c
    move/from16 v1, v20

    #@21e
    if-ge v0, v1, :cond_5

    #@220
    .line 5843
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@222
    move-object/from16 v19, v0

    #@224
    move-object/from16 v0, v19

    #@226
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@228
    move-object/from16 v19, v0

    #@22a
    if-nez v19, :cond_5

    #@22c
    .line 5844
    const-string/jumbo v19, "RestoreEngine"

    #@22f
    new-instance v20, Ljava/lang/StringBuilder;

    #@231
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@234
    const-string/jumbo v21, "Installed app "

    #@237
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v20

    #@23b
    move-object/from16 v0, p1

    #@23d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@23f
    move-object/from16 v21, v0

    #@241
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v20

    #@245
    .line 5845
    const-string/jumbo v21, " has restricted uid and no agent"

    #@248
    .line 5844
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v20

    #@24c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24f
    move-result-object v20

    #@250
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@253
    .line 5846
    const/4 v10, 0x0

    #@254
    goto/16 :goto_4

    #@256
    .line 5849
    :cond_8
    const-string/jumbo v19, "RestoreEngine"

    #@259
    new-instance v20, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v21, "Installed app "

    #@261
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v20

    #@265
    move-object/from16 v0, p1

    #@267
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@269
    move-object/from16 v21, v0

    #@26b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v20

    #@26f
    .line 5850
    const-string/jumbo v21, " signatures do not match restore manifest"

    #@272
    .line 5849
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v20

    #@276
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v20

    #@27a
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@27d
    .line 5851
    const/4 v10, 0x0

    #@27e
    .line 5852
    const/16 v18, 0x1

    #@280
    goto/16 :goto_4

    #@282
    .line 5855
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    #@283
    .line 5856
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v19, "RestoreEngine"

    #@286
    new-instance v20, Ljava/lang/StringBuilder;

    #@288
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@28b
    const-string/jumbo v21, "Install of package "

    #@28e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v20

    #@292
    move-object/from16 v0, p1

    #@294
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@296
    move-object/from16 v21, v0

    #@298
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v20

    #@29c
    .line 5857
    const-string/jumbo v21, " succeeded but now not found"

    #@29f
    .line 5856
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v20

    #@2a3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a6
    move-result-object v20

    #@2a7
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2aa
    .line 5858
    const/4 v10, 0x0

    #@2ab
    goto/16 :goto_4

    #@2ad
    .line 5874
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catchall_0
    move-exception v19

    #@2ae
    .line 5875
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@2b1
    .line 5874
    throw v19
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5964
    move-object/from16 v0, p1

    #@2
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4
    move-wide/from16 v20, v0

    #@6
    const-wide/32 v22, 0x10000

    #@9
    cmp-long v19, v20, v22

    #@b
    if-lez v19, :cond_0

    #@d
    .line 5965
    new-instance v19, Ljava/io/IOException;

    #@f
    new-instance v20, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v21, "Restore manifest too big; corrupt? size="

    #@17
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v20

    #@1b
    move-object/from16 v0, p1

    #@1d
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1f
    move-wide/from16 v22, v0

    #@21
    move-object/from16 v0, v20

    #@23
    move-wide/from16 v1, v22

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28
    move-result-object v20

    #@29
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v20

    #@2d
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v19

    #@31
    .line 5968
    :cond_0
    move-object/from16 v0, p1

    #@33
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@35
    move-wide/from16 v20, v0

    #@37
    move-wide/from16 v0, v20

    #@39
    long-to-int v0, v0

    #@3a
    move/from16 v19, v0

    #@3c
    move/from16 v0, v19

    #@3e
    new-array v4, v0, [B

    #@40
    .line 5973
    .local v4, "buffer":[B
    move-object/from16 v0, p1

    #@42
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@44
    move-wide/from16 v20, v0

    #@46
    move-wide/from16 v0, v20

    #@48
    long-to-int v0, v0

    #@49
    move/from16 v19, v0

    #@4b
    const/16 v20, 0x0

    #@4d
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, p2

    #@51
    move/from16 v2, v20

    #@53
    move/from16 v3, v19

    #@55
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    #@58
    move-result v19

    #@59
    move/from16 v0, v19

    #@5b
    int-to-long v0, v0

    #@5c
    move-wide/from16 v20, v0

    #@5e
    move-object/from16 v0, p1

    #@60
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@62
    move-wide/from16 v22, v0

    #@64
    cmp-long v19, v20, v22

    #@66
    if-nez v19, :cond_1

    #@68
    .line 5974
    move-object/from16 v0, p0

    #@6a
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@6c
    move-wide/from16 v20, v0

    #@6e
    move-object/from16 v0, p1

    #@70
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@72
    move-wide/from16 v22, v0

    #@74
    add-long v20, v20, v22

    #@76
    move-wide/from16 v0, v20

    #@78
    move-object/from16 v2, p0

    #@7a
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@7c
    .line 5977
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@7e
    .line 5978
    .local v15, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v19, 0x1

    #@80
    move/from16 v0, v19

    #@82
    new-array v0, v0, [Ljava/lang/String;

    #@84
    move-object/from16 v17, v0

    #@86
    .line 5979
    .local v17, "str":[Ljava/lang/String;
    const/4 v13, 0x0

    #@87
    .line 5982
    .local v13, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, v17

    #@8b
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@8e
    move-result v13

    #@8f
    .line 5983
    const/16 v19, 0x0

    #@91
    aget-object v19, v17, v19

    #@93
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@96
    move-result v18

    #@97
    .line 5984
    .local v18, "version":I
    const/16 v19, 0x1

    #@99
    move/from16 v0, v18

    #@9b
    move/from16 v1, v19

    #@9d
    if-ne v0, v1, :cond_f

    #@9f
    .line 5985
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v17

    #@a3
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@a6
    move-result v13

    #@a7
    .line 5986
    const/16 v19, 0x0

    #@a9
    aget-object v11, v17, v19

    #@ab
    .line 5988
    .local v11, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    #@ad
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@af
    move-object/from16 v19, v0

    #@b1
    move-object/from16 v0, v19

    #@b3
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v19

    #@b7
    if-eqz v19, :cond_e

    #@b9
    .line 5989
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v17

    #@bd
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@c0
    move-result v13

    #@c1
    .line 5990
    const/16 v19, 0x0

    #@c3
    aget-object v19, v17, v19

    #@c5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c8
    move-result v18

    #@c9
    .line 5991
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v17

    #@cd
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@d0
    move-result v13

    #@d1
    .line 5994
    const/16 v19, 0x0

    #@d3
    aget-object v19, v17, v19

    #@d5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d8
    .line 5995
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, v17

    #@dc
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@df
    move-result v13

    #@e0
    .line 5996
    const/16 v19, 0x0

    #@e2
    aget-object v19, v17, v19

    #@e4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@e7
    move-result v19

    #@e8
    if-lez v19, :cond_2

    #@ea
    const/16 v19, 0x0

    #@ec
    aget-object v19, v17, v19

    #@ee
    :goto_0
    move-object/from16 v0, v19

    #@f0
    move-object/from16 v1, p1

    #@f2
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    #@f4
    .line 5997
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v17

    #@f8
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@fb
    move-result v13

    #@fc
    .line 5998
    const/16 v19, 0x0

    #@fe
    aget-object v19, v17, v19

    #@100
    const-string/jumbo v20, "1"

    #@103
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v9

    #@107
    .line 5999
    .local v9, "hasApk":Z
    move-object/from16 v0, p0

    #@109
    move-object/from16 v1, v17

    #@10b
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@10e
    move-result v13

    #@10f
    .line 6000
    const/16 v19, 0x0

    #@111
    aget-object v19, v17, v19

    #@113
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@116
    move-result v12

    #@117
    .line 6001
    .local v12, "numSigs":I
    if-lez v12, :cond_d

    #@119
    .line 6002
    new-array v0, v12, [Landroid/content/pm/Signature;

    #@11b
    move-object/from16 v16, v0

    #@11d
    .line 6003
    .local v16, "sigs":[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    #@11e
    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_3

    #@120
    .line 6004
    move-object/from16 v0, p0

    #@122
    move-object/from16 v1, v17

    #@124
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@127
    move-result v13

    #@128
    .line 6005
    new-instance v19, Landroid/content/pm/Signature;

    #@12a
    const/16 v20, 0x0

    #@12c
    aget-object v20, v17, v20

    #@12e
    invoke-direct/range {v19 .. v20}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    #@131
    aput-object v19, v16, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    #@133
    .line 6003
    add-int/lit8 v10, v10, 0x1

    #@135
    goto :goto_1

    #@136
    .line 5975
    .end local v9    # "hasApk":Z
    .end local v10    # "i":I
    .end local v11    # "manifestPackage":Ljava/lang/String;
    .end local v12    # "numSigs":I
    .end local v13    # "offset":I
    .end local v15    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    .end local v17    # "str":[Ljava/lang/String;
    .end local v18    # "version":I
    :cond_1
    new-instance v19, Ljava/io/IOException;

    #@138
    const-string/jumbo v20, "Unexpected EOF in manifest"

    #@13b
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13e
    throw v19

    #@13f
    .line 5996
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v13    # "offset":I
    .restart local v15    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v17    # "str":[Ljava/lang/String;
    .restart local v18    # "version":I
    :cond_2
    const/16 v19, 0x0

    #@141
    goto :goto_0

    #@142
    .line 6007
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v12    # "numSigs":I
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    #@146
    move-object/from16 v19, v0

    #@148
    move-object/from16 v0, p1

    #@14a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@14c
    move-object/from16 v20, v0

    #@14e
    move-object/from16 v0, v19

    #@150
    move-object/from16 v1, v20

    #@152
    move-object/from16 v2, v16

    #@154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    #@157
    .line 6011
    :try_start_2
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@15b
    move-object/from16 v19, v0

    #@15d
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@160
    move-result-object v19

    #@161
    .line 6012
    move-object/from16 v0, p1

    #@163
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@165
    move-object/from16 v20, v0

    #@167
    const/16 v21, 0x40

    #@169
    .line 6011
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@16c
    move-result-object v14

    #@16d
    .line 6014
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16f
    move-object/from16 v19, v0

    #@171
    move-object/from16 v0, v19

    #@173
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@175
    .line 6015
    .local v8, "flags":I
    const v19, 0x8000

    #@178
    and-int v19, v19, v8

    #@17a
    if-eqz v19, :cond_a

    #@17c
    .line 6018
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17e
    move-object/from16 v19, v0

    #@180
    move-object/from16 v0, v19

    #@182
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@184
    move/from16 v19, v0

    #@186
    const/16 v20, 0x2710

    #@188
    move/from16 v0, v19

    #@18a
    move/from16 v1, v20

    #@18c
    if-ge v0, v1, :cond_4

    #@18e
    .line 6019
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@190
    move-object/from16 v19, v0

    #@192
    move-object/from16 v0, v19

    #@194
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@196
    move-object/from16 v19, v0

    #@198
    if-eqz v19, :cond_9

    #@19a
    .line 6027
    :cond_4
    move-object/from16 v0, v16

    #@19c
    invoke-static {v0, v14}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    #@19f
    move-result v19

    #@1a0
    if-eqz v19, :cond_8

    #@1a2
    .line 6028
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1a4
    move/from16 v19, v0

    #@1a6
    move/from16 v0, v19

    #@1a8
    move/from16 v1, v18

    #@1aa
    if-lt v0, v1, :cond_6

    #@1ac
    .line 6029
    const-string/jumbo v19, "RestoreEngine"

    #@1af
    const-string/jumbo v20, "Sig + version match; taking data"

    #@1b2
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b5
    .line 6030
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@1b7
    .line 6072
    .end local v8    # "flags":I
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    #@1b9
    move-object/from16 v0, v19

    #@1bb
    if-ne v15, v0, :cond_5

    #@1bd
    if-eqz v9, :cond_c

    #@1bf
    .line 6094
    .end local v9    # "hasApk":Z
    .end local v10    # "i":I
    .end local v11    # "manifestPackage":Ljava/lang/String;
    .end local v12    # "numSigs":I
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "version":I
    :cond_5
    :goto_3
    return-object v15

    #@1c0
    .line 6035
    .restart local v8    # "flags":I
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "numSigs":I
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "version":I
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    #@1c4
    move/from16 v19, v0

    #@1c6
    if-eqz v19, :cond_7

    #@1c8
    .line 6036
    const-string/jumbo v19, "RestoreEngine"

    #@1cb
    new-instance v20, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v21, "Data version "

    #@1d3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v20

    #@1d7
    move-object/from16 v0, v20

    #@1d9
    move/from16 v1, v18

    #@1db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v20

    #@1df
    .line 6037
    const-string/jumbo v21, " is newer than installed version "

    #@1e2
    .line 6036
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v20

    #@1e6
    .line 6038
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1e8
    move/from16 v21, v0

    #@1ea
    .line 6036
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v20

    #@1ee
    .line 6039
    const-string/jumbo v21, " - requiring apk"

    #@1f1
    .line 6036
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v20

    #@1f5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v20

    #@1f9
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1fc
    .line 6040
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@1fe
    goto :goto_2

    #@1ff
    .line 6042
    :cond_7
    const-string/jumbo v19, "RestoreEngine"

    #@202
    new-instance v20, Ljava/lang/StringBuilder;

    #@204
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v21, "Data requires newer version "

    #@20a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v20

    #@20e
    move-object/from16 v0, v20

    #@210
    move/from16 v1, v18

    #@212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@215
    move-result-object v20

    #@216
    .line 6043
    const-string/jumbo v21, "; ignoring"

    #@219
    .line 6042
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v20

    #@21d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@220
    move-result-object v20

    #@221
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@224
    .line 6044
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@226
    goto :goto_2

    #@227
    .line 6048
    :cond_8
    const-string/jumbo v19, "RestoreEngine"

    #@22a
    new-instance v20, Ljava/lang/StringBuilder;

    #@22c
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@22f
    const-string/jumbo v21, "Restore manifest signatures do not match installed application for "

    #@232
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v20

    #@236
    .line 6049
    move-object/from16 v0, p1

    #@238
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@23a
    move-object/from16 v21, v0

    #@23c
    .line 6048
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v20

    #@240
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v20

    #@244
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    #@247
    goto/16 :goto_2

    #@249
    .line 6059
    .end local v8    # "flags":I
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    #@24a
    .line 6063
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    move-object/from16 v0, p0

    #@24c
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    #@24e
    move/from16 v19, v0

    #@250
    if-eqz v19, :cond_b

    #@252
    .line 6064
    const-string/jumbo v19, "RestoreEngine"

    #@255
    new-instance v20, Ljava/lang/StringBuilder;

    #@257
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@25a
    const-string/jumbo v21, "Package "

    #@25d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v20

    #@261
    move-object/from16 v0, p1

    #@263
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@265
    move-object/from16 v21, v0

    #@267
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v20

    #@26b
    .line 6065
    const-string/jumbo v21, " not installed; requiring apk in dataset"

    #@26e
    .line 6064
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v20

    #@272
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@275
    move-result-object v20

    #@276
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@279
    .line 6066
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    #@27b
    goto/16 :goto_2

    #@27d
    .line 6052
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "flags":I
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_6
    const-string/jumbo v19, "RestoreEngine"

    #@280
    new-instance v20, Ljava/lang/StringBuilder;

    #@282
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    const-string/jumbo v21, "Package "

    #@288
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v20

    #@28c
    move-object/from16 v0, p1

    #@28e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@290
    move-object/from16 v21, v0

    #@292
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v20

    #@296
    .line 6053
    const-string/jumbo v21, " is system level with no agent"

    #@299
    .line 6052
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v20

    #@29d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a0
    move-result-object v20

    #@2a1
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    #@2a4
    goto/16 :goto_2

    #@2a6
    .line 6088
    .end local v8    # "flags":I
    .end local v9    # "hasApk":Z
    .end local v10    # "i":I
    .end local v11    # "manifestPackage":Ljava/lang/String;
    .end local v12    # "numSigs":I
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "version":I
    :catch_1
    move-exception v7

    #@2a7
    .line 6089
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v19, "RestoreEngine"

    #@2aa
    new-instance v20, Ljava/lang/StringBuilder;

    #@2ac
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2af
    const-string/jumbo v21, "Corrupt restore manifest for package "

    #@2b2
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v20

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@2ba
    move-object/from16 v21, v0

    #@2bc
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v20

    #@2c0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c3
    move-result-object v20

    #@2c4
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c7
    goto/16 :goto_3

    #@2c9
    .line 6056
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "flags":I
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "numSigs":I
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "version":I
    :cond_a
    :try_start_7
    const-string/jumbo v19, "RestoreEngine"

    #@2cc
    new-instance v20, Ljava/lang/StringBuilder;

    #@2ce
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2d1
    const-string/jumbo v21, "Restore manifest from "

    #@2d4
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v20

    #@2d8
    .line 6057
    move-object/from16 v0, p1

    #@2da
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@2dc
    move-object/from16 v21, v0

    #@2de
    .line 6056
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v20

    #@2e2
    .line 6057
    const-string/jumbo v21, " but allowBackup=false"

    #@2e5
    .line 6056
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v20

    #@2e9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v20

    #@2ed
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    #@2f0
    goto/16 :goto_2

    #@2f2
    .line 6090
    .end local v8    # "flags":I
    .end local v9    # "hasApk":Z
    .end local v10    # "i":I
    .end local v11    # "manifestPackage":Ljava/lang/String;
    .end local v12    # "numSigs":I
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    .end local v18    # "version":I
    :catch_2
    move-exception v6

    #@2f3
    .line 6091
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v19, "RestoreEngine"

    #@2f6
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@2f9
    move-result-object v20

    #@2fa
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2fd
    goto/16 :goto_3

    #@2ff
    .line 6068
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "numSigs":I
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "version":I
    :cond_b
    :try_start_8
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@301
    goto/16 :goto_2

    #@303
    .line 6073
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const-string/jumbo v19, "RestoreEngine"

    #@306
    new-instance v20, Ljava/lang/StringBuilder;

    #@308
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@30b
    const-string/jumbo v21, "Cannot restore package "

    #@30e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v20

    #@312
    move-object/from16 v0, p1

    #@314
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@316
    move-object/from16 v21, v0

    #@318
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v20

    #@31c
    .line 6074
    const-string/jumbo v21, " without the matching .apk"

    #@31f
    .line 6073
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    move-result-object v20

    #@323
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@326
    move-result-object v20

    #@327
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32a
    goto/16 :goto_3

    #@32c
    .line 6077
    .end local v10    # "i":I
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    :cond_d
    const-string/jumbo v19, "RestoreEngine"

    #@32f
    new-instance v20, Ljava/lang/StringBuilder;

    #@331
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@334
    const-string/jumbo v21, "Missing signature on backed-up package "

    #@337
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v20

    #@33b
    .line 6078
    move-object/from16 v0, p1

    #@33d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@33f
    move-object/from16 v21, v0

    #@341
    .line 6077
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@344
    move-result-object v20

    #@345
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@348
    move-result-object v20

    #@349
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@34c
    goto/16 :goto_3

    #@34e
    .line 6081
    .end local v9    # "hasApk":Z
    .end local v12    # "numSigs":I
    :cond_e
    const-string/jumbo v19, "RestoreEngine"

    #@351
    new-instance v20, Ljava/lang/StringBuilder;

    #@353
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@356
    const-string/jumbo v21, "Expected package "

    #@359
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35c
    move-result-object v20

    #@35d
    move-object/from16 v0, p1

    #@35f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@361
    move-object/from16 v21, v0

    #@363
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@366
    move-result-object v20

    #@367
    .line 6082
    const-string/jumbo v21, " but restore manifest claims "

    #@36a
    .line 6081
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v20

    #@36e
    move-object/from16 v0, v20

    #@370
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@373
    move-result-object v20

    #@374
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@377
    move-result-object v20

    #@378
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37b
    goto/16 :goto_3

    #@37d
    .line 6085
    .end local v11    # "manifestPackage":Ljava/lang/String;
    :cond_f
    const-string/jumbo v19, "RestoreEngine"

    #@380
    new-instance v20, Ljava/lang/StringBuilder;

    #@382
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@385
    const-string/jumbo v21, "Unknown restore manifest version "

    #@388
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38b
    move-result-object v20

    #@38c
    move-object/from16 v0, v20

    #@38e
    move/from16 v1, v18

    #@390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@393
    move-result-object v20

    #@394
    .line 6086
    const-string/jumbo v21, " for package "

    #@397
    .line 6085
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v20

    #@39b
    .line 6086
    move-object/from16 v0, p1

    #@39d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@39f
    move-object/from16 v21, v0

    #@3a1
    .line 6085
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v20

    #@3a5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a8
    move-result-object v20

    #@3a9
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    #@3ac
    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6308
    if-gtz p4, :cond_0

    #@2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "size must be > 0"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 6310
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 6311
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    #@e
    .line 6312
    add-int v2, p3, v1

    #@10
    sub-int v3, p4, v1

    #@12
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@15
    move-result v0

    #@16
    .line 6313
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    #@18
    .line 6320
    .end local v0    # "nRead":I
    :cond_1
    return v1

    #@19
    .line 6317
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    #@1a
    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5900
    move-object/from16 v0, p1

    #@2
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4
    const-wide/32 v14, 0x10000

    #@7
    cmp-long v11, v12, v14

    #@9
    if-lez v11, :cond_0

    #@b
    .line 5901
    new-instance v11, Ljava/io/IOException;

    #@d
    new-instance v12, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v13, "Metadata too big; corrupt? size="

    #@15
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v12

    #@19
    move-object/from16 v0, p1

    #@1b
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1d
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v12

    #@21
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v12

    #@25
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v11

    #@29
    .line 5904
    :cond_0
    move-object/from16 v0, p1

    #@2b
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@2d
    long-to-int v11, v12

    #@2e
    new-array v3, v11, [B

    #@30
    .line 5905
    .local v3, "buffer":[B
    move-object/from16 v0, p1

    #@32
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@34
    long-to-int v11, v12

    #@35
    const/4 v12, 0x0

    #@36
    move-object/from16 v0, p0

    #@38
    move-object/from16 v1, p2

    #@3a
    invoke-virtual {v0, v1, v3, v12, v11}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    #@3d
    move-result v11

    #@3e
    int-to-long v12, v11

    #@3f
    move-object/from16 v0, p1

    #@41
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@43
    cmp-long v11, v12, v14

    #@45
    if-nez v11, :cond_1

    #@47
    .line 5906
    move-object/from16 v0, p0

    #@49
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@4b
    move-object/from16 v0, p1

    #@4d
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4f
    add-long/2addr v12, v14

    #@50
    move-object/from16 v0, p0

    #@52
    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@54
    .line 5909
    const/4 v11, 0x1

    #@55
    new-array v8, v11, [Ljava/lang/String;

    #@57
    .line 5910
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    #@58
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@5d
    move-result v5

    #@5e
    .line 5911
    .local v5, "offset":I
    const/4 v11, 0x0

    #@5f
    aget-object v11, v8, v11

    #@61
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@64
    move-result v10

    #@65
    .line 5912
    .local v10, "version":I
    const/4 v11, 0x1

    #@66
    if-ne v10, v11, :cond_5

    #@68
    .line 5913
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    #@6d
    move-result v5

    #@6e
    .line 5914
    const/4 v11, 0x0

    #@6f
    aget-object v6, v8, v11

    #@71
    .line 5915
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    #@73
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@75
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v11

    #@79
    if-eqz v11, :cond_3

    #@7b
    .line 5918
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@7d
    .line 5919
    array-length v11, v3

    #@7e
    sub-int/2addr v11, v5

    #@7f
    .line 5918
    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@82
    .line 5920
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    #@84
    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@87
    .line 5921
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    #@8a
    move-result v11

    #@8b
    if-lez v11, :cond_4

    #@8d
    .line 5922
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@90
    move-result v9

    #@91
    .line 5923
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@94
    move-result v7

    #@95
    .line 5924
    .local v7, "size":I
    const/high16 v11, 0x10000

    #@97
    if-le v7, v11, :cond_2

    #@99
    .line 5925
    new-instance v11, Ljava/io/IOException;

    #@9b
    new-instance v12, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v13, "Datum "

    #@a3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v12

    #@a7
    .line 5926
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@aa
    move-result-object v13

    #@ab
    .line 5925
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v12

    #@af
    .line 5927
    const-string/jumbo v13, " too big; corrupt? size="

    #@b2
    .line 5925
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v12

    #@b6
    .line 5927
    move-object/from16 v0, p1

    #@b8
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@ba
    .line 5925
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v12

    #@c2
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v11

    #@c6
    .line 5907
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_1
    new-instance v11, Ljava/io/IOException;

    #@c8
    const-string/jumbo v12, "Unexpected EOF in widget data"

    #@cb
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v11

    #@cf
    .line 5929
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_2
    packed-switch v9, :pswitch_data_0

    #@d2
    .line 5942
    const-string/jumbo v11, "RestoreEngine"

    #@d5
    new-instance v12, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v13, "Ignoring metadata blob "

    #@dd
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v12

    #@e1
    .line 5943
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e4
    move-result-object v13

    #@e5
    .line 5942
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    .line 5944
    const-string/jumbo v13, " for "

    #@ec
    .line 5942
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v12

    #@f0
    .line 5944
    move-object/from16 v0, p1

    #@f2
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@f4
    .line 5942
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v12

    #@f8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v12

    #@fc
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 5946
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@102
    goto :goto_0

    #@103
    .line 5935
    :pswitch_0
    new-array v11, v7, [B

    #@105
    move-object/from16 v0, p0

    #@107
    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    #@109
    .line 5936
    move-object/from16 v0, p0

    #@10b
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    #@10d
    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    #@110
    goto/16 :goto_0

    #@112
    .line 5952
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string/jumbo v11, "RestoreEngine"

    #@115
    new-instance v12, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v13, "Metadata mismatch: package "

    #@11d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v12

    #@121
    move-object/from16 v0, p1

    #@123
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@125
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v12

    #@129
    .line 5953
    const-string/jumbo v13, " but widget data for "

    #@12c
    .line 5952
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v12

    #@130
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v12

    #@134
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v12

    #@138
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13b
    .line 5898
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    #@13c
    .line 5956
    :cond_5
    const-string/jumbo v11, "RestoreEngine"

    #@13f
    new-instance v12, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v13, "Unsupported metadata version "

    #@147
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v12

    #@14b
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v12

    #@14f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v12

    #@153
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    goto :goto_1

    #@157
    .line 5929
    nop

    #@158
    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6335
    move-object/from16 v0, p2

    #@2
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4
    const-wide/32 v14, 0x8000

    #@7
    cmp-long v12, v12, v14

    #@9
    if-lez v12, :cond_0

    #@b
    .line 6336
    const-string/jumbo v12, "RestoreEngine"

    #@e
    new-instance v13, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v14, "Suspiciously large pax header size "

    #@16
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v13

    #@1a
    move-object/from16 v0, p2

    #@1c
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1e
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v13

    #@22
    .line 6337
    const-string/jumbo v14, " - aborting"

    #@25
    .line 6336
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v13

    #@29
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v13

    #@2d
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 6338
    new-instance v12, Ljava/io/IOException;

    #@32
    new-instance v13, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v14, "Sanity failure: pax header size "

    #@3a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v13

    #@3e
    move-object/from16 v0, p2

    #@40
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@42
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v13

    #@4a
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v12

    #@4e
    .line 6342
    :cond_0
    move-object/from16 v0, p2

    #@50
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@52
    const-wide/16 v14, 0x1ff

    #@54
    add-long/2addr v12, v14

    #@55
    const/16 v14, 0x9

    #@57
    shr-long/2addr v12, v14

    #@58
    long-to-int v8, v12

    #@59
    .line 6343
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    #@5b
    new-array v3, v12, [B

    #@5d
    .line 6344
    .local v3, "data":[B
    array-length v12, v3

    #@5e
    const/4 v13, 0x0

    #@5f
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, p1

    #@63
    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    #@66
    move-result v12

    #@67
    array-length v13, v3

    #@68
    if-ge v12, v13, :cond_1

    #@6a
    .line 6345
    new-instance v12, Ljava/io/IOException;

    #@6c
    const-string/jumbo v13, "Unable to read full pax header"

    #@6f
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw v12

    #@73
    .line 6347
    :cond_1
    move-object/from16 v0, p0

    #@75
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@77
    array-length v14, v3

    #@78
    int-to-long v14, v14

    #@79
    add-long/2addr v12, v14

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@7e
    .line 6349
    move-object/from16 v0, p2

    #@80
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@82
    long-to-int v2, v12

    #@83
    .line 6350
    .local v2, "contentSize":I
    const/4 v9, 0x0

    #@84
    .line 6353
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    #@86
    .line 6354
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    #@88
    aget-byte v12, v3, v4

    #@8a
    const/16 v13, 0x20

    #@8c
    if-eq v12, v13, :cond_3

    #@8e
    add-int/lit8 v4, v4, 0x1

    #@90
    goto :goto_0

    #@91
    .line 6355
    :cond_3
    if-lt v4, v2, :cond_4

    #@93
    .line 6357
    new-instance v12, Ljava/io/IOException;

    #@95
    const-string/jumbo v13, "Invalid pax data"

    #@98
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v12

    #@9c
    .line 6360
    :cond_4
    sub-int v12, v4, v9

    #@9e
    const/16 v13, 0xa

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    #@a5
    move-result-wide v12

    #@a6
    long-to-int v7, v12

    #@a7
    .line 6361
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    #@a9
    .line 6362
    .local v5, "key":I
    add-int v12, v9, v7

    #@ab
    add-int/lit8 v4, v12, -0x1

    #@ad
    .line 6364
    add-int/lit8 v11, v5, 0x1

    #@af
    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    #@b1
    const/16 v13, 0x3d

    #@b3
    if-eq v12, v13, :cond_5

    #@b5
    if-gt v11, v4, :cond_5

    #@b7
    add-int/lit8 v11, v11, 0x1

    #@b9
    goto :goto_1

    #@ba
    .line 6365
    :cond_5
    if-le v11, v4, :cond_6

    #@bc
    .line 6366
    new-instance v12, Ljava/io/IOException;

    #@be
    const-string/jumbo v13, "Invalid pax declaration"

    #@c1
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v12

    #@c5
    .line 6370
    :cond_6
    new-instance v6, Ljava/lang/String;

    #@c7
    sub-int v12, v11, v5

    #@c9
    const-string/jumbo v13, "UTF-8"

    #@cc
    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@cf
    .line 6372
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    #@d1
    add-int/lit8 v12, v11, 0x1

    #@d3
    sub-int v13, v4, v11

    #@d5
    add-int/lit8 v13, v13, -0x1

    #@d7
    const-string/jumbo v14, "UTF-8"

    #@da
    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@dd
    .line 6374
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v12, "path"

    #@e0
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v12

    #@e4
    if-eqz v12, :cond_7

    #@e6
    .line 6375
    move-object/from16 v0, p2

    #@e8
    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@ea
    .line 6382
    :goto_2
    add-int/2addr v9, v7

    #@eb
    .line 6383
    if-lt v9, v2, :cond_2

    #@ed
    .line 6385
    const/4 v12, 0x1

    #@ee
    return v12

    #@ef
    .line 6376
    :cond_7
    const-string/jumbo v12, "size"

    #@f2
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v12

    #@f6
    if-eqz v12, :cond_8

    #@f8
    .line 6377
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@fb
    move-result-wide v12

    #@fc
    move-object/from16 v0, p2

    #@fe
    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@100
    goto :goto_2

    #@101
    .line 6379
    :cond_8
    const-string/jumbo v12, "RestoreEngine"

    #@104
    new-instance v13, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v14, "Unhandled pax key: "

    #@10c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v13

    #@110
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@113
    move-result-object v13

    #@114
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v13

    #@118
    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11b
    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x200

    #@2
    const/4 v1, 0x0

    #@3
    .line 6324
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    #@6
    move-result v0

    #@7
    .line 6325
    .local v0, "got":I
    if-nez v0, :cond_0

    #@9
    return v1

    #@a
    .line 6326
    :cond_0
    if-ge v0, v2, :cond_1

    #@c
    new-instance v1, Ljava/io/IOException;

    #@e
    const-string/jumbo v2, "Unable to read full block header"

    #@11
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 6327
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@17
    const-wide/16 v4, 0x200

    #@19
    add-long/2addr v2, v4

    #@1a
    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@1c
    .line 6328
    const/4 v1, 0x1

    #@1d
    return v1
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6149
    const/16 v8, 0x200

    #@2
    new-array v0, v8, [B

    #@4
    .line 6150
    .local v0, "block":[B
    const/4 v3, 0x0

    #@5
    .line 6152
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    #@8
    move-result v2

    #@9
    .line 6153
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    #@b
    .line 6156
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@d
    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 6157
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    #@12
    const/16 v9, 0xc

    #@14
    const/16 v10, 0x8

    #@16
    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    #@19
    move-result-wide v8

    #@1a
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1c
    .line 6158
    const/16 v8, 0x88

    #@1e
    const/16 v9, 0xc

    #@20
    const/16 v10, 0x8

    #@22
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    #@25
    move-result-wide v8

    #@26
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@28
    .line 6159
    const/16 v8, 0x64

    #@2a
    const/16 v9, 0x8

    #@2c
    const/16 v10, 0x8

    #@2e
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    #@31
    move-result-wide v8

    #@32
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@34
    .line 6161
    const/16 v8, 0x159

    #@36
    const/16 v9, 0x9b

    #@38
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@3e
    .line 6162
    const/4 v8, 0x0

    #@3f
    const/16 v9, 0x64

    #@41
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 6163
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@48
    move-result v8

    #@49
    if-lez v8, :cond_1

    #@4b
    .line 6164
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@4d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@50
    move-result v8

    #@51
    if-lez v8, :cond_0

    #@53
    new-instance v8, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    const/16 v9, 0x2f

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@6a
    .line 6165
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@7f
    .line 6169
    :cond_1
    const/16 v8, 0x9c

    #@81
    aget-byte v7, v0, v8

    #@83
    .line 6170
    .local v7, "typeChar":I
    const/16 v8, 0x78

    #@85
    if-ne v7, v8, :cond_4

    #@87
    .line 6172
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    #@8a
    move-result v2

    #@8b
    .line 6173
    if-eqz v2, :cond_2

    #@8d
    .line 6176
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    #@90
    move-result v2

    #@91
    .line 6178
    :cond_2
    if-nez v2, :cond_3

    #@93
    new-instance v8, Ljava/io/IOException;

    #@95
    const-string/jumbo v9, "Bad or missing pax header"

    #@98
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9c
    .line 6240
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    #@9d
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    #@9e
    .line 6242
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string/jumbo v8, "RestoreEngine"

    #@a1
    new-instance v9, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v10, "Parse error in header: "

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 6247
    throw v1

    #@bd
    .line 6180
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    #@bf
    :try_start_2
    aget-byte v7, v0, v8

    #@c1
    .line 6183
    :cond_4
    sparse-switch v7, :sswitch_data_0

    #@c4
    .line 6199
    const-string/jumbo v8, "RestoreEngine"

    #@c7
    new-instance v9, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v10, "Unknown tar entity type: "

    #@cf
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v9

    #@d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v9

    #@db
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 6200
    new-instance v8, Ljava/io/IOException;

    #@e0
    new-instance v9, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v10, "Unknown entity type "

    #@e8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v8

    #@f8
    .line 6184
    :sswitch_0
    const/4 v8, 0x1

    #@f9
    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@fb
    .line 6207
    :cond_5
    :goto_1
    const-string/jumbo v8, "shared/"

    #@fe
    .line 6208
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@100
    const-string/jumbo v10, "shared/"

    #@103
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@106
    move-result v10

    #@107
    .line 6207
    const/4 v11, 0x0

    #@108
    .line 6208
    const/4 v12, 0x0

    #@109
    .line 6207
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@10c
    move-result v8

    #@10d
    if-eqz v8, :cond_8

    #@10f
    .line 6210
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@111
    const-string/jumbo v9, "shared/"

    #@114
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@117
    move-result v9

    #@118
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11b
    move-result-object v8

    #@11c
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@11e
    .line 6211
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    #@121
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@123
    .line 6212
    const-string/jumbo v8, "shared"

    #@126
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@128
    .line 6213
    const-string/jumbo v8, "RestoreEngine"

    #@12b
    new-instance v9, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v10, "File in shared storage: "

    #@133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v9

    #@137
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v9

    #@13d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v9

    #@141
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    :cond_6
    :goto_2
    move-object v3, v4

    #@145
    .line 6250
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :cond_7
    return-object v3

    #@146
    .line 6186
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    #@147
    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@149
    .line 6187
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@14b
    const-wide/16 v10, 0x0

    #@14d
    cmp-long v8, v8, v10

    #@14f
    if-eqz v8, :cond_5

    #@151
    .line 6188
    const-string/jumbo v8, "RestoreEngine"

    #@154
    const-string/jumbo v9, "Directory entry with nonzero size in header"

    #@157
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15a
    .line 6189
    const-wide/16 v8, 0x0

    #@15c
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@15e
    goto :goto_1

    #@15f
    .line 6196
    :sswitch_2
    const/4 v8, 0x0

    #@160
    return-object v8

    #@161
    .line 6214
    :cond_8
    const-string/jumbo v8, "apps/"

    #@164
    .line 6215
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@166
    const-string/jumbo v10, "apps/"

    #@169
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@16c
    move-result v10

    #@16d
    .line 6214
    const/4 v11, 0x0

    #@16e
    .line 6215
    const/4 v12, 0x0

    #@16f
    .line 6214
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@172
    move-result v8

    #@173
    if-eqz v8, :cond_6

    #@175
    .line 6219
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@177
    const-string/jumbo v9, "apps/"

    #@17a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@17d
    move-result v9

    #@17e
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@181
    move-result-object v8

    #@182
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@184
    .line 6222
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@186
    const/16 v9, 0x2f

    #@188
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@18b
    move-result v6

    #@18c
    .line 6223
    .local v6, "slash":I
    if-gez v6, :cond_9

    #@18e
    new-instance v8, Ljava/io/IOException;

    #@190
    new-instance v9, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v10, "Illegal semantic path in "

    #@198
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v9

    #@19c
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@19e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v9

    #@1a2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v9

    #@1a6
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a9
    throw v8

    #@1aa
    .line 6224
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1ac
    const/4 v9, 0x0

    #@1ad
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b0
    move-result-object v8

    #@1b1
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1b3
    .line 6225
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1b5
    add-int/lit8 v9, v6, 0x1

    #@1b7
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1ba
    move-result-object v8

    #@1bb
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1bd
    .line 6229
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1bf
    const-string/jumbo v9, "_manifest"

    #@1c2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c5
    move-result v8

    #@1c6
    if-nez v8, :cond_6

    #@1c8
    .line 6230
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1ca
    const-string/jumbo v9, "_meta"

    #@1cd
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d0
    move-result v8

    #@1d1
    if-nez v8, :cond_6

    #@1d3
    .line 6231
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1d5
    const/16 v9, 0x2f

    #@1d7
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@1da
    move-result v6

    #@1db
    .line 6232
    if-gez v6, :cond_a

    #@1dd
    .line 6233
    new-instance v8, Ljava/io/IOException;

    #@1df
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e4
    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    #@1e7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v9

    #@1eb
    .line 6234
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1ed
    .line 6233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v9

    #@1f1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f4
    move-result-object v9

    #@1f5
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f8
    throw v8

    #@1f9
    .line 6236
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1fb
    const/4 v9, 0x0

    #@1fc
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ff
    move-result-object v8

    #@200
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@202
    .line 6237
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@204
    add-int/lit8 v9, v6, 0x1

    #@206
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@209
    move-result-object v8

    #@20a
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@20c
    goto/16 :goto_2

    #@20e
    .line 6240
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    #@20f
    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@211
    .line 6183
    nop

    #@212
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z)Z
    .locals 47
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z

    #@0
    .prologue
    .line 5354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 5355
    const-string/jumbo v5, "RestoreEngine"

    #@9
    const-string/jumbo v7, "Restore engine used after halting"

    #@c
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 5356
    const/4 v5, 0x0

    #@10
    return v5

    #@11
    .line 5364
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@14
    move-result-object v35

    #@15
    .line 5365
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v35, :cond_4

    #@17
    .line 5370
    move-object/from16 v0, v35

    #@19
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1b
    .line 5371
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    #@1f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_3

    #@25
    .line 5374
    move-object/from16 v0, p0

    #@27
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 5375
    move-object/from16 v0, p0

    #@2d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    #@2f
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@31
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_1

    #@37
    .line 5376
    const-string/jumbo v5, "RestoreEngine"

    #@3a
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Expected data for "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    .line 5377
    const-string/jumbo v8, " but saw "

    #@51
    .line 5376
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 5378
    const/4 v5, -0x3

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    #@66
    .line 5379
    const/4 v5, 0x0

    #@67
    move-object/from16 v0, p0

    #@69
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    #@6c
    .line 5380
    const/4 v5, 0x0

    #@6d
    return v5

    #@6e
    .line 5386
    :cond_1
    move-object/from16 v0, p0

    #@70
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@72
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@75
    move-result v5

    #@76
    if-nez v5, :cond_2

    #@78
    .line 5387
    move-object/from16 v0, p0

    #@7a
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@7c
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@7e
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 5392
    :cond_2
    move-object/from16 v0, p0

    #@83
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@85
    if-eqz v5, :cond_3

    #@87
    .line 5393
    const-string/jumbo v5, "RestoreEngine"

    #@8a
    const-string/jumbo v7, "Saw new package; finalizing old one"

    #@8d
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 5395
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    #@93
    .line 5396
    move-object/from16 v0, p0

    #@95
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@97
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    #@9c
    .line 5397
    const/4 v5, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@a1
    .line 5398
    const/4 v5, 0x0

    #@a2
    move-object/from16 v0, p0

    #@a4
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    #@a6
    .line 5402
    :cond_3
    move-object/from16 v0, v35

    #@a8
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@aa
    const-string/jumbo v7, "_manifest"

    #@ad
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v5

    #@b1
    if-eqz v5, :cond_6

    #@b3
    .line 5403
    move-object/from16 v0, p0

    #@b5
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@b7
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v35

    #@bb
    move-object/from16 v2, p1

    #@bd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 5404
    move-object/from16 v0, p0

    #@c6
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    #@c8
    move-object/from16 v0, v35

    #@ca
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    #@cc
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    .line 5408
    move-object/from16 v0, v35

    #@d1
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@d3
    move-object/from16 v0, p0

    #@d5
    move-object/from16 v1, p1

    #@d7
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    #@da
    .line 5409
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->sendOnRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@df
    .line 5665
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_4
    :goto_0
    if-nez v35, :cond_5

    #@e1
    .line 5669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    #@e4
    .line 5670
    const/4 v5, 0x0

    #@e5
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    #@ea
    .line 5671
    if-eqz p2, :cond_5

    #@ec
    .line 5672
    move-object/from16 v0, p0

    #@ee
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@f0
    move-object/from16 v0, p0

    #@f2
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    #@f5
    .line 5675
    :cond_5
    if-eqz v35, :cond_1d

    #@f7
    const/4 v5, 0x1

    #@f8
    :goto_1
    return v5

    #@f9
    .line 5410
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_6
    :try_start_1
    move-object/from16 v0, v35

    #@fb
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@fd
    const-string/jumbo v7, "_meta"

    #@100
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v5

    #@104
    if-eqz v5, :cond_7

    #@106
    .line 5412
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v35

    #@10a
    move-object/from16 v2, p1

    #@10c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    #@10f
    .line 5413
    move-object/from16 v0, v35

    #@111
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@113
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, p1

    #@117
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@11a
    goto :goto_0

    #@11b
    .line 5658
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v34

    #@11c
    .line 5659
    .local v34, "e":Ljava/io/IOException;
    const-string/jumbo v5, "RestoreEngine"

    #@11f
    new-instance v7, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v8, "io exception on restore socket read: "

    #@127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v7

    #@12b
    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@12e
    move-result-object v8

    #@12f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v7

    #@133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v7

    #@137
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13a
    .line 5660
    const/4 v5, -0x3

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    #@140
    .line 5661
    const/16 v35, 0x0

    #@142
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_0

    #@143
    .line 5417
    .end local v34    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_7
    const/16 v40, 0x1

    #@145
    .line 5418
    .local v40, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    #@147
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@149
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    move-result-object v43

    #@14d
    check-cast v43, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@14f
    .line 5419
    .local v43, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I

    #@152
    move-result-object v5

    #@153
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    #@156
    move-result v7

    #@157
    aget v5, v5, v7

    #@159
    packed-switch v5, :pswitch_data_0

    #@15c
    .line 5464
    const-string/jumbo v5, "RestoreEngine"

    #@15f
    const-string/jumbo v7, "Invalid policy from manifest"

    #@162
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@165
    .line 5465
    const/16 v40, 0x0

    #@167
    .line 5466
    move-object/from16 v0, p0

    #@169
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@16b
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@16d
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    .line 5471
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    #@172
    move-object/from16 v1, v35

    #@174
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    #@177
    move-result v5

    #@178
    if-nez v5, :cond_9

    #@17a
    .line 5472
    const/16 v40, 0x0

    #@17c
    .line 5477
    :cond_9
    if-eqz v40, :cond_a

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@182
    if-eqz v5, :cond_a

    #@184
    .line 5478
    const-string/jumbo v5, "RestoreEngine"

    #@187
    const-string/jumbo v7, "Reusing existing agent instance"

    #@18a
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18d
    .line 5480
    :cond_a
    if-eqz v40, :cond_d

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@193
    if-nez v5, :cond_d

    #@195
    .line 5481
    const-string/jumbo v5, "RestoreEngine"

    #@198
    new-instance v7, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v8, "Need to launch agent for "

    #@1a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v7

    #@1a4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v7

    #@1a8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v7

    #@1ac
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@1af
    .line 5484
    :try_start_3
    move-object/from16 v0, p0

    #@1b1
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b3
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1b6
    move-result-object v5

    #@1b7
    const/4 v7, 0x0

    #@1b8
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@1bb
    move-result-object v5

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@1c0
    .line 5488
    move-object/from16 v0, p0

    #@1c2
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    #@1c4
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1c7
    move-result v5

    #@1c8
    if-nez v5, :cond_c

    #@1ca
    .line 5492
    move-object/from16 v0, p0

    #@1cc
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@1ce
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@1d0
    if-nez v5, :cond_b

    #@1d2
    .line 5493
    const-string/jumbo v5, "RestoreEngine"

    #@1d5
    const-string/jumbo v7, "Clearing app data preparatory to full restore"

    #@1d8
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    .line 5494
    move-object/from16 v0, p0

    #@1dd
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1df
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@1e2
    .line 5499
    :cond_b
    move-object/from16 v0, p0

    #@1e4
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    #@1e6
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e9
    .line 5507
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setUpPipes()V

    #@1ec
    .line 5508
    move-object/from16 v0, p0

    #@1ee
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@1f4
    .line 5509
    const/4 v8, 0x3

    #@1f5
    .line 5508
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@1f8
    move-result-object v5

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@1fd
    .line 5510
    move-object/from16 v0, p0

    #@1ff
    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    #@201
    .line 5517
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    #@203
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@205
    if-nez v5, :cond_d

    #@207
    .line 5518
    const-string/jumbo v5, "RestoreEngine"

    #@20a
    new-instance v7, Ljava/lang/StringBuilder;

    #@20c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@20f
    const-string/jumbo v8, "Unable to create agent for "

    #@212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v7

    #@216
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v7

    #@21a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21d
    move-result-object v7

    #@21e
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@221
    .line 5519
    const/16 v40, 0x0

    #@223
    .line 5520
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    #@226
    .line 5521
    move-object/from16 v0, p0

    #@228
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@22a
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@22c
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22f
    .line 5527
    :cond_d
    if-eqz v40, :cond_e

    #@231
    move-object/from16 v0, p0

    #@233
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    #@235
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v5

    #@239
    if-eqz v5, :cond_15

    #@23b
    .line 5537
    :cond_e
    :goto_4
    if-eqz v40, :cond_1a

    #@23d
    .line 5538
    const/4 v4, 0x1

    #@23e
    .line 5539
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v35

    #@240
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@242
    move-wide/from16 v44, v0

    #@244
    .line 5540
    .local v44, "toCopy":J
    move-object/from16 v0, p0

    #@246
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@248
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@24b
    move-result v16

    #@24c
    .line 5542
    .local v16, "token":I
    :try_start_5
    move-object/from16 v0, p0

    #@24e
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@250
    .line 5543
    move-object/from16 v0, p0

    #@252
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@254
    .line 5542
    const-wide/32 v8, 0x493e0

    #@257
    move/from16 v0, v16

    #@259
    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@25c
    .line 5545
    move-object/from16 v0, v35

    #@25e
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@260
    const-string/jumbo v7, "obb"

    #@263
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@266
    move-result v5

    #@267
    if-eqz v5, :cond_16

    #@269
    .line 5546
    const-string/jumbo v5, "RestoreEngine"

    #@26c
    new-instance v7, Ljava/lang/StringBuilder;

    #@26e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@271
    const-string/jumbo v8, "Restoring OBB file for "

    #@274
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v7

    #@278
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v7

    #@27c
    .line 5547
    const-string/jumbo v8, " : "

    #@27f
    .line 5546
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v7

    #@283
    .line 5547
    move-object/from16 v0, v35

    #@285
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@287
    .line 5546
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v7

    #@28b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28e
    move-result-object v7

    #@28f
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@292
    .line 5548
    move-object/from16 v0, p0

    #@294
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@296
    move-object/from16 v0, p0

    #@298
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@29a
    const/4 v8, 0x0

    #@29b
    aget-object v7, v7, v8

    #@29d
    .line 5549
    move-object/from16 v0, v35

    #@29f
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@2a1
    move-object/from16 v0, v35

    #@2a3
    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@2a5
    move-object/from16 v0, v35

    #@2a7
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@2a9
    move-object/from16 v0, v35

    #@2ab
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@2ad
    .line 5550
    move-object/from16 v0, v35

    #@2af
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b5
    move-object/from16 v17, v0

    #@2b7
    move-object/from16 v0, v17

    #@2b9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@2bb
    move-object/from16 v17, v0

    #@2bd
    .line 5548
    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    #@2c0
    .line 5583
    :goto_5
    if-eqz v40, :cond_12

    #@2c2
    .line 5588
    const/16 v42, 0x1

    #@2c4
    .line 5589
    .local v42, "pipeOkay":Z
    :try_start_6
    new-instance v41, Ljava/io/FileOutputStream;

    #@2c6
    .line 5590
    move-object/from16 v0, p0

    #@2c8
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@2ca
    const/4 v7, 0x1

    #@2cb
    aget-object v5, v5, v7

    #@2cd
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2d0
    move-result-object v5

    #@2d1
    .line 5589
    move-object/from16 v0, v41

    #@2d3
    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@2d6
    .line 5591
    .local v41, "pipe":Ljava/io/FileOutputStream;
    :cond_f
    :goto_6
    const-wide/16 v8, 0x0

    #@2d8
    cmp-long v5, v44, v8

    #@2da
    if-lez v5, :cond_11

    #@2dc
    .line 5592
    move-object/from16 v0, p0

    #@2de
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@2e0
    array-length v5, v5

    #@2e1
    int-to-long v8, v5

    #@2e2
    cmp-long v5, v44, v8

    #@2e4
    if-lez v5, :cond_18

    #@2e6
    .line 5593
    move-object/from16 v0, p0

    #@2e8
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@2ea
    array-length v0, v5

    #@2eb
    move/from16 v46, v0

    #@2ed
    .line 5594
    .local v46, "toRead":I
    :goto_7
    move-object/from16 v0, p0

    #@2ef
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@2f1
    const/4 v7, 0x0

    #@2f2
    move-object/from16 v0, p1

    #@2f4
    move/from16 v1, v46

    #@2f6
    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    #@2f9
    move-result v37

    #@2fa
    .line 5595
    .local v37, "nRead":I
    if-ltz v37, :cond_10

    #@2fc
    move-object/from16 v0, p0

    #@2fe
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@300
    move/from16 v0, v37

    #@302
    int-to-long v12, v0

    #@303
    add-long/2addr v8, v12

    #@304
    move-object/from16 v0, p0

    #@306
    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@308
    .line 5596
    :cond_10
    if-gtz v37, :cond_19

    #@30a
    .line 5614
    .end local v37    # "nRead":I
    .end local v46    # "toRead":I
    :cond_11
    move-object/from16 v0, v35

    #@30c
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@30e
    move-object/from16 v0, p0

    #@310
    move-object/from16 v1, p1

    #@312
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    #@315
    .line 5618
    move-object/from16 v0, p0

    #@317
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@319
    move/from16 v0, v16

    #@31b
    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    #@31e
    move-result v4

    #@31f
    .line 5623
    .end local v4    # "agentSuccess":Z
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    :cond_12
    if-nez v4, :cond_1a

    #@321
    .line 5624
    const-string/jumbo v5, "RestoreEngine"

    #@324
    const-string/jumbo v7, "Agent failure; ending restore"

    #@327
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32a
    .line 5625
    move-object/from16 v0, p0

    #@32c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@32e
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@330
    const/4 v7, 0x7

    #@331
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@334
    .line 5626
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    #@337
    .line 5627
    move-object/from16 v0, p0

    #@339
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@33b
    move-object/from16 v0, p0

    #@33d
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    #@340
    .line 5628
    const/4 v5, 0x0

    #@341
    move-object/from16 v0, p0

    #@343
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@345
    .line 5629
    move-object/from16 v0, p0

    #@347
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@349
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@34b
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34e
    .line 5633
    move-object/from16 v0, p0

    #@350
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    #@352
    if-eqz v5, :cond_1a

    #@354
    .line 5634
    const/4 v5, -0x2

    #@355
    move-object/from16 v0, p0

    #@357
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    #@35a
    .line 5635
    const/4 v5, 0x0

    #@35b
    move-object/from16 v0, p0

    #@35d
    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    #@360
    .line 5636
    const/4 v5, 0x0

    #@361
    return v5

    #@362
    .line 5421
    .end local v16    # "token":I
    .end local v44    # "toCopy":J
    :pswitch_0
    const/16 v40, 0x0

    #@364
    .line 5422
    goto/16 :goto_2

    #@366
    .line 5427
    :pswitch_1
    move-object/from16 v0, v35

    #@368
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@36a
    const-string/jumbo v7, "a"

    #@36d
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v5

    #@371
    if-eqz v5, :cond_14

    #@373
    .line 5428
    const-string/jumbo v5, "RestoreEngine"

    #@376
    const-string/jumbo v7, "APK file; installing"

    #@379
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37c
    .line 5430
    move-object/from16 v0, p0

    #@37e
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    #@380
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@383
    move-result-object v36

    #@384
    check-cast v36, Ljava/lang/String;

    #@386
    .line 5431
    .local v36, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@388
    move-object/from16 v1, v35

    #@38a
    move-object/from16 v2, v36

    #@38c
    move-object/from16 v3, p1

    #@38e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    #@391
    move-result v40

    #@392
    .line 5433
    .local v40, "okay":Z
    move-object/from16 v0, p0

    #@394
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@396
    if-eqz v40, :cond_13

    #@398
    .line 5434
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@39a
    .line 5433
    :goto_8
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39d
    .line 5439
    move-object/from16 v0, v35

    #@39f
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@3a1
    move-object/from16 v0, p0

    #@3a3
    move-object/from16 v1, p1

    #@3a5
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    #@3a8
    .line 5440
    const/4 v5, 0x1

    #@3a9
    return v5

    #@3aa
    .line 5435
    :cond_13
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@3ac
    goto :goto_8

    #@3ad
    .line 5444
    .end local v36    # "installerName":Ljava/lang/String;
    .local v40, "okay":Z
    :cond_14
    move-object/from16 v0, p0

    #@3af
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    #@3b1
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@3b3
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b6
    .line 5445
    const/16 v40, 0x0

    #@3b8
    goto/16 :goto_2

    #@3ba
    .line 5450
    :pswitch_2
    move-object/from16 v0, v35

    #@3bc
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@3be
    const-string/jumbo v7, "a"

    #@3c1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c4
    move-result v5

    #@3c5
    if-eqz v5, :cond_8

    #@3c7
    .line 5451
    const-string/jumbo v5, "RestoreEngine"

    #@3ca
    const-string/jumbo v7, "apk present but ACCEPT"

    #@3cd
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d0
    .line 5456
    const/16 v40, 0x0

    #@3d2
    goto/16 :goto_2

    #@3d4
    .line 5528
    :cond_15
    const-string/jumbo v5, "RestoreEngine"

    #@3d7
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3dc
    const-string/jumbo v8, "Restoring data for "

    #@3df
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v7

    #@3e3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v7

    #@3e7
    .line 5529
    const-string/jumbo v8, " but agent is for "

    #@3ea
    .line 5528
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ed
    move-result-object v7

    #@3ee
    .line 5529
    move-object/from16 v0, p0

    #@3f0
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    #@3f2
    .line 5528
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f5
    move-result-object v7

    #@3f6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f9
    move-result-object v7

    #@3fa
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    #@3fd
    .line 5530
    const/16 v40, 0x0

    #@3ff
    goto/16 :goto_4

    #@401
    .line 5558
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v44    # "toCopy":J
    :cond_16
    :try_start_7
    move-object/from16 v0, p0

    #@403
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@405
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@407
    const-string/jumbo v7, "system"

    #@40a
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40d
    move-result v5

    #@40e
    if-eqz v5, :cond_17

    #@410
    .line 5559
    const-string/jumbo v5, "RestoreEngine"

    #@413
    const-string/jumbo v7, "system process agent - spinning a thread"

    #@416
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@419
    .line 5560
    new-instance v11, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;

    #@41b
    .line 5561
    move-object/from16 v0, p0

    #@41d
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@41f
    move-object/from16 v0, p0

    #@421
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@423
    const/4 v7, 0x0

    #@424
    aget-object v15, v5, v7

    #@426
    move-object/from16 v12, p0

    #@428
    move-object/from16 v14, v35

    #@42a
    .line 5560
    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    #@42d
    .line 5562
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    #@42f
    const-string/jumbo v7, "restore-sys-runner"

    #@432
    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@435
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    #@438
    goto/16 :goto_5

    #@43a
    .line 5569
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    :catch_1
    move-exception v34

    #@43b
    .line 5571
    .restart local v34    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v5, "RestoreEngine"

    #@43e
    const-string/jumbo v7, "Couldn\'t establish restore"

    #@441
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@444
    .line 5572
    const/4 v4, 0x0

    #@445
    .line 5573
    const/16 v40, 0x0

    #@447
    goto/16 :goto_5

    #@449
    .line 5564
    .end local v34    # "e":Ljava/io/IOException;
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    #@44b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@44d
    move-object/from16 v17, v0

    #@44f
    move-object/from16 v0, p0

    #@451
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@453
    const/4 v7, 0x0

    #@454
    aget-object v18, v5, v7

    #@456
    move-object/from16 v0, v35

    #@458
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@45a
    move-wide/from16 v19, v0

    #@45c
    move-object/from16 v0, v35

    #@45e
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@460
    move/from16 v21, v0

    #@462
    .line 5565
    move-object/from16 v0, v35

    #@464
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@466
    move-object/from16 v22, v0

    #@468
    move-object/from16 v0, v35

    #@46a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@46c
    move-object/from16 v23, v0

    #@46e
    move-object/from16 v0, v35

    #@470
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@472
    move-wide/from16 v24, v0

    #@474
    move-object/from16 v0, v35

    #@476
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@478
    move-wide/from16 v26, v0

    #@47a
    .line 5566
    move-object/from16 v0, p0

    #@47c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@47e
    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@480
    move-object/from16 v29, v0

    #@482
    move/from16 v28, v16

    #@484
    .line 5564
    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    #@487
    goto/16 :goto_5

    #@489
    .line 5574
    :catch_2
    move-exception v33

    #@48a
    .line 5577
    .local v33, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v5, "RestoreEngine"

    #@48d
    const-string/jumbo v7, "Agent crashed during full restore"

    #@490
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    #@493
    .line 5578
    const/4 v4, 0x0

    #@494
    .line 5579
    const/16 v40, 0x0

    #@496
    goto/16 :goto_5

    #@498
    .line 5593
    .end local v33    # "e":Landroid/os/RemoteException;
    .restart local v41    # "pipe":Ljava/io/FileOutputStream;
    .restart local v42    # "pipeOkay":Z
    :cond_18
    move-wide/from16 v0, v44

    #@49a
    long-to-int v0, v0

    #@49b
    move/from16 v46, v0

    #@49d
    .restart local v46    # "toRead":I
    goto/16 :goto_7

    #@49f
    .line 5597
    .restart local v37    # "nRead":I
    :cond_19
    move/from16 v0, v37

    #@4a1
    int-to-long v8, v0

    #@4a2
    sub-long v44, v44, v8

    #@4a4
    .line 5601
    if-eqz v42, :cond_f

    #@4a6
    .line 5603
    :try_start_b
    move-object/from16 v0, p0

    #@4a8
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@4aa
    const/4 v7, 0x0

    #@4ab
    move-object/from16 v0, v41

    #@4ad
    move/from16 v1, v37

    #@4af
    invoke-virtual {v0, v5, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    #@4b2
    goto/16 :goto_6

    #@4b4
    .line 5604
    :catch_3
    move-exception v34

    #@4b5
    .line 5605
    .restart local v34    # "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v5, "RestoreEngine"

    #@4b8
    new-instance v7, Ljava/lang/StringBuilder;

    #@4ba
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4bd
    const-string/jumbo v8, "Failed to write to restore pipe: "

    #@4c0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c3
    move-result-object v7

    #@4c4
    .line 5606
    invoke-virtual/range {v34 .. v34}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4c7
    move-result-object v8

    #@4c8
    .line 5605
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cb
    move-result-object v7

    #@4cc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cf
    move-result-object v7

    #@4d0
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d3
    .line 5607
    const/16 v42, 0x0

    #@4d5
    goto/16 :goto_6

    #@4d7
    .line 5644
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v34    # "e":Ljava/io/IOException;
    .end local v37    # "nRead":I
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    .end local v44    # "toCopy":J
    .end local v46    # "toRead":I
    :cond_1a
    if-nez v40, :cond_4

    #@4d9
    .line 5646
    move-object/from16 v0, v35

    #@4db
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4dd
    const-wide/16 v12, 0x1ff

    #@4df
    add-long/2addr v8, v12

    #@4e0
    const-wide/16 v12, -0x200

    #@4e2
    and-long v30, v8, v12

    #@4e4
    .line 5647
    .local v30, "bytesToConsume":J
    :goto_9
    const-wide/16 v8, 0x0

    #@4e6
    cmp-long v5, v30, v8

    #@4e8
    if-lez v5, :cond_4

    #@4ea
    .line 5648
    move-object/from16 v0, p0

    #@4ec
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@4ee
    array-length v5, v5

    #@4ef
    int-to-long v8, v5

    #@4f0
    cmp-long v5, v30, v8

    #@4f2
    if-lez v5, :cond_1c

    #@4f4
    .line 5649
    move-object/from16 v0, p0

    #@4f6
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@4f8
    array-length v0, v5

    #@4f9
    move/from16 v46, v0

    #@4fb
    .line 5650
    .restart local v46    # "toRead":I
    :goto_a
    move-object/from16 v0, p0

    #@4fd
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    #@4ff
    const/4 v7, 0x0

    #@500
    move-object/from16 v0, p1

    #@502
    move/from16 v1, v46

    #@504
    invoke-virtual {v0, v5, v7, v1}, Ljava/io/InputStream;->read([BII)I

    #@507
    move-result v5

    #@508
    int-to-long v0, v5

    #@509
    move-wide/from16 v38, v0

    #@50b
    .line 5651
    .local v38, "nRead":J
    const-wide/16 v8, 0x0

    #@50d
    cmp-long v5, v38, v8

    #@50f
    if-ltz v5, :cond_1b

    #@511
    move-object/from16 v0, p0

    #@513
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@515
    add-long v8, v8, v38

    #@517
    move-object/from16 v0, p0

    #@519
    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    #@51b
    .line 5652
    :cond_1b
    const-wide/16 v8, 0x0

    #@51d
    cmp-long v5, v38, v8

    #@51f
    if-lez v5, :cond_4

    #@521
    .line 5653
    sub-long v30, v30, v38

    #@523
    goto :goto_9

    #@524
    .line 5649
    .end local v38    # "nRead":J
    .end local v46    # "toRead":I
    :cond_1c
    move-wide/from16 v0, v30

    #@526
    long-to-int v0, v0

    #@527
    move/from16 v46, v0

    #@529
    .restart local v46    # "toRead":I
    goto :goto_a

    #@52a
    .line 5675
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v30    # "bytesToConsume":J
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v40    # "okay":Z
    .end local v43    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v46    # "toRead":I
    :cond_1d
    const/4 v5, 0x0

    #@52b
    goto/16 :goto_1

    #@52d
    .line 5511
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v40    # "okay":Z
    .restart local v43    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :catch_4
    move-exception v34

    #@52e
    .restart local v34    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@530
    .line 5513
    .end local v34    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v32

    #@531
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    #@533
    .line 5419
    nop

    #@534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6437
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6436
    :cond_0
    :goto_0
    return-void

    #@b
    .line 6440
    :catch_0
    move-exception v0

    #@c
    .line 6441
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    #@f
    const-string/jumbo v2, "full restore observer went away: endRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 6442
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6425
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6428
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6424
    :cond_0
    :goto_0
    return-void

    #@b
    .line 6429
    :catch_0
    move-exception v0

    #@c
    .line 6430
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    #@f
    const-string/jumbo v2, "full restore observer went away: restorePackage"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 6431
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6414
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 6413
    :cond_0
    :goto_0
    return-void

    #@b
    .line 6417
    :catch_0
    move-exception v0

    #@c
    .line 6418
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    #@f
    const-string/jumbo v2, "full restore observer went away: startRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 6419
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 5679
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@6
    .line 5678
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x200

    #@2
    .line 5884
    add-long v4, p1, v6

    #@4
    rem-long v2, v4, v6

    #@6
    .line 5885
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    #@8
    cmp-long v4, v2, v4

    #@a
    if-lez v4, :cond_0

    #@c
    .line 5886
    long-to-int v4, v2

    #@d
    rsub-int v1, v4, 0x200

    #@f
    .line 5890
    .local v1, "needed":I
    new-array v0, v1, [B

    #@11
    .line 5891
    .local v0, "buffer":[B
    const/4 v4, 0x0

    #@12
    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    #@15
    move-result v4

    #@16
    if-ne v4, v1, :cond_1

    #@18
    .line 5892
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@1a
    int-to-long v6, v1

    #@1b
    add-long/2addr v4, v6

    #@1c
    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    #@1e
    .line 5883
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    #@1f
    .line 5893
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    #@21
    const-string/jumbo v5, "Unexpected EOF in padding"

    #@24
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5697
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5698
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@a
    .line 5699
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    #@c
    .line 5696
    :cond_0
    return-void
.end method

.method tearDownPipes()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5683
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@7
    const/4 v2, 0x0

    #@8
    aget-object v1, v1, v2

    #@a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@d
    .line 5686
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@f
    const/4 v2, 0x0

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    .line 5687
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@15
    const/4 v2, 0x1

    #@16
    aget-object v1, v1, v2

    #@18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1b
    .line 5688
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x1

    #@1f
    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 5692
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@23
    .line 5682
    :cond_0
    return-void

    #@24
    .line 5689
    :catch_0
    move-exception v0

    #@25
    .line 5690
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "RestoreEngine"

    #@28
    const-string/jumbo v2, "Couldn\'t close agent pipes"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method
