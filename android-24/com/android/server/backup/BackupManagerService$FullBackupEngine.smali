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
.field mAgent:Landroid/app/IBackupAgent;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mOutput:Ljava/io/OutputStream;

.field mPkg:Landroid/content/pm/PackageInfo;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field mTimeoutMonitor:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

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

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p4, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p5, "alsoApks"    # Z
    .param p6, "timeoutMonitor"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@0
    .prologue
    .line 3684
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3686
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@7
    .line 3687
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@9
    .line 3688
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@b
    .line 3689
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    #@d
    .line 3690
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@f
    .line 3691
    new-instance v0, Ljava/io/File;

    #@11
    const-string/jumbo v1, "/data/system"

    #@14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@19
    .line 3692
    new-instance v0, Ljava/io/File;

    #@1b
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@1d
    const-string/jumbo v2, "_manifest"

    #@20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    #@25
    .line 3693
    new-instance v0, Ljava/io/File;

    #@27
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@29
    const-string/jumbo v2, "_meta"

    #@2c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2f
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    #@31
    .line 3685
    return-void
.end method

.method private initializeAgent()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3789
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 3793
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@9
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b
    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@11
    .line 3796
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@13
    if-eqz v1, :cond_1

    #@15
    :goto_0
    return v0

    #@16
    :cond_1
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private tearDown()V
    .locals 2

    #@0
    .prologue
    .line 3916
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3917
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@d
    .line 3915
    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    .line 3802
    move-object/from16 v0, p1

    #@2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 3803
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@a
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 3804
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
    .line 3813
    new-instance v15, Landroid/os/Environment$UserEnvironment;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-direct {v15, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@24
    .line 3814
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
    .line 3815
    .local v13, "obbDir":Ljava/io/File;
    if-eqz v13, :cond_0

    #@31
    .line 3817
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@34
    move-result-object v14

    #@35
    .line 3818
    .local v14, "obbFiles":[Ljava/io/File;
    if-eqz v14, :cond_0

    #@37
    .line 3819
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3a
    move-result-object v9

    #@3b
    .line 3820
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
    .line 3821
    .local v12, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    #@43
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@45
    const-string/jumbo v7, "obb"

    #@48
    .line 3822
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    .line 3821
    const/4 v8, 0x0

    #@4d
    move-object/from16 v11, p2

    #@4f
    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@52
    .line 3820
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_0

    #@55
    .line 3799
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
    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v5, 0x1000

    #@4
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 3842
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/util/StringBuilderPrinter;

    #@9
    invoke-direct {v3, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    #@c
    .line 3844
    .local v3, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    #@d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@14
    .line 3845
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@19
    .line 3846
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1b
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@22
    .line 3847
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@24
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@2b
    .line 3849
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
    .line 3850
    .local v1, "installerName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@39
    .end local v1    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@3c
    .line 3852
    if-eqz p3, :cond_2

    #@3e
    const-string/jumbo v5, "1"

    #@41
    :goto_1
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@44
    .line 3853
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@46
    if-nez v5, :cond_3

    #@48
    .line 3854
    const-string/jumbo v5, "0"

    #@4b
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@4e
    .line 3862
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@50
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@53
    .line 3863
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
    .line 3864
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@61
    .line 3871
    const-wide/16 v6, 0x0

    #@63
    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    #@66
    .line 3829
    return-void

    #@67
    .line 3850
    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "installerName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    #@6a
    goto :goto_0

    #@6b
    .line 3852
    .end local v1    # "installerName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    #@6e
    goto :goto_1

    #@6f
    .line 3856
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
    .line 3857
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
    .line 3858
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v3, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@88
    .line 3857
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
    .line 3892
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v5, 0x200

    #@4
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 3893
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    #@9
    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    #@c
    .line 3894
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    #@d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@14
    .line 3895
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    #@19
    .line 3897
    new-instance v2, Ljava/io/FileOutputStream;

    #@1b
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@1e
    .line 3898
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@20
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@23
    .line 3899
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@25
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@28
    .line 3900
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
    .line 3902
    if-eqz p3, :cond_0

    #@35
    array-length v5, p3

    #@36
    if-lez v5, :cond_0

    #@38
    .line 3903
    const v5, 0x1ffed01

    #@3b
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3e
    .line 3904
    array-length v5, p3

    #@3f
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@42
    .line 3905
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    #@45
    .line 3907
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    #@48
    .line 3908
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    #@4b
    .line 3912
    const-wide/16 v6, 0x0

    #@4d
    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    #@50
    .line 3891
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3716
    const/16 v13, -0x3eb

    #@4
    .line 3718
    .local v13, "result":I
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_b

    #@a
    .line 3719
    const/4 v12, 0x0

    #@b
    .line 3721
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@e
    move-result-object v12

    #@f
    .line 3723
    .local v12, "pipes":[Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@11
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@13
    .line 3725
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@15
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@17
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v11

    #@1e
    .line 3726
    .local v11, "isSharedStorage":Z
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 3727
    if-eqz v11, :cond_3

    #@24
    .line 3726
    :cond_0
    const/4 v6, 0x0

    #@25
    .line 3733
    .local v6, "sendApk":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@27
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@29
    .line 3734
    const/4 v3, 0x0

    #@2a
    .line 3733
    invoke-static {v2, v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    #@2d
    move-result-object v8

    #@2e
    .line 3736
    .local v8, "widgetBlob":[B
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@30
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@33
    move-result v5

    #@34
    .line 3737
    .local v5, "token":I
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    #@36
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@38
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@3a
    const/4 v4, 0x1

    #@3b
    aget-object v4, v12, v4

    #@3d
    .line 3738
    if-eqz v11, :cond_6

    #@3f
    :goto_1
    move-object v1, p0

    #@40
    .line 3737
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    #@43
    .line 3739
    .local v0, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v1, 0x1

    #@44
    aget-object v1, v12, v1

    #@46
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@49
    .line 3740
    const/4 v1, 0x0

    #@4a
    const/4 v2, 0x1

    #@4b
    aput-object v1, v12, v2

    #@4d
    .line 3741
    new-instance v14, Ljava/lang/Thread;

    #@4f
    const-string/jumbo v1, "app-data-runner"

    #@52
    invoke-direct {v14, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@55
    .line 3742
    .local v14, "t":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    #@58
    .line 3745
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5a
    const/4 v2, 0x0

    #@5b
    aget-object v2, v12, v2

    #@5d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@5f
    invoke-static {v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap16(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    #@62
    .line 3747
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@64
    invoke-virtual {v1, v5}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    #@67
    move-result v1

    #@68
    if-nez v1, :cond_7

    #@6a
    .line 3748
    const-string/jumbo v1, "BackupManagerService"

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v3, "Full backup failed on package "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@7b
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@88
    .line 3761
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@8a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    #@8d
    .line 3762
    if-eqz v12, :cond_2

    #@8f
    .line 3763
    const/4 v1, 0x0

    #@90
    aget-object v1, v12, v1

    #@92
    if-eqz v1, :cond_1

    #@94
    const/4 v1, 0x0

    #@95
    aget-object v1, v12, v1

    #@97
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@9a
    .line 3764
    :cond_1
    const/4 v1, 0x1

    #@9b
    aget-object v1, v12, v1

    #@9d
    if-eqz v1, :cond_2

    #@9f
    const/4 v1, 0x1

    #@a0
    aget-object v1, v12, v1

    #@a2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a5
    .line 3774
    .end local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "widgetBlob":[B
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "isSharedStorage":Z
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown()V

    #@a8
    .line 3775
    return v13

    #@a9
    .line 3728
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "isSharedStorage":Z
    .restart local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_3
    :try_start_2
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@ab
    and-int/lit8 v2, v2, 0x4

    #@ad
    if-nez v2, :cond_0

    #@af
    .line 3729
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b1
    and-int/lit8 v2, v2, 0x1

    #@b3
    if-eqz v2, :cond_4

    #@b5
    .line 3730
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b7
    and-int/lit16 v2, v2, 0x80

    #@b9
    if-eqz v2, :cond_5

    #@bb
    const/4 v6, 0x1

    #@bc
    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    #@be
    .line 3729
    .end local v6    # "sendApk":Z
    :cond_4
    const/4 v6, 0x1

    #@bf
    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    #@c1
    .line 3730
    .end local v6    # "sendApk":Z
    :cond_5
    const/4 v6, 0x0

    #@c2
    .restart local v6    # "sendApk":Z
    goto/16 :goto_0

    #@c4
    .restart local v5    # "token":I
    .restart local v8    # "widgetBlob":[B
    :cond_6
    move v7, v1

    #@c5
    .line 3738
    goto/16 :goto_1

    #@c7
    .line 3753
    .restart local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v14    # "t":Ljava/lang/Thread;
    :cond_7
    const/4 v13, 0x0

    #@c8
    goto :goto_2

    #@c9
    .line 3766
    :catch_0
    move-exception v10

    #@ca
    .line 3767
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    #@cd
    const-string/jumbo v2, "Error bringing down backup stack"

    #@d0
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 3768
    .end local v0    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "widgetBlob":[B
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "isSharedStorage":Z
    .end local v12    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :goto_4
    const/16 v13, -0x3e8

    #@d5
    goto :goto_3

    #@d6
    .line 3755
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    #@d7
    .line 3756
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "BackupManagerService"

    #@da
    new-instance v2, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v3, "Error backing up "

    #@e2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v2

    #@e6
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@e8
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@ea
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    const-string/jumbo v3, ": "

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@104
    .line 3757
    const/16 v13, -0x3eb

    #@106
    .line 3761
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@108
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    #@10b
    .line 3762
    if-eqz v12, :cond_2

    #@10d
    .line 3763
    const/4 v1, 0x0

    #@10e
    aget-object v1, v12, v1

    #@110
    if-eqz v1, :cond_8

    #@112
    const/4 v1, 0x0

    #@113
    aget-object v1, v12, v1

    #@115
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@118
    .line 3764
    :cond_8
    const/4 v1, 0x1

    #@119
    aget-object v1, v12, v1

    #@11b
    if-eqz v1, :cond_2

    #@11d
    const/4 v1, 0x1

    #@11e
    aget-object v1, v12, v1

    #@120
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@123
    goto :goto_3

    #@124
    .line 3766
    :catch_2
    move-exception v10

    #@125
    .line 3767
    const-string/jumbo v1, "BackupManagerService"

    #@128
    const-string/jumbo v2, "Error bringing down backup stack"

    #@12b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12e
    goto :goto_4

    #@12f
    .line 3758
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@130
    .line 3761
    :try_start_5
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    #@132
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@135
    .line 3762
    if-eqz v12, :cond_a

    #@137
    .line 3763
    const/4 v2, 0x0

    #@138
    aget-object v2, v12, v2

    #@13a
    if-eqz v2, :cond_9

    #@13c
    const/4 v2, 0x0

    #@13d
    aget-object v2, v12, v2

    #@13f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@142
    .line 3764
    :cond_9
    const/4 v2, 0x1

    #@143
    aget-object v2, v12, v2

    #@145
    if-eqz v2, :cond_a

    #@147
    const/4 v2, 0x1

    #@148
    aget-object v2, v12, v2

    #@14a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@14d
    .line 3758
    :cond_a
    :goto_5
    throw v1

    #@14e
    .line 3766
    :catch_3
    move-exception v10

    #@14f
    .line 3767
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@152
    const-string/jumbo v3, "Error bringing down backup stack"

    #@155
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@158
    .line 3768
    const/16 v13, -0x3e8

    #@15a
    goto :goto_5

    #@15b
    .line 3772
    .end local v10    # "e":Ljava/io/IOException;
    :cond_b
    const-string/jumbo v1, "BackupManagerService"

    #@15e
    new-instance v2, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v3, "Unable to bind to full agent for "

    #@166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v2

    #@16a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@16c
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@16e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v2

    #@172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v2

    #@176
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    goto/16 :goto_3
.end method

.method public preflightCheck()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3697
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3701
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 3703
    :cond_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 3704
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@10
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@12
    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    #@15
    move-result v0

    #@16
    .line 3708
    .local v0, "result":I
    return v0

    #@17
    .line 3710
    .end local v0    # "result":I
    :cond_1
    const-string/jumbo v1, "BackupManagerService"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Unable to bind to full agent for "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    #@28
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 3711
    const/16 v1, -0x3eb

    #@37
    return v1
.end method

.method public sendQuotaExceeded(JJ)V
    .locals 3
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    #@0
    .prologue
    .line 3779
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    #@8
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 3778
    :cond_0
    :goto_0
    return-void

    #@c
    .line 3782
    :catch_0
    move-exception v0

    #@d
    .line 3783
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@10
    const-string/jumbo v2, "Remote exception while telling agent about quota exceeded"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method
