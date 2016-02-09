.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutput:Ljava/io/OutputStream;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p5, "alsoApks"    # Z

    #@0
    .prologue
    .line 3339
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3341
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@7
    .line 3342
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@9
    .line 3343
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    #@b
    .line 3344
    new-instance v0, Ljava/io/File;

    #@d
    const-string/jumbo v1, "/data/system"

    #@10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@15
    .line 3345
    new-instance v0, Ljava/io/File;

    #@17
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@19
    const-string/jumbo v2, "_manifest"

    #@1c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    #@21
    .line 3346
    new-instance v0, Ljava/io/File;

    #@23
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@25
    const-string/jumbo v2, "_meta"

    #@28
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    #@2d
    .line 3340
    return-void
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 3546
    if-eqz p1, :cond_0

    #@2
    .line 3547
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    .line 3548
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@6
    .line 3549
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@8
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@b
    .line 3545
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    .line 3433
    move-object/from16 v0, p1

    #@2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 3434
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@a
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 3435
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    #@13
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@15
    const-string/jumbo v2, "a"

    #@18
    const/4 v3, 0x0

    #@19
    move-object/from16 v6, p2

    #@1b
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@1e
    .line 3443
    new-instance v15, Landroid/os/Environment$UserEnvironment;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-direct {v15, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@24
    .line 3444
    .local v15, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    #@26
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@28
    invoke-virtual {v15, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@2b
    move-result-object v1

    #@2c
    const/4 v2, 0x0

    #@2d
    aget-object v13, v1, v2

    #@2f
    .line 3445
    .local v13, "obbDir":Ljava/io/File;
    if-eqz v13, :cond_0

    #@31
    .line 3447
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@34
    move-result-object v14

    #@35
    .line 3448
    .local v14, "obbFiles":[Ljava/io/File;
    if-eqz v14, :cond_0

    #@37
    .line 3449
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3a
    move-result-object v9

    #@3b
    .line 3450
    .local v9, "obbDirName":Ljava/lang/String;
    const/4 v1, 0x0

    #@3c
    array-length v2, v14

    #@3d
    :goto_0
    if-ge v1, v2, :cond_0

    #@3f
    aget-object v12, v14, v1

    #@41
    .line 3451
    .local v12, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    #@43
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@45
    const-string/jumbo v7, "obb"

    #@48
    .line 3452
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    .line 3451
    const/4 v8, 0x0

    #@4d
    move-object/from16 v11, p2

    #@4f
    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@52
    .line 3450
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_0

    #@55
    .line 3430
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "obb":Ljava/io/File;
    .end local v14    # "obbFiles":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3471
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v5, 0x1000

    #@4
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 3472
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/util/StringBuilderPrinter;

    #@9
    invoke-direct {v3, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    #@c
    .line 3474
    .local v3, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    #@d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@14
    .line 3475
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@19
    .line 3476
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1b
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@22
    .line 3477
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@24
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@2b
    .line 3479
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@30
    move-result-object v5

    #@31
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@33
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 3480
    .local v1, "installerName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@39
    .end local v1    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@3c
    .line 3482
    if-eqz p3, :cond_2

    #@3e
    const-string/jumbo v5, "1"

    #@41
    :goto_1
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@44
    .line 3483
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@46
    if-nez v5, :cond_3

    #@48
    .line 3484
    const-string/jumbo v5, "0"

    #@4b
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@4e
    .line 3492
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@50
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@53
    .line 3493
    .local v2, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    #@5e
    .line 3494
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@61
    .line 3501
    const-wide/16 v6, 0x0

    #@63
    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    #@66
    .line 3459
    return-void

    #@67
    .line 3480
    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "installerName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    #@6a
    goto :goto_0

    #@6b
    .line 3482
    .end local v1    # "installerName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    #@6e
    goto :goto_1

    #@6f
    .line 3486
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@71
    array-length v5, v5

    #@72
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@79
    .line 3487
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@7b
    const/4 v5, 0x0

    #@7c
    array-length v7, v6

    #@7d
    :goto_2
    if-ge v5, v7, :cond_0

    #@7f
    aget-object v4, v6, v5

    #@81
    .line 3488
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v3, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@88
    .line 3487
    add-int/lit8 v5, v5, 0x1

    #@8a
    goto :goto_2
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3522
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v5, 0x200

    #@4
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 3523
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    #@9
    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    #@c
    .line 3524
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    #@d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@14
    .line 3525
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@19
    .line 3527
    new-instance v2, Ljava/io/FileOutputStream;

    #@1b
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@1e
    .line 3528
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@20
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@23
    .line 3529
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@25
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@28
    .line 3530
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    #@33
    .line 3532
    if-eqz p3, :cond_0

    #@35
    array-length v5, p3

    #@36
    if-lez v5, :cond_0

    #@38
    .line 3533
    const v5, 0x1ffed01

    #@3b
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3e
    .line 3534
    array-length v5, p3

    #@3f
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@42
    .line 3535
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    #@45
    .line 3537
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    #@48
    .line 3538
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    #@4b
    .line 3542
    const-wide/16 v6, 0x0

    #@4d
    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    #@50
    .line 3521
    return-void
.end method


# virtual methods
.method public backupOnePackage(Landroid/content/pm/PackageInfo;)I
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3350
    const/4 v14, 0x0

    #@1
    .line 3351
    .local v14, "result":I
    const-string/jumbo v2, "BackupManagerService"

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Binding to full backup agent : "

    #@c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@14
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 3353
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23
    move-object/from16 v0, p1

    #@25
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27
    .line 3354
    const/4 v5, 0x1

    #@28
    .line 3353
    invoke-virtual {v2, v3, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@2b
    move-result-object v4

    #@2c
    .line 3355
    .local v4, "agent":Landroid/app/IBackupAgent;
    if-eqz v4, :cond_c

    #@2e
    .line 3356
    const/4 v13, 0x0

    #@2f
    .line 3359
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 3360
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-interface {v2, v0, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    #@3e
    move-result v14

    #@3f
    .line 3367
    :cond_0
    if-nez v14, :cond_2

    #@41
    .line 3368
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@44
    move-result-object v13

    #@45
    .line 3370
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p1

    #@47
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    .line 3371
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    #@4b
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4d
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v12

    #@54
    .line 3372
    .local v12, "isSharedStorage":Z
    move-object/from16 v0, p0

    #@56
    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    #@58
    if-eqz v2, :cond_1

    #@5a
    .line 3373
    if-eqz v12, :cond_5

    #@5c
    .line 3372
    :cond_1
    const/4 v7, 0x0

    #@5d
    .line 3378
    .local v7, "sendApk":Z
    :goto_0
    move-object/from16 v0, p1

    #@5f
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@61
    .line 3379
    const/4 v3, 0x0

    #@62
    .line 3378
    invoke-static {v2, v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    #@65
    move-result-object v9

    #@66
    .line 3381
    .local v9, "widgetBlob":[B
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6a
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@6d
    move-result v6

    #@6e
    .line 3382
    .local v6, "token":I
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    #@70
    const/4 v2, 0x1

    #@71
    aget-object v5, v13, v2

    #@73
    .line 3383
    if-eqz v12, :cond_8

    #@75
    const/4 v8, 0x0

    #@76
    :goto_1
    move-object/from16 v2, p0

    #@78
    move-object/from16 v3, p1

    #@7a
    .line 3382
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    #@7d
    .line 3384
    .local v1, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v2, 0x1

    #@7e
    aget-object v2, v13, v2

    #@80
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@83
    .line 3385
    const/4 v2, 0x0

    #@84
    const/4 v3, 0x1

    #@85
    aput-object v2, v13, v3

    #@87
    .line 3386
    new-instance v15, Ljava/lang/Thread;

    #@89
    const-string/jumbo v2, "app-data-runner"

    #@8c
    invoke-direct {v15, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@8f
    .line 3387
    .local v15, "t":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@92
    .line 3391
    :try_start_1
    move-object/from16 v0, p0

    #@94
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@96
    const/4 v3, 0x0

    #@97
    aget-object v3, v13, v3

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@9d
    invoke-static {v2, v3, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a0
    .line 3397
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a4
    invoke-virtual {v2, v6}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    #@a7
    move-result v2

    #@a8
    if-nez v2, :cond_2

    #@aa
    .line 3398
    const-string/jumbo v2, "BackupManagerService"

    #@ad
    new-instance v3, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v5, "Full backup failed on package "

    #@b5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    move-object/from16 v0, p1

    #@bb
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@bd
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    .line 3399
    const/16 v14, -0x3eb

    #@ca
    .line 3412
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v15    # "t":Ljava/lang/Thread;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    #@cc
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@ce
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@d1
    .line 3413
    if-eqz v13, :cond_4

    #@d3
    .line 3414
    const/4 v2, 0x0

    #@d4
    aget-object v2, v13, v2

    #@d6
    if-eqz v2, :cond_3

    #@d8
    const/4 v2, 0x0

    #@d9
    aget-object v2, v13, v2

    #@db
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@de
    .line 3415
    :cond_3
    const/4 v2, 0x1

    #@df
    aget-object v2, v13, v2

    #@e1
    if-eqz v2, :cond_4

    #@e3
    const/4 v2, 0x1

    #@e4
    aget-object v2, v13, v2

    #@e6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@e9
    .line 3426
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown(Landroid/content/pm/PackageInfo;)V

    #@ec
    .line 3427
    return v14

    #@ed
    .line 3374
    .restart local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5
    :try_start_4
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@ef
    and-int/lit8 v2, v2, 0x4

    #@f1
    if-nez v2, :cond_1

    #@f3
    .line 3375
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@f5
    and-int/lit8 v2, v2, 0x1

    #@f7
    if-eqz v2, :cond_6

    #@f9
    .line 3376
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    #@fb
    and-int/lit16 v2, v2, 0x80

    #@fd
    if-eqz v2, :cond_7

    #@ff
    const/4 v7, 0x1

    #@100
    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    #@102
    .line 3375
    .end local v7    # "sendApk":Z
    :cond_6
    const/4 v7, 0x1

    #@103
    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    #@105
    .line 3376
    .end local v7    # "sendApk":Z
    :cond_7
    const/4 v7, 0x0

    #@106
    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    #@108
    .line 3383
    .restart local v6    # "token":I
    .restart local v9    # "widgetBlob":[B
    :cond_8
    const/4 v8, 0x1

    #@109
    goto/16 :goto_1

    #@10b
    .line 3392
    .restart local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v15    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v11

    #@10c
    .line 3393
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@10f
    const-string/jumbo v3, "Caught exception reading from agent"

    #@112
    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@115
    .line 3394
    const/16 v14, -0x3eb

    #@117
    goto :goto_2

    #@118
    .line 3417
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "isSharedStorage":Z
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v15    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v11

    #@119
    .line 3418
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@11c
    const-string/jumbo v3, "Error bringing down backup stack"

    #@11f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    .line 3419
    :goto_4
    const/16 v14, -0x3e8

    #@124
    goto :goto_3

    #@125
    .line 3406
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    #@126
    .line 3407
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "BackupManagerService"

    #@129
    new-instance v3, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v5, "Error backing up "

    #@131
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v3

    #@135
    move-object/from16 v0, p1

    #@137
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v3

    #@13d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v3

    #@141
    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@144
    .line 3408
    const/16 v14, -0x3eb

    #@146
    .line 3412
    :try_start_6
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@14a
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@14d
    .line 3413
    if-eqz v13, :cond_4

    #@14f
    .line 3414
    const/4 v2, 0x0

    #@150
    aget-object v2, v13, v2

    #@152
    if-eqz v2, :cond_9

    #@154
    const/4 v2, 0x0

    #@155
    aget-object v2, v13, v2

    #@157
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@15a
    .line 3415
    :cond_9
    const/4 v2, 0x1

    #@15b
    aget-object v2, v13, v2

    #@15d
    if-eqz v2, :cond_4

    #@15f
    const/4 v2, 0x1

    #@160
    aget-object v2, v13, v2

    #@162
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@165
    goto :goto_3

    #@166
    .line 3417
    :catch_3
    move-exception v11

    #@167
    .line 3418
    const-string/jumbo v2, "BackupManagerService"

    #@16a
    const-string/jumbo v3, "Error bringing down backup stack"

    #@16d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@170
    goto :goto_4

    #@171
    .line 3409
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@172
    .line 3412
    :try_start_7
    move-object/from16 v0, p0

    #@174
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@176
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    #@179
    .line 3413
    if-eqz v13, :cond_b

    #@17b
    .line 3414
    const/4 v3, 0x0

    #@17c
    aget-object v3, v13, v3

    #@17e
    if-eqz v3, :cond_a

    #@180
    const/4 v3, 0x0

    #@181
    aget-object v3, v13, v3

    #@183
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    #@186
    .line 3415
    :cond_a
    const/4 v3, 0x1

    #@187
    aget-object v3, v13, v3

    #@189
    if-eqz v3, :cond_b

    #@18b
    const/4 v3, 0x1

    #@18c
    aget-object v3, v13, v3

    #@18e
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@191
    .line 3409
    :cond_b
    :goto_5
    throw v2

    #@192
    .line 3417
    :catch_4
    move-exception v11

    #@193
    .line 3418
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BackupManagerService"

    #@196
    const-string/jumbo v5, "Error bringing down backup stack"

    #@199
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19c
    .line 3419
    const/16 v14, -0x3e8

    #@19e
    goto :goto_5

    #@19f
    .line 3423
    .end local v11    # "e":Ljava/io/IOException;
    :cond_c
    const-string/jumbo v2, "BackupManagerService"

    #@1a2
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    const-string/jumbo v5, "Unable to bind to full agent for "

    #@1aa
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v3

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1b2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v3

    #@1b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v3

    #@1ba
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bd
    .line 3424
    const/16 v14, -0x3eb

    #@1bf
    goto/16 :goto_3
.end method
