.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformUnifiedRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->values()[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@10
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@19
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@22
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@34
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@2
    return-object p1
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isFullSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 7297
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 7300
    sget-object v8, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@7
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@9
    .line 7301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v8

    #@d
    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    #@f
    .line 7303
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@11
    .line 7304
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@13
    .line 7305
    move-wide/from16 v0, p4

    #@15
    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    #@17
    .line 7306
    move/from16 v0, p7

    #@19
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@1b
    .line 7307
    move-object/from16 v0, p6

    #@1d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    #@1f
    .line 7308
    move/from16 v0, p8

    #@21
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@23
    .line 7309
    const/4 v8, 0x0

    #@24
    iput-boolean v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@26
    .line 7311
    if-eqz p6, :cond_1

    #@28
    .line 7313
    new-instance v8, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@2f
    .line 7314
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@31
    move-object/from16 v0, p6

    #@33
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 7299
    :cond_0
    :goto_0
    return-void

    #@37
    .line 7317
    :cond_1
    if-nez p9, :cond_2

    #@39
    .line 7320
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@3c
    move-result-object v8

    #@3d
    invoke-static {v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    #@40
    move-result-object v2

    #@41
    .line 7321
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    #@44
    move-result-object p9

    #@45
    .line 7323
    const-string/jumbo v8, "BackupManagerService"

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "Full restore; asking about "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    move-object/from16 v0, p9

    #@56
    array-length v10, v0

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    const-string/jumbo v10, " apps"

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 7327
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    #@6b
    move-object/from16 v0, p9

    #@6d
    array-length v9, v0

    #@6e
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@71
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@73
    .line 7332
    const/4 v5, 0x0

    #@74
    .line 7333
    .local v5, "hasSystem":Z
    const/4 v4, 0x0

    #@75
    .line 7334
    .local v4, "hasSettings":Z
    const/4 v6, 0x0

    #@76
    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p9

    #@78
    array-length v8, v0

    #@79
    if-ge v6, v8, :cond_6

    #@7b
    .line 7336
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@7e
    move-result-object v8

    #@7f
    aget-object v9, p9, v6

    #@81
    const/4 v10, 0x0

    #@82
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@85
    move-result-object v7

    #@86
    .line 7337
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v8, "android"

    #@89
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v8

    #@8f
    if-eqz v8, :cond_4

    #@91
    .line 7338
    const/4 v5, 0x1

    #@92
    .line 7334
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@94
    goto :goto_1

    #@95
    .line 7341
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string/jumbo v8, "com.android.providers.settings"

    #@98
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9a
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v8

    #@9e
    if-eqz v8, :cond_5

    #@a0
    .line 7342
    const/4 v4, 0x1

    #@a1
    .line 7343
    goto :goto_2

    #@a2
    .line 7346
    :cond_5
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a4
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@a7
    move-result v8

    #@a8
    if-eqz v8, :cond_3

    #@aa
    .line 7347
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@ac
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    goto :goto_2

    #@b0
    .line 7349
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@b1
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    #@b2
    .line 7353
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    if-eqz v5, :cond_7

    #@b4
    .line 7355
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@b6
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@b9
    move-result-object v9

    #@ba
    const-string/jumbo v10, "android"

    #@bd
    const/4 v11, 0x0

    #@be
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@c1
    move-result-object v9

    #@c2
    const/4 v10, 0x0

    #@c3
    invoke-interface {v8, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@c6
    .line 7360
    :cond_7
    :goto_3
    if-eqz v4, :cond_0

    #@c8
    .line 7362
    :try_start_2
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@ca
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@cd
    move-result-object v9

    #@ce
    const-string/jumbo v10, "com.android.providers.settings"

    #@d1
    const/4 v11, 0x0

    #@d2
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@d5
    move-result-object v9

    #@d6
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@d9
    goto/16 :goto_0

    #@db
    .line 7363
    :catch_1
    move-exception v3

    #@dc
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    #@de
    .line 7356
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    #@df
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method private dispatchNextRestore()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    .line 7552
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@4
    .line 7554
    .local v5, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@6
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@9
    move-result-object v8

    #@a
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@c
    .line 7555
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@e
    if-eqz v8, :cond_0

    #@10
    .line 7556
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@12
    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 7557
    :goto_0
    if-nez v6, :cond_1

    #@18
    .line 7558
    const-string/jumbo v8, "BackupManagerService"

    #@1b
    const-string/jumbo v9, "Failure getting next package name"

    #@1e
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 7559
    const/4 v8, 0x0

    #@22
    new-array v8, v8, [Ljava/lang/Object;

    #@24
    const/16 v9, 0xb0f

    #@26
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@29
    .line 7560
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@2e
    .line 7561
    return-void

    #@2f
    .line 7556
    :cond_0
    const/4 v6, 0x0

    #@30
    .local v6, "pkgName":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 7562
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@33
    sget-object v9, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    #@35
    if-ne v8, v9, :cond_2

    #@37
    .line 7565
    const-string/jumbo v8, "BackupManagerService"

    #@3a
    const-string/jumbo v9, "No more packages; finishing restore"

    #@3d
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 7567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@43
    move-result-wide v8

    #@44
    iget-wide v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    #@46
    sub-long/2addr v8, v10

    #@47
    long-to-int v4, v8

    #@48
    .line 7568
    .local v4, "millis":I
    const/4 v8, 0x2

    #@49
    new-array v8, v8, [Ljava/lang/Object;

    #@4b
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    #@4d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v9

    #@51
    const/4 v10, 0x0

    #@52
    aput-object v9, v8, v10

    #@54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v9

    #@58
    const/4 v10, 0x1

    #@59
    aput-object v9, v8, v10

    #@5b
    const/16 v9, 0xb12

    #@5d
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@60
    .line 7569
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@65
    .line 7570
    return-void

    #@66
    .line 7574
    .end local v4    # "millis":I
    :cond_2
    :try_start_2
    const-string/jumbo v8, "BackupManagerService"

    #@69
    new-instance v9, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v10, "Next restore package: "

    #@71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 7576
    invoke-virtual {p0, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    #@85
    .line 7578
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@87
    invoke-virtual {v8, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@8a
    move-result-object v3

    #@8b
    .line 7579
    .local v3, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v3, :cond_3

    #@8d
    .line 7580
    const-string/jumbo v8, "BackupManagerService"

    #@90
    new-instance v9, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v10, "No metadata for "

    #@98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v9

    #@a4
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 7581
    const/4 v8, 0x2

    #@a8
    new-array v8, v8, [Ljava/lang/Object;

    #@aa
    const/4 v9, 0x0

    #@ab
    aput-object v6, v8, v9

    #@ad
    .line 7582
    const-string/jumbo v9, "Package metadata missing"

    #@b0
    const/4 v10, 0x1

    #@b1
    aput-object v9, v8, v10

    #@b3
    .line 7581
    const/16 v9, 0xb10

    #@b5
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@b8
    .line 7583
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ba
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@bd
    .line 7584
    return-void

    #@be
    .line 7588
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c0
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@c3
    move-result-object v8

    #@c4
    .line 7589
    const/16 v9, 0x40

    #@c6
    .line 7588
    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@c9
    move-result-object v8

    #@ca
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cc
    .line 7600
    :try_start_4
    iget v8, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@ce
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d0
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    #@d2
    if-le v8, v9, :cond_5

    #@d4
    .line 7604
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d6
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@da
    .line 7605
    const/high16 v9, 0x20000

    #@dc
    .line 7604
    and-int/2addr v8, v9

    #@dd
    if-nez v8, :cond_4

    #@df
    .line 7606
    new-instance v8, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v9, "Version "

    #@e7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v8

    #@eb
    iget v9, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@ed
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v8

    #@f1
    .line 7607
    const-string/jumbo v9, " > installed version "

    #@f4
    .line 7606
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v8

    #@f8
    .line 7607
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@fa
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    #@fc
    .line 7606
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v8

    #@100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    .line 7608
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v8, "BackupManagerService"

    #@107
    new-instance v9, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v10, "Package "

    #@10f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v9

    #@117
    const-string/jumbo v10, ": "

    #@11a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v9

    #@126
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    .line 7609
    const/4 v8, 0x2

    #@12a
    new-array v8, v8, [Ljava/lang/Object;

    #@12c
    .line 7610
    const/4 v9, 0x0

    #@12d
    aput-object v6, v8, v9

    #@12f
    const/4 v9, 0x1

    #@130
    aput-object v2, v8, v9

    #@132
    .line 7609
    const/16 v9, 0xb10

    #@134
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@137
    .line 7611
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@139
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@13c
    .line 7612
    return-void

    #@13d
    .line 7590
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@13e
    .line 7593
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string/jumbo v8, "BackupManagerService"

    #@141
    new-instance v9, Ljava/lang/StringBuilder;

    #@143
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v10, "Package not present: "

    #@149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v9

    #@14d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v9

    #@151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v9

    #@155
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@158
    .line 7594
    const/4 v8, 0x2

    #@159
    new-array v8, v8, [Ljava/lang/Object;

    #@15b
    const/4 v9, 0x0

    #@15c
    aput-object v6, v8, v9

    #@15e
    .line 7595
    const-string/jumbo v9, "Package missing on device"

    #@161
    const/4 v10, 0x1

    #@162
    aput-object v9, v8, v10

    #@164
    .line 7594
    const/16 v9, 0xb10

    #@166
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@169
    .line 7596
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@16b
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@16e
    .line 7597
    return-void

    #@16f
    .line 7614
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :try_start_6
    const-string/jumbo v8, "BackupManagerService"

    #@172
    new-instance v9, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v10, "Version "

    #@17a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v9

    #@17e
    iget v10, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@183
    move-result-object v9

    #@184
    .line 7615
    const-string/jumbo v10, " > installed "

    #@187
    .line 7614
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v9

    #@18b
    .line 7615
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@18d
    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    #@18f
    .line 7614
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v9

    #@193
    .line 7616
    const-string/jumbo v10, " but restoreAnyVersion"

    #@196
    .line 7614
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v9

    #@19a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v9

    #@19e
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a1
    .line 7626
    :cond_5
    const/4 v8, 0x0

    #@1a2
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@1a4
    .line 7627
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@1a6
    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getDataType()I

    #@1a9
    move-result v7

    #@1aa
    .line 7628
    .local v7, "type":I
    if-ne v7, v11, :cond_6

    #@1ac
    .line 7629
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1ae
    .line 7644
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1b1
    .line 7551
    return-void

    #@1b2
    .line 7630
    :cond_6
    if-ne v7, v12, :cond_7

    #@1b4
    .line 7631
    :try_start_7
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1b6
    goto :goto_1

    #@1b7
    .line 7634
    :cond_7
    const-string/jumbo v8, "BackupManagerService"

    #@1ba
    new-instance v9, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    const-string/jumbo v10, "Unrecognized restore type "

    #@1c2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v9

    #@1c6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v9

    #@1ca
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v9

    #@1ce
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d1
    .line 7635
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1d3
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1d6
    .line 7636
    return-void

    #@1d7
    .line 7638
    .end local v3    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v7    # "type":I
    :catch_1
    move-exception v1

    #@1d8
    .line 7639
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v8, "BackupManagerService"

    #@1db
    const-string/jumbo v9, "Can\'t get next target from transport; ending restore"

    #@1de
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e1
    .line 7640
    const/4 v8, 0x0

    #@1e2
    new-array v8, v8, [Ljava/lang/Object;

    #@1e4
    const/16 v9, 0xb0f

    #@1e6
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1e9
    .line 7641
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1eb
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1ee
    .line 7642
    return-void

    #@1ef
    .line 7643
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    #@1f0
    .line 7644
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1f3
    .line 7643
    throw v8
.end method

.method private finalizeRestore()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    .line 8039
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@5
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 8045
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 8047
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@e
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@10
    invoke-interface {v2, v3}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 8054
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@15
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@17
    invoke-virtual {v2, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@1a
    .line 8058
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@1c
    if-lez v2, :cond_2

    #@1e
    .line 8061
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@22
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@24
    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@27
    .line 8071
    :goto_2
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    #@2a
    .line 8075
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@2c
    if-eqz v2, :cond_1

    #@2e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 8076
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@34
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@36
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    #@39
    move-result-object v3

    #@3a
    iput-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3c
    .line 8077
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    #@40
    iput-wide v4, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@42
    .line 8078
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@44
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    #@47
    .line 8082
    :cond_1
    const-string/jumbo v2, "BackupManagerService"

    #@4a
    const-string/jumbo v3, "Restore complete."

    #@4d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 8083
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@52
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@54
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@57
    .line 8035
    return-void

    #@58
    .line 8040
    :catch_0
    move-exception v1

    #@59
    .line 8041
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@5c
    const-string/jumbo v3, "Error finishing restore"

    #@5f
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    goto :goto_0

    #@63
    .line 8048
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@64
    .line 8049
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BackupManagerService"

    #@67
    const-string/jumbo v3, "Restore observer died at restoreFinished"

    #@6a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_1

    #@6e
    .line 8066
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@70
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@72
    .line 8067
    const-wide/32 v4, 0xea60

    #@75
    .line 8066
    invoke-virtual {v2, v7, v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@78
    goto :goto_2

    #@79
    .line 8062
    :catch_2
    move-exception v0

    #@7a
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 7378
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 7379
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    #@6
    .line 7380
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 7381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/content/pm/PackageInfo;

    #@f
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@11
    aput-object v3, v2, v1

    #@13
    .line 7380
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 7383
    :cond_0
    return-object v2
.end method

.method private restoreFinished()V
    .locals 6

    #@0
    .prologue
    .line 7845
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@5
    move-result v1

    #@6
    .line 7846
    .local v1, "token":I
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@8
    const-wide/16 v4, 0x7530

    #@a
    invoke-virtual {v2, v1, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@d
    .line 7847
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@13
    invoke-interface {v2, v1, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 7843
    .end local v1    # "token":I
    :goto_0
    return-void

    #@17
    .line 7850
    :catch_0
    move-exception v0

    #@18
    .line 7851
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unable to finalize restore of "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@29
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 7852
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@38
    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@3b
    goto :goto_0
.end method

.method private restoreFull()V
    .locals 4

    #@0
    .prologue
    .line 7824
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    #@2
    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    #@5
    .line 7829
    .local v1, "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    new-instance v2, Ljava/lang/Thread;

    #@7
    const-string/jumbo v3, "unified-stream-feeder"

    #@a
    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@d
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 7813
    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_0
    return-void

    #@11
    .line 7833
    :catch_0
    move-exception v0

    #@12
    .line 7837
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@15
    const-string/jumbo v3, "Unable to construct pipes for stream restore!"

    #@18
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 7838
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1d
    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@20
    goto :goto_0
.end method

.method private restoreKeyValue()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xb10

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 7653
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@7
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9
    .line 7656
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@b
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 7657
    const-string/jumbo v3, ""

    #@14
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@16
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    .line 7656
    if-eqz v3, :cond_1

    #@20
    .line 7662
    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    #@22
    aput-object v2, v3, v6

    #@24
    .line 7663
    const-string/jumbo v4, "Package has no agent"

    #@27
    aput-object v4, v3, v7

    #@29
    .line 7662
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2c
    .line 7664
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2e
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@31
    .line 7665
    return-void

    #@32
    .line 7668
    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@34
    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@37
    move-result-object v1

    #@38
    .line 7669
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    #@3a
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@3c
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_2

    #@42
    .line 7670
    const-string/jumbo v3, "BackupManagerService"

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Signature mismatch restoring "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 7671
    new-array v3, v8, [Ljava/lang/Object;

    #@5e
    aput-object v2, v3, v6

    #@60
    .line 7672
    const-string/jumbo v4, "Signature mismatch"

    #@63
    aput-object v4, v3, v7

    #@65
    .line 7671
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@68
    .line 7673
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@6d
    .line 7674
    return-void

    #@6e
    .line 7678
    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@70
    .line 7679
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@72
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@74
    .line 7678
    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@77
    move-result-object v3

    #@78
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@7a
    .line 7681
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@7c
    if-nez v3, :cond_3

    #@7e
    .line 7682
    const-string/jumbo v3, "BackupManagerService"

    #@81
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v5, "Can\'t find backup agent for "

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 7683
    new-array v3, v8, [Ljava/lang/Object;

    #@9a
    aput-object v2, v3, v6

    #@9c
    .line 7684
    const-string/jumbo v4, "Restore agent missing"

    #@9f
    aput-object v4, v3, v7

    #@a1
    .line 7683
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@a4
    .line 7685
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@a6
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@a9
    .line 7686
    return-void

    #@aa
    .line 7691
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@ac
    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@ae
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    #@b1
    .line 7692
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    #@b3
    add-int/lit8 v3, v3, 0x1

    #@b5
    iput v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b7
    .line 7649
    :goto_0
    return-void

    #@b8
    .line 7693
    :catch_0
    move-exception v0

    #@b9
    .line 7694
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@bc
    new-instance v4, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v5, "Error when attempting restore: "

    #@c4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v4

    #@d4
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 7695
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@da
    .line 7696
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@dc
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@df
    goto :goto_0
.end method

.method private startRestore()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x14

    #@2
    const/16 v8, -0x3e8

    #@4
    const/4 v6, 0x0

    #@5
    .line 7465
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@7
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a
    move-result v5

    #@b
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendStartRestore(I)V

    #@e
    .line 7468
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 7469
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    #@15
    .line 7473
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@17
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 7474
    .local v4, "transportDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    #@1d
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f
    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@21
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    #@26
    .line 7477
    new-instance v3, Landroid/content/pm/PackageInfo;

    #@28
    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    #@2b
    .line 7478
    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string/jumbo v5, "@pm@"

    #@2e
    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@30
    .line 7479
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@32
    const/4 v6, 0x0

    #@33
    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@36
    .line 7481
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@38
    const/4 v6, 0x0

    #@39
    new-array v6, v6, [Landroid/content/pm/PackageInfo;

    #@3b
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, [Landroid/content/pm/PackageInfo;

    #@41
    .line 7482
    .local v2, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@43
    iget-wide v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    #@45
    invoke-interface {v5, v6, v7, v2}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    #@48
    move-result v5

    #@49
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@4b
    .line 7483
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 7484
    const-string/jumbo v5, "BackupManagerService"

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "Transport error "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    const-string/jumbo v7, "; no restore possible"

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 7485
    const/16 v5, -0x3e8

    #@74
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@76
    .line 7486
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@78
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@7b
    .line 7487
    return-void

    #@7c
    .line 7490
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7e
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@81
    move-result-object v0

    #@82
    .line 7491
    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_2

    #@84
    .line 7492
    const-string/jumbo v5, "BackupManagerService"

    #@87
    const-string/jumbo v6, "No restore metadata available; halting"

    #@8a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 7493
    const/16 v5, -0x3e8

    #@8f
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@91
    .line 7494
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@93
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@96
    .line 7495
    return-void

    #@97
    .line 7497
    :cond_2
    const-string/jumbo v5, "@pm@"

    #@9a
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v5

    #@a2
    if-nez v5, :cond_3

    #@a4
    .line 7498
    const-string/jumbo v5, "BackupManagerService"

    #@a7
    new-instance v6, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v7, "Required metadata but got "

    #@af
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v6

    #@bf
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 7499
    const/16 v5, -0x3e8

    #@c4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@c6
    .line 7500
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@c8
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@cb
    .line 7501
    return-void

    #@cc
    .line 7505
    :cond_3
    new-instance v5, Landroid/content/pm/PackageInfo;

    #@ce
    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    #@d1
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d3
    .line 7506
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d5
    const-string/jumbo v6, "@pm@"

    #@d8
    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@da
    .line 7507
    new-instance v5, Lcom/android/server/backup/PackageManagerBackupAgent;

    #@dc
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@de
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@e1
    move-result-object v6

    #@e2
    const/4 v7, 0x0

    #@e3
    invoke-direct {v5, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    #@e6
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@e8
    .line 7508
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@ea
    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    #@ed
    move-result-object v5

    #@ee
    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    #@f1
    move-result-object v5

    #@f2
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@f4
    .line 7512
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@f6
    const/4 v6, 0x0

    #@f7
    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    #@fa
    .line 7520
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fc
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@fe
    const/4 v6, 0x7

    #@ff
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@102
    .line 7525
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@104
    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    #@107
    move-result v5

    #@108
    if-nez v5, :cond_4

    #@10a
    .line 7526
    const-string/jumbo v5, "BackupManagerService"

    #@10d
    const-string/jumbo v6, "No restore metadata available, so not restoring"

    #@110
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 7527
    const/4 v5, 0x2

    #@114
    new-array v5, v5, [Ljava/lang/Object;

    #@116
    .line 7528
    const-string/jumbo v6, "@pm@"

    #@119
    const/4 v7, 0x0

    #@11a
    aput-object v6, v5, v7

    #@11c
    .line 7529
    const-string/jumbo v6, "Package manager restore metadata missing"

    #@11f
    const/4 v7, 0x1

    #@120
    aput-object v6, v5, v7

    #@122
    .line 7527
    const/16 v6, 0xb10

    #@124
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@127
    .line 7530
    const/16 v5, -0x3e8

    #@129
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@12b
    .line 7531
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@12d
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@12f
    const/16 v6, 0x14

    #@131
    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@134
    .line 7532
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@136
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@139
    .line 7533
    return-void

    #@13a
    .line 7539
    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@13b
    .line 7541
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BackupManagerService"

    #@13e
    const-string/jumbo v6, "Unable to contact transport for restore"

    #@141
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    .line 7542
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@146
    .line 7543
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@148
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@14a
    invoke-virtual {v5, v9, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@14d
    .line 7544
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@14f
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@152
    .line 7545
    return-void

    #@153
    .line 7464
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    #@0
    .prologue
    .line 7390
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 7388
    :goto_0
    return-void

    #@10
    .line 7392
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->startRestore()V

    #@13
    goto :goto_0

    #@14
    .line 7396
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->dispatchNextRestore()V

    #@17
    goto :goto_0

    #@18
    .line 7400
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreKeyValue()V

    #@1b
    goto :goto_0

    #@1c
    .line 7404
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFull()V

    #@1f
    goto :goto_0

    #@20
    .line 7408
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFinished()V

    #@23
    goto :goto_0

    #@24
    .line 7412
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@26
    if-nez v0, :cond_0

    #@28
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->finalizeRestore()V

    #@2b
    .line 7416
    :goto_1
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@2e
    goto :goto_0

    #@2f
    .line 7414
    :cond_0
    const-string/jumbo v0, "BackupManagerService"

    #@32
    const-string/jumbo v1, "Duplicate finish"

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_1

    #@39
    .line 7390
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    .locals 3
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@0
    .prologue
    .line 8234
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    .line 8235
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@6
    const/16 v2, 0x14

    #@8
    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 8236
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@13
    .line 8231
    return-void
.end method

.method public handleTimeout()V
    .locals 3

    #@0
    .prologue
    .line 8223
    const-string/jumbo v0, "BackupManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Timeout restoring application "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 8224
    const/4 v0, 0x2

    #@1f
    new-array v0, v0, [Ljava/lang/Object;

    #@21
    .line 8225
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@23
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "restore timeout"

    #@2b
    const/4 v2, 0x1

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 8224
    const/16 v1, 0xb10

    #@30
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@33
    .line 8227
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@36
    .line 8228
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@38
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@3b
    .line 8222
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;I)V
    .locals 18
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I

    #@0
    .prologue
    .line 7702
    move-object/from16 v0, p1

    #@2
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4
    .line 7704
    .local v14, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "BackupManagerService"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "initiateOneRestore packageName="

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 7707
    new-instance v2, Ljava/io/File;

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@24
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, ".restore"

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@41
    .line 7708
    new-instance v2, Ljava/io/File;

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@47
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@49
    new-instance v4, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    const-string/jumbo v5, ".stage"

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@60
    move-object/from16 v0, p0

    #@62
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    #@64
    .line 7709
    new-instance v2, Ljava/io/File;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    #@6a
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    const-string/jumbo v5, ".new"

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    #@85
    .line 7710
    new-instance v2, Ljava/io/File;

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    #@8b
    invoke-direct {v2, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mSavedStateName:Ljava/io/File;

    #@92
    .line 7716
    const-string/jumbo v2, "android"

    #@95
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_1

    #@9b
    const/16 v17, 0x0

    #@9d
    .line 7718
    .local v17, "staging":Z
    :goto_0
    if-eqz v17, :cond_2

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    #@a3
    .line 7720
    .local v9, "downloadFile":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a7
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@aa
    move-result v6

    #@ab
    .line 7724
    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    #@ad
    .line 7723
    :try_start_0
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@b0
    move-result-object v16

    #@b1
    .line 7728
    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@b5
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@b8
    move-result v2

    #@b9
    if-nez v2, :cond_0

    #@bb
    .line 7732
    :cond_0
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@bf
    move-object/from16 v0, v16

    #@c1
    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_3

    #@c7
    .line 7735
    const-string/jumbo v2, "BackupManagerService"

    #@ca
    new-instance v3, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v4, "Error getting restore data for "

    #@d2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v3

    #@d6
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 7736
    const/4 v2, 0x0

    #@e2
    new-array v2, v2, [Ljava/lang/Object;

    #@e4
    const/16 v3, 0xb0f

    #@e6
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e9
    .line 7737
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@ec
    .line 7738
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@ef
    .line 7739
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f6
    .line 7740
    return-void

    #@f7
    .line 7716
    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "staging":Z
    :cond_1
    const/16 v17, 0x1

    #@f9
    .restart local v17    # "staging":Z
    goto :goto_0

    #@fa
    .line 7718
    :cond_2
    move-object/from16 v0, p0

    #@fc
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@fe
    .restart local v9    # "downloadFile":Ljava/io/File;
    goto :goto_1

    #@ff
    .line 7746
    .restart local v6    # "token":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_3
    if-eqz v17, :cond_7

    #@101
    .line 7747
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@104
    .line 7749
    const/high16 v2, 0x10000000

    #@106
    .line 7748
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@109
    move-result-object v16

    #@10a
    .line 7751
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@10e
    .line 7752
    const/high16 v3, 0x3c000000    # 0.0078125f

    #@110
    .line 7751
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@113
    move-result-object v2

    #@114
    move-object/from16 v0, p0

    #@116
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@118
    .line 7756
    new-instance v11, Landroid/app/backup/BackupDataInput;

    #@11a
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@11d
    move-result-object v2

    #@11e
    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    #@121
    .line 7757
    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@127
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@12a
    move-result-object v2

    #@12b
    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@12e
    .line 7758
    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    #@130
    new-array v8, v2, [B

    #@132
    .line 7759
    .local v8, "buffer":[B
    :goto_2
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@135
    move-result v2

    #@136
    if-eqz v2, :cond_6

    #@138
    .line 7760
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@13b
    move-result-object v12

    #@13c
    .line 7761
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    #@13f
    move-result v15

    #@140
    .line 7764
    .local v15, "size":I
    const-string/jumbo v2, "\uffed\uffedwidget"

    #@143
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v2

    #@147
    if-eqz v2, :cond_4

    #@149
    .line 7766
    const-string/jumbo v2, "BackupManagerService"

    #@14c
    new-instance v3, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v4, "Restoring widget state for "

    #@154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v3

    #@158
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v3

    #@15c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v3

    #@160
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@163
    .line 7768
    new-array v2, v15, [B

    #@165
    move-object/from16 v0, p0

    #@167
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@169
    .line 7769
    move-object/from16 v0, p0

    #@16b
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@16d
    const/4 v3, 0x0

    #@16e
    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@171
    goto :goto_2

    #@172
    .line 7799
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    #@173
    .line 7800
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@176
    new-instance v3, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v4, "Unable to call app for restore: "

    #@17e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v3

    #@182
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v3

    #@186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v3

    #@18a
    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18d
    .line 7801
    const/4 v2, 0x2

    #@18e
    new-array v2, v2, [Ljava/lang/Object;

    #@190
    .line 7802
    const/4 v3, 0x0

    #@191
    aput-object v14, v2, v3

    #@193
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@196
    move-result-object v3

    #@197
    const/4 v4, 0x1

    #@198
    aput-object v3, v2, v4

    #@19a
    .line 7801
    const/16 v3, 0xb10

    #@19c
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@19f
    .line 7803
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@1a2
    .line 7808
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1a9
    .line 7701
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    #@1aa
    .line 7771
    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :try_start_2
    array-length v2, v8

    #@1ab
    if-le v15, v2, :cond_5

    #@1ad
    .line 7772
    new-array v8, v15, [B

    #@1af
    .line 7774
    :cond_5
    const/4 v2, 0x0

    #@1b0
    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@1b3
    .line 7775
    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@1b6
    .line 7776
    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@1b9
    goto/16 :goto_2

    #@1bb
    .line 7780
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_6
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1bf
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1c2
    .line 7784
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1c5
    .line 7785
    move-object/from16 v0, p0

    #@1c7
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@1c9
    .line 7786
    const/high16 v3, 0x10000000

    #@1cb
    .line 7785
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1ce
    move-result-object v2

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1d3
    .line 7788
    move-object/from16 v0, p0

    #@1d5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    #@1d7
    .line 7789
    const/high16 v3, 0x3c000000    # 0.0078125f

    #@1d9
    .line 7788
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1dc
    move-result-object v2

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1e1
    .line 7796
    move-object/from16 v0, p0

    #@1e3
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e5
    const-wide/32 v4, 0xea60

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@1ed
    .line 7797
    move-object/from16 v0, p0

    #@1ef
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1f9
    .line 7798
    move-object/from16 v0, p0

    #@1fb
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1fd
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@1ff
    move/from16 v4, p2

    #@201
    .line 7797
    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@204
    goto :goto_3
.end method

.method keyValueAgentCleanup()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 8096
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@6
    .line 8097
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    #@8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@b
    .line 8098
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@11
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@14
    .line 8099
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@16
    if-eqz v4, :cond_1

    #@18
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    .line 8100
    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1f
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@21
    .line 8115
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    #@23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@26
    .line 8119
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@28
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 8122
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@31
    move-result-object v4

    #@32
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@34
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@36
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@39
    .line 8135
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@3b
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3f
    .line 8137
    .local v0, "appFlags":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@41
    invoke-virtual {v4}, Landroid/app/backup/RestoreDescription;->getDataType()I

    #@44
    move-result v4

    #@45
    const/4 v5, 0x2

    #@46
    if-eq v4, v5, :cond_3

    #@48
    .line 8138
    const/high16 v4, 0x10000

    #@4a
    and-int/2addr v4, v0

    #@4b
    if-eqz v4, :cond_4

    #@4d
    const/4 v3, 0x1

    #@4e
    .line 8140
    .local v3, "killAfterRestore":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    #@50
    if-nez v4, :cond_2

    #@52
    if-eqz v3, :cond_2

    #@54
    .line 8141
    const-string/jumbo v4, "BackupManagerService"

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "Restore complete, killing host process of "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 8142
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@65
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@67
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@69
    .line 8141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 8143
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@76
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@79
    move-result-object v4

    #@7a
    .line 8144
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@7c
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7e
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@80
    .line 8145
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@82
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@84
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@86
    .line 8143
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@89
    .line 8154
    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@8b
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@8d
    const/4 v5, 0x7

    #@8e
    invoke-virtual {v4, v5, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@91
    .line 8155
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@93
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@95
    monitor-enter v5

    #@96
    .line 8156
    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@98
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@9a
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9d
    monitor-exit v5

    #@9e
    .line 8095
    return-void

    #@9f
    .line 8137
    .restart local v0    # "appFlags":I
    :cond_3
    const/4 v3, 0x1

    #@a0
    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    #@a1
    .line 8138
    .end local v3    # "killAfterRestore":Z
    :cond_4
    const/4 v3, 0x0

    #@a2
    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    #@a3
    .line 8155
    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :catchall_0
    move-exception v4

    #@a4
    monitor-exit v5

    #@a5
    throw v4

    #@a6
    .line 8147
    :catch_0
    move-exception v1

    #@a7
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@a8
    .line 8099
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@a9
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_1

    #@ab
    .line 8098
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@ac
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method keyValueAgentErrorCleanup()V
    .locals 2

    #@0
    .prologue
    .line 8090
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@9
    .line 8091
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    #@c
    .line 8086
    return-void
.end method

.method public operationComplete(I)V
    .locals 5
    .param p1, "unusedResult"    # I

    #@0
    .prologue
    .line 8169
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

    #@3
    move-result-object v2

    #@4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    #@9
    move-result v3

    #@a
    aget v2, v2, v3

    #@c
    packed-switch v2, :pswitch_data_0

    #@f
    .line 8210
    const-string/jumbo v2, "BackupManagerService"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unexpected restore callback into state "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 8211
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@2e
    .line 8212
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@30
    .line 8217
    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@33
    .line 8161
    return-void

    #@34
    .line 8174
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@36
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@37
    .line 8182
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_1
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@39
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@3a
    .line 8189
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@3c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    #@3f
    move-result-wide v2

    #@40
    long-to-int v1, v2

    #@41
    .line 8190
    .local v1, "size":I
    const/4 v2, 0x2

    #@42
    new-array v2, v2, [Ljava/lang/Object;

    #@44
    .line 8191
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@46
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@48
    const/4 v4, 0x0

    #@49
    aput-object v3, v2, v4

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v3

    #@4f
    const/4 v4, 0x1

    #@50
    aput-object v3, v2, v4

    #@52
    .line 8190
    const/16 v3, 0xb11

    #@54
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@57
    .line 8194
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    #@5a
    .line 8199
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@5c
    if-eqz v2, :cond_0

    #@5e
    .line 8200
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@60
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@62
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@64
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@66
    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    #@69
    .line 8203
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6b
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@6c
    .line 8169
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 8265
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@9
    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 8264
    :cond_0
    :goto_0
    return-void

    #@d
    .line 8268
    :catch_0
    move-exception v0

    #@e
    .line 8269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@11
    const-string/jumbo v2, "Restore observer went away: endRestore"

    #@14
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 8270
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@19
    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 8252
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8253
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 8255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@b
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 8251
    :cond_0
    :goto_0
    return-void

    #@11
    .line 8256
    :catch_0
    move-exception v0

    #@12
    .line 8257
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@15
    const-string/jumbo v2, "Restore observer died in onUpdate"

    #@18
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 8258
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@1d
    goto :goto_0
.end method

.method sendStartRestore(I)V
    .locals 4
    .param p1, "numPackages"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 8241
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 8240
    :cond_0
    :goto_0
    return-void

    #@b
    .line 8244
    :catch_0
    move-exception v0

    #@c
    .line 8245
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "Restore observer went away: startRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 8246
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@17
    goto :goto_0
.end method
