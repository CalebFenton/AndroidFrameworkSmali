.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    #@3
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    #@a
    .line 84
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@11
    .line 116
    const/4 v0, 0x0

    #@12
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    #@15
    .line 118
    invoke-virtual {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages()V

    #@18
    .line 115
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    #@3
    .line 82
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    #@a
    .line 84
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@11
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    #@14
    .line 111
    return-void
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .locals 2

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const/16 v4, 0x40

    #@2
    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 140
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    .line 141
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@c
    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_1

    #@e
    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/content/pm/PackageInfo;

    #@14
    .line 143
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1f
    .line 141
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 147
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v3
.end method

.method private static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "sigs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 436
    if-nez p0, :cond_0

    #@3
    .line 437
    return-object v2

    #@4
    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    array-length v2, p0

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 441
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    #@b
    array-length v3, p0

    #@c
    :goto_0
    if-ge v2, v3, :cond_1

    #@e
    aget-object v1, p0, v2

    #@10
    .line 442
    .local v1, "s":Landroid/content/pm/Signature;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->hashSignature(Landroid/content/pm/Signature;)[B

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 441
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 444
    .end local v1    # "s":Landroid/content/pm/Signature;
    :cond_1
    return-object v0
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 1
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 123
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    #@4
    .line 124
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@7
    .line 125
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    #@a
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@c
    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    #@e
    .line 128
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@10
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@12
    .line 121
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 13
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 513
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@3
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    #@6
    .line 514
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    #@8
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    #@b
    .line 515
    const/4 v9, 0x0

    #@c
    iput v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    #@e
    .line 516
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@10
    .line 517
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    #@12
    .line 518
    const-wide/16 v10, 0x0

    #@14
    iput-wide v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    #@16
    .line 519
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    #@18
    .line 525
    new-instance v5, Ljava/io/FileInputStream;

    #@1a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v9

    #@1e
    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    .line 526
    .local v5, "instream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    #@23
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@26
    .line 527
    .local v4, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    #@28
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2b
    .line 530
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    #@2c
    .line 531
    .local v2, "ignoreExisting":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 534
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v9, "=state="

    #@33
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_4

    #@39
    .line 535
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@3c
    move-result v7

    #@3d
    .line 536
    .local v7, "stateVersion":I
    const/4 v9, 0x2

    #@3e
    if-le v7, v9, :cond_0

    #@40
    .line 537
    const-string/jumbo v9, "PMBA"

    #@43
    new-instance v10, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v11, "Unsupported state file version "

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    .line 538
    const-string/jumbo v11, ", redoing from start"

    #@56
    .line 537
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 539
    return-void

    #@62
    .line 541
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    .line 553
    .end local v7    # "stateVersion":I
    :goto_0
    const-string/jumbo v9, "@home@"

    #@69
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v9

    #@6d
    if-eqz v9, :cond_1

    #@6f
    .line 555
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@76
    move-result-object v9

    #@77
    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    #@79
    .line 556
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    #@7c
    move-result-wide v10

    #@7d
    iput-wide v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    #@7f
    .line 557
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    #@82
    move-result-object v9

    #@83
    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    #@85
    .line 559
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    .line 565
    :cond_1
    const-string/jumbo v9, "@meta@"

    #@8c
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v9

    #@90
    if-eqz v9, :cond_5

    #@92
    .line 566
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@95
    move-result v9

    #@96
    iput v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    #@98
    .line 567
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@9e
    .line 568
    if-nez v2, :cond_2

    #@a0
    .line 569
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@a2
    const-string/jumbo v10, "@meta@"

    #@a5
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a8
    .line 578
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    .line 579
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@af
    move-result v8

    #@b0
    .line 581
    .local v8, "versionCode":I
    if-nez v2, :cond_3

    #@b2
    .line 582
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@b4
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b7
    .line 584
    :cond_3
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    #@b9
    new-instance v10, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@bb
    const/4 v11, 0x0

    #@bc
    invoke-direct {v10, p0, v8, v11}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    #@bf
    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    goto :goto_1

    #@c3
    .line 586
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "versionCode":I
    :catch_0
    move-exception v1

    #@c4
    .line 512
    :goto_2
    return-void

    #@c5
    .line 548
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "PMBA"

    #@c8
    const-string/jumbo v10, "Older version of saved state - rewriting"

    #@cb
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 549
    const/4 v2, 0x1

    #@cf
    goto :goto_0

    #@d0
    .line 572
    :cond_5
    const-string/jumbo v9, "PMBA"

    #@d3
    const-string/jumbo v10, "No global metadata in state file!"

    #@d6
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@d9
    .line 573
    return-void

    #@da
    .line 588
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@db
    .line 590
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "PMBA"

    #@de
    new-instance v10, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v11, "Unable to read Package Manager state file: "

    #@e6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v10

    #@ea
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v10

    #@ee
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v10

    #@f2
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto :goto_2
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 463
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v6

    #@5
    .line 473
    .local v6, "num":I
    const/16 v10, 0x14

    #@7
    if-le v6, v10, :cond_0

    #@9
    .line 474
    :try_start_1
    const-string/jumbo v10, "PMBA"

    #@c
    const-string/jumbo v11, "Suspiciously large sig count in restore data; aborting"

    #@f
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 475
    new-instance v10, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v11, "Bad restore state"

    #@17
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@1b
    .line 505
    .end local v6    # "num":I
    :catch_0
    move-exception v1

    #@1c
    .line 506
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "PMBA"

    #@1f
    const-string/jumbo v11, "Unable to read signatures"

    #@22
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 507
    return-object v12

    #@26
    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@27
    .line 466
    .local v0, "e":Ljava/io/EOFException;
    :try_start_2
    const-string/jumbo v10, "PMBA"

    #@2a
    const-string/jumbo v11, "Read empty signature block"

    #@2d
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 467
    return-object v12

    #@31
    .line 482
    .end local v0    # "e":Ljava/io/EOFException;
    .restart local v6    # "num":I
    :cond_0
    const/4 v5, 0x0

    #@32
    .line 483
    .local v5, "nonHashFound":Z
    new-instance v9, Ljava/util/ArrayList;

    #@34
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@37
    .line 484
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    #@38
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    #@3a
    .line 485
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3d
    move-result v4

    #@3e
    .line 486
    .local v4, "len":I
    new-array v7, v4, [B

    #@40
    .line 487
    .local v7, "readHash":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    #@43
    .line 488
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 489
    const/16 v10, 0x20

    #@48
    if-eq v4, v10, :cond_1

    #@4a
    .line 490
    const/4 v5, 0x1

    #@4b
    .line 484
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 494
    .end local v4    # "len":I
    .end local v7    # "readHash":[B
    :cond_2
    if-eqz v5, :cond_4

    #@50
    .line 496
    new-instance v2, Ljava/util/ArrayList;

    #@52
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v10

    #@56
    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@59
    .line 497
    .local v2, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    #@5a
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@5d
    move-result v10

    #@5e
    if-ge v3, v10, :cond_3

    #@60
    .line 498
    new-instance v8, Landroid/content/pm/Signature;

    #@62
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@65
    move-result-object v10

    #@66
    check-cast v10, [B

    #@68
    invoke-direct {v8, v10}, Landroid/content/pm/Signature;-><init>([B)V

    #@6b
    .line 499
    .local v8, "s":Landroid/content/pm/Signature;
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->hashSignature(Landroid/content/pm/Signature;)[B

    #@6e
    move-result-object v10

    #@6f
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@72
    .line 497
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_1

    #@75
    .line 501
    .end local v8    # "s":Landroid/content/pm/Signature;
    :cond_3
    move-object v9, v2

    #@76
    .line 504
    .end local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    return-object v9
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    array-length v0, p2

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@4
    .line 354
    array-length v0, p2

    #@5
    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@8
    .line 352
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 453
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "buffer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [B

    #@17
    .line 454
    .local v0, "buffer":[B
    array-length v2, v0

    #@18
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1b
    .line 455
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@1e
    goto :goto_0

    #@1f
    .line 448
    .end local v0    # "buffer":[B
    :cond_0
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 601
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v3, Ljava/io/FileOutputStream;

    #@2
    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v6

    #@6
    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    .line 602
    .local v3, "outstream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    #@b
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 603
    .local v2, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@10
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 608
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    const-string/jumbo v6, "=state="

    #@16
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@19
    .line 609
    const/4 v6, 0x2

    #@1a
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d
    .line 612
    if-eqz p2, :cond_0

    #@1f
    .line 613
    const-string/jumbo v6, "@home@"

    #@22
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@25
    .line 614
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2c
    .line 615
    invoke-virtual {v1, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@2f
    .line 616
    invoke-static {v1, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    #@32
    .line 620
    :cond_0
    const-string/jumbo v6, "@meta@"

    #@35
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@38
    .line 621
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    #@3a
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3d
    .line 622
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@3f
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@42
    .line 625
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v5

    #@46
    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_1

    #@4c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Landroid/content/pm/PackageInfo;

    #@52
    .line 626
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@54
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@57
    .line 627
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    #@59
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    goto :goto_0

    #@5d
    .line 631
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@5e
    .line 632
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "PMBA"

    #@61
    const-string/jumbo v7, "Unable to write package manager state file!"

    #@64
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 600
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    #@68
    .line 630
    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    goto :goto_1
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    invoke-static {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    #@8
    .line 133
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 155
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 156
    const-string/jumbo v0, "PMBA"

    #@8
    const-string/jumbo v1, "getRestoredMetadata() before metadata read!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 157
    return-object v2

    #@f
    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@17
    return-object v0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 164
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 165
    const-string/jumbo v0, "PMBA"

    #@8
    const-string/jumbo v1, "getRestoredPackages() before metadata read!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 166
    return-object v2

    #@f
    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public hasMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    #@2
    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 22
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 183
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 184
    .local v15, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    #@7
    move-object/from16 v0, v16

    #@9
    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 185
    .local v16, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    #@f
    .line 190
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@13
    if-eqz v3, :cond_5

    #@15
    .line 191
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@19
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_5

    #@21
    .line 197
    :goto_0
    const-wide/16 v6, 0x0

    #@23
    .line 198
    .local v6, "homeVersion":J
    const/4 v8, 0x0

    #@24
    .line 199
    .local v8, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v11, 0x0

    #@25
    .line 200
    .local v11, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    #@26
    .line 201
    .local v12, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    #@29
    move-result-object v5

    #@2a
    .line 202
    .local v5, "home":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    #@2c
    .line 204
    :try_start_0
    move-object/from16 v0, p0

    #@2e
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@30
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 205
    const/16 v9, 0x40

    #@36
    .line 204
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@39
    move-result-object v11

    #@3a
    .line 206
    .local v11, "homeInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3e
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v12

    #@46
    .line 207
    .local v12, "homeInstaller":Ljava/lang/String;
    iget v3, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    #@48
    int-to-long v6, v3

    #@49
    .line 208
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@4b
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@4e
    move-result-object v8

    #@4f
    .line 222
    .end local v5    # "home":Landroid/content/ComponentName;
    .end local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "homeInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "homeInstaller":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@51
    iget-wide v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    #@53
    move-wide/from16 v20, v0

    #@55
    cmp-long v3, v6, v20

    #@57
    if-nez v3, :cond_6

    #@59
    .line 223
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    #@5d
    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_6

    #@63
    .line 224
    if-eqz v5, :cond_8

    #@65
    .line 225
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    #@69
    invoke-static {v3, v11}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_7

    #@6f
    const/4 v14, 0x0

    #@70
    .line 226
    .local v14, "needHomeBackup":Z
    :goto_2
    if-eqz v14, :cond_1

    #@72
    .line 230
    if-eqz v5, :cond_a

    #@74
    .line 231
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    move-object/from16 v0, v16

    #@7a
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@7d
    .line 232
    move-object/from16 v0, v16

    #@7f
    invoke-virtual {v0, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@82
    .line 233
    if-eqz v12, :cond_9

    #@84
    :goto_3
    move-object/from16 v0, v16

    #@86
    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@89
    .line 234
    move-object/from16 v0, v16

    #@8b
    invoke-static {v0, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    #@8e
    .line 235
    const-string/jumbo v3, "@home@"

    #@91
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@94
    move-result-object v4

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-static {v0, v3, v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    #@9a
    .line 250
    :cond_1
    :goto_4
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@9d
    .line 251
    move-object/from16 v0, p0

    #@9f
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@a1
    const-string/jumbo v4, "@meta@"

    #@a4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@a7
    move-result v3

    #@a8
    if-nez v3, :cond_b

    #@aa
    .line 253
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@ac
    move-object/from16 v0, v16

    #@ae
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b1
    .line 254
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@b3
    move-object/from16 v0, v16

    #@b5
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@b8
    .line 255
    const-string/jumbo v3, "@meta@"

    #@bb
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@be
    move-result-object v4

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-static {v0, v3, v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    #@c4
    .line 264
    :goto_5
    move-object/from16 v0, p0

    #@c6
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    #@c8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@cb
    move-result-object v19

    #@cc
    .local v19, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@cf
    move-result v3

    #@d0
    if-eqz v3, :cond_d

    #@d2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d5
    move-result-object v18

    #@d6
    check-cast v18, Landroid/content/pm/PackageInfo;

    #@d8
    .line 265
    .local v18, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    #@da
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@dc
    move-object/from16 v17, v0

    #@de
    .line 266
    .local v17, "packName":Ljava/lang/String;
    const-string/jumbo v3, "@meta@"

    #@e1
    move-object/from16 v0, v17

    #@e3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@e6
    move-result v3

    #@e7
    if-nez v3, :cond_2

    #@e9
    .line 270
    const/4 v13, 0x0

    #@ea
    .line 272
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_2
    move-object/from16 v0, p0

    #@ec
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    #@ee
    .line 273
    const/16 v4, 0x40

    #@f0
    .line 272
    move-object/from16 v0, v17

    #@f2
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@f5
    move-result-object v13

    #@f6
    .line 281
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_3
    move-object/from16 v0, p0

    #@f8
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@fa
    move-object/from16 v0, v17

    #@fc
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@ff
    move-result v3

    #@100
    if-eqz v3, :cond_3

    #@102
    .line 287
    move-object/from16 v0, p0

    #@104
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@106
    move-object/from16 v0, v17

    #@108
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@10b
    .line 288
    iget v4, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    #@111
    move-object/from16 v0, v17

    #@113
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    move-result-object v3

    #@117
    check-cast v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@119
    iget v3, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@11b
    if-eq v4, v3, :cond_2

    #@11d
    .line 293
    :cond_3
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@11f
    if-eqz v3, :cond_4

    #@121
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@123
    array-length v3, v3

    #@124
    if-nez v3, :cond_c

    #@126
    .line 295
    :cond_4
    const-string/jumbo v3, "PMBA"

    #@129
    new-instance v4, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v9, "Not backing up package "

    #@131
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v4

    #@135
    move-object/from16 v0, v17

    #@137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v4

    #@13b
    .line 296
    const-string/jumbo v9, " since it appears to have no signatures."

    #@13e
    .line 295
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v4

    #@142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v4

    #@146
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@149
    goto :goto_6

    #@14a
    .line 341
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "needHomeBackup":Z
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v19    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    #@14b
    .line 343
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v3, "PMBA"

    #@14e
    const-string/jumbo v4, "Unable to write package backup data file!"

    #@151
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@154
    .line 344
    return-void

    #@155
    .line 192
    .end local v6    # "homeVersion":J
    .end local v10    # "e":Ljava/io/IOException;
    :cond_5
    const-string/jumbo v3, "PMBA"

    #@158
    new-instance v4, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v9, "Previous metadata "

    #@160
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v4

    #@164
    move-object/from16 v0, p0

    #@166
    iget-object v9, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@168
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v4

    #@16c
    const-string/jumbo v9, " mismatch vs "

    #@16f
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v4

    #@173
    .line 193
    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@175
    .line 192
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v4

    #@179
    .line 193
    const-string/jumbo v9, " - rewriting"

    #@17c
    .line 192
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v4

    #@184
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@187
    .line 194
    move-object/from16 v0, p0

    #@189
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@18b
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    #@18e
    goto/16 :goto_0

    #@190
    .line 209
    .restart local v5    # "home":Landroid/content/ComponentName;
    .restart local v6    # "homeVersion":J
    .restart local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v2

    #@191
    .line 210
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "PMBA"

    #@194
    const-string/jumbo v4, "Can\'t access preferred home info"

    #@197
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19a
    .line 212
    const/4 v5, 0x0

    #@19b
    .local v5, "home":Landroid/content/ComponentName;
    goto/16 :goto_1

    #@19d
    .line 222
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "home":Landroid/content/ComponentName;
    .end local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_6
    const/4 v14, 0x1

    #@19e
    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_2

    #@1a0
    .line 225
    .end local v14    # "needHomeBackup":Z
    :cond_7
    const/4 v14, 0x1

    #@1a1
    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_2

    #@1a3
    .line 224
    .end local v14    # "needHomeBackup":Z
    :cond_8
    const/4 v14, 0x0

    #@1a4
    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_2

    #@1a6
    .line 233
    :cond_9
    :try_start_4
    const-string/jumbo v12, ""

    #@1a9
    goto/16 :goto_3

    #@1ab
    .line 237
    :cond_a
    const-string/jumbo v3, "@home@"

    #@1ae
    const/4 v4, -0x1

    #@1af
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@1b4
    goto/16 :goto_4

    #@1b6
    .line 259
    :cond_b
    move-object/from16 v0, p0

    #@1b8
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@1ba
    const-string/jumbo v4, "@meta@"

    #@1bd
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@1c0
    goto/16 :goto_5

    #@1c2
    .line 274
    .local v13, "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packName":Ljava/lang/String;
    .restart local v18    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pkg$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v2

    #@1c3
    .line 277
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    #@1c5
    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    #@1c7
    move-object/from16 v0, v17

    #@1c9
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1cc
    goto/16 :goto_6

    #@1ce
    .line 309
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :cond_c
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@1d1
    .line 310
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1d3
    move-object/from16 v0, v16

    #@1d5
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d8
    .line 312
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@1da
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    #@1dd
    move-result-object v3

    #@1de
    .line 311
    move-object/from16 v0, v16

    #@1e0
    invoke-static {v0, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    #@1e3
    .line 321
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1e6
    move-result-object v3

    #@1e7
    move-object/from16 v0, p2

    #@1e9
    move-object/from16 v1, v17

    #@1eb
    invoke-static {v0, v1, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@1ee
    goto/16 :goto_6

    #@1f0
    .line 348
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_d
    move-object/from16 v0, p0

    #@1f2
    iget-object v4, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    #@1f4
    move-object/from16 v3, p0

    #@1f6
    move-object/from16 v9, p3

    #@1f8
    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    #@1fb
    .line 180
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 17
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 363
    .local v9, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    #@7
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 367
    .local v10, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@d
    move-result v14

    #@e
    if-eqz v14, :cond_5

    #@10
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 369
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    #@17
    move-result v4

    #@18
    .line 374
    .local v4, "dataSize":I
    new-array v7, v4, [B

    #@1a
    .line 375
    .local v7, "inputBytes":[B
    const/4 v14, 0x0

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v7, v14, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@20
    .line 376
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@22
    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@25
    .line 377
    .local v5, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    #@27
    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2a
    .line 379
    .local v6, "inputBufferStream":Ljava/io/DataInputStream;
    const-string/jumbo v14, "@meta@"

    #@2d
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v14

    #@31
    if-eqz v14, :cond_1

    #@33
    .line 380
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@36
    move-result v12

    #@37
    .line 382
    .local v12, "storedSdkVersion":I
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    #@39
    .line 365
    const/4 v15, -0x1

    #@3a
    .line 382
    if-le v15, v14, :cond_0

    #@3c
    .line 384
    const-string/jumbo v14, "PMBA"

    #@3f
    const-string/jumbo v15, "Restore set was from a later version of Android; not restoring"

    #@42
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 385
    return-void

    #@46
    .line 387
    :cond_0
    move-object/from16 v0, p0

    #@48
    iput v12, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    #@4a
    .line 388
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@4d
    move-result-object v14

    #@4e
    move-object/from16 v0, p0

    #@50
    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    #@52
    .line 389
    const/4 v14, 0x1

    #@53
    move-object/from16 v0, p0

    #@55
    iput-boolean v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    #@57
    goto :goto_0

    #@58
    .line 396
    .end local v12    # "storedSdkVersion":I
    :cond_1
    const-string/jumbo v14, "@home@"

    #@5b
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_2

    #@61
    .line 397
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .line 398
    .local v3, "cn":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@68
    move-result-object v14

    #@69
    move-object/from16 v0, p0

    #@6b
    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    #@6d
    .line 399
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    #@70
    move-result-wide v14

    #@71
    move-object/from16 v0, p0

    #@73
    iput-wide v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    #@75
    .line 400
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@78
    move-result-object v14

    #@79
    move-object/from16 v0, p0

    #@7b
    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    #@7d
    .line 401
    invoke-static {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    #@80
    move-result-object v14

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    #@85
    goto :goto_0

    #@86
    .line 410
    .end local v3    # "cn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@89
    move-result v13

    #@8a
    .line 411
    .local v13, "versionCode":I
    invoke-static {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    #@8d
    move-result-object v11

    #@8e
    .line 418
    .local v11, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v11, :cond_3

    #@90
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v14

    #@94
    if-nez v14, :cond_4

    #@96
    .line 419
    :cond_3
    const-string/jumbo v14, "PMBA"

    #@99
    new-instance v15, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v16, "Not restoring package "

    #@a1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v15

    #@a9
    .line 420
    const-string/jumbo v16, " since it appears to have no signatures."

    #@ac
    .line 419
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v15

    #@b0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v15

    #@b4
    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 424
    :cond_4
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    #@bb
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@be
    .line 425
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iput-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c0
    .line 426
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c3
    .line 427
    new-instance v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@c5
    move-object/from16 v0, p0

    #@c7
    invoke-direct {v14, v0, v13, v11}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    #@ca
    invoke-virtual {v10, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 432
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dataSize":I
    .end local v5    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v6    # "inputBufferStream":Ljava/io/DataInputStream;
    .end local v7    # "inputBytes":[B
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "versionCode":I
    :cond_5
    move-object/from16 v0, p0

    #@d1
    iput-object v10, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    #@d3
    .line 361
    return-void
.end method
