.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$1;,
        Lcom/android/server/backup/BackupManagerService$2;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$BackupParams;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    }
.end annotation


# static fields
.field static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x4

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_REQUEST_BACKUP:I = 0xf

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportServiceIntent:Landroid/content/Intent;

.field final mTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/util/HashSet;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/app/backup/IBackupObserver;I)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(ZI)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(I)Z
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(I)Z
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/backup/BackupManagerService;I)[B
    .locals 1
    .param p1, "bits"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    #@0
    .prologue
    .line 1063
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 283
    new-instance v20, Landroid/util/SparseArray;

    #@5
    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 282
    move-object/from16 v0, v20

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@e
    .line 298
    new-instance v20, Ljava/util/HashMap;

    #@10
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 297
    move-object/from16 v0, v20

    #@15
    move-object/from16 v1, p0

    #@17
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@19
    .line 304
    new-instance v20, Ljava/lang/Object;

    #@1b
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    #@1e
    move-object/from16 v0, v20

    #@20
    move-object/from16 v1, p0

    #@22
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@24
    .line 310
    new-instance v20, Ljava/lang/Object;

    #@26
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    #@29
    move-object/from16 v0, v20

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2f
    .line 318
    new-instance v20, Ljava/util/ArrayList;

    #@31
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    #@34
    move-object/from16 v0, v20

    #@36
    move-object/from16 v1, p0

    #@38
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@3a
    .line 321
    new-instance v20, Ljava/lang/Object;

    #@3c
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    #@3f
    move-object/from16 v0, v20

    #@41
    move-object/from16 v1, p0

    #@43
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@45
    .line 326
    new-instance v20, Landroid/content/Intent;

    #@47
    const-string/jumbo v21, "android.backup.TRANSPORT_HOST"

    #@4a
    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    move-object/from16 v0, v20

    #@4f
    move-object/from16 v1, p0

    #@51
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@53
    .line 328
    new-instance v20, Landroid/util/ArrayMap;

    #@55
    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    #@58
    .line 327
    move-object/from16 v0, v20

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@5e
    .line 330
    new-instance v20, Landroid/util/ArrayMap;

    #@60
    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    #@63
    .line 329
    move-object/from16 v0, v20

    #@65
    move-object/from16 v1, p0

    #@67
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@69
    .line 332
    new-instance v20, Landroid/util/ArrayMap;

    #@6b
    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    #@6e
    .line 331
    move-object/from16 v0, v20

    #@70
    move-object/from16 v1, p0

    #@72
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@74
    .line 606
    new-instance v20, Landroid/util/SparseArray;

    #@76
    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    #@79
    move-object/from16 v0, v20

    #@7b
    move-object/from16 v1, p0

    #@7d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@7f
    .line 607
    new-instance v20, Ljava/lang/Object;

    #@81
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    #@84
    move-object/from16 v0, v20

    #@86
    move-object/from16 v1, p0

    #@88
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@8a
    .line 608
    new-instance v20, Ljava/util/Random;

    #@8c
    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    #@8f
    move-object/from16 v0, v20

    #@91
    move-object/from16 v1, p0

    #@93
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@95
    .line 610
    new-instance v20, Landroid/util/SparseArray;

    #@97
    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    #@9a
    move-object/from16 v0, v20

    #@9c
    move-object/from16 v1, p0

    #@9e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@a0
    .line 624
    new-instance v20, Ljava/security/SecureRandom;

    #@a2
    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    #@a5
    move-object/from16 v0, v20

    #@a7
    move-object/from16 v1, p0

    #@a9
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    #@ab
    .line 641
    new-instance v20, Ljava/util/HashSet;

    #@ad
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    #@b0
    move-object/from16 v0, v20

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@b6
    .line 645
    const/16 v20, 0x0

    #@b8
    move-object/from16 v0, v20

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@be
    .line 646
    const-wide/16 v20, 0x0

    #@c0
    move-wide/from16 v0, v20

    #@c2
    move-object/from16 v2, p0

    #@c4
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@c6
    .line 647
    const-wide/16 v20, 0x0

    #@c8
    move-wide/from16 v0, v20

    #@ca
    move-object/from16 v2, p0

    #@cc
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@ce
    .line 651
    new-instance v20, Ljava/util/HashSet;

    #@d0
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    #@d3
    move-object/from16 v0, v20

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@d9
    .line 1480
    new-instance v20, Lcom/android/server/backup/BackupManagerService$1;

    #@db
    move-object/from16 v0, v20

    #@dd
    move-object/from16 v1, p0

    #@df
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@e2
    move-object/from16 v0, v20

    #@e4
    move-object/from16 v1, p0

    #@e6
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@e8
    .line 1860
    new-instance v20, Lcom/android/server/backup/BackupManagerService$2;

    #@ea
    move-object/from16 v0, v20

    #@ec
    move-object/from16 v1, p0

    #@ee
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@f1
    move-object/from16 v0, v20

    #@f3
    move-object/from16 v1, p0

    #@f5
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@f7
    .line 1064
    move-object/from16 v0, p1

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@fd
    .line 1065
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@100
    move-result-object v20

    #@101
    move-object/from16 v0, v20

    #@103
    move-object/from16 v1, p0

    #@105
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@107
    .line 1066
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@10a
    move-result-object v20

    #@10b
    move-object/from16 v0, v20

    #@10d
    move-object/from16 v1, p0

    #@10f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@111
    .line 1067
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@114
    move-result-object v20

    #@115
    move-object/from16 v0, v20

    #@117
    move-object/from16 v1, p0

    #@119
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@11b
    .line 1069
    const-string/jumbo v20, "alarm"

    #@11e
    move-object/from16 v0, p1

    #@120
    move-object/from16 v1, v20

    #@122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@125
    move-result-object v20

    #@126
    check-cast v20, Landroid/app/AlarmManager;

    #@128
    move-object/from16 v0, v20

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@12e
    .line 1070
    const-string/jumbo v20, "power"

    #@131
    move-object/from16 v0, p1

    #@133
    move-object/from16 v1, v20

    #@135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@138
    move-result-object v20

    #@139
    check-cast v20, Landroid/os/PowerManager;

    #@13b
    move-object/from16 v0, v20

    #@13d
    move-object/from16 v1, p0

    #@13f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@141
    .line 1071
    const-string/jumbo v20, "mount"

    #@144
    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@147
    move-result-object v20

    #@148
    invoke-static/range {v20 .. v20}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@14b
    move-result-object v20

    #@14c
    move-object/from16 v0, v20

    #@14e
    move-object/from16 v1, p0

    #@150
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    #@152
    .line 1073
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    #@155
    move-result-object v20

    #@156
    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@159
    move-result-object v20

    #@15a
    move-object/from16 v0, v20

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@160
    .line 1076
    new-instance v20, Landroid/os/HandlerThread;

    #@162
    const-string/jumbo v21, "backup"

    #@165
    const/16 v22, 0xa

    #@167
    invoke-direct/range {v20 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@16a
    move-object/from16 v0, v20

    #@16c
    move-object/from16 v1, p0

    #@16e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@170
    .line 1077
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@174
    move-object/from16 v20, v0

    #@176
    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->start()V

    #@179
    .line 1078
    new-instance v20, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@17f
    move-object/from16 v21, v0

    #@181
    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@184
    move-result-object v21

    #@185
    move-object/from16 v0, v20

    #@187
    move-object/from16 v1, p0

    #@189
    move-object/from16 v2, v21

    #@18b
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    #@18e
    move-object/from16 v0, v20

    #@190
    move-object/from16 v1, p0

    #@192
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@194
    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@197
    move-result-object v14

    #@198
    .line 1083
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v20, "device_provisioned"

    #@19b
    const/16 v21, 0x0

    #@19d
    .line 1082
    move-object/from16 v0, v20

    #@19f
    move/from16 v1, v21

    #@1a1
    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1a4
    move-result v20

    #@1a5
    if-eqz v20, :cond_6

    #@1a7
    const/16 v20, 0x1

    #@1a9
    :goto_0
    move/from16 v0, v20

    #@1ab
    move-object/from16 v1, p0

    #@1ad
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@1af
    .line 1085
    const-string/jumbo v20, "backup_auto_restore"

    #@1b2
    const/16 v21, 0x1

    #@1b4
    .line 1084
    move-object/from16 v0, v20

    #@1b6
    move/from16 v1, v21

    #@1b8
    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1bb
    move-result v20

    #@1bc
    if-eqz v20, :cond_7

    #@1be
    const/16 v20, 0x1

    #@1c0
    :goto_1
    move/from16 v0, v20

    #@1c2
    move-object/from16 v1, p0

    #@1c4
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@1c6
    .line 1087
    new-instance v20, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1cc
    move-object/from16 v21, v0

    #@1ce
    move-object/from16 v0, v20

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    move-object/from16 v2, v21

    #@1d4
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    #@1d7
    move-object/from16 v0, v20

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    #@1dd
    .line 1089
    const-string/jumbo v20, "device_provisioned"

    #@1e0
    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1e3
    move-result-object v20

    #@1e4
    .line 1090
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    #@1e8
    move-object/from16 v21, v0

    #@1ea
    const/16 v22, 0x0

    #@1ec
    .line 1088
    move-object/from16 v0, v20

    #@1ee
    move/from16 v1, v22

    #@1f0
    move-object/from16 v2, v21

    #@1f2
    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1f5
    .line 1094
    new-instance v20, Ljava/io/File;

    #@1f7
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@1fa
    move-result-object v21

    #@1fb
    const-string/jumbo v22, "backup"

    #@1fe
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@201
    move-object/from16 v0, v20

    #@203
    move-object/from16 v1, p0

    #@205
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@207
    .line 1095
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@20b
    move-object/from16 v20, v0

    #@20d
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    #@210
    .line 1096
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@214
    move-object/from16 v20, v0

    #@216
    invoke-static/range {v20 .. v20}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@219
    move-result v20

    #@21a
    if-nez v20, :cond_0

    #@21c
    .line 1097
    const-string/jumbo v20, "BackupManagerService"

    #@21f
    new-instance v21, Ljava/lang/StringBuilder;

    #@221
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@224
    const-string/jumbo v22, "SELinux restorecon failed on "

    #@227
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v21

    #@22b
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@22f
    move-object/from16 v22, v0

    #@231
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v21

    #@235
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@238
    move-result-object v21

    #@239
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23c
    .line 1101
    :cond_0
    new-instance v20, Ljava/io/File;

    #@23e
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@241
    move-result-object v21

    #@242
    const-string/jumbo v22, "backup_stage"

    #@245
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@248
    move-object/from16 v0, v20

    #@24a
    move-object/from16 v1, p0

    #@24c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@24e
    .line 1103
    const/16 v20, 0x1

    #@250
    move/from16 v0, v20

    #@252
    move-object/from16 v1, p0

    #@254
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@256
    .line 1104
    new-instance v20, Ljava/io/File;

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@25c
    move-object/from16 v21, v0

    #@25e
    const-string/jumbo v22, "pwversion"

    #@261
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@264
    move-object/from16 v0, v20

    #@266
    move-object/from16 v1, p0

    #@268
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@26a
    .line 1105
    move-object/from16 v0, p0

    #@26c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@26e
    move-object/from16 v20, v0

    #@270
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    #@273
    move-result v20

    #@274
    if-eqz v20, :cond_2

    #@276
    .line 1106
    const/4 v7, 0x0

    #@277
    .line 1107
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@278
    .line 1109
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@27e
    move-object/from16 v20, v0

    #@280
    move-object/from16 v0, v20

    #@282
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@285
    .line 1110
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/DataInputStream;

    #@287
    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@28a
    .line 1111
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    #@28d
    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v20

    #@28e
    move/from16 v0, v20

    #@290
    move-object/from16 v1, p0

    #@292
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    #@294
    .line 1116
    if-eqz v12, :cond_1

    #@296
    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    #@299
    .line 1117
    :cond_1
    if-eqz v8, :cond_2

    #@29b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@29e
    .line 1124
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    new-instance v20, Ljava/io/File;

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@2a4
    move-object/from16 v21, v0

    #@2a6
    const-string/jumbo v22, "pwhash"

    #@2a9
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2ac
    move-object/from16 v0, v20

    #@2ae
    move-object/from16 v1, p0

    #@2b0
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2b2
    .line 1125
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2b6
    move-object/from16 v20, v0

    #@2b8
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    #@2bb
    move-result v20

    #@2bc
    if-eqz v20, :cond_4

    #@2be
    .line 1126
    const/4 v7, 0x0

    #@2bf
    .line 1127
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@2c0
    .line 1129
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2c6
    move-object/from16 v20, v0

    #@2c8
    move-object/from16 v0, v20

    #@2ca
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2cd
    .line 1130
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v12, Ljava/io/DataInputStream;

    #@2cf
    new-instance v20, Ljava/io/BufferedInputStream;

    #@2d1
    move-object/from16 v0, v20

    #@2d3
    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2d6
    move-object/from16 v0, v20

    #@2d8
    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@2db
    .line 1133
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    #@2de
    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v16

    #@2df
    .line 1134
    .local v16, "saltLen":I
    move/from16 v0, v16

    #@2e1
    new-array v15, v0, [B

    #@2e3
    .line 1135
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    #@2e6
    .line 1136
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@2e9
    move-result-object v20

    #@2ea
    move-object/from16 v0, v20

    #@2ec
    move-object/from16 v1, p0

    #@2ee
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@2f0
    .line 1137
    move-object/from16 v0, p0

    #@2f2
    iput-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@2f4
    .line 1142
    if-eqz v12, :cond_3

    #@2f6
    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    #@2f9
    .line 1143
    :cond_3
    if-eqz v8, :cond_4

    #@2fb
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@2fe
    .line 1151
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_4
    :goto_3
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    #@300
    const/16 v21, 0x0

    #@302
    move-object/from16 v0, v20

    #@304
    move-object/from16 v1, p0

    #@306
    move-object/from16 v2, v21

    #@308
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V

    #@30b
    move-object/from16 v0, v20

    #@30d
    move-object/from16 v1, p0

    #@30f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    #@311
    .line 1152
    new-instance v6, Landroid/content/IntentFilter;

    #@313
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@316
    .line 1153
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.RUN"

    #@319
    move-object/from16 v0, v20

    #@31b
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31e
    .line 1154
    move-object/from16 v0, p0

    #@320
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    #@322
    move-object/from16 v20, v0

    #@324
    .line 1155
    const-string/jumbo v21, "android.permission.BACKUP"

    #@327
    const/16 v22, 0x0

    #@329
    .line 1154
    move-object/from16 v0, p1

    #@32b
    move-object/from16 v1, v20

    #@32d
    move-object/from16 v2, v21

    #@32f
    move-object/from16 v3, v22

    #@331
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@334
    .line 1157
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    #@336
    const/16 v21, 0x0

    #@338
    move-object/from16 v0, v20

    #@33a
    move-object/from16 v1, p0

    #@33c
    move-object/from16 v2, v21

    #@33e
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V

    #@341
    move-object/from16 v0, v20

    #@343
    move-object/from16 v1, p0

    #@345
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    #@347
    .line 1158
    new-instance v6, Landroid/content/IntentFilter;

    #@349
    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@34c
    .line 1159
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.INIT"

    #@34f
    move-object/from16 v0, v20

    #@351
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@354
    .line 1160
    move-object/from16 v0, p0

    #@356
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    #@358
    move-object/from16 v20, v0

    #@35a
    .line 1161
    const-string/jumbo v21, "android.permission.BACKUP"

    #@35d
    const/16 v22, 0x0

    #@35f
    .line 1160
    move-object/from16 v0, p1

    #@361
    move-object/from16 v1, v20

    #@363
    move-object/from16 v2, v21

    #@365
    move-object/from16 v3, v22

    #@367
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@36a
    .line 1163
    new-instance v4, Landroid/content/Intent;

    #@36c
    const-string/jumbo v20, "android.app.backup.intent.RUN"

    #@36f
    move-object/from16 v0, v20

    #@371
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@374
    .line 1164
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    #@376
    move/from16 v0, v20

    #@378
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@37b
    .line 1165
    const/16 v20, 0x1

    #@37d
    const/16 v21, 0x0

    #@37f
    move-object/from16 v0, p1

    #@381
    move/from16 v1, v20

    #@383
    move/from16 v2, v21

    #@385
    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@388
    move-result-object v20

    #@389
    move-object/from16 v0, v20

    #@38b
    move-object/from16 v1, p0

    #@38d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    #@38f
    .line 1167
    new-instance v13, Landroid/content/Intent;

    #@391
    const-string/jumbo v20, "android.app.backup.intent.INIT"

    #@394
    move-object/from16 v0, v20

    #@396
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@399
    .line 1168
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    #@39b
    move/from16 v0, v20

    #@39d
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a0
    .line 1169
    const/16 v20, 0x5

    #@3a2
    const/16 v21, 0x0

    #@3a4
    move-object/from16 v0, p1

    #@3a6
    move/from16 v1, v20

    #@3a8
    move/from16 v2, v21

    #@3aa
    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3ad
    move-result-object v20

    #@3ae
    move-object/from16 v0, v20

    #@3b0
    move-object/from16 v1, p0

    #@3b2
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@3b4
    .line 1172
    new-instance v20, Ljava/io/File;

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@3ba
    move-object/from16 v21, v0

    #@3bc
    const-string/jumbo v22, "pending"

    #@3bf
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c2
    move-object/from16 v0, v20

    #@3c4
    move-object/from16 v1, p0

    #@3c6
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@3c8
    .line 1173
    move-object/from16 v0, p0

    #@3ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@3cc
    move-object/from16 v20, v0

    #@3ce
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    #@3d1
    .line 1174
    const/16 v20, 0x0

    #@3d3
    move-object/from16 v0, v20

    #@3d5
    move-object/from16 v1, p0

    #@3d7
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@3d9
    .line 1177
    new-instance v20, Ljava/io/File;

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@3df
    move-object/from16 v21, v0

    #@3e1
    const-string/jumbo v22, "fb-schedule"

    #@3e4
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3e7
    move-object/from16 v0, v20

    #@3e9
    move-object/from16 v1, p0

    #@3eb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@3ed
    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    #@3f0
    .line 1183
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3f4
    move-object/from16 v20, v0

    #@3f6
    monitor-enter v20

    #@3f7
    .line 1184
    const/16 v21, 0x0

    #@3f9
    :try_start_8
    move-object/from16 v0, p0

    #@3fb
    move-object/from16 v1, v21

    #@3fd
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@400
    monitor-exit v20

    #@401
    .line 1189
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@404
    move-result-object v17

    #@405
    .line 1190
    .local v17, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    #@408
    move-result-object v20

    #@409
    move-object/from16 v0, v20

    #@40b
    move-object/from16 v1, p0

    #@40d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@40f
    .line 1192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@412
    move-result-object v20

    #@413
    .line 1193
    const-string/jumbo v21, "backup_transport"

    #@416
    .line 1192
    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@419
    move-result-object v18

    #@41a
    .line 1194
    .local v18, "transport":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@41d
    move-result v20

    #@41e
    if-eqz v20, :cond_5

    #@420
    .line 1195
    const/16 v18, 0x0

    #@422
    .line 1197
    .end local v18    # "transport":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    #@424
    move-object/from16 v1, p0

    #@426
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@428
    .line 1198
    const-string/jumbo v20, "BackupManagerService"

    #@42b
    new-instance v21, Ljava/lang/StringBuilder;

    #@42d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@430
    const-string/jumbo v22, "Starting with transport "

    #@433
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@436
    move-result-object v21

    #@437
    move-object/from16 v0, p0

    #@439
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@43b
    move-object/from16 v22, v0

    #@43d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@440
    move-result-object v21

    #@441
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@444
    move-result-object v21

    #@445
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@448
    .line 1202
    move-object/from16 v0, p0

    #@44a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@44c
    move-object/from16 v20, v0

    #@44e
    .line 1203
    move-object/from16 v0, p0

    #@450
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@452
    move-object/from16 v21, v0

    #@454
    const/16 v22, 0x0

    #@456
    const/16 v23, 0x0

    #@458
    .line 1202
    invoke-virtual/range {v20 .. v23}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@45b
    move-result-object v9

    #@45c
    .line 1205
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v21, "BackupManagerService"

    #@45f
    new-instance v20, Ljava/lang/StringBuilder;

    #@461
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@464
    const-string/jumbo v22, "Found transports: "

    #@467
    move-object/from16 v0, v20

    #@469
    move-object/from16 v1, v22

    #@46b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46e
    move-result-object v22

    #@46f
    if-nez v9, :cond_e

    #@471
    const-string/jumbo v20, "null"

    #@474
    :goto_4
    move-object/from16 v0, v22

    #@476
    move-object/from16 v1, v20

    #@478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v20

    #@47c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47f
    move-result-object v20

    #@480
    move-object/from16 v0, v21

    #@482
    move-object/from16 v1, v20

    #@484
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@487
    .line 1207
    if-eqz v9, :cond_f

    #@489
    .line 1208
    const/4 v10, 0x0

    #@48a
    .local v10, "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@48d
    move-result v20

    #@48e
    move/from16 v0, v20

    #@490
    if-ge v10, v0, :cond_f

    #@492
    .line 1209
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@495
    move-result-object v20

    #@496
    check-cast v20, Landroid/content/pm/ResolveInfo;

    #@498
    move-object/from16 v0, v20

    #@49a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@49c
    move-object/from16 v19, v0

    #@49e
    .line 1213
    .local v19, "transportService":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    #@4a0
    move-object/from16 v1, v19

    #@4a2
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@4a5
    .line 1208
    add-int/lit8 v10, v10, 0x1

    #@4a7
    goto :goto_5

    #@4a8
    .line 1082
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .end local v19    # "transportService":Landroid/content/pm/ServiceInfo;
    :cond_6
    const/16 v20, 0x0

    #@4aa
    goto/16 :goto_0

    #@4ac
    .line 1084
    :cond_7
    const/16 v20, 0x0

    #@4ae
    goto/16 :goto_1

    #@4b0
    .line 1118
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    #@4b1
    .line 1119
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    #@4b4
    const-string/jumbo v21, "Error closing pw version files"

    #@4b7
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4ba
    goto/16 :goto_2

    #@4bc
    .line 1112
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    #@4bd
    .line 1113
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string/jumbo v20, "BackupManagerService"

    #@4c0
    const-string/jumbo v21, "Unable to read backup pw version"

    #@4c3
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@4c6
    .line 1116
    if-eqz v11, :cond_8

    #@4c8
    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@4cb
    .line 1117
    :cond_8
    if-eqz v7, :cond_2

    #@4cd
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    #@4d0
    goto/16 :goto_2

    #@4d2
    .line 1118
    :catch_2
    move-exception v5

    #@4d3
    .line 1119
    const-string/jumbo v20, "BackupManagerService"

    #@4d6
    const-string/jumbo v21, "Error closing pw version files"

    #@4d9
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4dc
    goto/16 :goto_2

    #@4de
    .line 1114
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    #@4df
    .line 1116
    :goto_7
    if-eqz v11, :cond_9

    #@4e1
    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@4e4
    .line 1117
    :cond_9
    if-eqz v7, :cond_a

    #@4e6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    #@4e9
    .line 1114
    :cond_a
    :goto_8
    throw v20

    #@4ea
    .line 1118
    :catch_3
    move-exception v5

    #@4eb
    .line 1119
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@4ee
    const-string/jumbo v22, "Error closing pw version files"

    #@4f1
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f4
    goto :goto_8

    #@4f5
    .line 1144
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_4
    move-exception v5

    #@4f6
    .line 1145
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    #@4f9
    const-string/jumbo v21, "Unable to close streams"

    #@4fc
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4ff
    goto/16 :goto_3

    #@501
    .line 1138
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v5

    #@502
    .line 1139
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_c
    const-string/jumbo v20, "BackupManagerService"

    #@505
    const-string/jumbo v21, "Unable to read saved backup pw hash"

    #@508
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@50b
    .line 1142
    if-eqz v11, :cond_b

    #@50d
    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@510
    .line 1143
    :cond_b
    if-eqz v7, :cond_4

    #@512
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@515
    goto/16 :goto_3

    #@517
    .line 1144
    :catch_6
    move-exception v5

    #@518
    .line 1145
    const-string/jumbo v20, "BackupManagerService"

    #@51b
    const-string/jumbo v21, "Unable to close streams"

    #@51e
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@521
    goto/16 :goto_3

    #@523
    .line 1140
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v20

    #@524
    .line 1142
    :goto_a
    if-eqz v11, :cond_c

    #@526
    :try_start_e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@529
    .line 1143
    :cond_c
    if-eqz v7, :cond_d

    #@52b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    #@52e
    .line 1140
    :cond_d
    :goto_b
    throw v20

    #@52f
    .line 1144
    :catch_7
    move-exception v5

    #@530
    .line 1145
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@533
    const-string/jumbo v22, "Unable to close streams"

    #@536
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@539
    goto :goto_b

    #@53a
    .line 1183
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_2
    move-exception v21

    #@53b
    monitor-exit v20

    #@53c
    throw v21

    #@53d
    .line 1205
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@540
    move-result v20

    #@541
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@544
    move-result-object v20

    #@545
    goto/16 :goto_4

    #@547
    .line 1219
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    #@54a
    .line 1222
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@54e
    move-object/from16 v20, v0

    #@550
    const-string/jumbo v21, "*backup*"

    #@553
    const/16 v22, 0x1

    #@555
    move-object/from16 v0, v20

    #@557
    move/from16 v1, v22

    #@559
    move-object/from16 v2, v21

    #@55b
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@55e
    move-result-object v20

    #@55f
    move-object/from16 v0, v20

    #@561
    move-object/from16 v1, p0

    #@563
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@565
    .line 1063
    return-void

    #@566
    .line 1140
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v20

    #@567
    move-object v7, v8

    #@568
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto :goto_a

    #@569
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_4
    move-exception v20

    #@56a
    move-object v11, v12

    #@56b
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@56c
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_a

    #@56d
    .line 1138
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_8
    move-exception v5

    #@56e
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    #@56f
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    #@570
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v5

    #@571
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    #@572
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@573
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    #@574
    .line 1114
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catchall_5
    move-exception v20

    #@575
    move-object v7, v8

    #@576
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@578
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_6
    move-exception v20

    #@579
    move-object v11, v12

    #@57a
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@57b
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@57d
    .line 1112
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_a
    move-exception v5

    #@57e
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    #@57f
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_6

    #@581
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_b
    move-exception v5

    #@582
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    #@583
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@584
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_6
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2159
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_3

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/content/pm/PackageInfo;

    #@10
    .line 2160
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    #@12
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 2161
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    .line 2162
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/util/HashSet;

    #@26
    .line 2163
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    #@28
    .line 2164
    new-instance v2, Ljava/util/HashSet;

    #@2a
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@2d
    .line 2165
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@32
    .line 2167
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@37
    .line 2172
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@39
    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 2154
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method private static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 719
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 721
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@c
    const/high16 v3, 0x4000000

    #@e
    and-int/2addr v2, v3

    #@f
    if-eqz v2, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 725
    :cond_1
    return v0
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 695
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    const v1, 0x8000

    #@6
    and-int/2addr v0, v1

    #@7
    if-nez v0, :cond_0

    #@9
    .line 696
    return v2

    #@a
    .line 700
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    const/16 v1, 0x2710

    #@e
    if-ge v0, v1, :cond_1

    #@10
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 701
    return v2

    #@15
    .line 705
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@17
    const-string/jumbo v1, "com.android.sharedstoragebackup"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 706
    return v2

    #@21
    .line 709
    :cond_2
    const/4 v0, 0x1

    #@22
    return v0
.end method

.method private static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 734
    const-string/jumbo v1, "com.android.providers.settings"

    #@4
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 735
    return v0

    #@d
    .line 738
    :cond_0
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method private static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 714
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    const/high16 v2, 0x200000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentPw"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x2710

    #@2
    .line 1719
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1720
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@a
    const/4 v2, 0x2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 1721
    .local v0, "pbkdf2Fallback":Z
    :goto_0
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    #@11
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1722
    if-eqz v0, :cond_2

    #@19
    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    #@1c
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1728
    .end local v0    # "pbkdf2Fallback":Z
    :cond_0
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 1720
    :cond_1
    const/4 v0, 0x0

    #@25
    .restart local v0    # "pbkdf2Fallback":Z
    goto :goto_0

    #@26
    .line 1724
    :cond_2
    const-string/jumbo v1, "BackupManagerService"

    #@29
    const-string/jumbo v2, "Backup password mismatch; aborting"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1725
    const/4 v1, 0x0

    #@30
    return v1
.end method

.method private static backupSettingMigrated(I)Z
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 9563
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "backup"

    #@9
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 9564
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v2, "backup_enabled"

    #@11
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 9565
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@17
    move-result v2

    #@18
    return v2
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    .line 1555
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@3
    move-result-object v2

    #@4
    .line 1556
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    #@6
    const/16 v4, 0x100

    #@8
    invoke-direct {v3, p2, p3, p4, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    #@b
    .line 1557
    .local v3, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v4

    #@f
    return-object v4

    #@10
    .line 1560
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v0

    #@11
    .line 1561
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "BackupManagerService"

    #@14
    const-string/jumbo v5, "PBKDF2 unavailable!"

    #@17
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1563
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    const/4 v4, 0x0

    #@1b
    return-object v4

    #@1c
    .line 1558
    :catch_1
    move-exception v1

    #@1d
    .line 1559
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v4, "BackupManagerService"

    #@20
    const-string/jumbo v5, "Invalid key spec for PBKDF2!"

    #@23
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1567
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@4
    move-result-object v0

    #@5
    .line 1568
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    #@7
    .line 1569
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 1571
    :cond_0
    return-object v1
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    .line 1550
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p1

    #@3
    mul-int/lit8 v2, v2, 0x2

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 1576
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 1577
    aget-byte v2, p1, v1

    #@e
    const/4 v3, 0x1

    #@f
    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1576
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1579
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9093
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    #@3
    move-result-object v0

    #@4
    .line 9094
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    #@7
    .line 9092
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 9101
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    #@2
    .line 9102
    const-string/jumbo v1, "BackupManagerService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "\'"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 9103
    const-string/jumbo v3, " uid="

    #@1f
    .line 9102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 9103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v3

    #@27
    .line 9102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 9104
    return-void

    #@33
    .line 9107
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 9109
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 9112
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@3e
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@41
    .line 9113
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@43
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    if-nez v1, :cond_1

    #@49
    .line 9119
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_1
    monitor-exit v2

    #@4d
    .line 9125
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4f
    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@52
    .line 9097
    return-void

    #@53
    .line 9107
    :catchall_0
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 9132
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.BACKUP"

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v6

    #@9
    .line 9133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v7

    #@d
    .line 9132
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@10
    move-result v4

    #@11
    .line 9133
    const/4 v5, -0x1

    #@12
    .line 9132
    if-ne v4, v5, :cond_0

    #@14
    .line 9134
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@16
    monitor-enter v5

    #@17
    .line 9135
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v5

    #@24
    return-object v4

    #@25
    .line 9134
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 9140
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@2a
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@2d
    .line 9141
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v4, "@pm@"

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 9142
    const-string/jumbo v4, "@pm@"

    #@39
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3c
    .line 9154
    :goto_0
    return-object v3

    #@3d
    .line 9144
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3f
    monitor-enter v5

    #@40
    .line 9145
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@45
    move-result v0

    #@46
    .line 9146
    .local v0, "N":I
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@49
    .line 9147
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Ljava/util/HashSet;

    #@51
    .line 9148
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    #@53
    .line 9149
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    .line 9146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_1

    #@59
    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v5

    #@5a
    goto :goto_0

    #@5b
    .line 9144
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v4

    #@5c
    monitor-exit v5

    #@5d
    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 10418
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 10419
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "Defined backup agents:"

    #@7
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 10420
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageInfo;

    #@1a
    .line 10421
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "  "

    #@1d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 10422
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    const/16 v3, 0x3a

    #@27
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    #@2a
    .line 10423
    const-string/jumbo v3, "      "

    #@2d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@32
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 10417
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 36
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 10428
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4
    move-object/from16 v28, v0

    #@6
    monitor-enter v28

    #@7
    .line 10429
    :try_start_0
    new-instance v26, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v27, "Backup Manager is "

    #@f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v27

    #@13
    move-object/from16 v0, p0

    #@15
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@17
    move/from16 v26, v0

    #@19
    if-eqz v26, :cond_1

    #@1b
    const-string/jumbo v26, "enabled"

    #@1e
    :goto_0
    move-object/from16 v0, v27

    #@20
    move-object/from16 v1, v26

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v26

    #@26
    .line 10430
    const-string/jumbo v27, " / "

    #@29
    .line 10429
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v27

    #@2d
    .line 10430
    move-object/from16 v0, p0

    #@2f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@31
    move/from16 v26, v0

    #@33
    if-nez v26, :cond_2

    #@35
    const-string/jumbo v26, "not "

    #@38
    .line 10429
    :goto_1
    move-object/from16 v0, v27

    #@3a
    move-object/from16 v1, v26

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v26

    #@40
    .line 10430
    const-string/jumbo v27, "provisioned / "

    #@43
    .line 10429
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v27

    #@47
    .line 10431
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@4b
    move-object/from16 v26, v0

    #@4d
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->size()I

    #@50
    move-result v26

    #@51
    if-nez v26, :cond_3

    #@53
    const-string/jumbo v26, "not "

    #@56
    .line 10429
    :goto_2
    move-object/from16 v0, v27

    #@58
    move-object/from16 v1, v26

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v26

    #@5e
    .line 10431
    const-string/jumbo v27, "pending init"

    #@61
    .line 10429
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v26

    #@65
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v26

    #@69
    move-object/from16 v0, p1

    #@6b
    move-object/from16 v1, v26

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 10432
    new-instance v26, Ljava/lang/StringBuilder;

    #@72
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v27, "Auto-restore is "

    #@78
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v27

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@80
    move/from16 v26, v0

    #@82
    if-eqz v26, :cond_4

    #@84
    const-string/jumbo v26, "enabled"

    #@87
    :goto_3
    move-object/from16 v0, v27

    #@89
    move-object/from16 v1, v26

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v26

    #@8f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v26

    #@93
    move-object/from16 v0, p1

    #@95
    move-object/from16 v1, v26

    #@97
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 10433
    move-object/from16 v0, p0

    #@9c
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@9e
    move/from16 v26, v0

    #@a0
    if-eqz v26, :cond_0

    #@a2
    const-string/jumbo v26, "Backup currently running"

    #@a5
    move-object/from16 v0, p1

    #@a7
    move-object/from16 v1, v26

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    .line 10434
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v27, "Last backup pass started: "

    #@b4
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v26

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    #@bc
    move-wide/from16 v30, v0

    #@be
    move-object/from16 v0, v26

    #@c0
    move-wide/from16 v1, v30

    #@c2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v26

    #@c6
    .line 10435
    const-string/jumbo v27, " (now = "

    #@c9
    .line 10434
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v26

    #@cd
    .line 10435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d0
    move-result-wide v30

    #@d1
    .line 10434
    move-object/from16 v0, v26

    #@d3
    move-wide/from16 v1, v30

    #@d5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v26

    #@d9
    .line 10435
    const/16 v27, 0x29

    #@db
    .line 10434
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@de
    move-result-object v26

    #@df
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v26

    #@e3
    move-object/from16 v0, p1

    #@e5
    move-object/from16 v1, v26

    #@e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 10436
    new-instance v26, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v27, "  next scheduled: "

    #@f2
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v26

    #@f6
    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    #@f9
    move-result-wide v30

    #@fa
    move-object/from16 v0, v26

    #@fc
    move-wide/from16 v1, v30

    #@fe
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@101
    move-result-object v26

    #@102
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v26

    #@106
    move-object/from16 v0, p1

    #@108
    move-object/from16 v1, v26

    #@10a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 10438
    const-string/jumbo v26, "Transport whitelist:"

    #@110
    move-object/from16 v0, p1

    #@112
    move-object/from16 v1, v26

    #@114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@117
    .line 10439
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@11b
    move-object/from16 v26, v0

    #@11d
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@120
    move-result-object v23

    #@121
    .local v23, "transport$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@124
    move-result v26

    #@125
    if-eqz v26, :cond_5

    #@127
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12a
    move-result-object v21

    #@12b
    check-cast v21, Landroid/content/ComponentName;

    #@12d
    .line 10440
    .local v21, "transport":Landroid/content/ComponentName;
    const-string/jumbo v26, "    "

    #@130
    move-object/from16 v0, p1

    #@132
    move-object/from16 v1, v26

    #@134
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    .line 10441
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@13a
    move-result-object v26

    #@13b
    move-object/from16 v0, p1

    #@13d
    move-object/from16 v1, v26

    #@13f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@142
    goto :goto_4

    #@143
    .line 10428
    .end local v21    # "transport":Landroid/content/ComponentName;
    .end local v23    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v26

    #@144
    monitor-exit v28

    #@145
    throw v26

    #@146
    .line 10429
    :cond_1
    :try_start_1
    const-string/jumbo v26, "disabled"

    #@149
    goto/16 :goto_0

    #@14b
    .line 10430
    :cond_2
    const-string/jumbo v26, ""

    #@14e
    goto/16 :goto_1

    #@150
    .line 10431
    :cond_3
    const-string/jumbo v26, ""

    #@153
    goto/16 :goto_2

    #@155
    .line 10432
    :cond_4
    const-string/jumbo v26, "disabled"

    #@158
    goto/16 :goto_3

    #@15a
    .line 10444
    .restart local v23    # "transport$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v26, "Available transports:"

    #@15d
    move-object/from16 v0, p1

    #@15f
    move-object/from16 v1, v26

    #@161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@164
    .line 10445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    #@167
    move-result-object v24

    #@168
    .line 10446
    .local v24, "transports":[Ljava/lang/String;
    if-eqz v24, :cond_8

    #@16a
    .line 10447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    #@16d
    move-result-object v29

    #@16e
    const/16 v26, 0x0

    #@170
    move-object/from16 v0, v29

    #@172
    array-length v0, v0

    #@173
    move/from16 v30, v0

    #@175
    move/from16 v27, v26

    #@177
    :goto_5
    move/from16 v0, v27

    #@179
    move/from16 v1, v30

    #@17b
    if-ge v0, v1, :cond_8

    #@17d
    aget-object v20, v29, v27

    #@17f
    .line 10448
    .local v20, "t":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    #@181
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@188
    move-object/from16 v26, v0

    #@18a
    move-object/from16 v0, v20

    #@18c
    move-object/from16 v1, v26

    #@18e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@191
    move-result v26

    #@192
    if-eqz v26, :cond_6

    #@194
    const-string/jumbo v26, "  * "

    #@197
    :goto_6
    move-object/from16 v0, v31

    #@199
    move-object/from16 v1, v26

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v26

    #@19f
    move-object/from16 v0, v26

    #@1a1
    move-object/from16 v1, v20

    #@1a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v26

    #@1a7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v26

    #@1ab
    move-object/from16 v0, p1

    #@1ad
    move-object/from16 v1, v26

    #@1af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b2
    .line 10450
    :try_start_2
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@1b9
    move-result-object v22

    #@1ba
    .line 10451
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@1c0
    move-object/from16 v26, v0

    #@1c2
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@1c5
    move-result-object v31

    #@1c6
    move-object/from16 v0, v26

    #@1c8
    move-object/from16 v1, v31

    #@1ca
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1cd
    .line 10452
    .local v7, "dir":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v31, "       destination: "

    #@1d5
    move-object/from16 v0, v26

    #@1d7
    move-object/from16 v1, v31

    #@1d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v26

    #@1dd
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    #@1e0
    move-result-object v31

    #@1e1
    move-object/from16 v0, v26

    #@1e3
    move-object/from16 v1, v31

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v26

    #@1e9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v26

    #@1ed
    move-object/from16 v0, p1

    #@1ef
    move-object/from16 v1, v26

    #@1f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f4
    .line 10453
    new-instance v26, Ljava/lang/StringBuilder;

    #@1f6
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@1f9
    const-string/jumbo v31, "       intent: "

    #@1fc
    move-object/from16 v0, v26

    #@1fe
    move-object/from16 v1, v31

    #@200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v26

    #@204
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    #@207
    move-result-object v31

    #@208
    move-object/from16 v0, v26

    #@20a
    move-object/from16 v1, v31

    #@20c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v26

    #@210
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v26

    #@214
    move-object/from16 v0, p1

    #@216
    move-object/from16 v1, v26

    #@218
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21b
    .line 10454
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@21e
    move-result-object v31

    #@21f
    const/16 v26, 0x0

    #@221
    move-object/from16 v0, v31

    #@223
    array-length v0, v0

    #@224
    move/from16 v32, v0

    #@226
    :goto_7
    move/from16 v0, v26

    #@228
    move/from16 v1, v32

    #@22a
    if-ge v0, v1, :cond_7

    #@22c
    aget-object v11, v31, v26

    #@22e
    .line 10455
    .local v11, "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    #@230
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v34, "       "

    #@236
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v33

    #@23a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    #@23d
    move-result-object v34

    #@23e
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v33

    #@242
    const-string/jumbo v34, " - "

    #@245
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v33

    #@249
    invoke-virtual {v11}, Ljava/io/File;->length()J

    #@24c
    move-result-wide v34

    #@24d
    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@250
    move-result-object v33

    #@251
    const-string/jumbo v34, " state bytes"

    #@254
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v33

    #@258
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v33

    #@25c
    move-object/from16 v0, p1

    #@25e
    move-object/from16 v1, v33

    #@260
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@263
    .line 10454
    add-int/lit8 v26, v26, 0x1

    #@265
    goto :goto_7

    #@266
    .line 10448
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_6
    :try_start_3
    const-string/jumbo v26, "    "

    #@269
    goto/16 :goto_6

    #@26b
    .line 10457
    :catch_0
    move-exception v8

    #@26c
    .line 10458
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "BackupManagerService"

    #@26f
    const-string/jumbo v31, "Error in transport"

    #@272
    move-object/from16 v0, v26

    #@274
    move-object/from16 v1, v31

    #@276
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@279
    .line 10459
    new-instance v26, Ljava/lang/StringBuilder;

    #@27b
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@27e
    const-string/jumbo v31, "        Error: "

    #@281
    move-object/from16 v0, v26

    #@283
    move-object/from16 v1, v31

    #@285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v26

    #@289
    move-object/from16 v0, v26

    #@28b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v26

    #@28f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v26

    #@293
    move-object/from16 v0, p1

    #@295
    move-object/from16 v1, v26

    #@297
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29a
    .line 10447
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v26, v27, 0x1

    #@29c
    move/from16 v27, v26

    #@29e
    goto/16 :goto_5

    #@2a0
    .line 10464
    .end local v20    # "t":Ljava/lang/String;
    :cond_8
    new-instance v26, Ljava/lang/StringBuilder;

    #@2a2
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2a5
    const-string/jumbo v27, "Pending init: "

    #@2a8
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v26

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2b0
    move-object/from16 v27, v0

    #@2b2
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    #@2b5
    move-result v27

    #@2b6
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v26

    #@2ba
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v26

    #@2be
    move-object/from16 v0, p1

    #@2c0
    move-object/from16 v1, v26

    #@2c2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c5
    .line 10465
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@2c9
    move-object/from16 v26, v0

    #@2cb
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ce
    move-result-object v19

    #@2cf
    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@2d2
    move-result v26

    #@2d3
    if-eqz v26, :cond_9

    #@2d5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d8
    move-result-object v18

    #@2d9
    check-cast v18, Ljava/lang/String;

    #@2db
    .line 10466
    .local v18, "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@2dd
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@2e0
    const-string/jumbo v27, "    "

    #@2e3
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v26

    #@2e7
    move-object/from16 v0, v26

    #@2e9
    move-object/from16 v1, v18

    #@2eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v26

    #@2ef
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v26

    #@2f3
    move-object/from16 v0, p1

    #@2f5
    move-object/from16 v1, v26

    #@2f7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fa
    goto :goto_8

    #@2fb
    .line 10470
    .end local v18    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2ff
    move-object/from16 v27, v0

    #@301
    monitor-enter v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@302
    .line 10471
    :try_start_4
    move-object/from16 v0, p0

    #@304
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@306
    move-object/from16 v26, v0

    #@308
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    #@30b
    move-result v26

    #@30c
    if-nez v26, :cond_a

    #@30e
    .line 10472
    const-string/jumbo v26, "Most recent backup trace:"

    #@311
    move-object/from16 v0, p1

    #@313
    move-object/from16 v1, v26

    #@315
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@318
    .line 10473
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@31c
    move-object/from16 v26, v0

    #@31e
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@321
    move-result-object v19

    #@322
    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@325
    move-result v26

    #@326
    if-eqz v26, :cond_a

    #@328
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32b
    move-result-object v18

    #@32c
    check-cast v18, Ljava/lang/String;

    #@32e
    .line 10474
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@330
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@333
    const-string/jumbo v29, "   "

    #@336
    move-object/from16 v0, v26

    #@338
    move-object/from16 v1, v29

    #@33a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v26

    #@33e
    move-object/from16 v0, v26

    #@340
    move-object/from16 v1, v18

    #@342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v26

    #@346
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@349
    move-result-object v26

    #@34a
    move-object/from16 v0, p1

    #@34c
    move-object/from16 v1, v26

    #@34e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@351
    goto :goto_9

    #@352
    .line 10470
    .end local v18    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v26

    #@353
    :try_start_5
    monitor-exit v27

    #@354
    throw v26

    #@355
    :cond_a
    monitor-exit v27

    #@356
    .line 10480
    const-string/jumbo v26, "Ancestral: "

    #@359
    move-object/from16 v0, p1

    #@35b
    move-object/from16 v1, v26

    #@35d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@360
    move-object/from16 v0, p0

    #@362
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@364
    move-wide/from16 v26, v0

    #@366
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@369
    move-result-object v26

    #@36a
    move-object/from16 v0, p1

    #@36c
    move-object/from16 v1, v26

    #@36e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@371
    .line 10481
    const-string/jumbo v26, "Current:   "

    #@374
    move-object/from16 v0, p1

    #@376
    move-object/from16 v1, v26

    #@378
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37b
    move-object/from16 v0, p0

    #@37d
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@37f
    move-wide/from16 v26, v0

    #@381
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@384
    move-result-object v26

    #@385
    move-object/from16 v0, p1

    #@387
    move-object/from16 v1, v26

    #@389
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38c
    .line 10483
    move-object/from16 v0, p0

    #@38e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@390
    move-object/from16 v26, v0

    #@392
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    #@395
    move-result v4

    #@396
    .line 10484
    .local v4, "N":I
    const-string/jumbo v26, "Participants:"

    #@399
    move-object/from16 v0, p1

    #@39b
    move-object/from16 v1, v26

    #@39d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a0
    .line 10485
    const/4 v12, 0x0

    #@3a1
    .local v12, "i":I
    :goto_a
    if-ge v12, v4, :cond_c

    #@3a3
    .line 10486
    move-object/from16 v0, p0

    #@3a5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3a7
    move-object/from16 v26, v0

    #@3a9
    move-object/from16 v0, v26

    #@3ab
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@3ae
    move-result v25

    #@3af
    .line 10487
    .local v25, "uid":I
    const-string/jumbo v26, "  uid: "

    #@3b2
    move-object/from16 v0, p1

    #@3b4
    move-object/from16 v1, v26

    #@3b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b9
    .line 10488
    move-object/from16 v0, p1

    #@3bb
    move/from16 v1, v25

    #@3bd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@3c0
    .line 10489
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3c4
    move-object/from16 v26, v0

    #@3c6
    move-object/from16 v0, v26

    #@3c8
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3cb
    move-result-object v13

    #@3cc
    check-cast v13, Ljava/util/HashSet;

    #@3ce
    .line 10490
    .local v13, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3d1
    move-result-object v6

    #@3d2
    .local v6, "app$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@3d5
    move-result v26

    #@3d6
    if-eqz v26, :cond_b

    #@3d8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3db
    move-result-object v5

    #@3dc
    check-cast v5, Ljava/lang/String;

    #@3de
    .line 10491
    .local v5, "app":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@3e0
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@3e3
    const-string/jumbo v27, "    "

    #@3e6
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e9
    move-result-object v26

    #@3ea
    move-object/from16 v0, v26

    #@3ec
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v26

    #@3f0
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f3
    move-result-object v26

    #@3f4
    move-object/from16 v0, p1

    #@3f6
    move-object/from16 v1, v26

    #@3f8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3fb
    goto :goto_b

    #@3fc
    .line 10485
    .end local v5    # "app":Ljava/lang/String;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    #@3fe
    goto :goto_a

    #@3ff
    .line 10495
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "uid":I
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    #@401
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@404
    const-string/jumbo v27, "Ancestral packages: "

    #@407
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    move-result-object v27

    #@40b
    .line 10496
    move-object/from16 v0, p0

    #@40d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@40f
    move-object/from16 v26, v0

    #@411
    if-nez v26, :cond_d

    #@413
    const-string/jumbo v26, "none"

    #@416
    .line 10495
    :goto_c
    move-object/from16 v0, v27

    #@418
    move-object/from16 v1, v26

    #@41a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41d
    move-result-object v26

    #@41e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@421
    move-result-object v26

    #@422
    move-object/from16 v0, p1

    #@424
    move-object/from16 v1, v26

    #@426
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@429
    .line 10497
    move-object/from16 v0, p0

    #@42b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@42d
    move-object/from16 v26, v0

    #@42f
    if-eqz v26, :cond_e

    #@431
    .line 10498
    move-object/from16 v0, p0

    #@433
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@435
    move-object/from16 v26, v0

    #@437
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43a
    move-result-object v15

    #@43b
    .local v15, "pkg$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@43e
    move-result v26

    #@43f
    if-eqz v26, :cond_e

    #@441
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@444
    move-result-object v14

    #@445
    check-cast v14, Ljava/lang/String;

    #@447
    .line 10499
    .local v14, "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@449
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@44c
    const-string/jumbo v27, "    "

    #@44f
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@452
    move-result-object v26

    #@453
    move-object/from16 v0, v26

    #@455
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@458
    move-result-object v26

    #@459
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45c
    move-result-object v26

    #@45d
    move-object/from16 v0, p1

    #@45f
    move-object/from16 v1, v26

    #@461
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@464
    goto :goto_d

    #@465
    .line 10496
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "pkg$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    #@467
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@469
    move-object/from16 v26, v0

    #@46b
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    #@46e
    move-result v26

    #@46f
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@472
    move-result-object v26

    #@473
    goto :goto_c

    #@474
    .line 10503
    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    #@476
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@479
    const-string/jumbo v27, "Ever backed up: "

    #@47c
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47f
    move-result-object v26

    #@480
    move-object/from16 v0, p0

    #@482
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@484
    move-object/from16 v27, v0

    #@486
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    #@489
    move-result v27

    #@48a
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48d
    move-result-object v26

    #@48e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@491
    move-result-object v26

    #@492
    move-object/from16 v0, p1

    #@494
    move-object/from16 v1, v26

    #@496
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@499
    .line 10504
    move-object/from16 v0, p0

    #@49b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@49d
    move-object/from16 v26, v0

    #@49f
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a2
    move-result-object v15

    #@4a3
    .restart local v15    # "pkg$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@4a6
    move-result v26

    #@4a7
    if-eqz v26, :cond_f

    #@4a9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ac
    move-result-object v14

    #@4ad
    check-cast v14, Ljava/lang/String;

    #@4af
    .line 10505
    .restart local v14    # "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    #@4b1
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@4b4
    const-string/jumbo v27, "    "

    #@4b7
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v26

    #@4bb
    move-object/from16 v0, v26

    #@4bd
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v26

    #@4c1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c4
    move-result-object v26

    #@4c5
    move-object/from16 v0, p1

    #@4c7
    move-object/from16 v1, v26

    #@4c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4cc
    goto :goto_e

    #@4cd
    .line 10508
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    #@4cf
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@4d2
    const-string/jumbo v27, "Pending key/value backup: "

    #@4d5
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d8
    move-result-object v26

    #@4d9
    move-object/from16 v0, p0

    #@4db
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@4dd
    move-object/from16 v27, v0

    #@4df
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    #@4e2
    move-result v27

    #@4e3
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v26

    #@4e7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ea
    move-result-object v26

    #@4eb
    move-object/from16 v0, p1

    #@4ed
    move-object/from16 v1, v26

    #@4ef
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f2
    .line 10509
    move-object/from16 v0, p0

    #@4f4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@4f6
    move-object/from16 v26, v0

    #@4f8
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4fb
    move-result-object v26

    #@4fc
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4ff
    move-result-object v17

    #@500
    .local v17, "req$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@503
    move-result v26

    #@504
    if-eqz v26, :cond_10

    #@506
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@509
    move-result-object v16

    #@50a
    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@50c
    .line 10510
    .local v16, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v26, Ljava/lang/StringBuilder;

    #@50e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@511
    const-string/jumbo v27, "    "

    #@514
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v26

    #@518
    move-object/from16 v0, v26

    #@51a
    move-object/from16 v1, v16

    #@51c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v26

    #@520
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@523
    move-result-object v26

    #@524
    move-object/from16 v0, p1

    #@526
    move-object/from16 v1, v26

    #@528
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52b
    goto :goto_f

    #@52c
    .line 10513
    .end local v16    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    #@52e
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@531
    const-string/jumbo v27, "Full backup queue:"

    #@534
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@537
    move-result-object v26

    #@538
    move-object/from16 v0, p0

    #@53a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@53c
    move-object/from16 v27, v0

    #@53e
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@541
    move-result v27

    #@542
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@545
    move-result-object v26

    #@546
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@549
    move-result-object v26

    #@54a
    move-object/from16 v0, p1

    #@54c
    move-object/from16 v1, v26

    #@54e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@551
    .line 10514
    move-object/from16 v0, p0

    #@553
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@555
    move-object/from16 v26, v0

    #@557
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55a
    move-result-object v10

    #@55b
    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@55e
    move-result v26

    #@55f
    if-eqz v26, :cond_11

    #@561
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@564
    move-result-object v9

    #@565
    check-cast v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@567
    .line 10515
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string/jumbo v26, "    "

    #@56a
    move-object/from16 v0, p1

    #@56c
    move-object/from16 v1, v26

    #@56e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@571
    iget-wide v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@573
    move-wide/from16 v26, v0

    #@575
    move-object/from16 v0, p1

    #@577
    move-wide/from16 v1, v26

    #@579
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@57c
    .line 10516
    const-string/jumbo v26, " : "

    #@57f
    move-object/from16 v0, p1

    #@581
    move-object/from16 v1, v26

    #@583
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@586
    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@588
    move-object/from16 v26, v0

    #@58a
    move-object/from16 v0, p1

    #@58c
    move-object/from16 v1, v26

    #@58e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@591
    goto :goto_10

    #@592
    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_11
    monitor-exit v28

    #@593
    .line 10427
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .locals 9
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4970
    if-nez p1, :cond_0

    #@3
    .line 4971
    const-string/jumbo v3, "BackupManagerService"

    #@6
    const-string/jumbo v4, "Transport not present; full data backup not performed"

    #@9
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 4972
    return v8

    #@d
    .line 4978
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@11
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 4979
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@1a
    const-string/jumbo v3, "@pm@"

    #@1d
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    .line 4980
    .local v1, "pmState":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    #@23
    move-result-wide v4

    #@24
    const-wide/16 v6, 0x0

    #@26
    cmp-long v3, v4, v6

    #@28
    if-gtz v3, :cond_1

    #@2a
    .line 4982
    const-string/jumbo v3, "BackupManagerService"

    #@2d
    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    #@30
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 4984
    return v8

    #@34
    .line 4986
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_0
    move-exception v0

    #@35
    .line 4987
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@38
    const-string/jumbo v4, "Unable to contact transport"

    #@3b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 4988
    return v8

    #@3f
    .line 4991
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    #@40
    return v3
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .locals 1

    #@0
    .prologue
    .line 346
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@2
    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2337
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    #@b
    .line 2339
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_0

    #@d
    .line 2340
    const-string/jumbo v1, "BackupManagerService"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Requested unavailable transport: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 2342
    return-object v0

    #@29
    .line 2337
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method private getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 4
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    .line 2351
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 2352
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v0

    #@9
    .line 2353
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 2354
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/internal/backup/IBackupTransport;

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 2358
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .line 2353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    :cond_1
    monitor-exit v3

    #@28
    .line 2362
    const/4 v2, 0x0

    #@29
    return-object v2

    #@2a
    .line 2351
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    div-int/lit8 v0, v3, 0x2

    #@6
    .line 1584
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 1585
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "Hex string must have an even number of digits"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 1588
    :cond_0
    new-array v2, v0, [B

    #@19
    .line 1589
    .local v2, "result":[B
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v3

    #@1e
    if-ge v1, v3, :cond_1

    #@20
    .line 1590
    div-int/lit8 v3, v1, 0x2

    #@22
    add-int/lit8 v4, v1, 0x2

    #@24
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    const/16 v5, 0x10

    #@2a
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2d
    move-result v4

    #@2e
    int-to-byte v4, v4

    #@2f
    aput-byte v4, v2, v3

    #@31
    .line 1589
    add-int/lit8 v1, v1, 0x2

    #@33
    goto :goto_0

    #@34
    .line 1592
    :cond_1
    return-object v2
.end method

.method private initPackageTracking()V
    .locals 24

    #@0
    .prologue
    .line 1287
    new-instance v21, Ljava/io/File;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@6
    move-object/from16 v22, v0

    #@8
    const-string/jumbo v23, "ancestral"

    #@b
    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    move-object/from16 v0, v21

    #@10
    move-object/from16 v1, p0

    #@12
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    #@14
    .line 1289
    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    #@1a
    move-object/from16 v21, v0

    #@1c
    const-string/jumbo v22, "r"

    #@1f
    move-object/from16 v0, v19

    #@21
    move-object/from16 v1, v21

    #@23
    move-object/from16 v2, v22

    #@25
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 1290
    .local v19, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    #@2b
    move-result v20

    #@2c
    .line 1291
    .local v20, "version":I
    const/16 v21, 0x1

    #@2e
    move/from16 v0, v20

    #@30
    move/from16 v1, v21

    #@32
    if-ne v0, v1, :cond_0

    #@34
    .line 1292
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    #@37
    move-result-wide v22

    #@38
    move-wide/from16 v0, v22

    #@3a
    move-object/from16 v2, p0

    #@3c
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@3e
    .line 1293
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    #@41
    move-result-wide v22

    #@42
    move-wide/from16 v0, v22

    #@44
    move-object/from16 v2, p0

    #@46
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@48
    .line 1295
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    #@4b
    move-result v12

    #@4c
    .line 1296
    .local v12, "numPackages":I
    if-ltz v12, :cond_0

    #@4e
    .line 1297
    new-instance v21, Ljava/util/HashSet;

    #@50
    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    #@53
    move-object/from16 v0, v21

    #@55
    move-object/from16 v1, p0

    #@57
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@59
    .line 1298
    const/4 v9, 0x0

    #@5a
    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    #@5c
    .line 1299
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    #@5f
    move-result-object v14

    #@60
    .line 1300
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@64
    move-object/from16 v21, v0

    #@66
    move-object/from16 v0, v21

    #@68
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b
    .line 1298
    add-int/lit8 v9, v9, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 1304
    .end local v9    # "i":I
    .end local v12    # "numPackages":I
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    .line 1315
    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .end local v20    # "version":I
    :goto_1
    new-instance v21, Ljava/io/File;

    #@73
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@77
    move-object/from16 v22, v0

    #@79
    const-string/jumbo v23, "processed"

    #@7c
    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7f
    move-object/from16 v0, v21

    #@81
    move-object/from16 v1, p0

    #@83
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@85
    .line 1316
    new-instance v18, Ljava/io/File;

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@8b
    move-object/from16 v21, v0

    #@8d
    const-string/jumbo v22, "processed.new"

    #@90
    move-object/from16 v0, v18

    #@92
    move-object/from16 v1, v21

    #@94
    move-object/from16 v2, v22

    #@96
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@99
    .line 1321
    .local v18, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    #@9c
    move-result v21

    #@9d
    if-eqz v21, :cond_1

    #@9f
    .line 1322
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    #@a2
    .line 1327
    :cond_1
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@a6
    move-object/from16 v21, v0

    #@a8
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@ab
    move-result v21

    #@ac
    if-eqz v21, :cond_3

    #@ae
    .line 1328
    const/16 v16, 0x0

    #@b0
    .line 1329
    .local v16, "temp":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    #@b1
    .line 1332
    .local v10, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v17, Ljava/io/RandomAccessFile;

    #@b3
    const-string/jumbo v21, "rws"

    #@b6
    move-object/from16 v0, v17

    #@b8
    move-object/from16 v1, v18

    #@ba
    move-object/from16 v2, v21

    #@bc
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bf
    .line 1333
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v17, "temp":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v11, Ljava/io/RandomAccessFile;

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@c5
    move-object/from16 v21, v0

    #@c7
    const-string/jumbo v22, "r"

    #@ca
    move-object/from16 v0, v21

    #@cc
    move-object/from16 v1, v22

    #@ce
    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@d1
    .line 1337
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .local v11, "in":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@d4
    move-result-object v13

    #@d5
    .line 1340
    .local v13, "pkg":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@d9
    move-object/from16 v21, v0

    #@db
    const/16 v22, 0x0

    #@dd
    move-object/from16 v0, v21

    #@df
    move/from16 v1, v22

    #@e1
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@e4
    .line 1342
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@e8
    move-object/from16 v21, v0

    #@ea
    move-object/from16 v0, v21

    #@ec
    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@ef
    .line 1343
    move-object/from16 v0, v17

    #@f1
    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@f4
    goto :goto_2

    #@f5
    .line 1345
    :catch_0
    move-exception v4

    #@f6
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    #@f7
    .line 1308
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_1
    move-exception v6

    #@f8
    .line 1309
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@fb
    const-string/jumbo v22, "Unable to read token file"

    #@fe
    move-object/from16 v0, v21

    #@100
    move-object/from16 v1, v22

    #@102
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@105
    goto/16 :goto_1

    #@107
    .line 1305
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    #@108
    .line 1307
    .local v8, "fnf":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "BackupManagerService"

    #@10b
    const-string/jumbo v22, "No ancestral data"

    #@10e
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    goto/16 :goto_1

    #@113
    .line 1356
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_3
    move-exception v6

    #@114
    .line 1357
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string/jumbo v21, "BackupManagerService"

    #@117
    const-string/jumbo v22, "Error in processed file"

    #@11a
    move-object/from16 v0, v21

    #@11c
    move-object/from16 v1, v22

    #@11e
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@121
    .line 1359
    if-eqz v16, :cond_2

    #@123
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@126
    .line 1360
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    #@128
    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@12b
    .line 1364
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@12f
    move-object/from16 v22, v0

    #@131
    monitor-enter v22

    #@132
    .line 1366
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    #@135
    move-result-object v21

    #@136
    move-object/from16 v0, v21

    #@138
    move-object/from16 v1, p0

    #@13a
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@13c
    monitor-exit v22

    #@13d
    .line 1371
    new-instance v7, Landroid/content/IntentFilter;

    #@13f
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@142
    .line 1372
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.PACKAGE_ADDED"

    #@145
    move-object/from16 v0, v21

    #@147
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14a
    .line 1373
    const-string/jumbo v21, "android.intent.action.PACKAGE_REMOVED"

    #@14d
    move-object/from16 v0, v21

    #@14f
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@152
    .line 1374
    const-string/jumbo v21, "android.intent.action.PACKAGE_CHANGED"

    #@155
    move-object/from16 v0, v21

    #@157
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15a
    .line 1375
    const-string/jumbo v21, "package"

    #@15d
    move-object/from16 v0, v21

    #@15f
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@162
    .line 1376
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@166
    move-object/from16 v21, v0

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@16c
    move-object/from16 v22, v0

    #@16e
    move-object/from16 v0, v21

    #@170
    move-object/from16 v1, v22

    #@172
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@175
    .line 1378
    new-instance v15, Landroid/content/IntentFilter;

    #@177
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    #@17a
    .line 1379
    .local v15, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@17d
    move-object/from16 v0, v21

    #@17f
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@182
    .line 1380
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@185
    move-object/from16 v0, v21

    #@187
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18a
    .line 1381
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@18e
    move-object/from16 v21, v0

    #@190
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@194
    move-object/from16 v22, v0

    #@196
    move-object/from16 v0, v21

    #@198
    move-object/from16 v1, v22

    #@19a
    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@19d
    .line 1283
    return-void

    #@19e
    .line 1359
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@19f
    goto :goto_4

    #@1a0
    .line 1360
    :catch_5
    move-exception v6

    #@1a1
    goto :goto_5

    #@1a2
    .line 1350
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    #@1a3
    .line 1353
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/io/EOFException;
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@1a7
    move-object/from16 v21, v0

    #@1a9
    move-object/from16 v0, v18

    #@1ab
    move-object/from16 v1, v21

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@1b0
    move-result v21

    #@1b1
    if-nez v21, :cond_4

    #@1b3
    .line 1354
    const-string/jumbo v21, "BackupManagerService"

    #@1b6
    new-instance v22, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v23, "Error renaming "

    #@1be
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v22

    #@1c2
    move-object/from16 v0, v22

    #@1c4
    move-object/from16 v1, v18

    #@1c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v22

    #@1ca
    const-string/jumbo v23, " to "

    #@1cd
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v22

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@1d5
    move-object/from16 v23, v0

    #@1d7
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v22

    #@1db
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1de
    move-result-object v22

    #@1df
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1e2
    .line 1359
    :cond_4
    if-eqz v16, :cond_5

    #@1e4
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    #@1e7
    .line 1360
    :cond_5
    :goto_7
    if-eqz v10, :cond_3

    #@1e9
    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    #@1ec
    goto/16 :goto_5

    #@1ee
    :catch_7
    move-exception v6

    #@1ef
    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@1f1
    .line 1359
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    #@1f2
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_7

    #@1f3
    .line 1358
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    #@1f4
    .line 1359
    :goto_8
    if-eqz v16, :cond_6

    #@1f6
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    #@1f9
    .line 1360
    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    #@1fb
    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    #@1fe
    .line 1358
    :cond_7
    :goto_a
    throw v21

    #@1ff
    .line 1359
    :catch_9
    move-exception v6

    #@200
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_9

    #@201
    .line 1360
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    #@202
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    #@203
    .line 1364
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    #@204
    monitor-exit v22

    #@205
    throw v21

    #@206
    .line 1358
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v21

    #@207
    move-object/from16 v16, v17

    #@209
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .local v16, "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    #@20a
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v21

    #@20b
    move-object v10, v11

    #@20c
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    #@20e
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_8

    #@20f
    .line 1350
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v5

    #@210
    .restart local v5    # "e":Ljava/io/EOFException;
    move-object/from16 v16, v17

    #@212
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    #@213
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v5

    #@214
    .restart local v5    # "e":Ljava/io/EOFException;
    move-object v10, v11

    #@215
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    #@217
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_6

    #@218
    .line 1356
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v6

    #@219
    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    #@21b
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    #@21d
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v6

    #@21e
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v10, v11

    #@21f
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    #@221
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    .line 1596
    array-length v3, p2

    #@1
    new-array v2, v3, [C

    #@3
    .line 1597
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v3, p2

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 1598
    aget-byte v3, p2, v1

    #@9
    int-to-char v3, v3

    #@a
    aput-char v3, v2, v1

    #@c
    .line 1597
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1601
    :cond_0
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    #@12
    move-result-object v0

    #@13
    .line 1602
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    #@16
    move-result-object v3

    #@17
    return-object v3
.end method

.method private parseLeftoverJournals()V
    .locals 13

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1522
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@3
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@6
    move-result-object v8

    #@7
    array-length v9, v8

    #@8
    :goto_0
    if-ge v7, v9, :cond_5

    #@a
    aget-object v3, v8, v7

    #@c
    .line 1523
    .local v3, "f":Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@e
    if-eqz v10, :cond_0

    #@10
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@12
    invoke-virtual {v3, v10}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@15
    move-result v10

    #@16
    if-eqz v10, :cond_2

    #@18
    .line 1527
    :cond_0
    const/4 v4, 0x0

    #@19
    .line 1529
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string/jumbo v10, "BackupManagerService"

    #@1c
    const-string/jumbo v11, "Found stale backup journal, scheduling"

    #@1f
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1530
    new-instance v5, Ljava/io/RandomAccessFile;

    #@24
    const-string/jumbo v10, "r"

    #@27
    invoke-direct {v5, v3, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 1532
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 1534
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    goto :goto_1

    #@32
    .line 1536
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Ljava/io/EOFException;
    move-object v4, v5

    #@34
    .line 1542
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v4, :cond_1

    #@36
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@39
    .line 1543
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@3c
    .line 1522
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1538
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    #@40
    .line 1539
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string/jumbo v10, "BackupManagerService"

    #@43
    new-instance v11, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v12, "Can\'t read "

    #@4b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v11

    #@4f
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v11

    #@57
    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    .line 1542
    if-eqz v4, :cond_3

    #@5c
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5f
    .line 1543
    :cond_3
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@62
    goto :goto_4

    #@63
    .line 1542
    :catch_2
    move-exception v1

    #@64
    .local v1, "e":Ljava/io/IOException;
    goto :goto_6

    #@65
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "e":Ljava/io/EOFException;
    :catch_3
    move-exception v1

    #@66
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    #@67
    .line 1540
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@68
    .line 1542
    :goto_7
    if-eqz v4, :cond_4

    #@6a
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@6d
    .line 1543
    :cond_4
    :goto_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@70
    .line 1540
    throw v7

    #@71
    .line 1542
    :catch_4
    move-exception v1

    #@72
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    #@73
    .line 1521
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_5
    return-void

    #@74
    .line 1540
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    #@75
    move-object v4, v5

    #@76
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_7

    #@77
    .line 1536
    .local v4, "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    #@78
    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_2

    #@79
    .line 1538
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    #@7a
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    #@7b
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_5
.end method

.method private randomBytes(I)[B
    .locals 2
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 1607
    div-int/lit8 v1, p1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 1608
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@9
    .line 1609
    return-object v0
.end method

.method private static readBackupEnableState(I)Z
    .locals 11
    .param p0, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 9569
    new-instance v0, Ljava/io/File;

    #@4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@7
    move-result-object v6

    #@8
    const-string/jumbo v8, "backup"

    #@b
    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 9570
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@10
    const-string/jumbo v6, "backup_enabled"

    #@13
    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 9571
    .local v2, "enableFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_6

    #@1c
    .line 9572
    const/4 v3, 0x0

    #@1d
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    #@1f
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@22
    .line 9573
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@25
    move-result v5

    #@26
    .line 9574
    .local v5, "state":I
    if-eqz v5, :cond_1

    #@28
    const/4 v6, 0x1

    #@29
    .line 9578
    :goto_0
    if-eqz v4, :cond_0

    #@2b
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    #@30
    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@31
    .line 9575
    :catch_0
    move-exception v1

    #@32
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    #@33
    .line 9577
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    :goto_2
    const-string/jumbo v6, "BackupManagerService"

    #@36
    const-string/jumbo v7, "Cannot read enable state; assuming disabled"

    #@39
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 9584
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return v9

    #@3d
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "state":I
    :cond_1
    move v6, v9

    #@3e
    .line 9574
    goto :goto_0

    #@3f
    .line 9578
    :catch_1
    move-exception v7

    #@40
    goto :goto_1

    #@41
    .line 9574
    :cond_2
    return v6

    #@42
    .line 9578
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    #@43
    .end local v3    # "fin":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@44
    :catchall_0
    move-exception v7

    #@45
    move-object v10, v7

    #@46
    move-object v7, v6

    #@47
    move-object v6, v10

    #@48
    :goto_5
    if-eqz v3, :cond_3

    #@4a
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@4d
    :cond_3
    :goto_6
    if-eqz v7, :cond_5

    #@4f
    :try_start_6
    throw v7

    #@50
    .line 9575
    :catch_3
    move-exception v1

    #@51
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@52
    .line 9578
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    #@53
    if-nez v7, :cond_4

    #@55
    move-object v7, v8

    #@56
    goto :goto_6

    #@57
    :cond_4
    if-eq v7, v8, :cond_3

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5c
    goto :goto_6

    #@5d
    :cond_5
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@5e
    .line 9581
    :cond_6
    const-string/jumbo v6, "BackupManagerService"

    #@61
    const-string/jumbo v7, "isBackupEnabled() => false due to absent settings file"

    #@64
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_3

    #@68
    .line 9578
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    #@69
    goto :goto_5

    #@6a
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    #@6b
    move-object v3, v4

    #@6c
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    goto :goto_5

    #@6d
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    #@6e
    move-object v3, v4

    #@6f
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1385
    const/4 v12, 0x0

    #@1
    .line 1386
    .local v12, "changed":Z
    const/16 v27, 0x0

    #@3
    .line 1388
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    move-object/from16 v30, v0

    #@9
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    #@c
    move-result-object v9

    #@d
    .line 1390
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@11
    move-object/from16 v30, v0

    #@13
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    #@16
    move-result v30

    #@17
    if-eqz v30, :cond_2

    #@19
    .line 1391
    const/16 v16, 0x0

    #@1b
    .line 1392
    .local v16, "fstream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    #@1c
    .line 1393
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    #@1e
    .line 1395
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@24
    move-object/from16 v30, v0

    #@26
    move-object/from16 v0, v17

    #@28
    move-object/from16 v1, v30

    #@2a
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1396
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .local v17, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/BufferedInputStream;

    #@2f
    move-object/from16 v0, v17

    #@31
    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@34
    .line 1397
    .local v11, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v20, Ljava/io/DataInputStream;

    #@36
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v20

    #@38
    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@3b
    .line 1399
    .local v20, "in":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@3e
    .end local v19    # "in":Ljava/io/DataInputStream;
    move-result v29

    #@3f
    .line 1400
    .local v29, "version":I
    const/16 v30, 0x1

    #@41
    move/from16 v0, v29

    #@43
    move/from16 v1, v30

    #@45
    if-eq v0, v1, :cond_0

    #@47
    .line 1401
    const-string/jumbo v30, "BackupManagerService"

    #@4a
    new-instance v31, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v32, "Unknown backup schedule version "

    #@52
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v31

    #@56
    move-object/from16 v0, v31

    #@58
    move/from16 v1, v29

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v31

    #@5e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v31

    #@62
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@65
    .line 1402
    const/16 v30, 0x0

    #@67
    .line 1456
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6a
    .line 1457
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6d
    .line 1458
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 1402
    return-object v30

    #@71
    .line 1405
    :cond_0
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@74
    move-result v6

    #@75
    .line 1406
    .local v6, "N":I
    new-instance v28, Ljava/util/ArrayList;

    #@77
    move-object/from16 v0, v28

    #@79
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@7c
    .line 1412
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v28, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :try_start_5
    new-instance v15, Ljava/util/HashSet;

    #@7e
    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    #@81
    .line 1414
    .local v15, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    #@83
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@85
    if-ge v0, v6, :cond_4

    #@87
    .line 1415
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@8a
    move-result-object v26

    #@8b
    .line 1416
    .local v26, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    #@8e
    move-result-wide v24

    #@8f
    .line 1417
    .local v24, "lastBackup":J
    move-object/from16 v0, v26

    #@91
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@94
    .line 1419
    :try_start_6
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@98
    move-object/from16 v30, v0

    #@9a
    const/16 v31, 0x0

    #@9c
    move-object/from16 v0, v30

    #@9e
    move-object/from16 v1, v26

    #@a0
    move/from16 v2, v31

    #@a2
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@a5
    move-result-object v23

    #@a6
    .line 1420
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@a9
    move-result v30

    #@aa
    if-eqz v30, :cond_1

    #@ac
    move-object/from16 v0, v23

    #@ae
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b0
    move-object/from16 v30, v0

    #@b2
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@b5
    move-result v30

    #@b6
    if-eqz v30, :cond_1

    #@b8
    .line 1421
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@ba
    move-object/from16 v0, v30

    #@bc
    move-object/from16 v1, p0

    #@be
    move-object/from16 v2, v26

    #@c0
    move-wide/from16 v3, v24

    #@c2
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    #@c5
    move-object/from16 v0, v28

    #@c7
    move-object/from16 v1, v30

    #@c9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    .line 1414
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    #@ce
    goto :goto_0

    #@cf
    .line 1424
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    const-string/jumbo v30, "BackupManagerService"

    #@d2
    new-instance v31, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v32, "Package "

    #@da
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v31

    #@de
    move-object/from16 v0, v31

    #@e0
    move-object/from16 v1, v26

    #@e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v31

    #@e6
    .line 1425
    const-string/jumbo v32, " no longer eligible for full backup"

    #@e9
    .line 1424
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v31

    #@ed
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v31

    #@f1
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@f4
    goto :goto_1

    #@f5
    .line 1428
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    #@f6
    .line 1430
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    const-string/jumbo v30, "BackupManagerService"

    #@f9
    new-instance v31, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v32, "Package "

    #@101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v31

    #@105
    move-object/from16 v0, v31

    #@107
    move-object/from16 v1, v26

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v31

    #@10d
    .line 1431
    const-string/jumbo v32, " not installed; dropping from full backup"

    #@110
    .line 1430
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v31

    #@114
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v31

    #@118
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@11b
    goto :goto_1

    #@11c
    .line 1451
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "i":I
    .end local v24    # "lastBackup":J
    .end local v26    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v14

    #@11d
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    #@11f
    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    #@120
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@122
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    #@124
    .line 1452
    .end local v6    # "N":I
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :goto_2
    :try_start_8
    const-string/jumbo v30, "BackupManagerService"

    #@127
    const-string/jumbo v31, "Unable to read backup schedule"

    #@12a
    move-object/from16 v0, v30

    #@12c
    move-object/from16 v1, v31

    #@12e
    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@131
    .line 1453
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@135
    move-object/from16 v30, v0

    #@137
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@13a
    .line 1454
    const/16 v27, 0x0

    #@13c
    .line 1456
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13f
    .line 1457
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@142
    .line 1458
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@145
    .line 1462
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :cond_2
    :goto_3
    if-nez v27, :cond_7

    #@147
    .line 1465
    const/4 v12, 0x1

    #@148
    .line 1466
    new-instance v27, Ljava/util/ArrayList;

    #@14a
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@14d
    move-result v30

    #@14e
    move-object/from16 v0, v27

    #@150
    move/from16 v1, v30

    #@152
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@155
    .line 1467
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@158
    move-result-object v22

    #@159
    .local v22, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@15c
    move-result v30

    #@15d
    if-eqz v30, :cond_7

    #@15f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@162
    move-result-object v21

    #@163
    check-cast v21, Landroid/content/pm/PackageInfo;

    #@165
    .line 1468
    .local v21, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@168
    move-result v30

    #@169
    if-eqz v30, :cond_3

    #@16b
    move-object/from16 v0, v21

    #@16d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16f
    move-object/from16 v30, v0

    #@171
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@174
    move-result v30

    #@175
    if-eqz v30, :cond_3

    #@177
    .line 1469
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@179
    move-object/from16 v0, v21

    #@17b
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@17d
    move-object/from16 v31, v0

    #@17f
    const-wide/16 v32, 0x0

    #@181
    move-object/from16 v0, v30

    #@183
    move-object/from16 v1, p0

    #@185
    move-object/from16 v2, v31

    #@187
    move-wide/from16 v3, v32

    #@189
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    #@18c
    move-object/from16 v0, v27

    #@18e
    move-object/from16 v1, v30

    #@190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@193
    goto :goto_4

    #@194
    .line 1438
    .end local v21    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "info$iterator":Ljava/util/Iterator;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "i":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :cond_4
    :try_start_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@197
    move-result-object v8

    #@198
    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@19b
    move-result v30

    #@19c
    if-eqz v30, :cond_6

    #@19e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a1
    move-result-object v7

    #@1a2
    check-cast v7, Landroid/content/pm/PackageInfo;

    #@1a4
    .line 1439
    .local v7, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@1a7
    move-result v30

    #@1a8
    if-eqz v30, :cond_5

    #@1aa
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1ac
    move-object/from16 v30, v0

    #@1ae
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@1b1
    move-result v30

    #@1b2
    if-eqz v30, :cond_5

    #@1b4
    .line 1440
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1b6
    move-object/from16 v30, v0

    #@1b8
    move-object/from16 v0, v30

    #@1ba
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1bd
    move-result v30

    #@1be
    if-nez v30, :cond_5

    #@1c0
    .line 1444
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@1c2
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1c4
    move-object/from16 v31, v0

    #@1c6
    const-wide/16 v32, 0x0

    #@1c8
    move-object/from16 v0, v30

    #@1ca
    move-object/from16 v1, p0

    #@1cc
    move-object/from16 v2, v31

    #@1ce
    move-wide/from16 v3, v32

    #@1d0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    #@1d3
    move-object/from16 v0, v28

    #@1d5
    move-object/from16 v1, v30

    #@1d7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1da
    .line 1445
    const/4 v12, 0x1

    #@1db
    goto :goto_5

    #@1dc
    .line 1450
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1df
    .line 1456
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e2
    .line 1457
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e5
    .line 1458
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e8
    move-object/from16 v27, v28

    #@1ea
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_3

    #@1ec
    .line 1455
    .end local v6    # "N":I
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :catchall_0
    move-exception v30

    #@1ed
    .line 1456
    :goto_6
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f0
    .line 1457
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f3
    .line 1458
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f6
    .line 1455
    throw v30

    #@1f7
    .line 1474
    :cond_7
    if-eqz v12, :cond_8

    #@1f9
    .line 1475
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    #@1fc
    .line 1477
    :cond_8
    return-object v27

    #@1fd
    .line 1455
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catchall_1
    move-exception v30

    #@1fe
    move-object/from16 v16, v17

    #@200
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    #@201
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v30

    #@202
    move-object v10, v11

    #@203
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@205
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    #@206
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v30

    #@207
    move-object/from16 v19, v20

    #@209
    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    #@20a
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@20c
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_6

    #@20d
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :catchall_4
    move-exception v30

    #@20e
    move-object/from16 v19, v20

    #@210
    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    move-object v10, v11

    #@211
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@213
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    #@215
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_6

    #@216
    .line 1451
    .end local v6    # "N":I
    .end local v29    # "version":I
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catch_2
    move-exception v14

    #@217
    .restart local v14    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    #@219
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    #@21a
    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    #@21c
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    #@21e
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    #@21f
    .restart local v14    # "e":Ljava/lang/Exception;
    move-object v10, v11

    #@220
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@222
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    #@224
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v14

    #@225
    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    #@227
    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    #@228
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    #@22a
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    .line 1818
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1819
    :try_start_0
    const-string/jumbo v4, "BackupManagerService"

    #@6
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v7, "Registering transport "

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    .line 1820
    const-string/jumbo v7, "::"

    #@19
    .line 1819
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    .line 1820
    const-string/jumbo v7, " = "

    #@24
    .line 1819
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1821
    if-eqz p3, :cond_1

    #@35
    .line 1822
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v4, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 1823
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v4, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v5

    #@40
    .line 1836
    :try_start_1
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 1837
    .local v3, "transportName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@46
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@48
    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4b
    .line 1838
    .local v2, "stateDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@4e
    .line 1840
    new-instance v1, Ljava/io/File;

    #@50
    const-string/jumbo v4, "_need_init_"

    #@53
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@56
    .line 1841
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 1842
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@5e
    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5f
    .line 1843
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@61
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@64
    .line 1847
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@66
    .line 1848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@69
    move-result-wide v6

    #@6a
    .line 1846
    const-wide/32 v8, 0xea60

    #@6d
    .line 1848
    add-long/2addr v6, v8

    #@6e
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@70
    .line 1847
    const/4 v9, 0x0

    #@71
    invoke-virtual {v4, v9, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@75
    .line 1817
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@76
    .line 1825
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@78
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@7a
    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 1826
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@83
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    monitor-exit v5

    #@87
    .line 1828
    return-void

    #@88
    .line 1818
    :catchall_0
    move-exception v4

    #@89
    monitor-exit v5

    #@8a
    throw v4

    #@8b
    .line 1842
    .restart local v1    # "initSentinel":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    .restart local v3    # "transportName":Ljava/lang/String;
    :catchall_1
    move-exception v4

    #@8c
    :try_start_5
    monitor-exit v5

    #@8d
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@8e
    .line 1851
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@8f
    .line 1853
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BackupManagerService"

    #@92
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v6, "Unable to register transport as "

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 1854
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@ab
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 1855
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@b0
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    goto :goto_0
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2201
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2209
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9
    .line 2210
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@b
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 2200
    :cond_0
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3547
    new-instance v4, Ljava/io/FileInputStream;

    #@3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6
    move-result-object v6

    #@7
    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@a
    .line 3548
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    #@c
    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@f
    .line 3550
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    #@12
    new-array v0, v6, [B

    #@14
    .line 3552
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@17
    move-result v1

    #@18
    .local v1, "chunkTotal":I
    if-lez v1, :cond_2

    #@1a
    .line 3553
    :goto_0
    if-lez v1, :cond_0

    #@1c
    .line 3554
    array-length v6, v0

    #@1d
    if-le v1, v6, :cond_1

    #@1f
    array-length v5, v0

    #@20
    .line 3555
    .local v5, "toRead":I
    :goto_1
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    #@23
    move-result v3

    #@24
    .line 3556
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    #@27
    .line 3557
    sub-int/2addr v1, v3

    #@28
    goto :goto_0

    #@29
    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_1
    move v5, v1

    #@2a
    .line 3554
    goto :goto_1

    #@2b
    .line 3545
    :cond_2
    return-void
.end method

.method private static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    #@0
    .prologue
    .line 10548
    if-eqz p0, :cond_0

    #@2
    .line 10550
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 10547
    :cond_0
    :goto_0
    return-void

    #@6
    .line 10551
    :catch_0
    move-exception v0

    #@7
    .line 10553
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@a
    const-string/jumbo v2, "Backup observer went away: backupFinished"

    #@d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method private static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 10536
    if-eqz p0, :cond_0

    #@2
    .line 10538
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 10535
    :cond_0
    :goto_0
    return-void

    #@6
    .line 10539
    :catch_0
    move-exception v0

    #@7
    .line 10541
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@a
    const-string/jumbo v2, "Backup observer went away: onResult"

    #@d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method private static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    #@0
    .prologue
    .line 10523
    if-eqz p0, :cond_0

    #@2
    .line 10525
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 10522
    :cond_0
    :goto_0
    return-void

    #@6
    .line 10526
    :catch_0
    move-exception v0

    #@7
    .line 10528
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@a
    const-string/jumbo v2, "Backup observer went away: onUpdate"

    #@d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    goto :goto_0
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 7822
    if-nez p1, :cond_0

    #@4
    .line 7823
    return v8

    #@5
    .line 7831
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v6, v6, 0x1

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 7833
    return v9

    #@e
    .line 7838
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@10
    .line 7841
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_2

    #@12
    array-length v6, p0

    #@13
    if-nez v6, :cond_4

    #@15
    .line 7842
    :cond_2
    if-eqz v0, :cond_3

    #@17
    array-length v6, v0

    #@18
    if-nez v6, :cond_4

    #@1a
    .line 7843
    :cond_3
    return v9

    #@1b
    .line 7845
    :cond_4
    if-eqz p0, :cond_5

    #@1d
    if-nez v0, :cond_6

    #@1f
    .line 7846
    :cond_5
    return v8

    #@20
    .line 7852
    :cond_6
    array-length v5, p0

    #@21
    .line 7853
    .local v5, "nStored":I
    array-length v4, v0

    #@22
    .line 7855
    .local v4, "nDevice":I
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_a

    #@25
    .line 7856
    const/4 v3, 0x0

    #@26
    .line 7857
    .local v3, "match":Z
    const/4 v2, 0x0

    #@27
    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_7

    #@29
    .line 7858
    aget-object v6, p0, v1

    #@2b
    aget-object v7, v0, v2

    #@2d
    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_8

    #@33
    .line 7859
    const/4 v3, 0x1

    #@34
    .line 7863
    :cond_7
    if-nez v3, :cond_9

    #@36
    .line 7864
    return v8

    #@37
    .line 7857
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 7855
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 7867
    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_a
    return v9
.end method

.method private static writeBackupEnableState(ZI)V
    .locals 10
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 9588
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v7

    #@6
    const-string/jumbo v8, "backup"

    #@9
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 9589
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@e
    const-string/jumbo v7, "backup_enabled"

    #@11
    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 9590
    .local v2, "enableFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    #@16
    const-string/jumbo v7, "backup_enabled-stage"

    #@19
    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    .line 9591
    .local v6, "stage":Ljava/io/File;
    const/4 v3, 0x0

    #@1d
    .line 9593
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@1f
    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 9594
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    #@24
    const/4 v7, 0x1

    #@25
    :goto_0
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    #@28
    .line 9595
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    #@2b
    .line 9596
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    .line 9610
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@31
    move-object v3, v4

    #@32
    .line 9587
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    #@33
    .line 9594
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v7, 0x0

    #@34
    goto :goto_0

    #@35
    .line 9598
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    #@36
    .line 9601
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v7, "BackupManagerService"

    #@39
    new-instance v8, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v9, "Unable to record backup enable state; reverting to disabled: "

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    .line 9602
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    .line 9601
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 9604
    sget-object v7, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@56
    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@58
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5b
    move-result-object v5

    #@5c
    .line 9606
    .local v5, "r":Landroid/content/ContentResolver;
    const-string/jumbo v7, "backup_enabled"

    #@5f
    const/4 v8, 0x0

    #@60
    .line 9605
    invoke-static {v5, v7, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@63
    .line 9607
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@66
    .line 9608
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 9610
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6c
    goto :goto_1

    #@6d
    .line 9609
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v7

    #@6e
    .line 9610
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@71
    .line 9609
    throw v7

    #@72
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    #@73
    move-object v3, v4

    #@74
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    #@75
    .line 9598
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@76
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@77
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    #@0
    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 1518
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@9
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1516
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9158
    const/4 v1, 0x0

    #@1
    .line 9160
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@3
    if-nez v3, :cond_0

    #@5
    const-string/jumbo v3, "journal"

    #@8
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-static {v3, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@11
    .line 9161
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    #@13
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@15
    const-string/jumbo v4, "rws"

    #@18
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 9162
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    #@1e
    move-result-wide v4

    #@1f
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@22
    .line 9163
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 9168
    if-eqz v2, :cond_1

    #@27
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2a
    :cond_1
    :goto_0
    move-object v1, v2

    #@2b
    .line 9157
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    #@2c
    .line 9168
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@2e
    .line 9164
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    #@2f
    .line 9165
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Can\'t write "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, " to backup journal"

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 9166
    const/4 v3, 0x0

    #@51
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    .line 9168
    if-eqz v1, :cond_2

    #@55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@58
    goto :goto_1

    #@59
    :catch_2
    move-exception v0

    #@5a
    goto :goto_1

    #@5b
    .line 9167
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@5c
    .line 9168
    :goto_3
    if-eqz v1, :cond_3

    #@5e
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@61
    .line 9167
    :cond_3
    :goto_4
    throw v3

    #@62
    .line 9168
    :catch_3
    move-exception v0

    #@63
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@64
    .line 9167
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    #@65
    move-object v1, v2

    #@66
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_3

    #@67
    .line 9164
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    #@68
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@69
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    #@0
    .prologue
    .line 9517
    const-string/jumbo v5, "BackupManagerService"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "acknowledgeFullBackupOrRestore : token="

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    .line 9518
    const-string/jumbo v7, " allow="

    #@16
    .line 9517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 9522
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@27
    const-string/jumbo v6, "android.permission.BACKUP"

    #@2a
    const-string/jumbo v7, "acknowledgeFullBackupOrRestore"

    #@2d
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 9524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v2

    #@34
    .line 9528
    .local v2, "oldId":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@36
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@37
    .line 9529
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    #@3f
    .line 9530
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v1, :cond_2

    #@41
    .line 9531
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@43
    const/16 v7, 0x9

    #@45
    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@48
    .line 9532
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    #@4d
    .line 9534
    if-eqz p2, :cond_1

    #@4f
    .line 9535
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    #@51
    if-eqz v5, :cond_0

    #@53
    .line 9536
    const/4 v4, 0x2

    #@54
    .line 9539
    .local v4, "verb":I
    :goto_0
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@56
    .line 9540
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    #@58
    .line 9542
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    #@5a
    .line 9545
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@5c
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5f
    .line 9546
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@61
    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@64
    move-result-object v0

    #@65
    .line 9547
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@67
    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6b
    .line 9558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6e
    .line 9516
    return-void

    #@6f
    .line 9537
    :cond_0
    const/16 v4, 0xa

    #@71
    .restart local v4    # "verb":I
    goto :goto_0

    #@72
    .line 9549
    .end local v4    # "verb":I
    :cond_1
    :try_start_3
    const-string/jumbo v5, "BackupManagerService"

    #@75
    const-string/jumbo v7, "User rejected full backup/restore operation"

    #@78
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 9551
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 9528
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_0
    move-exception v5

    #@80
    :try_start_4
    monitor-exit v6

    #@81
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@82
    .line 9557
    :catchall_1
    move-exception v5

    #@83
    .line 9558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 9557
    throw v5

    #@87
    .line 9554
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_2
    :try_start_5
    const-string/jumbo v5, "BackupManagerService"

    #@8a
    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    #@8d
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@90
    goto :goto_1
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1047
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1045
    return-void

    #@a
    .line 1047
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2141
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 2142
    .local v1, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    #@7
    .line 2144
    const/4 v2, 0x0

    #@8
    array-length v3, p1

    #@9
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    aget-object v0, p1, v2

    #@d
    .line 2145
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    #@10
    .line 2144
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2149
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    #@16
    .line 2139
    :cond_1
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 9851
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 9852
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    const/16 v3, 0x3e8

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 9853
    const-string/jumbo v1, "BackupManagerService"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "agentConnected pkg="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, " agent="

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 9854
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    #@33
    move-result-object v0

    #@34
    .line 9855
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@36
    .line 9856
    const/4 v1, 0x0

    #@37
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@39
    .line 9861
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit v2

    #@3f
    .line 9850
    return-void

    #@40
    .line 9858
    :cond_0
    :try_start_1
    const-string/jumbo v1, "BackupManagerService"

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "Non-system process uid="

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@52
    move-result v4

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 9859
    const-string/jumbo v4, " claiming agent connected"

    #@5a
    .line 9858
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    goto :goto_0

    #@66
    .line 9851
    :catchall_0
    move-exception v1

    #@67
    monitor-exit v2

    #@68
    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9870
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 9871
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    const/16 v2, 0x3e8

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 9872
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@e
    .line 9873
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@11
    .line 9878
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 9868
    return-void

    #@18
    .line 9875
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Non-system process uid="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 9876
    const-string/jumbo v3, " claiming agent disconnected"

    #@32
    .line 9875
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 9870
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2217
    const/16 v4, 0x40

    #@2
    .line 2218
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 2219
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 2220
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@e
    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_2

    #@10
    .line 2221
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/content/pm/PackageInfo;

    #@16
    .line 2223
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    .line 2224
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a
    const v8, 0x8000

    #@1d
    and-int/2addr v7, v8

    #@1e
    if-eqz v7, :cond_0

    #@20
    .line 2225
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@22
    if-nez v7, :cond_1

    #@24
    .line 2227
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    .line 2220
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2226
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c
    const/high16 v8, 0x4000000

    #@2e
    and-int/2addr v7, v8

    #@2f
    if-nez v7, :cond_0

    #@31
    .line 2233
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@33
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@35
    .line 2234
    const/16 v9, 0x400

    #@37
    .line 2233
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@3a
    move-result-object v2

    #@3b
    .line 2235
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@3f
    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_1

    #@42
    .line 2237
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    #@43
    .line 2238
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@46
    goto :goto_1

    #@47
    .line 2241
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method public backupNow()V
    .locals 4

    #@0
    .prologue
    .line 9261
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BACKUP"

    #@5
    const-string/jumbo v3, "backupNow"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9263
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@d
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 9264
    const-string/jumbo v1, "BackupManagerService"

    #@16
    const-string/jumbo v2, "Not running backup while in battery save mode"

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 9265
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@1e
    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@21
    .line 9260
    :goto_0
    return-void

    #@22
    .line 9267
    :cond_0
    const-string/jumbo v1, "BackupManagerService"

    #@25
    const-string/jumbo v2, "Scheduling immediate backup pass"

    #@28
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 9268
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 9271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    #@30
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 9278
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@35
    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v2

    #@39
    goto :goto_0

    #@3a
    .line 9272
    :catch_0
    move-exception v0

    #@3b
    .line 9274
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v1, "BackupManagerService"

    #@3e
    const-string/jumbo v3, "run-backup intent cancelled!"

    #@41
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    goto :goto_1

    #@45
    .line 9268
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 30
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    #@0
    .prologue
    .line 5005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v22

    #@4
    .line 5006
    .local v22, "now":J
    const/4 v15, 0x0

    #@5
    .line 5007
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-wide/32 v18, 0x5265c00

    #@8
    .line 5009
    .local v18, "latency":J
    move-object/from16 v0, p0

    #@a
    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    move-object/from16 v0, p0

    #@10
    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 5022
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@18
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 5023
    const-string/jumbo v2, "BackupManagerService"

    #@21
    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    #@24
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 5024
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2b
    const-wide/32 v6, 0xdbba00

    #@2e
    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    #@31
    .line 5025
    const/4 v2, 0x0

    #@32
    return v2

    #@33
    .line 5017
    :cond_0
    const/4 v2, 0x0

    #@34
    return v2

    #@35
    .line 5029
    :cond_1
    const-string/jumbo v2, "BackupManagerService"

    #@38
    const-string/jumbo v3, "Beginning scheduled full backup operation"

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 5033
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@42
    move-object/from16 v27, v0

    #@44
    monitor-enter v27

    #@45
    .line 5034
    :try_start_0
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 5035
    const-string/jumbo v2, "BackupManagerService"

    #@4e
    const-string/jumbo v3, "Backup triggered but one already/still running!"

    #@51
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 5036
    const/4 v2, 0x0

    #@55
    monitor-exit v27

    #@56
    return v2

    #@57
    .line 5042
    :cond_2
    const/16 v25, 0x1

    #@59
    .line 5048
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    #@5b
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@60
    move-result v2

    #@61
    if-nez v2, :cond_4

    #@63
    .line 5051
    const-string/jumbo v2, "BackupManagerService"

    #@66
    const-string/jumbo v3, "Backup queue empty; doing nothing"

    #@69
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 5053
    const/16 v25, 0x0

    #@6e
    .line 5131
    :cond_3
    :goto_1
    if-nez v25, :cond_c

    #@70
    .line 5133
    const-string/jumbo v2, "BackupManagerService"

    #@73
    new-instance v3, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    move-wide/from16 v0, v18

    #@81
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 5135
    move-wide/from16 v12, v18

    #@8e
    .line 5136
    .local v12, "deferTime":J
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@92
    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    #@94
    move-object/from16 v0, p0

    #@96
    invoke-direct {v3, v0, v12, v13}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    #@99
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9c
    .line 5141
    const/4 v2, 0x0

    #@9d
    monitor-exit v27

    #@9e
    return v2

    #@9f
    .line 5057
    .end local v12    # "deferTime":J
    :cond_4
    const/16 v16, 0x0

    #@a1
    .line 5059
    .local v16, "headBusy":Z
    :try_start_2
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@aa
    move-result-object v2

    #@ab
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    #@b0
    move-result v2

    #@b1
    if-nez v2, :cond_5

    #@b3
    .line 5063
    const/16 v25, 0x0

    #@b5
    .line 5067
    .local v25, "runBackup":Z
    const-wide/32 v18, 0xdbba00

    #@b8
    .line 5070
    .end local v25    # "runBackup":Z
    :cond_5
    if-eqz v25, :cond_8

    #@ba
    .line 5071
    move-object/from16 v0, p0

    #@bc
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@be
    const/4 v3, 0x0

    #@bf
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c2
    move-result-object v2

    #@c3
    move-object v0, v2

    #@c4
    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@c6
    move-object v15, v0

    #@c7
    .line 5072
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c9
    sub-long v28, v22, v2

    #@cb
    .line 5073
    .local v28, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    #@ce
    cmp-long v2, v28, v2

    #@d0
    if-ltz v2, :cond_6

    #@d2
    const/16 v25, 0x1

    #@d4
    .line 5074
    .local v25, "runBackup":Z
    :goto_2
    if-nez v25, :cond_7

    #@d6
    .line 5080
    const-wide/32 v2, 0x5265c00

    #@d9
    sub-long v18, v2, v28

    #@db
    .line 5081
    goto :goto_1

    #@dc
    .line 5073
    .end local v25    # "runBackup":Z
    :cond_6
    const/16 v25, 0x0

    #@de
    goto :goto_2

    #@df
    .line 5085
    .restart local v25    # "runBackup":Z
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    #@e1
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@e3
    iget-object v3, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@e5
    const/4 v4, 0x0

    #@e6
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@e9
    move-result-object v11

    #@ea
    .line 5086
    .local v11, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@ed
    move-result v2

    #@ee
    if-nez v2, :cond_9

    #@f0
    .line 5094
    move-object/from16 v0, p0

    #@f2
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@f4
    const/4 v3, 0x0

    #@f5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@f8
    .line 5095
    const/16 v16, 0x1

    #@fa
    .line 5129
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v16    # "headBusy":Z
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_8
    :goto_3
    if-eqz v16, :cond_3

    #@fc
    goto/16 :goto_0

    #@fe
    .line 5099
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .restart local v16    # "headBusy":Z
    .restart local v25    # "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :cond_9
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@100
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@102
    move/from16 v24, v0

    #@104
    .line 5100
    .local v24, "privFlags":I
    move/from16 v0, v24

    #@106
    and-int/lit16 v2, v0, 0x1000

    #@108
    if-nez v2, :cond_a

    #@10a
    .line 5101
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@10e
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@110
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@112
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    #@115
    move-result v16

    #@116
    .line 5103
    .local v16, "headBusy":Z
    :goto_4
    if-eqz v16, :cond_8

    #@118
    .line 5104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11b
    move-result-wide v2

    #@11c
    .line 5105
    const-wide/32 v6, 0x36ee80

    #@11f
    .line 5104
    add-long/2addr v2, v6

    #@120
    .line 5106
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@124
    const v6, 0x6ddd00

    #@127
    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    #@12a
    move-result v4

    #@12b
    int-to-long v6, v4

    #@12c
    .line 5104
    add-long v20, v2, v6

    #@12e
    .line 5108
    .local v20, "nextEligible":J
    new-instance v26, Ljava/text/SimpleDateFormat;

    #@130
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    #@133
    move-object/from16 v0, v26

    #@135
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@138
    .line 5109
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "BackupManagerService"

    #@13b
    new-instance v3, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v4, "Full backup time but "

    #@143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v3

    #@147
    iget-object v4, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v3

    #@14d
    .line 5110
    const-string/jumbo v4, " is busy; deferring to "

    #@150
    .line 5109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v3

    #@154
    .line 5111
    new-instance v4, Ljava/util/Date;

    #@156
    move-wide/from16 v0, v20

    #@158
    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@15b
    move-object/from16 v0, v26

    #@15d
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@160
    move-result-object v4

    #@161
    .line 5109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v3

    #@165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v3

    #@169
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16c
    .line 5116
    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@16e
    .line 5117
    const-wide/32 v6, 0x5265c00

    #@171
    sub-long v6, v20, v6

    #@173
    .line 5116
    move-object/from16 v0, p0

    #@175
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@178
    goto :goto_3

    #@179
    .line 5119
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v20    # "nextEligible":J
    .end local v24    # "privFlags":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v17

    #@17a
    .line 5124
    .local v17, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    #@17c
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@17e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@181
    move-result v2

    #@182
    const/4 v3, 0x1

    #@183
    if-le v2, v3, :cond_b

    #@185
    const/16 v25, 0x1

    #@187
    .local v25, "runBackup":Z
    goto/16 :goto_3

    #@189
    .line 5100
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v16, "headBusy":Z
    .restart local v24    # "privFlags":I
    .local v25, "runBackup":Z
    :cond_a
    const/16 v16, 0x0

    #@18b
    goto :goto_4

    #@18c
    .line 5124
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v24    # "privFlags":I
    .restart local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    const/16 v25, 0x0

    #@18e
    .local v25, "runBackup":Z
    goto/16 :goto_3

    #@190
    .line 5145
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_c
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@194
    const/4 v3, 0x0

    #@195
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@198
    .line 5146
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    #@19a
    const/4 v2, 0x1

    #@19b
    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@19e
    .line 5147
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    #@19f
    new-array v5, v2, [Ljava/lang/String;

    #@1a1
    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@1a3
    const/4 v3, 0x0

    #@1a4
    aput-object v2, v5, v3

    #@1a6
    .line 5148
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1a8
    const/4 v4, 0x0

    #@1a9
    const/4 v6, 0x1

    #@1aa
    .line 5149
    const/4 v9, 0x0

    #@1ab
    const/4 v10, 0x0

    #@1ac
    move-object/from16 v3, p0

    #@1ae
    move-object/from16 v7, p1

    #@1b0
    .line 5148
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1b7
    .line 5151
    move-object/from16 v0, p0

    #@1b9
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1bb
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@1be
    .line 5152
    new-instance v2, Ljava/lang/Thread;

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1c4
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@1c7
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1ca
    monitor-exit v27

    #@1cb
    .line 5155
    const/4 v2, 0x1

    #@1cc
    return v2

    #@1cd
    .line 5033
    .end local v5    # "pkg":[Ljava/lang/String;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v2

    #@1ce
    monitor-exit v27

    #@1cf
    throw v2

    #@1d0
    .line 5125
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .local v25, "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :catch_1
    move-exception v14

    #@1d1
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9952
    const-string/jumbo v3, "BackupManagerService"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "beginRestoreSession: pkg="

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    .line 9953
    const-string/jumbo v5, " transport="

    #@17
    .line 9952
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 9955
    const/4 v1, 0x1

    #@27
    .line 9956
    .local v1, "needPermission":Z
    if-nez p2, :cond_0

    #@29
    .line 9957
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@2b
    .line 9959
    if-eqz p1, :cond_0

    #@2d
    .line 9960
    const/4 v0, 0x0

    #@2e
    .line 9962
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@30
    const/4 v4, 0x0

    #@31
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v0

    #@35
    .line 9968
    .local v0, "app":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@37
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3c
    move-result v4

    #@3d
    if-ne v3, v4, :cond_0

    #@3f
    .line 9972
    const/4 v1, 0x0

    #@40
    .line 9977
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    #@42
    .line 9978
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@44
    const-string/jumbo v4, "android.permission.BACKUP"

    #@47
    .line 9979
    const-string/jumbo v5, "beginRestoreSession"

    #@4a
    .line 9978
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 9984
    :goto_0
    monitor-enter p0

    #@4e
    .line 9985
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@50
    if-eqz v3, :cond_2

    #@52
    .line 9986
    const-string/jumbo v3, "BackupManagerService"

    #@55
    const-string/jumbo v4, "Restore session requested but one already active"

    #@58
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    .line 9987
    return-object v6

    #@5d
    .line 9963
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@5e
    .line 9964
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BackupManagerService"

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 9965
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7a
    new-instance v4, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v5, "Package "

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, " not found"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@98
    throw v3

    #@99
    .line 9981
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    #@9c
    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    #@9f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    goto :goto_0

    #@a3
    .line 9989
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@a5
    if-eqz v3, :cond_3

    #@a7
    .line 9990
    const-string/jumbo v3, "BackupManagerService"

    #@aa
    const-string/jumbo v4, "Restore session requested but currently running backups"

    #@ad
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b0
    monitor-exit p0

    #@b1
    .line 9991
    return-object v6

    #@b2
    .line 9993
    :cond_3
    :try_start_3
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@b4
    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@b7
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@b9
    .line 9994
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@bb
    const/16 v4, 0x8

    #@bd
    const-wide/32 v6, 0xea60

    #@c0
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c3
    monitor-exit p0

    #@c4
    .line 9996
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@c6
    return-object v3

    #@c7
    .line 9984
    :catchall_0
    move-exception v3

    #@c8
    monitor-exit p0

    #@c9
    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 13
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2367
    const/4 v0, 0x0

    #@2
    .line 2368
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 2369
    const/4 v3, 0x1

    #@6
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@8
    .line 2370
    const/4 v3, 0x0

    #@9
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 2372
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@d
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@f
    .line 2373
    const/4 v8, 0x0

    #@10
    .line 2372
    invoke-interface {v3, v7, p2, v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 2374
    const-string/jumbo v3, "BackupManagerService"

    #@19
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v8, "awaiting agent for "

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 2378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@33
    move-result-wide v8

    #@34
    const-wide/16 v10, 0x2710

    #@36
    add-long v4, v8, v10

    #@38
    .line 2379
    .local v4, "timeoutMark":J
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@3a
    if-eqz v3, :cond_0

    #@3c
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@3e
    if-nez v3, :cond_0

    #@40
    .line 2380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result-wide v8

    #@44
    cmp-long v3, v8, v4

    #@46
    if-gez v3, :cond_0

    #@48
    .line 2382
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@4a
    const-wide/16 v8, 0x1388

    #@4c
    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 2383
    :catch_0
    move-exception v2

    #@51
    .line 2385
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    #@54
    new-instance v7, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v8, "Interrupted: "

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 2386
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@6d
    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@70
    monitor-exit v6

    #@71
    .line 2387
    return-object v12

    #@72
    .line 2392
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@74
    if-eqz v3, :cond_1

    #@76
    .line 2393
    const-string/jumbo v3, "BackupManagerService"

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "Timeout waiting for agent "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 2394
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@92
    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@95
    monitor-exit v6

    #@96
    .line 2395
    return-object v12

    #@97
    .line 2397
    :cond_1
    :try_start_5
    const-string/jumbo v3, "BackupManagerService"

    #@9a
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "got agent "

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 2398
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b5
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    .end local v4    # "timeoutMark":J
    :cond_2
    :goto_1
    monitor-exit v6

    #@b6
    .line 2404
    return-object v0

    #@b7
    .line 2368
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :catchall_0
    move-exception v3

    #@b8
    monitor-exit v6

    #@b9
    throw v3

    #@ba
    .line 2400
    :catch_1
    move-exception v1

    #@bb
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    .line 2106
    new-instance v2, Landroid/content/ComponentName;

    #@2
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@6
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2107
    .local v2, "svcName":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 2108
    const-string/jumbo v3, "BackupManagerService"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Proposed transport "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, " not whitelisted; ignoring"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 2109
    const/4 v3, 0x0

    #@33
    return v3

    #@34
    .line 2115
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@36
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@38
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3b
    .line 2116
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3e
    .line 2119
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@40
    monitor-enter v4

    #@41
    .line 2120
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@43
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@45
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@4b
    .line 2121
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_1

    #@4d
    .line 2122
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@4f
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    #@52
    .line 2123
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@54
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@56
    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    :goto_0
    monitor-exit v4

    #@5a
    .line 2132
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@5c
    .line 2134
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@5e
    .line 2133
    const/4 v5, 0x1

    #@5f
    .line 2132
    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@62
    move-result v3

    #@63
    return v3

    #@64
    .line 2128
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@66
    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 2119
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_0
    move-exception v3

    #@6b
    monitor-exit v4

    #@6c
    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2074
    new-instance v5, Landroid/content/Intent;

    #@3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@5
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@8
    .line 2075
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@a
    .line 2074
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@d
    move-result-object v4

    #@e
    .line 2077
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@10
    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    .line 2079
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    #@16
    .line 2080
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v0

    #@1a
    .line 2081
    .local v0, "N":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@1d
    .line 2082
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@23
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@25
    .line 2083
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@28
    .line 2081
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2073
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :cond_0
    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2411
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    const/4 v8, 0x0

    #@3
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@6
    move-result-object v3

    #@7
    .line 2412
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    and-int/lit8 v5, v5, 0x40

    #@d
    if-nez v5, :cond_0

    #@f
    .line 2415
    return-void

    #@10
    .line 2417
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@11
    .line 2418
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BackupManagerService"

    #@14
    new-instance v8, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v9, "Tried to clear data for "

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    const-string/jumbo v9, " but not found"

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 2419
    return-void

    #@33
    .line 2422
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    #@35
    invoke-direct {v4, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@38
    .line 2424
    .local v4, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@3a
    monitor-enter v8

    #@3b
    .line 2425
    const/4 v5, 0x1

    #@3c
    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 2427
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@40
    const/4 v9, 0x0

    #@41
    invoke-interface {v5, p1, v4, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    .line 2433
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@47
    move-result-wide v10

    #@48
    const-wide/16 v12, 0x2710

    #@4a
    add-long v6, v10, v12

    #@4c
    .line 2434
    .local v6, "timeoutMark":J
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    #@4e
    if-eqz v5, :cond_1

    #@50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    move-result-wide v10

    #@54
    cmp-long v5, v10, v6

    #@56
    if-gez v5, :cond_1

    #@58
    .line 2436
    :try_start_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@5a
    const-wide/16 v10, 0x1388

    #@5c
    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 2437
    :catch_1
    move-exception v2

    #@61
    .line 2439
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    #@62
    :try_start_5
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@64
    goto :goto_1

    #@65
    .line 2424
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "timeoutMark":J
    :catchall_0
    move-exception v5

    #@66
    monitor-exit v8

    #@67
    throw v5

    #@68
    .restart local v6    # "timeoutMark":J
    :cond_1
    monitor-exit v8

    #@69
    .line 2408
    return-void

    #@6a
    .line 2428
    .end local v6    # "timeoutMark":J
    :catch_2
    move-exception v1

    #@6b
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9205
    const-string/jumbo v14, "BackupManagerService"

    #@3
    new-instance v15, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v16, "clearBackupData() of "

    #@b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v15

    #@f
    move-object/from16 v0, p2

    #@11
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v15

    #@15
    const-string/jumbo v16, " on "

    #@18
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v15

    #@1c
    move-object/from16 v0, p1

    #@1e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v15

    #@22
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v15

    #@26
    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 9208
    :try_start_0
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2d
    const/16 v15, 0x40

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v8

    #@35
    .line 9217
    .local v8, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@39
    const-string/jumbo v15, "android.permission.BACKUP"

    #@3c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3f
    move-result v16

    #@40
    .line 9218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@43
    move-result v17

    #@44
    .line 9217
    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@47
    move-result v14

    #@48
    .line 9218
    const/4 v15, -0x1

    #@49
    .line 9217
    if-ne v14, v15, :cond_1

    #@4b
    .line 9219
    move-object/from16 v0, p0

    #@4d
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@4f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@52
    move-result v15

    #@53
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v5

    #@57
    check-cast v5, Ljava/util/HashSet;

    #@59
    .line 9235
    .local v5, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v14

    #@5f
    if-eqz v14, :cond_4

    #@61
    .line 9238
    move-object/from16 v0, p0

    #@63
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@65
    const/16 v15, 0xc

    #@67
    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@6a
    .line 9239
    move-object/from16 v0, p0

    #@6c
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@6e
    monitor-enter v15

    #@6f
    .line 9240
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@72
    move-result-object v13

    #@73
    .line 9241
    .local v13, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v13, :cond_3

    #@75
    .line 9243
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@79
    .line 9244
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    #@7b
    move-object/from16 v0, v16

    #@7d
    move-object/from16 v1, p0

    #@7f
    move-object/from16 v2, p1

    #@81
    move-object/from16 v3, p2

    #@83
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 9243
    const/16 v17, 0xc

    #@88
    move/from16 v0, v17

    #@8a
    move-object/from16 v1, v16

    #@8c
    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8f
    move-result-object v9

    #@90
    .line 9245
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@92
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@94
    const-wide/32 v16, 0x36ee80

    #@97
    move-wide/from16 v0, v16

    #@99
    invoke-virtual {v14, v9, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9c
    monitor-exit v15

    #@9d
    .line 9246
    return-void

    #@9e
    .line 9209
    .end local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v6

    #@9f
    .line 9210
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "BackupManagerService"

    #@a2
    new-instance v15, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v16, "No such package \'"

    #@aa
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v15

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v15

    #@b4
    const-string/jumbo v16, "\' - not clearing backup data"

    #@b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v15

    #@bb
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v15

    #@bf
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 9211
    return-void

    #@c3
    .line 9224
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    #@c5
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@c8
    .line 9225
    .restart local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@ca
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@cc
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@cf
    move-result v4

    #@d0
    .line 9226
    .local v4, "N":I
    const/4 v7, 0x0

    #@d1
    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    #@d3
    .line 9227
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@d7
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@da
    move-result-object v12

    #@db
    check-cast v12, Ljava/util/HashSet;

    #@dd
    .line 9228
    .local v12, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    #@df
    .line 9229
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@e2
    .line 9226
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@e4
    goto :goto_0

    #@e5
    .line 9248
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v12    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e8
    move-result-wide v10

    #@e9
    .line 9249
    .local v10, "oldId":J
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@ed
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@f0
    .line 9250
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@f4
    .line 9251
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearParams;

    #@f6
    move-object/from16 v0, v16

    #@f8
    move-object/from16 v1, p0

    #@fa
    invoke-direct {v0, v1, v13, v8}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    #@fd
    .line 9250
    const/16 v17, 0x4

    #@ff
    move/from16 v0, v17

    #@101
    move-object/from16 v1, v16

    #@103
    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@106
    move-result-object v9

    #@107
    .line 9252
    .restart local v9    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@109
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@10b
    invoke-virtual {v14, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@10e
    .line 9253
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@111
    monitor-exit v15

    #@112
    .line 9204
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "oldId":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    return-void

    #@113
    .line 9239
    :catchall_0
    move-exception v14

    #@114
    monitor-exit v15

    #@115
    throw v14
.end method

.method clearBackupTrace()V
    .locals 2

    #@0
    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1053
    return-void

    #@a
    .line 1055
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .locals 2
    .param p1, "currentSession"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@0
    .prologue
    .line 10000
    monitor-enter p0

    #@1
    .line 10001
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 10002
    const-string/jumbo v0, "BackupManagerService"

    #@8
    const-string/jumbo v1, "ending non-current restore session"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :goto_0
    monitor-exit p0

    #@f
    .line 9999
    return-void

    #@10
    .line 10004
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    #@13
    const-string/jumbo v1, "Clearing restore session and halting timeout"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 10005
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@1c
    .line 10006
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1e
    const/16 v1, 0x8

    #@20
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 10000
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9175
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 9176
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    #@6
    .line 9186
    return-void

    #@7
    .line 9189
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    #@a
    move-result-object v1

    #@b
    .line 9190
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    #@d
    .line 9191
    const-string/jumbo v2, "BackupManagerService"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\'"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 9192
    const-string/jumbo v4, " uid="

    #@2a
    .line 9191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 9192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v4

    #@32
    .line 9191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 9193
    return-void

    #@3e
    .line 9196
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@40
    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    #@42
    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    #@45
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    #@48
    .line 9174
    return-void
.end method

.method dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4927
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 4928
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 4929
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@12
    .line 4930
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 4931
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 4928
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@21
    goto :goto_0

    #@22
    .line 4926
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_1
    return-void
.end method

.method deviceIsEncrypted()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 3968
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    #@4
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getEncryptionState()I

    #@7
    move-result v3

    #@8
    if-eq v3, v1, :cond_1

    #@a
    .line 3970
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    #@c
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    if-eq v3, v1, :cond_0

    #@12
    .line 3968
    :goto_0
    return v1

    #@13
    :cond_0
    move v1, v2

    #@14
    .line 3970
    goto :goto_0

    #@15
    :cond_1
    move v1, v2

    #@16
    .line 3968
    goto :goto_0

    #@17
    .line 3972
    :catch_0
    move-exception v0

    #@18
    .line 3975
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Unable to communicate with mount service: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v4

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
    .line 3976
    return v1
.end method

.method deviceIsProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9284
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 9285
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    #@a
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 10394
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    const-string/jumbo v5, "BackupManagerService"

    #@8
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 10396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 10398
    .local v2, "identityToken":J
    if-eqz p3, :cond_2

    #@11
    .line 10399
    const/4 v1, 0x0

    #@12
    :try_start_0
    array-length v4, p3

    #@13
    :goto_0
    if-ge v1, v4, :cond_2

    #@15
    aget-object v0, p3, v1

    #@17
    .line 10400
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    #@1a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 10401
    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    #@23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 10402
    const-string/jumbo v1, "  -h       : this help text"

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 10403
    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 10413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 10404
    return-void

    #@36
    .line 10405
    :cond_0
    :try_start_1
    const-string/jumbo v5, "agents"

    #@39
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 10406
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 10413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 10407
    return-void

    #@46
    .line 10399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 10411
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 10413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 10393
    return-void

    #@50
    .line 10412
    :catchall_0
    move-exception v1

    #@51
    .line 10413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 10412
    throw v1
.end method

.method endFullBackup()V
    .locals 3

    #@0
    .prologue
    .line 5161
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 5162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5164
    const-string/jumbo v0, "BackupManagerService"

    #@a
    const-string/jumbo v2, "Telling running backup to stop"

    #@d
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 5166
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->setRunning(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 5160
    return-void

    #@18
    .line 5161
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    #@0
    .prologue
    .line 4940
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@2
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    #@5
    .line 4941
    .local v1, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 4945
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    #@b
    .line 4951
    const/4 v2, -0x1

    #@c
    .line 4952
    .local v2, "which":I
    const-wide/16 v6, 0x0

    #@e
    cmp-long v3, p2, v6

    #@10
    if-lez v3, :cond_0

    #@12
    .line 4953
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v2, v3, -0x1

    #@1a
    :goto_0
    if-ltz v2, :cond_0

    #@1c
    .line 4954
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@24
    .line 4955
    .local v0, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@26
    cmp-long v3, v6, p2

    #@28
    if-gtz v3, :cond_2

    #@2a
    .line 4956
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@2c
    add-int/lit8 v5, v2, 0x1

    #@2e
    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@31
    .line 4961
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_0
    if-gez v2, :cond_1

    #@33
    .line 4963
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@35
    const/4 v5, 0x0

    #@36
    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :cond_1
    monitor-exit v4

    #@3a
    .line 4966
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    #@3d
    .line 4939
    return-void

    #@3e
    .line 4953
    .restart local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@40
    goto :goto_0

    #@41
    .line 4941
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v2    # "which":I
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "pkgList"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 9297
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "android.permission.BACKUP"

    #@7
    const-string/jumbo v5, "fullBackup"

    #@a
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 9299
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v13

    #@11
    .line 9301
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_0

    #@13
    .line 9302
    new-instance v3, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v4, "Backup supported only for the device owner"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 9306
    :cond_0
    if-nez p6, :cond_2

    #@1e
    .line 9307
    if-nez p4, :cond_2

    #@20
    .line 9311
    if-eqz p9, :cond_1

    #@22
    move-object/from16 v0, p9

    #@24
    array-length v3, v0

    #@25
    if-nez v3, :cond_2

    #@27
    .line 9312
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@29
    .line 9313
    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    #@2c
    .line 9312
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 9318
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v16

    #@34
    .line 9321
    .local v16, "oldId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_3

    #@3a
    .line 9322
    const-string/jumbo v3, "BackupManagerService"

    #@3d
    const-string/jumbo v4, "Full backup not supported before setup"

    #@40
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@43
    .line 9359
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    .line 9363
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 9364
    const-string/jumbo v3, "BackupManagerService"

    #@4c
    const-string/jumbo v4, "Full backup processing complete."

    #@4f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 9323
    return-void

    #@53
    .line 9360
    :catch_0
    move-exception v14

    #@54
    .local v14, "e":Ljava/io/IOException;
    goto :goto_0

    #@55
    .line 9326
    .end local v14    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    #@58
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v5, "Requesting full backup: apks="

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    move/from16 v0, p2

    #@66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 9327
    const-string/jumbo v5, " obb="

    #@6d
    .line 9326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    move/from16 v0, p3

    #@73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 9327
    const-string/jumbo v5, " shared="

    #@7a
    .line 9326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    move/from16 v0, p4

    #@80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 9327
    const-string/jumbo v5, " all="

    #@87
    .line 9326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    move/from16 v0, p6

    #@8d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 9328
    const-string/jumbo v5, " system="

    #@94
    .line 9326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    move/from16 v0, p7

    #@9a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    .line 9328
    const-string/jumbo v5, " pkgs="

    #@a1
    .line 9326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    move-object/from16 v0, p9

    #@a7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 9329
    const-string/jumbo v3, "BackupManagerService"

    #@b5
    const-string/jumbo v4, "Beginning full backup..."

    #@b8
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 9331
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    #@bd
    move-object/from16 v3, p0

    #@bf
    move-object/from16 v4, p1

    #@c1
    move/from16 v5, p2

    #@c3
    move/from16 v6, p3

    #@c5
    move/from16 v7, p4

    #@c7
    move/from16 v8, p5

    #@c9
    move/from16 v9, p6

    #@cb
    move/from16 v10, p7

    #@cd
    move/from16 v11, p8

    #@cf
    move-object/from16 v12, p9

    #@d1
    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    #@d4
    .line 9333
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@d7
    move-result v15

    #@d8
    .line 9334
    .local v15, "token":I
    move-object/from16 v0, p0

    #@da
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@dc
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@dd
    .line 9335
    :try_start_3
    move-object/from16 v0, p0

    #@df
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@e1
    invoke-virtual {v3, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e4
    :try_start_4
    monitor-exit v4

    #@e5
    .line 9339
    const-string/jumbo v3, "BackupManagerService"

    #@e8
    new-instance v4, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v5, "Starting backup confirmation UI, token="

    #@f0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v4

    #@f4
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v4

    #@f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v4

    #@fc
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    .line 9340
    const-string/jumbo v3, "fullback"

    #@102
    move-object/from16 v0, p0

    #@104
    invoke-virtual {v0, v15, v3}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    #@107
    move-result v3

    #@108
    if-nez v3, :cond_4

    #@10a
    .line 9341
    const-string/jumbo v3, "BackupManagerService"

    #@10d
    const-string/jumbo v4, "Unable to launch full backup confirmation"

    #@110
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 9342
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@117
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@11a
    .line 9359
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@11d
    .line 9363
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@120
    .line 9364
    const-string/jumbo v3, "BackupManagerService"

    #@123
    const-string/jumbo v4, "Full backup processing complete."

    #@126
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    .line 9343
    return-void

    #@12a
    .line 9334
    :catchall_0
    move-exception v3

    #@12b
    :try_start_6
    monitor-exit v4

    #@12c
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@12d
    .line 9357
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v15    # "token":I
    :catchall_1
    move-exception v3

    #@12e
    .line 9359
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@131
    .line 9363
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@134
    .line 9364
    const-string/jumbo v4, "BackupManagerService"

    #@137
    const-string/jumbo v5, "Full backup processing complete."

    #@13a
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    .line 9357
    throw v3

    #@13e
    .line 9360
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v15    # "token":I
    :catch_1
    move-exception v14

    #@13f
    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_1

    #@140
    .line 9347
    .end local v14    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    #@142
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@147
    move-result-wide v4

    #@148
    .line 9348
    const/4 v6, 0x0

    #@149
    .line 9349
    const/4 v7, 0x0

    #@14a
    .line 9347
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    #@14d
    .line 9352
    move-object/from16 v0, p0

    #@14f
    invoke-virtual {v0, v15, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    #@152
    .line 9355
    const-string/jumbo v3, "BackupManagerService"

    #@155
    const-string/jumbo v4, "Waiting for full backup completion..."

    #@158
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 9356
    move-object/from16 v0, p0

    #@15d
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@160
    .line 9359
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    #@163
    .line 9363
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@166
    .line 9364
    const-string/jumbo v3, "BackupManagerService"

    #@169
    const-string/jumbo v4, "Full backup processing complete."

    #@16c
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16f
    .line 9296
    return-void

    #@170
    .line 9360
    :catch_2
    move-exception v14

    #@171
    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_3

    #@172
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "token":I
    :catch_3
    move-exception v14

    #@173
    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 9418
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.BACKUP"

    #@5
    const-string/jumbo v8, "fullRestore"

    #@8
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9420
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v0

    #@f
    .line 9422
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    #@11
    .line 9423
    new-instance v6, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v7, "Restore supported only for the device owner"

    #@16
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v6

    #@1a
    .line 9426
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 9431
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    #@21
    move-result v6

    #@22
    if-nez v6, :cond_1

    #@24
    .line 9432
    const-string/jumbo v6, "BackupManagerService"

    #@27
    const-string/jumbo v7, "Full restore not permitted before setup"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2d
    .line 9465
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    .line 9469
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 9470
    const-string/jumbo v6, "BackupManagerService"

    #@36
    const-string/jumbo v7, "Full restore processing complete."

    #@39
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 9433
    return-void

    #@3d
    .line 9466
    :catch_0
    move-exception v1

    #@3e
    .line 9467
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    #@41
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v8, "Error trying to close fd after full restore: "

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0

    #@59
    .line 9436
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "BackupManagerService"

    #@5c
    const-string/jumbo v7, "Beginning full restore..."

    #@5f
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 9438
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    #@64
    invoke-direct {v4, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    #@67
    .line 9439
    .local v4, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@6a
    move-result v5

    #@6b
    .line 9440
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@6d
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6e
    .line 9441
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@70
    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    :try_start_4
    monitor-exit v7

    #@74
    .line 9445
    const-string/jumbo v6, "BackupManagerService"

    #@77
    new-instance v7, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v8, "Starting restore confirmation UI, token="

    #@7f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 9446
    const-string/jumbo v6, "fullrest"

    #@91
    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    #@94
    move-result v6

    #@95
    if-nez v6, :cond_2

    #@97
    .line 9447
    const-string/jumbo v6, "BackupManagerService"

    #@9a
    const-string/jumbo v7, "Unable to launch full restore confirmation"

    #@9d
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 9448
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@a2
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a5
    .line 9465
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@a8
    .line 9469
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 9470
    const-string/jumbo v6, "BackupManagerService"

    #@ae
    const-string/jumbo v7, "Full restore processing complete."

    #@b1
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 9449
    return-void

    #@b5
    .line 9440
    :catchall_0
    move-exception v6

    #@b6
    :try_start_6
    monitor-exit v7

    #@b7
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b8
    .line 9463
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catchall_1
    move-exception v6

    #@b9
    .line 9465
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@bc
    .line 9469
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@bf
    .line 9470
    const-string/jumbo v7, "BackupManagerService"

    #@c2
    const-string/jumbo v8, "Full restore processing complete."

    #@c5
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 9463
    throw v6

    #@c9
    .line 9466
    .restart local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :catch_1
    move-exception v1

    #@ca
    .line 9467
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    #@cd
    new-instance v7, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v8, "Error trying to close fd after full restore: "

    #@d5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    goto :goto_1

    #@e5
    .line 9453
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@e7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@ea
    move-result-wide v8

    #@eb
    .line 9454
    const/4 v7, 0x0

    #@ec
    .line 9455
    const/4 v10, 0x0

    #@ed
    .line 9453
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    #@f0
    .line 9458
    invoke-virtual {p0, v5, v4}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    #@f3
    .line 9461
    const-string/jumbo v6, "BackupManagerService"

    #@f6
    const-string/jumbo v7, "Waiting for full restore completion..."

    #@f9
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 9462
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@ff
    .line 9465
    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    #@102
    .line 9469
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@105
    .line 9470
    const-string/jumbo v6, "BackupManagerService"

    #@108
    const-string/jumbo v7, "Full restore processing complete."

    #@10b
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 9417
    return-void

    #@10f
    .line 9466
    :catch_2
    move-exception v1

    #@110
    .line 9467
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    #@113
    new-instance v7, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v8, "Error trying to close fd after full restore: "

    #@11b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v7

    #@11f
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v7

    #@123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v7

    #@127
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    goto :goto_3

    #@12b
    .line 9466
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catch_3
    move-exception v1

    #@12c
    .line 9467
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BackupManagerService"

    #@12f
    new-instance v8, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v9, "Error trying to close fd after full restore: "

    #@137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v8

    #@13b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v8

    #@13f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v8

    #@143
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    goto/16 :goto_2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 18
    .param p1, "pkgNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 9369
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "android.permission.BACKUP"

    #@7
    .line 9370
    const-string/jumbo v5, "fullTransportBackup"

    #@a
    .line 9369
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 9372
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v11

    #@11
    .line 9374
    .local v11, "callingUserHandle":I
    if-eqz v11, :cond_0

    #@13
    .line 9375
    new-instance v3, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v4, "Restore supported only for the device owner"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 9378
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@25
    move-result-object v3

    #@26
    move-object/from16 v0, p0

    #@28
    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 9379
    const-string/jumbo v3, "BackupManagerService"

    #@31
    const-string/jumbo v4, "Full backup not currently possible -- key/value backup not yet run?"

    #@34
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 9413
    :goto_0
    const-string/jumbo v3, "BackupManagerService"

    #@3a
    const-string/jumbo v4, "Done with full transport backup."

    #@3d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 9368
    return-void

    #@41
    .line 9382
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    #@44
    const-string/jumbo v4, "fullTransportBackup()"

    #@47
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 9385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4d
    move-result-wide v16

    #@4e
    .line 9387
    .local v16, "oldId":J
    :try_start_0
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    #@50
    const/4 v3, 0x1

    #@51
    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@54
    .line 9388
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@56
    const/4 v4, 0x0

    #@57
    .line 9389
    const/4 v6, 0x0

    #@58
    const/4 v7, 0x0

    #@59
    const/4 v9, 0x0

    #@5a
    const/4 v10, 0x0

    #@5b
    move-object/from16 v3, p0

    #@5d
    move-object/from16 v5, p1

    #@5f
    .line 9388
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    #@62
    .line 9391
    .local v2, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    move-object/from16 v0, p0

    #@64
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@66
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@69
    .line 9392
    new-instance v3, Ljava/lang/Thread;

    #@6b
    const-string/jumbo v4, "full-transport-master"

    #@6e
    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@71
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    .line 9395
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 9403
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7a
    move-result-wide v14

    #@7b
    .line 9404
    .local v14, "now":J
    const/4 v3, 0x0

    #@7c
    move-object/from16 v0, p1

    #@7e
    array-length v4, v0

    #@7f
    :goto_2
    if-ge v3, v4, :cond_2

    #@81
    aget-object v13, p1, v3

    #@83
    .line 9405
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    .line 9404
    add-int/lit8 v3, v3, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 9397
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "now":J
    :catch_0
    move-exception v12

    #@8c
    .local v12, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@8d
    .line 9408
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "now":J
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@90
    goto :goto_0

    #@91
    .line 9407
    .end local v2    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v14    # "now":J
    :catchall_0
    move-exception v3

    #@92
    .line 9408
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@95
    .line 9407
    throw v3
.end method

.method generateToken()I
    .locals 3

    #@0
    .prologue
    .line 685
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@2
    monitor-enter v2

    #@3
    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@5
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .local v0, "token":I
    monitor-exit v2

    #@a
    .line 688
    if-ltz v0, :cond_0

    #@c
    .line 689
    return v0

    #@d
    .line 685
    .end local v0    # "token":I
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2457
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.BACKUP"

    #@5
    .line 2458
    const-string/jumbo v4, "getAvailableRestoreToken"

    #@8
    .line 2457
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2460
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@d
    .line 2461
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2462
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@12
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 2466
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v3

    #@1b
    .line 2470
    return-wide v0

    #@1c
    .line 2461
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9759
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9760
    const-string/jumbo v5, "getConfigurationIntent"

    #@9
    .line 9759
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9762
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9763
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 9764
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9766
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    #@1e
    .line 9769
    return-object v1

    #@1f
    .line 9770
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9776
    return-object v6

    #@22
    .line 9762
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 9700
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    .line 9701
    const-string/jumbo v2, "getCurrentTransport"

    #@8
    .line 9700
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9703
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@d
    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9806
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9807
    const-string/jumbo v5, "getDataManagementIntent"

    #@9
    .line 9806
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9809
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9810
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 9811
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9813
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    #@1e
    .line 9816
    return-object v1

    #@1f
    .line 9817
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9823
    return-object v6

    #@22
    .line 9809
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9829
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9830
    const-string/jumbo v5, "getDataManagementLabel"

    #@9
    .line 9829
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9832
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9833
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 9834
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9836
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    #@1e
    .line 9838
    return-object v1

    #@1f
    .line 9839
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9845
    return-object v6

    #@22
    .line 9832
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9785
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9786
    const-string/jumbo v5, "getDestinationString"

    #@9
    .line 9785
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9788
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9789
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 9790
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9792
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    #@1e
    .line 9794
    return-object v1

    #@1f
    .line 9795
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9801
    return-object v6

    #@22
    .line 9788
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 9727
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [Ljava/lang/String;

    #@8
    .line 9728
    .local v1, "whitelist":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@12
    .line 9729
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    #@14
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/content/ComponentName;

    #@1a
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v1, v0

    #@20
    .line 9728
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 9731
    :cond_0
    return-object v1
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2591
    const/4 v1, 0x0

    #@1
    .line 2592
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 2593
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    move-object v0, v3

    #@b
    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    #@d
    move-object v1, v0

    #@e
    .line 2598
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v1, :cond_2

    #@10
    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    #@12
    .line 2599
    .local v2, "state":I
    :goto_0
    const/4 v3, 0x1

    #@13
    if-ne v2, v3, :cond_3

    #@15
    .line 2604
    const/4 v1, 0x0

    #@16
    .line 2605
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1b
    .line 2611
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@1d
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v4

    #@21
    .line 2615
    if-eqz v1, :cond_1

    #@23
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 2619
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@29
    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    #@2c
    .line 2589
    :cond_1
    return-void

    #@2d
    .line 2598
    .end local v2    # "state":I
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    const/4 v2, -0x1

    #@2e
    .restart local v2    # "state":I
    goto :goto_0

    #@2f
    .line 2606
    :cond_3
    if-nez v2, :cond_0

    #@31
    .line 2607
    :try_start_1
    const-string/jumbo v3, "BackupManagerService"

    #@34
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "TIMEOUT: token="

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2608
    const/4 v3, -0x1

    #@50
    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    goto :goto_1

    #@53
    .line 2592
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1712
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BACKUP"

    #@6
    .line 1713
    const-string/jumbo v3, "hasBackupPassword"

    #@9
    .line 1712
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1715
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-lez v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :cond_0
    return v0
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 10042
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "android.permission.BACKUP"

    #@6
    .line 10043
    const-string/jumbo v6, "isAppEligibleForBackup"

    #@9
    .line 10042
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 10045
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@e
    .line 10046
    const/16 v5, 0x40

    #@10
    .line 10045
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@13
    move-result-object v2

    #@14
    .line 10047
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 10048
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    #@21
    move-result v4

    #@22
    .line 10047
    if-eqz v4, :cond_1

    #@24
    .line 10049
    :cond_0
    return v7

    #@25
    .line 10051
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@27
    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@2a
    move-result-object v3

    #@2b
    .line 10052
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v3, :cond_2

    #@2d
    .line 10055
    :try_start_1
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@30
    move-result v4

    #@31
    .line 10054
    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    move-result v4

    #@35
    return v4

    #@36
    .line 10056
    :catch_0
    move-exception v1

    #@37
    .line 10057
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    #@3a
    const-string/jumbo v5, "Unable to contact transport"

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@40
    .line 10061
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x1

    #@41
    return v4

    #@42
    .line 10062
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_1
    move-exception v0

    #@43
    .line 10063
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7
.end method

.method public isBackupEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 9694
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    const-string/jumbo v2, "isBackupEnabled"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9695
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@d
    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 9708
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.BACKUP"

    #@5
    const-string/jumbo v6, "listAllTransports"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9710
    const/4 v3, 0x0

    #@c
    .line 9711
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 9712
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/util/Map$Entry;

    #@27
    .line 9713
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 9714
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/lang/String;

    #@33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 9718
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v4

    #@3b
    if-lez v4, :cond_2

    #@3d
    .line 9719
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v4

    #@41
    new-array v3, v4, [Ljava/lang/String;

    #@43
    .line 9720
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    .line 9722
    .end local v3    # "list":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2248
    const-string/jumbo v3, "@pm@"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    return-void

    #@a
    .line 2250
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@c
    monitor-enter v4

    #@d
    .line 2251
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@f
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    monitor-exit v4

    #@16
    return-void

    #@17
    .line 2253
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 2255
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    #@1a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@1c
    const-string/jumbo v5, "rws"

    #@1f
    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 2256
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    #@25
    move-result-wide v6

    #@26
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@29
    .line 2257
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2c
    .line 2261
    if-eqz v2, :cond_2

    #@2e
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    :cond_2
    :goto_0
    move-object v1, v2

    #@32
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    monitor-exit v4

    #@33
    .line 2247
    return-void

    #@34
    .line 2261
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    #@35
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@36
    .line 2258
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    #@37
    .line 2259
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "BackupManagerService"

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "Can\'t log backup of "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, " to "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5e
    .line 2261
    if-eqz v1, :cond_3

    #@60
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@63
    goto :goto_1

    #@64
    :catch_2
    move-exception v0

    #@65
    goto :goto_1

    #@66
    .line 2260
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@67
    .line 2261
    :goto_3
    if-eqz v1, :cond_4

    #@69
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6c
    .line 2260
    :cond_4
    :goto_4
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@6d
    .line 2250
    :catchall_1
    move-exception v3

    #@6e
    monitor-exit v4

    #@6f
    throw v3

    #@70
    .line 2261
    :catch_3
    move-exception v0

    #@71
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@72
    .line 2260
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    #@73
    move-object v1, v2

    #@74
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_3

    #@75
    .line 2258
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    #@76
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@77
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public opComplete(IJ)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "result"    # J

    #@0
    .prologue
    .line 10017
    const/4 v3, 0x0

    #@1
    .line 10018
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 10019
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    move-object v0, v4

    #@b
    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    #@d
    move-object v3, v0

    #@e
    .line 10020
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v3, :cond_0

    #@10
    .line 10021
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    #@12
    const/4 v6, -0x1

    #@13
    if-ne v4, v6, :cond_2

    #@15
    .line 10024
    const/4 v3, 0x0

    #@16
    .line 10025
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1b
    .line 10030
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@1d
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v5

    #@21
    .line 10034
    if-eqz v3, :cond_1

    #@23
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 10035
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@29
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@30
    move-result-object v1

    #@31
    .line 10036
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@33
    const/16 v5, 0x15

    #@35
    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@38
    move-result-object v2

    #@39
    .line 10037
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@3b
    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@3e
    .line 10013
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    #@3f
    .line 10027
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    const/4 v4, 0x1

    #@40
    :try_start_1
    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 10018
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_0
    move-exception v4

    #@44
    monitor-exit v5

    #@45
    throw v4
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePw"    # Ljava/lang/String;
    .param p3, "rounds"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1613
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1615
    if-eqz p2, :cond_0

    #@8
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1616
    :cond_0
    return v3

    #@12
    .line 1620
    :cond_1
    if-eqz p2, :cond_2

    #@14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-lez v1, :cond_2

    #@1a
    .line 1621
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    #@1c
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1622
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 1624
    return v3

    #@29
    .line 1628
    .end local v0    # "currentPwHash":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@0
    .prologue
    .line 2548
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@5
    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    #@7
    const/4 v4, 0x0

    #@8
    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@b
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e
    .line 2551
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@10
    const/4 v3, 0x7

    #@11
    const/4 v4, 0x0

    #@12
    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v0

    #@16
    .line 2552
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@18
    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 2545
    return-void

    #@1d
    .line 2548
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .locals 12
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v10, 0xb

    #@2
    const/4 v7, 0x0

    #@3
    .line 1736
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@5
    invoke-virtual {v6, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@8
    .line 1739
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@b
    move-result-object v4

    #@c
    .line 1740
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v4, :cond_1

    #@e
    .line 1741
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 1742
    .local v5, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    #@14
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@16
    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    .line 1743
    .local v3, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@1b
    const-string/jumbo v6, "_need_init_"

    #@1e
    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21
    .line 1745
    .local v1, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    #@23
    .line 1749
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@25
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 1751
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    #@2a
    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@2d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    .line 1760
    :goto_0
    return-void

    #@31
    .line 1757
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@34
    .line 1758
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@36
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 1762
    .end local v1    # "initPendingFile":Ljava/io/File;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3b
    .line 1769
    :cond_1
    if-eqz p1, :cond_2

    #@3d
    .line 1770
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@3f
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@42
    .line 1771
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@44
    .line 1772
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@46
    .line 1773
    if-eqz p1, :cond_3

    #@48
    const/4 v6, 0x1

    #@49
    .line 1772
    :goto_1
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4c
    move-result-object v6

    #@4d
    .line 1776
    const-wide/32 v10, 0x36ee80

    #@50
    .line 1771
    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@53
    .line 1733
    :cond_2
    return-void

    #@54
    :cond_3
    move v6, v7

    #@55
    .line 1773
    goto :goto_1

    #@56
    .line 1752
    .restart local v1    # "initPendingFile":Ljava/io/File;
    .restart local v3    # "stateDir":Ljava/io/File;
    .restart local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v5    # "transportDirName":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@57
    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2268
    const-string/jumbo v6, "BackupManagerService"

    #@3
    new-instance v7, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v8, "Removing backed-up knowledge of "

    #@b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v7

    #@f
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2271
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@1c
    monitor-enter v7

    #@1d
    .line 2275
    :try_start_0
    new-instance v5, Ljava/io/File;

    #@1f
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@21
    const-string/jumbo v8, "processed.new"

    #@24
    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 2276
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v1, 0x0

    #@28
    .line 2278
    .local v1, "known":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    #@2a
    const-string/jumbo v6, "rws"

    #@2d
    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 2279
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@32
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@35
    .line 2280
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@37
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v4

    #@3b
    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_1

    #@41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Ljava/lang/String;

    #@47
    .line 2281
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4a
    goto :goto_0

    #@4b
    .line 2289
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@4c
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    #@4d
    .line 2294
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "BackupManagerService"

    #@50
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Error rewriting "

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 2295
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@6b
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@6e
    .line 2296
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@71
    .line 2297
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@73
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    .line 2299
    if-eqz v1, :cond_0

    #@78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@7b
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit v7

    #@7c
    .line 2267
    return-void

    #@7d
    .line 2284
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@80
    .line 2285
    const/4 v1, 0x0

    #@81
    .line 2286
    .restart local v1    # "known":Ljava/io/RandomAccessFile;
    :try_start_6
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@83
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@86
    move-result v6

    #@87
    if-nez v6, :cond_0

    #@89
    .line 2287
    new-instance v6, Ljava/io/IOException;

    #@8b
    new-instance v8, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v9, "Can\'t rename "

    #@93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    const-string/jumbo v9, " to "

    #@9e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@af
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b0
    .line 2289
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    #@b1
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@b2
    .line 2299
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    #@b3
    goto :goto_2

    #@b4
    .line 2298
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@b5
    .line 2299
    :goto_3
    if-eqz v1, :cond_2

    #@b7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@ba
    .line 2298
    :cond_2
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@bb
    .line 2271
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    #@bc
    monitor-exit v7

    #@bd
    throw v6

    #@be
    .line 2299
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_3
    move-exception v0

    #@bf
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@c0
    .line 2298
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    #@c1
    move-object v1, v2

    #@c2
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v1, "known":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    #@0
    .prologue
    .line 2179
    if-nez p1, :cond_0

    #@2
    .line 2180
    const-string/jumbo v2, "BackupManagerService"

    #@5
    const-string/jumbo v3, "removePackageParticipants with null list"

    #@8
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 2181
    return-void

    #@c
    .line 2186
    :cond_0
    const/4 v2, 0x0

    #@d
    array-length v3, p1

    #@e
    :goto_0
    if-ge v2, v3, :cond_2

    #@10
    aget-object v0, p1, v2

    #@12
    .line 2188
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/HashSet;

    #@1a
    .line 2189
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@1c
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 2190
    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    #@25
    .line 2191
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 2193
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    #@30
    .line 2186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 2178
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I
    .locals 13
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    #@0
    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    const-string/jumbo v6, "requestBackup"

    #@8
    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2476
    if-eqz p1, :cond_0

    #@d
    array-length v0, p1

    #@e
    const/4 v1, 0x1

    #@f
    if-ge v0, v1, :cond_1

    #@11
    .line 2477
    :cond_0
    const-string/jumbo v0, "BackupManagerService"

    #@14
    const-string/jumbo v1, "No packages named for backup request"

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2478
    const/16 v0, -0x3e8

    #@1c
    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    #@1f
    .line 2479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "No packages are provided for backup"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 2482
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@2d
    move-result-object v2

    #@2e
    .line 2483
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_2

    #@30
    .line 2484
    const/16 v0, -0x3e8

    #@32
    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    #@35
    .line 2485
    const/16 v0, -0x3e8

    #@37
    return v0

    #@38
    .line 2488
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@3d
    .line 2489
    .local v5, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@3f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@42
    .line 2490
    .local v4, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@43
    array-length v1, p1

    #@44
    :goto_0
    if-ge v0, v1, :cond_5

    #@46
    aget-object v12, p1, v0

    #@48
    .line 2492
    .local v12, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4a
    .line 2493
    const/16 v7, 0x40

    #@4c
    .line 2492
    invoke-virtual {v6, v12, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@4f
    move-result-object v11

    #@50
    .line 2494
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_3

    #@58
    .line 2496
    const/16 v6, -0x7d1

    #@5a
    .line 2495
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@5d
    .line 2490
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 2499
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@63
    move-result v6

    #@64
    if-eqz v6, :cond_4

    #@66
    .line 2500
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@68
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_1

    #@6c
    .line 2504
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    #@6d
    .line 2506
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    #@6f
    .line 2505
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@72
    goto :goto_1

    #@73
    .line 2502
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@75
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@78
    goto :goto_1

    #@79
    .line 2509
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x3

    #@7a
    new-array v0, v0, [Ljava/lang/Object;

    #@7c
    array-length v1, p1

    #@7d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v1

    #@81
    const/4 v6, 0x0

    #@82
    aput-object v1, v0, v6

    #@84
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v1

    #@88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v1

    #@8c
    const/4 v6, 0x1

    #@8d
    aput-object v1, v0, v6

    #@8f
    .line 2510
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@92
    move-result v1

    #@93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v1

    #@97
    const/4 v6, 0x2

    #@98
    aput-object v1, v0, v6

    #@9a
    .line 2509
    const/16 v1, 0xb0c

    #@9c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@9f
    .line 2518
    :try_start_2
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@a2
    move-result-object v3

    #@a3
    .line 2524
    .local v3, "dirName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@a5
    const/16 v1, 0xf

    #@a7
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@aa
    move-result-object v10

    #@ab
    .line 2525
    .local v10, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupParams;

    #@ad
    .line 2526
    const/4 v7, 0x1

    #@ae
    move-object v1, p0

    #@af
    move-object v6, p2

    #@b0
    .line 2525
    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService$BackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Z)V

    #@b3
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b5
    .line 2527
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@b7
    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@ba
    .line 2528
    const/4 v0, 0x0

    #@bb
    return v0

    #@bc
    .line 2519
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v9

    #@bd
    .line 2520
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BackupManagerService"

    #@c0
    const-string/jumbo v1, "Transport became unavailable while attempting backup"

    #@c3
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 2521
    const/16 v0, -0x3e8

    #@c8
    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    #@cb
    .line 2522
    const/16 v0, -0x3e8

    #@cd
    return v0
.end method

.method resetBackupState(Ljava/io/File;)V
    .locals 12
    .param p1, "stateFileDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 1784
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 1786
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@5
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@8
    .line 1787
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@d
    .line 1789
    const-wide/16 v8, 0x0

    #@f
    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@11
    .line 1790
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    #@14
    .line 1793
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@17
    move-result-object v8

    #@18
    const/4 v6, 0x0

    #@19
    array-length v9, v8

    #@1a
    :goto_0
    if-ge v6, v9, :cond_1

    #@1c
    aget-object v5, v8, v6

    #@1e
    .line 1795
    .local v5, "sf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    const-string/jumbo v11, "_need_init_"

    #@25
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v10

    #@29
    if-nez v10, :cond_0

    #@2b
    .line 1796
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2e
    .line 1793
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@30
    goto :goto_0

    #@31
    .end local v5    # "sf":Ljava/io/File;
    :cond_1
    monitor-exit v7

    #@32
    .line 1802
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@34
    monitor-enter v7

    #@35
    .line 1803
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@3a
    move-result v0

    #@3b
    .line 1804
    .local v0, "N":I
    const/4 v1, 0x0

    #@3c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@3e
    .line 1805
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Ljava/util/HashSet;

    #@46
    .line 1806
    .local v4, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    #@48
    .line 1807
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v3

    #@4c
    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_2

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Ljava/lang/String;

    #@58
    .line 1808
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_2

    #@5c
    .line 1802
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@5d
    monitor-exit v7

    #@5e
    throw v6

    #@5f
    .line 1784
    :catchall_1
    move-exception v6

    #@60
    monitor-exit v7

    #@61
    throw v6

    #@62
    .line 1804
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_1

    #@65
    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v7

    #@66
    .line 1783
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    #@0
    .prologue
    .line 9885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 9886
    const-string/jumbo v1, "BackupManagerService"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Non-system process uid="

    #@13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1a
    move-result v5

    #@1b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 9887
    const-string/jumbo v5, " attemping install-time restore"

    #@22
    .line 9886
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 9888
    return-void

    #@2e
    .line 9891
    :cond_0
    const/4 v11, 0x0

    #@2f
    .line 9893
    .local v11, "skip":Z
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@32
    move-result-wide v6

    #@33
    .line 9894
    .local v6, "restoreSet":J
    const-string/jumbo v1, "BackupManagerService"

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "restoreAtInstall pkg="

    #@3e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 9895
    const-string/jumbo v5, " token="

    #@49
    .line 9894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 9895
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    .line 9894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 9896
    const-string/jumbo v5, " restoreSet="

    #@58
    .line 9894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    .line 9896
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 9894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 9897
    const-wide/16 v8, 0x0

    #@6d
    cmp-long v1, v6, v8

    #@6f
    if-nez v1, :cond_1

    #@71
    .line 9899
    const/4 v11, 0x1

    #@72
    .line 9903
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@74
    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@77
    move-result-object v3

    #@78
    .line 9904
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v3, :cond_2

    #@7a
    .line 9905
    const-string/jumbo v1, "BackupManagerService"

    #@7d
    const-string/jumbo v2, "No transport"

    #@80
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 9906
    const/4 v11, 0x1

    #@84
    .line 9909
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@86
    if-nez v1, :cond_3

    #@88
    .line 9911
    const-string/jumbo v1, "BackupManagerService"

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v5, "Non-restorable state: auto="

    #@93
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 9913
    const/4 v11, 0x1

    #@a5
    .line 9916
    :cond_3
    if-nez v11, :cond_4

    #@a7
    .line 9923
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    .line 9925
    .local v4, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@ad
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@b0
    .line 9929
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@b2
    const/4 v2, 0x3

    #@b3
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@b6
    move-result-object v10

    #@b7
    .line 9930
    .local v10, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@b9
    const/4 v5, 0x0

    #@ba
    move-object v2, p0

    #@bb
    move-object v8, p1

    #@bc
    move v9, p2

    #@bd
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V

    #@c0
    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c2
    .line 9932
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@c4
    invoke-virtual {v1, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c7
    .line 9940
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    if-eqz v11, :cond_5

    #@c9
    .line 9943
    const-string/jumbo v1, "BackupManagerService"

    #@cc
    const-string/jumbo v2, "Finishing install immediately"

    #@cf
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 9945
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@d4
    const/4 v2, 0x0

    #@d5
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@d8
    .line 9884
    :cond_5
    :goto_1
    return-void

    #@d9
    .line 9933
    :catch_0
    move-exception v0

    #@da
    .line 9935
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@dd
    const-string/jumbo v2, "Unable to contact transport"

    #@e0
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 9936
    const/4 v11, 0x1

    #@e4
    goto :goto_0

    #@e5
    .line 9946
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@e6
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    #@0
    .prologue
    .line 7877
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    #@4
    .line 7871
    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .locals 17
    .param p1, "transportMinLatency"    # J

    #@0
    .prologue
    .line 4899
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4
    monitor-enter v12

    #@5
    .line 4900
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v7

    #@d
    if-lez v7, :cond_1

    #@f
    .line 4904
    move-object/from16 v0, p0

    #@11
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@13
    const/4 v13, 0x0

    #@14
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    check-cast v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@1a
    iget-wide v10, v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@1c
    .line 4905
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v14

    #@20
    sub-long v8, v14, v10

    #@22
    .line 4906
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    #@25
    cmp-long v7, v8, v14

    #@27
    if-gez v7, :cond_0

    #@29
    .line 4907
    const-wide/32 v14, 0x5265c00

    #@2c
    sub-long v2, v14, v8

    #@2e
    .line 4908
    .local v2, "appLatency":J
    :goto_0
    move-wide/from16 v0, p1

    #@30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@33
    move-result-wide v4

    #@34
    .line 4909
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/BackupManagerService$3;

    #@36
    move-object/from16 v0, p0

    #@38
    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    #@3b
    .line 4914
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    #@3d
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@3f
    const-wide/16 v14, 0x9c4

    #@41
    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .end local v2    # "appLatency":J
    .end local v4    # "latency":J
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :goto_1
    monitor-exit v12

    #@45
    .line 4898
    return-void

    #@46
    .line 4907
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_0
    const-wide/16 v2, 0x0

    #@48
    goto :goto_0

    #@49
    .line 4917
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :cond_1
    :try_start_1
    const-string/jumbo v7, "BackupManagerService"

    #@4c
    const-string/jumbo v13, "Full backup queue empty; not scheduling"

    #@4f
    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    goto :goto_1

    #@53
    .line 4899
    :catchall_0
    move-exception v7

    #@54
    monitor-exit v12

    #@55
    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9736
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.BACKUP"

    #@5
    .line 9737
    const-string/jumbo v5, "selectBackupTransport"

    #@8
    .line 9736
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9739
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@d
    monitor-enter v4

    #@e
    .line 9740
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    move-result-wide v0

    #@12
    .line 9742
    .local v0, "oldId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@14
    .line 9743
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@16
    .line 9744
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v3

    #@1c
    .line 9745
    const-string/jumbo v5, "backup_transport"

    #@1f
    .line 9744
    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@22
    .line 9746
    const-string/jumbo v3, "BackupManagerService"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "selectBackupTransport() set "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 9747
    const-string/jumbo v6, " returning "

    #@3a
    .line 9746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 9750
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    monitor-exit v4

    #@4d
    .line 9748
    return-object v2

    #@4e
    .line 9749
    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@4f
    .line 9750
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 9749
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@53
    .line 9739
    .end local v0    # "oldId":J
    :catchall_1
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3
.end method

.method public setAutoRestore(Z)V
    .locals 5
    .param p1, "doAutoRestore"    # Z

    #@0
    .prologue
    .line 9666
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.BACKUP"

    #@5
    .line 9667
    const-string/jumbo v4, "setAutoRestore"

    #@8
    .line 9666
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9669
    const-string/jumbo v2, "BackupManagerService"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Auto restore => "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 9671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@28
    move-result-wide v0

    #@29
    .line 9673
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 9674
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v3

    #@30
    .line 9675
    const-string/jumbo v4, "backup_auto_restore"

    #@33
    if-eqz p1, :cond_0

    #@35
    const/4 v2, 0x1

    #@36
    .line 9674
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@39
    .line 9676
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    .line 9679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 9665
    return-void

    #@40
    .line 9675
    :cond_0
    const/4 v2, 0x0

    #@41
    goto :goto_0

    #@42
    .line 9673
    :catchall_0
    move-exception v2

    #@43
    :try_start_3
    monitor-exit p0

    #@44
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@45
    .line 9678
    :catchall_1
    move-exception v2

    #@46
    .line 9679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 9678
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 12
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 9616
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.BACKUP"

    #@5
    .line 9617
    const-string/jumbo v8, "setBackupEnabled"

    #@8
    .line 9616
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9619
    const-string/jumbo v6, "BackupManagerService"

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, "Backup enabled => "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 9621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@28
    move-result-wide v2

    #@29
    .line 9623
    .local v2, "oldId":J
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@2b
    .line 9624
    .local v5, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2c
    .line 9625
    const/4 v6, 0x0

    #@2d
    :try_start_1
    invoke-static {p1, v6}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    #@30
    .line 9626
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@32
    :try_start_2
    monitor-exit p0

    #@33
    .line 9629
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@35
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 9630
    if-eqz p1, :cond_0

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 9634
    :cond_0
    if-nez p1, :cond_2

    #@3c
    .line 9638
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3e
    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    #@41
    .line 9643
    if-eqz v5, :cond_2

    #@43
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@45
    if-eqz v6, :cond_2

    #@47
    .line 9647
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@49
    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 9648
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    #@4c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@4e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@51
    move-result-object v6

    #@52
    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@55
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_5
    monitor-exit v8

    #@56
    .line 9651
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v4

    #@5a
    .local v4, "transport$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_3

    #@60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v1

    #@64
    check-cast v1, Ljava/lang/String;

    #@66
    .line 9652
    .local v1, "transport":Ljava/lang/String;
    const/4 v6, 0x1

    #@67
    invoke-virtual {p0, v6, v1}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 9629
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "transport":Ljava/lang/String;
    .end local v4    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@6c
    :try_start_6
    monitor-exit v7

    #@6d
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6e
    .line 9659
    .end local v5    # "wasEnabled":Z
    :catchall_1
    move-exception v6

    #@6f
    .line 9660
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@72
    .line 9659
    throw v6

    #@73
    .line 9624
    .restart local v5    # "wasEnabled":Z
    :catchall_2
    move-exception v6

    #@74
    :try_start_7
    monitor-exit p0

    #@75
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@76
    .line 9630
    :cond_1
    :try_start_8
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@78
    if-eqz v6, :cond_0

    #@7a
    .line 9632
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@7c
    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@7f
    .line 9633
    const-wide/16 v8, 0x0

    #@81
    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@84
    :cond_2
    :goto_1
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@85
    .line 9660
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@88
    .line 9615
    return-void

    #@89
    .line 9647
    :catchall_3
    move-exception v6

    #@8a
    :try_start_a
    monitor-exit v8

    #@8b
    throw v6

    #@8c
    .line 9654
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "transport$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@8e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@91
    move-result-wide v8

    #@92
    .line 9655
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@94
    .line 9654
    const/4 v11, 0x0

    #@95
    invoke-virtual {v6, v11, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@98
    goto :goto_1
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1632
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v19, v0

    #@6
    const-string/jumbo v20, "android.permission.BACKUP"

    #@9
    .line 1633
    const-string/jumbo v21, "setBackupPassword"

    #@c
    .line 1632
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1636
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@13
    move/from16 v19, v0

    #@15
    const/16 v20, 0x2

    #@17
    move/from16 v0, v19

    #@19
    move/from16 v1, v20

    #@1b
    if-ge v0, v1, :cond_4

    #@1d
    const/4 v11, 0x1

    #@1e
    .line 1640
    .local v11, "pbkdf2Fallback":Z
    :goto_0
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    #@21
    const/16 v20, 0x2710

    #@23
    move-object/from16 v0, p0

    #@25
    move-object/from16 v1, v19

    #@27
    move-object/from16 v2, p1

    #@29
    move/from16 v3, v20

    #@2b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    #@2e
    move-result v19

    #@2f
    if-nez v19, :cond_0

    #@31
    .line 1641
    if-eqz v11, :cond_5

    #@33
    const-string/jumbo v19, "PBKDF2WithHmacSHA1And8bit"

    #@36
    .line 1642
    const/16 v20, 0x2710

    #@38
    .line 1641
    move-object/from16 v0, p0

    #@3a
    move-object/from16 v1, v19

    #@3c
    move-object/from16 v2, p1

    #@3e
    move/from16 v3, v20

    #@40
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    #@43
    move-result v19

    #@44
    if-eqz v19, :cond_5

    #@46
    .line 1647
    :cond_0
    const/16 v19, 0x2

    #@48
    move/from16 v0, v19

    #@4a
    move-object/from16 v1, p0

    #@4c
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@4e
    .line 1648
    const/4 v12, 0x0

    #@4f
    .line 1649
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    #@50
    .line 1651
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@56
    move-object/from16 v19, v0

    #@58
    move-object/from16 v0, v19

    #@5a
    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 1652
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .local v13, "pwFout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/DataOutputStream;

    #@5f
    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@62
    .line 1653
    .local v15, "pwOut":Ljava/io/DataOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    #@64
    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@66
    move/from16 v19, v0

    #@68
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    #@6a
    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    #@6d
    .line 1659
    if-eqz v15, :cond_1

    #@6f
    :try_start_3
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    #@72
    .line 1660
    :cond_1
    if-eqz v13, :cond_2

    #@74
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@77
    .line 1667
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    #@79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    #@7c
    move-result v19

    #@7d
    if-eqz v19, :cond_b

    #@7f
    .line 1668
    :cond_3
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@83
    move-object/from16 v19, v0

    #@85
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    #@88
    move-result v19

    #@89
    if-eqz v19, :cond_a

    #@8b
    .line 1669
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@8f
    move-object/from16 v19, v0

    #@91
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    #@94
    move-result v19

    #@95
    if-nez v19, :cond_a

    #@97
    .line 1671
    const-string/jumbo v19, "BackupManagerService"

    #@9a
    const-string/jumbo v20, "Unable to clear backup password"

    #@9d
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 1672
    const/16 v19, 0x0

    #@a2
    return v19

    #@a3
    .line 1636
    .end local v11    # "pbkdf2Fallback":Z
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_4
    const/4 v11, 0x0

    #@a4
    .restart local v11    # "pbkdf2Fallback":Z
    goto/16 :goto_0

    #@a6
    .line 1643
    :cond_5
    const/16 v19, 0x0

    #@a8
    return v19

    #@a9
    .line 1661
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    #@aa
    .line 1662
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@ad
    const-string/jumbo v20, "Unable to close pw version record"

    #@b0
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_1

    #@b4
    .line 1654
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    #@b5
    .line 1655
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v19, "BackupManagerService"

    #@b8
    const-string/jumbo v20, "Unable to write backup pw version; password not changed"

    #@bb
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@be
    .line 1656
    const/16 v19, 0x0

    #@c0
    .line 1659
    if-eqz v14, :cond_6

    #@c2
    :try_start_5
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    #@c5
    .line 1660
    :cond_6
    if-eqz v12, :cond_7

    #@c7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@ca
    .line 1656
    :cond_7
    :goto_3
    return v19

    #@cb
    .line 1661
    :catch_2
    move-exception v7

    #@cc
    .line 1662
    const-string/jumbo v20, "BackupManagerService"

    #@cf
    const-string/jumbo v21, "Unable to close pw version record"

    #@d2
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_3

    #@d6
    .line 1657
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    #@d7
    .line 1659
    :goto_4
    if-eqz v14, :cond_8

    #@d9
    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    #@dc
    .line 1660
    :cond_8
    if-eqz v12, :cond_9

    #@de
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@e1
    .line 1657
    :cond_9
    :goto_5
    throw v19

    #@e2
    .line 1661
    :catch_3
    move-exception v7

    #@e3
    .line 1662
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    #@e6
    const-string/jumbo v21, "Unable to close pw version record"

    #@e9
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    goto :goto_5

    #@ed
    .line 1675
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_a
    const/16 v19, 0x0

    #@ef
    move-object/from16 v0, v19

    #@f1
    move-object/from16 v1, p0

    #@f3
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@f5
    .line 1676
    const/16 v19, 0x0

    #@f7
    move-object/from16 v0, v19

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    #@fd
    .line 1677
    const/16 v19, 0x1

    #@ff
    return v19

    #@100
    .line 1682
    :cond_b
    const/16 v19, 0x200

    #@102
    :try_start_7
    move-object/from16 v0, p0

    #@104
    move/from16 v1, v19

    #@106
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    #@109
    move-result-object v18

    #@10a
    .line 1683
    .local v18, "salt":[B
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    #@10d
    const/16 v20, 0x2710

    #@10f
    move-object/from16 v0, p0

    #@111
    move-object/from16 v1, v19

    #@113
    move-object/from16 v2, p2

    #@115
    move-object/from16 v3, v18

    #@117
    move/from16 v4, v20

    #@119
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@11c
    move-result-object v8

    #@11d
    .line 1685
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    #@11f
    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    #@120
    .line 1686
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    #@121
    .line 1688
    .local v9, "out":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v17, Ljava/io/FileOutputStream;

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@127
    move-object/from16 v19, v0

    #@129
    move-object/from16 v0, v17

    #@12b
    move-object/from16 v1, v19

    #@12d
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@130
    .line 1689
    .local v17, "pwf":Ljava/io/OutputStream;
    :try_start_9
    new-instance v6, Ljava/io/BufferedOutputStream;

    #@132
    .end local v16    # "pwf":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    #@134
    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@137
    .line 1690
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_a
    new-instance v10, Ljava/io/DataOutputStream;

    #@139
    .end local v5    # "buffer":Ljava/io/OutputStream;
    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@13c
    .line 1693
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_b
    move-object/from16 v0, v18

    #@13e
    array-length v0, v0

    #@13f
    move/from16 v19, v0

    #@141
    .end local v9    # "out":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    #@143
    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@146
    .line 1694
    move-object/from16 v0, v18

    #@148
    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@14b
    .line 1695
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@14e
    .line 1696
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    #@151
    .line 1697
    move-object/from16 v0, p0

    #@153
    iput-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@155
    .line 1698
    move-object/from16 v0, v18

    #@157
    move-object/from16 v1, p0

    #@159
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    #@15b
    .line 1699
    const/16 v19, 0x1

    #@15d
    .line 1701
    if-eqz v10, :cond_c

    #@15f
    :try_start_c
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    #@162
    .line 1702
    :cond_c
    if-eqz v6, :cond_d

    #@164
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    #@167
    .line 1703
    :cond_d
    if-eqz v17, :cond_e

    #@169
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    #@16c
    .line 1699
    :cond_e
    return v19

    #@16d
    .line 1700
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    :catchall_1
    move-exception v19

    #@16e
    .line 1701
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    :goto_6
    if-eqz v9, :cond_f

    #@170
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    #@173
    .line 1702
    :cond_f
    if-eqz v5, :cond_10

    #@175
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@178
    .line 1703
    :cond_10
    if-eqz v16, :cond_11

    #@17a
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    #@17d
    .line 1700
    :cond_11
    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    #@17e
    .line 1705
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v18    # "salt":[B
    :catch_4
    move-exception v7

    #@17f
    .line 1706
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@182
    const-string/jumbo v20, "Unable to set backup password"

    #@185
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    .line 1708
    const/16 v19, 0x0

    #@18a
    return v19

    #@18b
    .line 1700
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v8    # "newPwHash":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v18    # "salt":[B
    :catchall_2
    move-exception v19

    #@18c
    move-object/from16 v16, v17

    #@18e
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .local v16, "pwf":Ljava/io/OutputStream;
    goto :goto_6

    #@18f
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_3
    move-exception v19

    #@190
    move-object v5, v6

    #@191
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .local v5, "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    #@193
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_6

    #@194
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_4
    move-exception v19

    #@195
    move-object v9, v10

    #@196
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v9, "out":Ljava/io/DataOutputStream;
    move-object v5, v6

    #@197
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    #@199
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_6

    #@19a
    .line 1657
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_5
    move-exception v19

    #@19b
    move-object v12, v13

    #@19c
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    #@19e
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_6
    move-exception v19

    #@19f
    move-object v14, v15

    #@1a0
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    #@1a1
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    #@1a3
    .line 1654
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v7

    #@1a4
    .restart local v7    # "e":Ljava/io/IOException;
    move-object v12, v13

    #@1a5
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    #@1a7
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v7

    #@1a8
    .restart local v7    # "e":Ljava/io/IOException;
    move-object v14, v15

    #@1a9
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    #@1aa
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public setBackupProvisioned(Z)V
    .locals 3
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 9685
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    .line 9686
    const-string/jumbo v2, "setBackupProvisioned"

    #@8
    .line 9685
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9684
    return-void
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    #@0
    .prologue
    .line 9507
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 9508
    :try_start_0
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@9
    .line 9509
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 9506
    return-void

    #@10
    .line 9507
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    #@0
    .prologue
    .line 9491
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2
    const/16 v2, 0x9

    #@4
    .line 9492
    const/4 v3, 0x0

    #@5
    .line 9491
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 9493
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@b
    const-wide/32 v2, 0xea60

    #@e
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@11
    .line 9488
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 9476
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 9477
    .local v0, "confIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.backupconfirm"

    #@8
    .line 9478
    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    #@b
    .line 9477
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 9479
    const-string/jumbo v2, "conftoken"

    #@11
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 9480
    const/high16 v2, 0x10000000

    #@16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    .line 9481
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@1b
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@1d
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 9485
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 9482
    .end local v0    # "confIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@23
    .line 9483
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    #@24
    return v2
.end method

.method tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 3563
    if-nez p1, :cond_0

    #@2
    .line 3565
    return-void

    #@3
    .line 3570
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@5
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@8
    .line 3575
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    const/16 v2, 0x2710

    #@c
    if-lt v1, v2, :cond_1

    #@e
    .line 3576
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@10
    const-string/jumbo v2, "com.android.backupconfirm"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 3562
    :cond_1
    :goto_0
    return-void

    #@1a
    .line 3578
    :cond_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@1c
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@1e
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@20
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 3582
    :catch_0
    move-exception v0

    #@25
    .line 3583
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@28
    const-string/jumbo v2, "Lost app trying to shut down"

    #@2b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    goto :goto_0
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2091
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@9
    move-result-object v1

    #@a
    .line 2092
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@e
    and-int/lit8 v2, v2, 0x8

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 2096
    :cond_0
    const-string/jumbo v2, "BackupManagerService"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Transport package "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, " not privileged"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 2101
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v5

    #@3b
    .line 2098
    :catch_0
    move-exception v0

    #@3c
    .line 2099
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "BackupManagerService"

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Problem resolving transport package "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_0
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    #@0
    .prologue
    .line 9497
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v2

    #@3
    .line 9498
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 9500
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    .line 9501
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@13
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    #@14
    .line 9496
    return-void

    #@15
    .line 9497
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method waitUntilOperationComplete(I)Z
    .locals 8
    .param p1, "token"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2560
    const/4 v2, 0x0

    #@3
    .line 2561
    .local v2, "finalState":I
    const/4 v3, 0x0

    #@4
    .line 2562
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@6
    monitor-enter v7

    #@7
    .line 2564
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    move-object v0, v4

    #@e
    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    #@10
    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 2565
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-nez v3, :cond_0

    #@13
    :goto_1
    monitor-exit v7

    #@14
    .line 2583
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@16
    const/4 v7, 0x7

    #@17
    invoke-virtual {v4, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@1a
    .line 2586
    if-ne v2, v5, :cond_2

    #@1c
    move v4, v5

    #@1d
    :goto_2
    return v4

    #@1e
    .line 2569
    :cond_0
    :try_start_1
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v4, :cond_1

    #@22
    .line 2571
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@24
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2572
    :catch_0
    move-exception v1

    #@29
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@2a
    .line 2576
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget v2, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .line 2562
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v7

    #@2f
    throw v4

    #@30
    .restart local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    move v4, v6

    #@31
    .line 2586
    goto :goto_2
.end method

.method writeRestoreTokens()V
    .locals 7

    #@0
    .prologue
    .line 2309
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    #@2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    #@4
    const-string/jumbo v5, "rwd"

    #@7
    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 2312
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    #@b
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@e
    .line 2315
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@10
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@13
    .line 2316
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@15
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@18
    .line 2319
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 2320
    const/4 v4, -0x1

    #@1d
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@20
    .line 2329
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    #@23
    .line 2307
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    #@24
    .line 2322
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@26
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@29
    move-result v4

    #@2a
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@2d
    .line 2323
    const-string/jumbo v4, "BackupManagerService"

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Ancestral packages:  "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3e
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@41
    move-result v6

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 2324
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@4f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v3

    #@53
    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_0

    #@59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v2

    #@5d
    check-cast v2, Ljava/lang/String;

    #@5f
    .line 2325
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    goto :goto_1

    #@63
    .line 2330
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@64
    .line 2331
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    #@67
    const-string/jumbo v5, "Unable to write token file:"

    #@6a
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_0
.end method
