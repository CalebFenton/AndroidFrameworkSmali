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
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues:[I


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

.field private mDidLaunch:Z

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

.method private static synthetic -getcom-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

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

.method static synthetic -set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mDidLaunch:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

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
    .line 7999
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 8002
    sget-object v8, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@7
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@9
    .line 8003
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v8

    #@d
    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    #@f
    .line 8005
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@11
    .line 8006
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@13
    .line 8007
    move-wide/from16 v0, p4

    #@15
    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    #@17
    .line 8008
    move/from16 v0, p7

    #@19
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@1b
    .line 8009
    move-object/from16 v0, p6

    #@1d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    #@1f
    .line 8010
    move/from16 v0, p8

    #@21
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@23
    .line 8011
    const/4 v8, 0x0

    #@24
    iput-boolean v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@26
    .line 8012
    const/4 v8, 0x0

    #@27
    iput-boolean v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mDidLaunch:Z

    #@29
    .line 8014
    if-eqz p6, :cond_1

    #@2b
    .line 8016
    new-instance v8, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@30
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@32
    .line 8017
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@34
    move-object/from16 v0, p6

    #@36
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 8001
    :cond_0
    :goto_0
    return-void

    #@3a
    .line 8020
    :cond_1
    if-nez p9, :cond_2

    #@3c
    .line 8023
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@3f
    move-result-object v8

    #@40
    invoke-static {v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    #@43
    move-result-object v2

    #@44
    .line 8024
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    #@47
    move-result-object p9

    #@48
    .line 8026
    const-string/jumbo v8, "BackupManagerService"

    #@4b
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v10, "Full restore; asking about "

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    move-object/from16 v0, p9

    #@59
    array-length v10, v0

    #@5a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    const-string/jumbo v10, " apps"

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 8030
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    #@6e
    move-object/from16 v0, p9

    #@70
    array-length v9, v0

    #@71
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@74
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@76
    .line 8035
    const/4 v5, 0x0

    #@77
    .line 8036
    .local v5, "hasSystem":Z
    const/4 v4, 0x0

    #@78
    .line 8037
    .local v4, "hasSettings":Z
    const/4 v6, 0x0

    #@79
    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p9

    #@7b
    array-length v8, v0

    #@7c
    if-ge v6, v8, :cond_6

    #@7e
    .line 8039
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@81
    move-result-object v8

    #@82
    aget-object v9, p9, v6

    #@84
    const/4 v10, 0x0

    #@85
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@88
    move-result-object v7

    #@89
    .line 8040
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v8, "android"

    #@8c
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v8

    #@92
    if-eqz v8, :cond_4

    #@94
    .line 8041
    const/4 v5, 0x1

    #@95
    .line 8037
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@97
    goto :goto_1

    #@98
    .line 8044
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string/jumbo v8, "com.android.providers.settings"

    #@9b
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v8

    #@a1
    if-eqz v8, :cond_5

    #@a3
    .line 8045
    const/4 v4, 0x1

    #@a4
    .line 8046
    goto :goto_2

    #@a5
    .line 8049
    :cond_5
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a7
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@aa
    move-result v8

    #@ab
    if-eqz v8, :cond_3

    #@ad
    .line 8050
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@af
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b2
    goto :goto_2

    #@b3
    .line 8052
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    #@b4
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    #@b5
    .line 8056
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    if-eqz v5, :cond_7

    #@b7
    .line 8058
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@b9
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@bc
    move-result-object v9

    #@bd
    const-string/jumbo v10, "android"

    #@c0
    const/4 v11, 0x0

    #@c1
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@c4
    move-result-object v9

    #@c5
    const/4 v10, 0x0

    #@c6
    invoke-interface {v8, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@c9
    .line 8063
    :cond_7
    :goto_3
    if-eqz v4, :cond_0

    #@cb
    .line 8065
    :try_start_2
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@cd
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@d0
    move-result-object v9

    #@d1
    const-string/jumbo v10, "com.android.providers.settings"

    #@d4
    const/4 v11, 0x0

    #@d5
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@d8
    move-result-object v9

    #@d9
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@dc
    goto/16 :goto_0

    #@de
    .line 8066
    :catch_1
    move-exception v3

    #@df
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    #@e1
    .line 8059
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    #@e2
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
    .line 8256
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@4
    .line 8258
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
    .line 8259
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@e
    if-eqz v8, :cond_0

    #@10
    .line 8260
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@12
    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 8261
    :goto_0
    if-nez v6, :cond_1

    #@18
    .line 8262
    const-string/jumbo v8, "BackupManagerService"

    #@1b
    const-string/jumbo v9, "Failure getting next package name"

    #@1e
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 8263
    const/4 v8, 0x0

    #@22
    new-array v8, v8, [Ljava/lang/Object;

    #@24
    const/16 v9, 0xb0f

    #@26
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@29
    .line 8264
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@2e
    .line 8265
    return-void

    #@2f
    .line 8260
    :cond_0
    const/4 v6, 0x0

    #@30
    .local v6, "pkgName":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 8266
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@33
    sget-object v9, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    #@35
    if-ne v8, v9, :cond_2

    #@37
    .line 8269
    const-string/jumbo v8, "BackupManagerService"

    #@3a
    const-string/jumbo v9, "No more packages; finishing restore"

    #@3d
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 8271
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
    .line 8272
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
    .line 8273
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@65
    .line 8274
    return-void

    #@66
    .line 8278
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
    .line 8280
    invoke-virtual {p0, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    #@85
    .line 8282
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@87
    invoke-virtual {v8, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@8a
    move-result-object v3

    #@8b
    .line 8283
    .local v3, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v3, :cond_3

    #@8d
    .line 8284
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
    .line 8285
    const/4 v8, 0x2

    #@a8
    new-array v8, v8, [Ljava/lang/Object;

    #@aa
    const/4 v9, 0x0

    #@ab
    aput-object v6, v8, v9

    #@ad
    .line 8286
    const-string/jumbo v9, "Package metadata missing"

    #@b0
    const/4 v10, 0x1

    #@b1
    aput-object v9, v8, v10

    #@b3
    .line 8285
    const/16 v9, 0xb10

    #@b5
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@b8
    .line 8287
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ba
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@bd
    .line 8288
    return-void

    #@be
    .line 8292
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c0
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@c3
    move-result-object v8

    #@c4
    .line 8293
    const/16 v9, 0x40

    #@c6
    .line 8292
    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@c9
    move-result-object v8

    #@ca
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cc
    .line 8304
    :try_start_4
    iget v8, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@ce
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d0
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    #@d2
    if-le v8, v9, :cond_5

    #@d4
    .line 8308
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d6
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d8
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@da
    .line 8309
    const/high16 v9, 0x20000

    #@dc
    .line 8308
    and-int/2addr v8, v9

    #@dd
    if-nez v8, :cond_4

    #@df
    .line 8310
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
    .line 8311
    const-string/jumbo v9, " > installed version "

    #@f4
    .line 8310
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v8

    #@f8
    .line 8311
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@fa
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    #@fc
    .line 8310
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v8

    #@100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    .line 8312
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
    .line 8313
    const/4 v8, 0x2

    #@12a
    new-array v8, v8, [Ljava/lang/Object;

    #@12c
    .line 8314
    const/4 v9, 0x0

    #@12d
    aput-object v6, v8, v9

    #@12f
    const/4 v9, 0x1

    #@130
    aput-object v2, v8, v9

    #@132
    .line 8313
    const/16 v9, 0xb10

    #@134
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@137
    .line 8315
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@139
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@13c
    .line 8316
    return-void

    #@13d
    .line 8294
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@13e
    .line 8297
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
    .line 8298
    const/4 v8, 0x2

    #@159
    new-array v8, v8, [Ljava/lang/Object;

    #@15b
    const/4 v9, 0x0

    #@15c
    aput-object v6, v8, v9

    #@15e
    .line 8299
    const-string/jumbo v9, "Package missing on device"

    #@161
    const/4 v10, 0x1

    #@162
    aput-object v9, v8, v10

    #@164
    .line 8298
    const/16 v9, 0xb10

    #@166
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@169
    .line 8300
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@16b
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@16e
    .line 8301
    return-void

    #@16f
    .line 8318
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
    .line 8319
    const-string/jumbo v10, " > installed "

    #@187
    .line 8318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v9

    #@18b
    .line 8319
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@18d
    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    #@18f
    .line 8318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@192
    move-result-object v9

    #@193
    .line 8320
    const-string/jumbo v10, " but restoreAnyVersion"

    #@196
    .line 8318
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
    .line 8330
    :cond_5
    const/4 v8, 0x0

    #@1a2
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@1a4
    .line 8331
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@1a6
    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getDataType()I

    #@1a9
    move-result v7

    #@1aa
    .line 8332
    .local v7, "type":I
    if-ne v7, v11, :cond_6

    #@1ac
    .line 8333
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1ae
    .line 8349
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1b1
    .line 8255
    return-void

    #@1b2
    .line 8334
    :cond_6
    if-ne v7, v12, :cond_7

    #@1b4
    .line 8335
    :try_start_7
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1b6
    goto :goto_1

    #@1b7
    .line 8338
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
    .line 8339
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1d3
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@1d6
    .line 8340
    return-void

    #@1d7
    .line 8342
    .end local v3    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v7    # "type":I
    :catch_1
    move-exception v1

    #@1d8
    .line 8343
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v8, "BackupManagerService"

    #@1db
    new-instance v9, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v10, "Can\'t get next restore target from transport; halting: "

    #@1e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v9

    #@1e7
    .line 8344
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1ea
    move-result-object v10

    #@1eb
    .line 8343
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v9

    #@1ef
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v9

    #@1f3
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f6
    .line 8345
    const/4 v8, 0x0

    #@1f7
    new-array v8, v8, [Ljava/lang/Object;

    #@1f9
    const/16 v9, 0xb0f

    #@1fb
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1fe
    .line 8346
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@200
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@203
    .line 8347
    return-void

    #@204
    .line 8348
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@205
    .line 8349
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@208
    .line 8348
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
    .line 8788
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@5
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 8794
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 8796
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@e
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@10
    invoke-interface {v2, v3}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 8803
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@15
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@17
    invoke-virtual {v2, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@1a
    .line 8807
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@1c
    if-lez v2, :cond_2

    #@1e
    .line 8810
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@22
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    #@24
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mDidLaunch:Z

    #@26
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    .line 8821
    :goto_2
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    #@2c
    .line 8825
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@2e
    if-eqz v2, :cond_1

    #@30
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 8826
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@36
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@38
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3e
    .line 8827
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    #@42
    iput-wide v4, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@44
    .line 8828
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@46
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    #@49
    .line 8832
    :cond_1
    const-string/jumbo v2, "BackupManagerService"

    #@4c
    const-string/jumbo v3, "Restore complete."

    #@4f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 8833
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@54
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@56
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@59
    .line 8784
    return-void

    #@5a
    .line 8789
    :catch_0
    move-exception v1

    #@5b
    .line 8790
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@5e
    const-string/jumbo v3, "Error finishing restore"

    #@61
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    goto :goto_0

    #@65
    .line 8797
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@66
    .line 8798
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BackupManagerService"

    #@69
    const-string/jumbo v3, "Restore observer died at restoreFinished"

    #@6c
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    goto :goto_1

    #@70
    .line 8815
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@72
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@74
    .line 8816
    const-wide/32 v4, 0xea60

    #@77
    .line 8815
    invoke-virtual {v2, v7, v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    #@7a
    goto :goto_2

    #@7b
    .line 8811
    :catch_2
    move-exception v0

    #@7c
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
    .line 8081
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 8082
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    #@6
    .line 8083
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 8084
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
    .line 8083
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 8086
    :cond_0
    return-object v2
.end method

.method private restoreFinished()V
    .locals 6

    #@0
    .prologue
    .line 8550
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@5
    move-result v2

    #@6
    .line 8551
    .local v2, "token":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@8
    const-wide/16 v4, 0x7530

    #@a
    invoke-virtual {v3, v2, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@d
    .line 8552
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@f
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@13
    invoke-interface {v3, v2, v4}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 8548
    .end local v2    # "token":I
    :goto_0
    return-void

    #@17
    .line 8555
    :catch_0
    move-exception v0

    #@18
    .line 8556
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1a
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1c
    .line 8557
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "BackupManagerService"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Unable to finalize restore of "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 8558
    const/4 v3, 0x2

    #@37
    new-array v3, v3, [Ljava/lang/Object;

    #@39
    .line 8559
    const/4 v4, 0x0

    #@3a
    aput-object v1, v3, v4

    #@3c
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    const/4 v5, 0x1

    #@41
    aput-object v4, v3, v5

    #@43
    .line 8558
    const/16 v4, 0xb10

    #@45
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@48
    .line 8560
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@4b
    .line 8561
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@4d
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@50
    goto :goto_0
.end method

.method private restoreFull()V
    .locals 4

    #@0
    .prologue
    .line 8529
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    #@2
    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    #@5
    .line 8534
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
    .line 8518
    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_0
    return-void

    #@11
    .line 8538
    :catch_0
    move-exception v0

    #@12
    .line 8542
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@15
    const-string/jumbo v3, "Unable to construct pipes for stream restore!"

    #@18
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 8543
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
    .line 8358
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@7
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9
    .line 8361
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@b
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 8362
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
    .line 8361
    if-eqz v3, :cond_1

    #@20
    .line 8367
    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    #@22
    aput-object v2, v3, v6

    #@24
    .line 8368
    const-string/jumbo v4, "Package has no agent"

    #@27
    aput-object v4, v3, v7

    #@29
    .line 8367
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2c
    .line 8369
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2e
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@31
    .line 8370
    return-void

    #@32
    .line 8373
    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@34
    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    #@37
    move-result-object v1

    #@38
    .line 8374
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    #@3a
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@3c
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_2

    #@42
    .line 8375
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
    .line 8376
    new-array v3, v8, [Ljava/lang/Object;

    #@5e
    aput-object v2, v3, v6

    #@60
    .line 8377
    const-string/jumbo v4, "Signature mismatch"

    #@63
    aput-object v4, v3, v7

    #@65
    .line 8376
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@68
    .line 8378
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@6d
    .line 8379
    return-void

    #@6e
    .line 8383
    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@70
    .line 8384
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@72
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@74
    .line 8383
    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@77
    move-result-object v3

    #@78
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@7a
    .line 8386
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@7c
    if-nez v3, :cond_3

    #@7e
    .line 8387
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
    .line 8388
    new-array v3, v8, [Ljava/lang/Object;

    #@9a
    aput-object v2, v3, v6

    #@9c
    .line 8389
    const-string/jumbo v4, "Restore agent missing"

    #@9f
    aput-object v4, v3, v7

    #@a1
    .line 8388
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@a4
    .line 8390
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@a6
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@a9
    .line 8391
    return-void

    #@aa
    .line 8395
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mDidLaunch:Z

    #@ac
    .line 8399
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@ae
    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    #@b0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    #@b3
    .line 8400
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    #@b5
    add-int/lit8 v3, v3, 0x1

    #@b7
    iput v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b9
    .line 8354
    :goto_0
    return-void

    #@ba
    .line 8401
    :catch_0
    move-exception v0

    #@bb
    .line 8402
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@be
    new-instance v4, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v5, "Error when attempting restore: "

    #@c6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 8403
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@dc
    .line 8404
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@de
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@e1
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
    .line 8168
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@7
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@a
    move-result v5

    #@b
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendStartRestore(I)V

    #@e
    .line 8171
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 8173
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    #@15
    .line 8177
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@17
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 8178
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
    .line 8181
    new-instance v3, Landroid/content/pm/PackageInfo;

    #@28
    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    #@2b
    .line 8182
    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string/jumbo v5, "@pm@"

    #@2e
    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@30
    .line 8183
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    #@32
    const/4 v6, 0x0

    #@33
    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@36
    .line 8185
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
    .line 8186
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
    .line 8187
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 8188
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
    .line 8189
    const/16 v5, -0x3e8

    #@74
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@76
    .line 8190
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@78
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@7b
    .line 8191
    return-void

    #@7c
    .line 8194
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7e
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    #@81
    move-result-object v0

    #@82
    .line 8195
    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_2

    #@84
    .line 8196
    const-string/jumbo v5, "BackupManagerService"

    #@87
    const-string/jumbo v6, "No restore metadata available; halting"

    #@8a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 8197
    const/16 v5, -0x3e8

    #@8f
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@91
    .line 8198
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@93
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@96
    .line 8199
    return-void

    #@97
    .line 8201
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
    .line 8202
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
    .line 8203
    const/16 v5, -0x3e8

    #@c4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@c6
    .line 8204
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@c8
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@cb
    .line 8205
    return-void

    #@cc
    .line 8209
    :cond_3
    new-instance v5, Landroid/content/pm/PackageInfo;

    #@ce
    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    #@d1
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d3
    .line 8210
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@d5
    const-string/jumbo v6, "@pm@"

    #@d8
    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@da
    .line 8211
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
    .line 8212
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
    .line 8216
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@f6
    const/4 v6, 0x0

    #@f7
    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    #@fa
    .line 8224
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fc
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@fe
    const/4 v6, 0x7

    #@ff
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@102
    .line 8229
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    #@104
    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    #@107
    move-result v5

    #@108
    if-nez v5, :cond_4

    #@10a
    .line 8230
    const-string/jumbo v5, "BackupManagerService"

    #@10d
    const-string/jumbo v6, "No restore metadata available, so not restoring"

    #@110
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 8231
    const/4 v5, 0x2

    #@114
    new-array v5, v5, [Ljava/lang/Object;

    #@116
    .line 8232
    const-string/jumbo v6, "@pm@"

    #@119
    const/4 v7, 0x0

    #@11a
    aput-object v6, v5, v7

    #@11c
    .line 8233
    const-string/jumbo v6, "Package manager restore metadata missing"

    #@11f
    const/4 v7, 0x1

    #@120
    aput-object v6, v5, v7

    #@122
    .line 8231
    const/16 v6, 0xb10

    #@124
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@127
    .line 8234
    const/16 v5, -0x3e8

    #@129
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@12b
    .line 8235
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@12d
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@12f
    const/16 v6, 0x14

    #@131
    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@134
    .line 8236
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@136
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@139
    .line 8237
    return-void

    #@13a
    .line 8243
    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@13b
    .line 8245
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BackupManagerService"

    #@13e
    new-instance v6, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v7, "Unable to contact transport for restore: "

    #@146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v6

    #@14a
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@14d
    move-result-object v7

    #@14e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v6

    #@152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v6

    #@156
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    .line 8246
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@15b
    .line 8247
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@15d
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@15f
    invoke-virtual {v5, v9, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@162
    .line 8248
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@164
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@167
    .line 8249
    return-void

    #@168
    .line 8167
    .end local v1    # "e":Ljava/lang/Exception;
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
    .line 8093
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

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
    .line 8091
    :goto_0
    return-void

    #@10
    .line 8095
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->startRestore()V

    #@13
    goto :goto_0

    #@14
    .line 8099
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->dispatchNextRestore()V

    #@17
    goto :goto_0

    #@18
    .line 8103
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreKeyValue()V

    #@1b
    goto :goto_0

    #@1c
    .line 8107
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFull()V

    #@1f
    goto :goto_0

    #@20
    .line 8111
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFinished()V

    #@23
    goto :goto_0

    #@24
    .line 8115
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@26
    if-nez v0, :cond_0

    #@28
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->finalizeRestore()V

    #@2b
    .line 8119
    :goto_1
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    #@2e
    goto :goto_0

    #@2f
    .line 8117
    :cond_0
    const-string/jumbo v0, "BackupManagerService"

    #@32
    const-string/jumbo v1, "Duplicate finish"

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_1

    #@39
    .line 8093
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
    .line 8986
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    .line 8987
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
    .line 8988
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@13
    .line 8983
    return-void
.end method

.method public handleTimeout()V
    .locals 3

    #@0
    .prologue
    .line 8975
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
    .line 8976
    const/4 v0, 0x2

    #@1f
    new-array v0, v0, [Ljava/lang/Object;

    #@21
    .line 8977
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
    .line 8976
    const/16 v1, 0xb10

    #@30
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@33
    .line 8979
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@36
    .line 8980
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@38
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@3b
    .line 8974
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;I)V
    .locals 18
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I

    #@0
    .prologue
    .line 8410
    move-object/from16 v0, p1

    #@2
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4
    .line 8412
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
    .line 8415
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
    .line 8416
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
    .line 8417
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
    .line 8418
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
    .line 8424
    const-string/jumbo v2, "android"

    #@95
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_0

    #@9b
    const/16 v17, 0x0

    #@9d
    .line 8426
    .local v17, "staging":Z
    :goto_0
    if-eqz v17, :cond_1

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    #@a3
    .line 8428
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
    .line 8432
    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    #@ad
    .line 8431
    :try_start_0
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@b0
    move-result-object v16

    #@b1
    .line 8436
    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@b5
    move-object/from16 v0, v16

    #@b7
    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_2

    #@bd
    .line 8439
    const-string/jumbo v2, "BackupManagerService"

    #@c0
    new-instance v3, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v4, "Error getting restore data for "

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 8440
    const/4 v2, 0x0

    #@d8
    new-array v2, v2, [Ljava/lang/Object;

    #@da
    const/16 v3, 0xb0f

    #@dc
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@df
    .line 8441
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@e2
    .line 8442
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@e5
    .line 8443
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@e7
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ec
    .line 8444
    return-void

    #@ed
    .line 8424
    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "staging":Z
    :cond_0
    const/16 v17, 0x1

    #@ef
    goto :goto_0

    #@f0
    .line 8426
    .restart local v17    # "staging":Z
    :cond_1
    move-object/from16 v0, p0

    #@f2
    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@f4
    .restart local v9    # "downloadFile":Ljava/io/File;
    goto :goto_1

    #@f5
    .line 8450
    .restart local v6    # "token":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_2
    if-eqz v17, :cond_6

    #@f7
    .line 8451
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@fa
    .line 8453
    const/high16 v2, 0x10000000

    #@fc
    .line 8452
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@ff
    move-result-object v16

    #@100
    .line 8455
    move-object/from16 v0, p0

    #@102
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@104
    .line 8456
    const/high16 v3, 0x3c000000    # 0.0078125f

    #@106
    .line 8455
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@109
    move-result-object v2

    #@10a
    move-object/from16 v0, p0

    #@10c
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@10e
    .line 8460
    new-instance v11, Landroid/app/backup/BackupDataInput;

    #@110
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@113
    move-result-object v2

    #@114
    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    #@117
    .line 8461
    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    #@119
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@11d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@120
    move-result-object v2

    #@121
    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@124
    .line 8462
    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    #@126
    new-array v8, v2, [B

    #@128
    .line 8463
    .local v8, "buffer":[B
    :goto_2
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@12b
    move-result v2

    #@12c
    if-eqz v2, :cond_5

    #@12e
    .line 8464
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@131
    move-result-object v12

    #@132
    .line 8465
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    #@135
    move-result v15

    #@136
    .line 8468
    .local v15, "size":I
    const-string/jumbo v2, "\uffed\uffedwidget"

    #@139
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v2

    #@13d
    if-eqz v2, :cond_3

    #@13f
    .line 8470
    const-string/jumbo v2, "BackupManagerService"

    #@142
    new-instance v3, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    const-string/jumbo v4, "Restoring widget state for "

    #@14a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v3

    #@14e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v3

    #@156
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@159
    .line 8472
    new-array v2, v15, [B

    #@15b
    move-object/from16 v0, p0

    #@15d
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@15f
    .line 8473
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@163
    const/4 v3, 0x0

    #@164
    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@167
    goto :goto_2

    #@168
    .line 8504
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    #@169
    .line 8505
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@16c
    new-instance v3, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v4, "Unable to call app for restore: "

    #@174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v3

    #@178
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v3

    #@17c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v3

    #@180
    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@183
    .line 8506
    const/4 v2, 0x2

    #@184
    new-array v2, v2, [Ljava/lang/Object;

    #@186
    .line 8507
    const/4 v3, 0x0

    #@187
    aput-object v14, v2, v3

    #@189
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@18c
    move-result-object v3

    #@18d
    const/4 v4, 0x1

    #@18e
    aput-object v3, v2, v4

    #@190
    .line 8506
    const/16 v3, 0xb10

    #@192
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@195
    .line 8508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@198
    .line 8513
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@19a
    move-object/from16 v0, p0

    #@19c
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@19f
    .line 8409
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    #@1a0
    .line 8475
    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :try_start_2
    array-length v2, v8

    #@1a1
    if-le v15, v2, :cond_4

    #@1a3
    .line 8476
    new-array v8, v15, [B

    #@1a5
    .line 8478
    :cond_4
    const/4 v2, 0x0

    #@1a6
    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@1a9
    .line 8479
    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@1ac
    .line 8480
    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@1af
    goto/16 :goto_2

    #@1b1
    .line 8484
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_5
    move-object/from16 v0, p0

    #@1b3
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1b5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1b8
    .line 8488
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1bb
    .line 8490
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@1bf
    .line 8491
    const/high16 v3, 0x10000000

    #@1c1
    .line 8490
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1c4
    move-result-object v2

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1c9
    .line 8493
    move-object/from16 v0, p0

    #@1cb
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    #@1cd
    .line 8494
    const/high16 v3, 0x3c000000    # 0.0078125f

    #@1cf
    .line 8493
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1d2
    move-result-object v2

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1d7
    .line 8501
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1db
    const-wide/32 v4, 0xea60

    #@1de
    move-object/from16 v0, p0

    #@1e0
    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@1e3
    .line 8502
    move-object/from16 v0, p0

    #@1e5
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1ef
    .line 8503
    move-object/from16 v0, p0

    #@1f1
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f3
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@1f5
    move/from16 v4, p2

    #@1f7
    .line 8502
    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@1fa
    goto :goto_3
.end method

.method keyValueAgentCleanup()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 8846
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    #@3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@6
    .line 8847
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    #@8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@b
    .line 8848
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
    .line 8849
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
    .line 8850
    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@1f
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@21
    .line 8865
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    #@23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@26
    .line 8869
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@28
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 8872
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
    .line 8886
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@3b
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3f
    .line 8888
    .local v0, "appFlags":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@41
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@45
    const/16 v5, 0x2710

    #@47
    if-lt v4, v5, :cond_5

    #@49
    .line 8889
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    #@4b
    invoke-virtual {v4}, Landroid/app/backup/RestoreDescription;->getDataType()I

    #@4e
    move-result v4

    #@4f
    const/4 v5, 0x2

    #@50
    if-eq v4, v5, :cond_3

    #@52
    .line 8890
    const/high16 v4, 0x10000

    #@54
    and-int/2addr v4, v0

    #@55
    if-eqz v4, :cond_4

    #@57
    const/4 v3, 0x1

    #@58
    .line 8892
    .local v3, "killAfterRestore":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    #@5a
    if-nez v4, :cond_2

    #@5c
    if-eqz v3, :cond_2

    #@5e
    .line 8893
    const-string/jumbo v4, "BackupManagerService"

    #@61
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "Restore complete, killing host process of "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 8894
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@6f
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@71
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@73
    .line 8893
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 8895
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@80
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@83
    move-result-object v4

    #@84
    .line 8896
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@86
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@88
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@8a
    .line 8897
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@8c
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8e
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@90
    .line 8895
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@93
    .line 8906
    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@95
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@97
    const/4 v5, 0x7

    #@98
    invoke-virtual {v4, v5, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@9b
    .line 8907
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9d
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@9f
    monitor-enter v5

    #@a0
    .line 8908
    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a2
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@a4
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    monitor-exit v5

    #@a8
    .line 8845
    return-void

    #@a9
    .line 8889
    .restart local v0    # "appFlags":I
    :cond_3
    const/4 v3, 0x1

    #@aa
    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    #@ab
    .line 8890
    .end local v3    # "killAfterRestore":Z
    :cond_4
    const/4 v3, 0x0

    #@ac
    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    #@ad
    .line 8888
    .end local v3    # "killAfterRestore":Z
    :cond_5
    const/4 v3, 0x0

    #@ae
    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    #@af
    .line 8907
    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :catchall_0
    move-exception v4

    #@b0
    monitor-exit v5

    #@b1
    throw v4

    #@b2
    .line 8899
    :catch_0
    move-exception v1

    #@b3
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@b4
    .line 8849
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@b5
    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_1

    #@b7
    .line 8848
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@b8
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method keyValueAgentErrorCleanup()V
    .locals 2

    #@0
    .prologue
    .line 8840
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@9
    .line 8841
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    #@c
    .line 8836
    return-void
.end method

.method public operationComplete(J)V
    .locals 5
    .param p1, "unusedResult"    # J

    #@0
    .prologue
    .line 8921
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom-android-server-backup-BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

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
    .line 8962
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
    .line 8963
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    #@2e
    .line 8964
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@30
    .line 8969
    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    #@33
    .line 8913
    return-void

    #@34
    .line 8926
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@36
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@37
    .line 8934
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_1
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@39
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@3a
    .line 8941
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
    .line 8942
    .local v1, "size":I
    const/4 v2, 0x2

    #@42
    new-array v2, v2, [Ljava/lang/Object;

    #@44
    .line 8943
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
    .line 8942
    const/16 v3, 0xb11

    #@54
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@57
    .line 8946
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    #@5a
    .line 8951
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    #@5c
    if-eqz v2, :cond_0

    #@5e
    .line 8952
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
    .line 8955
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@6b
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    #@6c
    .line 8921
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
    .line 9017
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 9019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    #@9
    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 9016
    :cond_0
    :goto_0
    return-void

    #@d
    .line 9020
    :catch_0
    move-exception v0

    #@e
    .line 9021
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@11
    const-string/jumbo v2, "Restore observer went away: endRestore"

    #@14
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 9022
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
    .line 9004
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 9005
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 9007
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@b
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 9003
    :cond_0
    :goto_0
    return-void

    #@11
    .line 9008
    :catch_0
    move-exception v0

    #@12
    .line 9009
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@15
    const-string/jumbo v2, "Restore observer died in onUpdate"

    #@18
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 9010
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
    .line 8993
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8995
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@7
    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 8992
    :cond_0
    :goto_0
    return-void

    #@b
    .line 8996
    :catch_0
    move-exception v0

    #@c
    .line 8997
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "Restore observer went away: startRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 8998
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    #@17
    goto :goto_0
.end method
