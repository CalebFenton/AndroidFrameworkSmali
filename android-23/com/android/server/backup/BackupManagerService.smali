.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$BackupRequest;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$1;,
        Lcom/android/server/backup/BackupManagerService$2;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x3

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

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

.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
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

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
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

.method static synthetic -wrap10(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
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

.method static synthetic -wrap3(Lcom/android/server/backup/BackupManagerService;I)[B
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

.method static synthetic -wrap4(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
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

.method static synthetic -wrap5(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
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

.method static synthetic -wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
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

.method static synthetic -wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/util/HashSet;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
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

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    #@0
    .prologue
    .line 942
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    new-instance v18, Landroid/util/SparseArray;

    #@5
    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    #@8
    .line 260
    move-object/from16 v0, v18

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@e
    .line 276
    new-instance v18, Ljava/util/HashMap;

    #@10
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 275
    move-object/from16 v0, v18

    #@15
    move-object/from16 v1, p0

    #@17
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@19
    .line 282
    new-instance v18, Ljava/lang/Object;

    #@1b
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    #@1e
    move-object/from16 v0, v18

    #@20
    move-object/from16 v1, p0

    #@22
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@24
    .line 288
    new-instance v18, Ljava/lang/Object;

    #@26
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    #@29
    move-object/from16 v0, v18

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2f
    .line 296
    new-instance v18, Ljava/util/ArrayList;

    #@31
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@34
    move-object/from16 v0, v18

    #@36
    move-object/from16 v1, p0

    #@38
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@3a
    .line 299
    new-instance v18, Ljava/lang/Object;

    #@3c
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    #@3f
    move-object/from16 v0, v18

    #@41
    move-object/from16 v1, p0

    #@43
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@45
    .line 303
    new-instance v18, Landroid/content/Intent;

    #@47
    const-string/jumbo v19, "android.backup.TRANSPORT_HOST"

    #@4a
    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4d
    move-object/from16 v0, v18

    #@4f
    move-object/from16 v1, p0

    #@51
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@53
    .line 305
    new-instance v18, Landroid/util/ArrayMap;

    #@55
    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    #@58
    .line 304
    move-object/from16 v0, v18

    #@5a
    move-object/from16 v1, p0

    #@5c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@5e
    .line 307
    new-instance v18, Landroid/util/ArrayMap;

    #@60
    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    #@63
    .line 306
    move-object/from16 v0, v18

    #@65
    move-object/from16 v1, p0

    #@67
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@69
    .line 309
    new-instance v18, Landroid/util/ArrayMap;

    #@6b
    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    #@6e
    .line 308
    move-object/from16 v0, v18

    #@70
    move-object/from16 v1, p0

    #@72
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@74
    .line 524
    new-instance v18, Landroid/util/SparseArray;

    #@76
    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    #@79
    move-object/from16 v0, v18

    #@7b
    move-object/from16 v1, p0

    #@7d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@7f
    .line 525
    new-instance v18, Ljava/lang/Object;

    #@81
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    #@84
    move-object/from16 v0, v18

    #@86
    move-object/from16 v1, p0

    #@88
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@8a
    .line 526
    new-instance v18, Ljava/util/Random;

    #@8c
    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    #@8f
    move-object/from16 v0, v18

    #@91
    move-object/from16 v1, p0

    #@93
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@95
    .line 528
    new-instance v18, Landroid/util/SparseArray;

    #@97
    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    #@9a
    move-object/from16 v0, v18

    #@9c
    move-object/from16 v1, p0

    #@9e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@a0
    .line 542
    new-instance v18, Ljava/security/SecureRandom;

    #@a2
    invoke-direct/range {v18 .. v18}, Ljava/security/SecureRandom;-><init>()V

    #@a5
    move-object/from16 v0, v18

    #@a7
    move-object/from16 v1, p0

    #@a9
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    #@ab
    .line 559
    new-instance v18, Ljava/util/HashSet;

    #@ad
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@b0
    move-object/from16 v0, v18

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@b6
    .line 563
    const/16 v18, 0x0

    #@b8
    move-object/from16 v0, v18

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@be
    .line 564
    const-wide/16 v18, 0x0

    #@c0
    move-wide/from16 v0, v18

    #@c2
    move-object/from16 v2, p0

    #@c4
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@c6
    .line 565
    const-wide/16 v18, 0x0

    #@c8
    move-wide/from16 v0, v18

    #@ca
    move-object/from16 v2, p0

    #@cc
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@ce
    .line 569
    new-instance v18, Ljava/util/HashSet;

    #@d0
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@d3
    move-object/from16 v0, v18

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@d9
    .line 1352
    new-instance v18, Lcom/android/server/backup/BackupManagerService$1;

    #@db
    move-object/from16 v0, v18

    #@dd
    move-object/from16 v1, p0

    #@df
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@e2
    move-object/from16 v0, v18

    #@e4
    move-object/from16 v1, p0

    #@e6
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@e8
    .line 1732
    new-instance v18, Lcom/android/server/backup/BackupManagerService$2;

    #@ea
    move-object/from16 v0, v18

    #@ec
    move-object/from16 v1, p0

    #@ee
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@f1
    move-object/from16 v0, v18

    #@f3
    move-object/from16 v1, p0

    #@f5
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@f7
    .line 943
    move-object/from16 v0, p1

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@fd
    .line 944
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@100
    move-result-object v18

    #@101
    move-object/from16 v0, v18

    #@103
    move-object/from16 v1, p0

    #@105
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@107
    .line 945
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@10a
    move-result-object v18

    #@10b
    move-object/from16 v0, v18

    #@10d
    move-object/from16 v1, p0

    #@10f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@111
    .line 946
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@114
    move-result-object v18

    #@115
    move-object/from16 v0, v18

    #@117
    move-object/from16 v1, p0

    #@119
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@11b
    .line 948
    const-string/jumbo v18, "alarm"

    #@11e
    move-object/from16 v0, p1

    #@120
    move-object/from16 v1, v18

    #@122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@125
    move-result-object v18

    #@126
    check-cast v18, Landroid/app/AlarmManager;

    #@128
    move-object/from16 v0, v18

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@12e
    .line 949
    const-string/jumbo v18, "power"

    #@131
    move-object/from16 v0, p1

    #@133
    move-object/from16 v1, v18

    #@135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@138
    move-result-object v18

    #@139
    check-cast v18, Landroid/os/PowerManager;

    #@13b
    move-object/from16 v0, v18

    #@13d
    move-object/from16 v1, p0

    #@13f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@141
    .line 950
    const-string/jumbo v18, "mount"

    #@144
    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@147
    move-result-object v18

    #@148
    invoke-static/range {v18 .. v18}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@14b
    move-result-object v18

    #@14c
    move-object/from16 v0, v18

    #@14e
    move-object/from16 v1, p0

    #@150
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    #@152
    .line 952
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    #@155
    move-result-object v18

    #@156
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@159
    move-result-object v18

    #@15a
    move-object/from16 v0, v18

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@160
    .line 955
    new-instance v18, Landroid/os/HandlerThread;

    #@162
    const-string/jumbo v19, "backup"

    #@165
    const/16 v20, 0xa

    #@167
    invoke-direct/range {v18 .. v20}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@16a
    move-object/from16 v0, v18

    #@16c
    move-object/from16 v1, p0

    #@16e
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@170
    .line 956
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@174
    move-object/from16 v18, v0

    #@176
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    #@179
    .line 957
    new-instance v18, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    #@17f
    move-object/from16 v19, v0

    #@181
    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@184
    move-result-object v19

    #@185
    move-object/from16 v0, v18

    #@187
    move-object/from16 v1, p0

    #@189
    move-object/from16 v2, v19

    #@18b
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    #@18e
    move-object/from16 v0, v18

    #@190
    move-object/from16 v1, p0

    #@192
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@194
    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@197
    move-result-object v14

    #@198
    .line 962
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "device_provisioned"

    #@19b
    const/16 v19, 0x0

    #@19d
    .line 961
    move-object/from16 v0, v18

    #@19f
    move/from16 v1, v19

    #@1a1
    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1a4
    move-result v18

    #@1a5
    if-eqz v18, :cond_6

    #@1a7
    const/16 v18, 0x1

    #@1a9
    :goto_0
    move/from16 v0, v18

    #@1ab
    move-object/from16 v1, p0

    #@1ad
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@1af
    .line 964
    const-string/jumbo v18, "backup_auto_restore"

    #@1b2
    const/16 v19, 0x1

    #@1b4
    .line 963
    move-object/from16 v0, v18

    #@1b6
    move/from16 v1, v19

    #@1b8
    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1bb
    move-result v18

    #@1bc
    if-eqz v18, :cond_7

    #@1be
    const/16 v18, 0x1

    #@1c0
    :goto_1
    move/from16 v0, v18

    #@1c2
    move-object/from16 v1, p0

    #@1c4
    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@1c6
    .line 966
    new-instance v18, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1cc
    move-object/from16 v19, v0

    #@1ce
    move-object/from16 v0, v18

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    move-object/from16 v2, v19

    #@1d4
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    #@1d7
    move-object/from16 v0, v18

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    #@1dd
    .line 968
    const-string/jumbo v18, "device_provisioned"

    #@1e0
    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1e3
    move-result-object v18

    #@1e4
    .line 969
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    #@1e8
    move-object/from16 v19, v0

    #@1ea
    const/16 v20, 0x0

    #@1ec
    .line 967
    move-object/from16 v0, v18

    #@1ee
    move/from16 v1, v20

    #@1f0
    move-object/from16 v2, v19

    #@1f2
    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1f5
    .line 973
    new-instance v18, Ljava/io/File;

    #@1f7
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    #@1fa
    move-result-object v19

    #@1fb
    const-string/jumbo v20, "backup"

    #@1fe
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@201
    move-object/from16 v0, v18

    #@203
    move-object/from16 v1, p0

    #@205
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@207
    .line 974
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@20b
    move-object/from16 v18, v0

    #@20d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    #@210
    .line 975
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@214
    move-object/from16 v18, v0

    #@216
    invoke-static/range {v18 .. v18}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@219
    move-result v18

    #@21a
    if-nez v18, :cond_0

    #@21c
    .line 976
    const-string/jumbo v18, "BackupManagerService"

    #@21f
    new-instance v19, Ljava/lang/StringBuilder;

    #@221
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@224
    const-string/jumbo v20, "SELinux restorecon failed on "

    #@227
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v19

    #@22b
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@22f
    move-object/from16 v20, v0

    #@231
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v19

    #@235
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@238
    move-result-object v19

    #@239
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23c
    .line 978
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    #@23f
    move-result-object v18

    #@240
    move-object/from16 v0, v18

    #@242
    move-object/from16 v1, p0

    #@244
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@246
    .line 980
    const/16 v18, 0x1

    #@248
    move/from16 v0, v18

    #@24a
    move-object/from16 v1, p0

    #@24c
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@24e
    .line 981
    new-instance v18, Ljava/io/File;

    #@250
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@254
    move-object/from16 v19, v0

    #@256
    const-string/jumbo v20, "pwversion"

    #@259
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25c
    move-object/from16 v0, v18

    #@25e
    move-object/from16 v1, p0

    #@260
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@262
    .line 982
    move-object/from16 v0, p0

    #@264
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@266
    move-object/from16 v18, v0

    #@268
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    #@26b
    move-result v18

    #@26c
    if-eqz v18, :cond_2

    #@26e
    .line 983
    const/4 v7, 0x0

    #@26f
    .line 984
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@270
    .line 986
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    #@272
    move-object/from16 v0, p0

    #@274
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    #@276
    move-object/from16 v18, v0

    #@278
    move-object/from16 v0, v18

    #@27a
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27d
    .line 987
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/DataInputStream;

    #@27f
    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@282
    .line 988
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    #@285
    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v18

    #@286
    move/from16 v0, v18

    #@288
    move-object/from16 v1, p0

    #@28a
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    #@28c
    .line 993
    if-eqz v12, :cond_1

    #@28e
    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    #@291
    .line 994
    :cond_1
    if-eqz v8, :cond_2

    #@293
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@296
    .line 1001
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    new-instance v18, Ljava/io/File;

    #@298
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@29c
    move-object/from16 v19, v0

    #@29e
    const-string/jumbo v20, "pwhash"

    #@2a1
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a4
    move-object/from16 v0, v18

    #@2a6
    move-object/from16 v1, p0

    #@2a8
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2aa
    .line 1002
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2ae
    move-object/from16 v18, v0

    #@2b0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    #@2b3
    move-result v18

    #@2b4
    if-eqz v18, :cond_4

    #@2b6
    .line 1003
    const/4 v7, 0x0

    #@2b7
    .line 1004
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    #@2b8
    .line 1006
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    #@2be
    move-object/from16 v18, v0

    #@2c0
    move-object/from16 v0, v18

    #@2c2
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2c5
    .line 1007
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v12, Ljava/io/DataInputStream;

    #@2c7
    new-instance v18, Ljava/io/BufferedInputStream;

    #@2c9
    move-object/from16 v0, v18

    #@2cb
    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2ce
    move-object/from16 v0, v18

    #@2d0
    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@2d3
    .line 1010
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    #@2d6
    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v16

    #@2d7
    .line 1011
    .local v16, "saltLen":I
    move/from16 v0, v16

    #@2d9
    new-array v15, v0, [B

    #@2db
    .line 1012
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    #@2de
    .line 1013
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@2e1
    move-result-object v18

    #@2e2
    move-object/from16 v0, v18

    #@2e4
    move-object/from16 v1, p0

    #@2e6
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@2e8
    .line 1014
    move-object/from16 v0, p0

    #@2ea
    iput-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@2ec
    .line 1019
    if-eqz v12, :cond_3

    #@2ee
    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    #@2f1
    .line 1020
    :cond_3
    if-eqz v8, :cond_4

    #@2f3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@2f6
    .line 1028
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_4
    :goto_3
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    #@2f8
    const/16 v19, 0x0

    #@2fa
    move-object/from16 v0, v18

    #@2fc
    move-object/from16 v1, p0

    #@2fe
    move-object/from16 v2, v19

    #@300
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V

    #@303
    move-object/from16 v0, v18

    #@305
    move-object/from16 v1, p0

    #@307
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    #@309
    .line 1029
    new-instance v6, Landroid/content/IntentFilter;

    #@30b
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@30e
    .line 1030
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v18, "android.app.backup.intent.RUN"

    #@311
    move-object/from16 v0, v18

    #@313
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@316
    .line 1031
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    #@31a
    move-object/from16 v18, v0

    #@31c
    .line 1032
    const-string/jumbo v19, "android.permission.BACKUP"

    #@31f
    const/16 v20, 0x0

    #@321
    .line 1031
    move-object/from16 v0, p1

    #@323
    move-object/from16 v1, v18

    #@325
    move-object/from16 v2, v19

    #@327
    move-object/from16 v3, v20

    #@329
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@32c
    .line 1034
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    #@32e
    const/16 v19, 0x0

    #@330
    move-object/from16 v0, v18

    #@332
    move-object/from16 v1, p0

    #@334
    move-object/from16 v2, v19

    #@336
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V

    #@339
    move-object/from16 v0, v18

    #@33b
    move-object/from16 v1, p0

    #@33d
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    #@33f
    .line 1035
    new-instance v6, Landroid/content/IntentFilter;

    #@341
    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    #@344
    .line 1036
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v18, "android.app.backup.intent.INIT"

    #@347
    move-object/from16 v0, v18

    #@349
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34c
    .line 1037
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    #@350
    move-object/from16 v18, v0

    #@352
    .line 1038
    const-string/jumbo v19, "android.permission.BACKUP"

    #@355
    const/16 v20, 0x0

    #@357
    .line 1037
    move-object/from16 v0, p1

    #@359
    move-object/from16 v1, v18

    #@35b
    move-object/from16 v2, v19

    #@35d
    move-object/from16 v3, v20

    #@35f
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@362
    .line 1040
    new-instance v4, Landroid/content/Intent;

    #@364
    const-string/jumbo v18, "android.app.backup.intent.RUN"

    #@367
    move-object/from16 v0, v18

    #@369
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@36c
    .line 1041
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    #@36e
    move/from16 v0, v18

    #@370
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@373
    .line 1042
    const/16 v18, 0x1

    #@375
    const/16 v19, 0x0

    #@377
    move-object/from16 v0, p1

    #@379
    move/from16 v1, v18

    #@37b
    move/from16 v2, v19

    #@37d
    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@380
    move-result-object v18

    #@381
    move-object/from16 v0, v18

    #@383
    move-object/from16 v1, p0

    #@385
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    #@387
    .line 1044
    new-instance v13, Landroid/content/Intent;

    #@389
    const-string/jumbo v18, "android.app.backup.intent.INIT"

    #@38c
    move-object/from16 v0, v18

    #@38e
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@391
    .line 1045
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    #@393
    move/from16 v0, v18

    #@395
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@398
    .line 1046
    const/16 v18, 0x5

    #@39a
    const/16 v19, 0x0

    #@39c
    move-object/from16 v0, p1

    #@39e
    move/from16 v1, v18

    #@3a0
    move/from16 v2, v19

    #@3a2
    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@3a5
    move-result-object v18

    #@3a6
    move-object/from16 v0, v18

    #@3a8
    move-object/from16 v1, p0

    #@3aa
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@3ac
    .line 1049
    new-instance v18, Ljava/io/File;

    #@3ae
    move-object/from16 v0, p0

    #@3b0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@3b2
    move-object/from16 v19, v0

    #@3b4
    const-string/jumbo v20, "pending"

    #@3b7
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3ba
    move-object/from16 v0, v18

    #@3bc
    move-object/from16 v1, p0

    #@3be
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@3c0
    .line 1050
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    #@3c4
    move-object/from16 v18, v0

    #@3c6
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    #@3c9
    .line 1051
    const/16 v18, 0x0

    #@3cb
    move-object/from16 v0, v18

    #@3cd
    move-object/from16 v1, p0

    #@3cf
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    #@3d1
    .line 1054
    new-instance v18, Ljava/io/File;

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@3d7
    move-object/from16 v19, v0

    #@3d9
    const-string/jumbo v20, "fb-schedule"

    #@3dc
    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3df
    move-object/from16 v0, v18

    #@3e1
    move-object/from16 v1, p0

    #@3e3
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    #@3e5
    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    #@3e8
    .line 1060
    move-object/from16 v0, p0

    #@3ea
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3ec
    move-object/from16 v18, v0

    #@3ee
    monitor-enter v18

    #@3ef
    .line 1061
    const/16 v19, 0x0

    #@3f1
    :try_start_8
    move-object/from16 v0, p0

    #@3f3
    move-object/from16 v1, v19

    #@3f5
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@3f8
    monitor-exit v18

    #@3f9
    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3fc
    move-result-object v18

    #@3fd
    .line 1067
    const-string/jumbo v19, "backup_transport"

    #@400
    .line 1066
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@403
    move-result-object v18

    #@404
    move-object/from16 v0, v18

    #@406
    move-object/from16 v1, p0

    #@408
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@40a
    .line 1068
    const-string/jumbo v18, ""

    #@40d
    move-object/from16 v0, p0

    #@40f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@411
    move-object/from16 v19, v0

    #@413
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@416
    move-result v18

    #@417
    if-eqz v18, :cond_5

    #@419
    .line 1069
    const/16 v18, 0x0

    #@41b
    move-object/from16 v0, v18

    #@41d
    move-object/from16 v1, p0

    #@41f
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@421
    .line 1071
    :cond_5
    const-string/jumbo v18, "BackupManagerService"

    #@424
    new-instance v19, Ljava/lang/StringBuilder;

    #@426
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@429
    const-string/jumbo v20, "Starting with transport "

    #@42c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42f
    move-result-object v19

    #@430
    move-object/from16 v0, p0

    #@432
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@434
    move-object/from16 v20, v0

    #@436
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@439
    move-result-object v19

    #@43a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43d
    move-result-object v19

    #@43e
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@441
    .line 1074
    move-object/from16 v0, p0

    #@443
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@445
    move-object/from16 v18, v0

    #@447
    .line 1075
    move-object/from16 v0, p0

    #@449
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@44b
    move-object/from16 v19, v0

    #@44d
    const/16 v20, 0x0

    #@44f
    const/16 v21, 0x0

    #@451
    .line 1074
    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@454
    move-result-object v9

    #@455
    .line 1077
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v19, "BackupManagerService"

    #@458
    new-instance v18, Ljava/lang/StringBuilder;

    #@45a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@45d
    const-string/jumbo v20, "Found transports: "

    #@460
    move-object/from16 v0, v18

    #@462
    move-object/from16 v1, v20

    #@464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@467
    move-result-object v20

    #@468
    if-nez v9, :cond_e

    #@46a
    const-string/jumbo v18, "null"

    #@46d
    :goto_4
    move-object/from16 v0, v20

    #@46f
    move-object/from16 v1, v18

    #@471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@474
    move-result-object v18

    #@475
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@478
    move-result-object v18

    #@479
    move-object/from16 v0, v19

    #@47b
    move-object/from16 v1, v18

    #@47d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@480
    .line 1079
    if-eqz v9, :cond_f

    #@482
    .line 1080
    const/4 v10, 0x0

    #@483
    .local v10, "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@486
    move-result v18

    #@487
    move/from16 v0, v18

    #@489
    if-ge v10, v0, :cond_f

    #@48b
    .line 1081
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48e
    move-result-object v18

    #@48f
    check-cast v18, Landroid/content/pm/ResolveInfo;

    #@491
    move-object/from16 v0, v18

    #@493
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@495
    move-object/from16 v17, v0

    #@497
    .line 1085
    .local v17, "transport":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    #@499
    move-object/from16 v1, v17

    #@49b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@49e
    .line 1080
    add-int/lit8 v10, v10, 0x1

    #@4a0
    goto :goto_5

    #@4a1
    .line 961
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "transport":Landroid/content/pm/ServiceInfo;
    :cond_6
    const/16 v18, 0x0

    #@4a3
    goto/16 :goto_0

    #@4a5
    .line 963
    :cond_7
    const/16 v18, 0x0

    #@4a7
    goto/16 :goto_1

    #@4a9
    .line 995
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    #@4aa
    .line 996
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v18, "BackupManagerService"

    #@4ad
    const-string/jumbo v19, "Error closing pw version files"

    #@4b0
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b3
    goto/16 :goto_2

    #@4b5
    .line 989
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    #@4b6
    .line 990
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string/jumbo v18, "BackupManagerService"

    #@4b9
    const-string/jumbo v19, "Unable to read backup pw version"

    #@4bc
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@4bf
    .line 993
    if-eqz v11, :cond_8

    #@4c1
    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@4c4
    .line 994
    :cond_8
    if-eqz v7, :cond_2

    #@4c6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    #@4c9
    goto/16 :goto_2

    #@4cb
    .line 995
    :catch_2
    move-exception v5

    #@4cc
    .line 996
    const-string/jumbo v18, "BackupManagerService"

    #@4cf
    const-string/jumbo v19, "Error closing pw version files"

    #@4d2
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d5
    goto/16 :goto_2

    #@4d7
    .line 991
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    #@4d8
    .line 993
    :goto_7
    if-eqz v11, :cond_9

    #@4da
    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@4dd
    .line 994
    :cond_9
    if-eqz v7, :cond_a

    #@4df
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    #@4e2
    .line 991
    :cond_a
    :goto_8
    throw v18

    #@4e3
    .line 995
    :catch_3
    move-exception v5

    #@4e4
    .line 996
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@4e7
    const-string/jumbo v20, "Error closing pw version files"

    #@4ea
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4ed
    goto :goto_8

    #@4ee
    .line 1021
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_4
    move-exception v5

    #@4ef
    .line 1022
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "BackupManagerService"

    #@4f2
    const-string/jumbo v19, "Unable to close streams"

    #@4f5
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f8
    goto/16 :goto_3

    #@4fa
    .line 1015
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v5

    #@4fb
    .line 1016
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_c
    const-string/jumbo v18, "BackupManagerService"

    #@4fe
    const-string/jumbo v19, "Unable to read saved backup pw hash"

    #@501
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@504
    .line 1019
    if-eqz v11, :cond_b

    #@506
    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@509
    .line 1020
    :cond_b
    if-eqz v7, :cond_4

    #@50b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@50e
    goto/16 :goto_3

    #@510
    .line 1021
    :catch_6
    move-exception v5

    #@511
    .line 1022
    const-string/jumbo v18, "BackupManagerService"

    #@514
    const-string/jumbo v19, "Unable to close streams"

    #@517
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51a
    goto/16 :goto_3

    #@51c
    .line 1017
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    #@51d
    .line 1019
    :goto_a
    if-eqz v11, :cond_c

    #@51f
    :try_start_e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    #@522
    .line 1020
    :cond_c
    if-eqz v7, :cond_d

    #@524
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    #@527
    .line 1017
    :cond_d
    :goto_b
    throw v18

    #@528
    .line 1021
    :catch_7
    move-exception v5

    #@529
    .line 1022
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@52c
    const-string/jumbo v20, "Unable to close streams"

    #@52f
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@532
    goto :goto_b

    #@533
    .line 1060
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_2
    move-exception v19

    #@534
    monitor-exit v18

    #@535
    throw v19

    #@536
    .line 1077
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@539
    move-result v18

    #@53a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53d
    move-result-object v18

    #@53e
    goto/16 :goto_4

    #@540
    .line 1091
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    #@543
    .line 1094
    move-object/from16 v0, p0

    #@545
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@547
    move-object/from16 v18, v0

    #@549
    const-string/jumbo v19, "*backup*"

    #@54c
    const/16 v20, 0x1

    #@54e
    move-object/from16 v0, v18

    #@550
    move/from16 v1, v20

    #@552
    move-object/from16 v2, v19

    #@554
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@557
    move-result-object v18

    #@558
    move-object/from16 v0, v18

    #@55a
    move-object/from16 v1, p0

    #@55c
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@55e
    .line 942
    return-void

    #@55f
    .line 1017
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v18

    #@560
    move-object v7, v8

    #@561
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto :goto_a

    #@562
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_4
    move-exception v18

    #@563
    move-object v11, v12

    #@564
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@565
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_a

    #@566
    .line 1015
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_8
    move-exception v5

    #@567
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    #@568
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    #@569
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v5

    #@56a
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    #@56b
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@56c
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_9

    #@56d
    .line 991
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catchall_5
    move-exception v18

    #@56e
    move-object v7, v8

    #@56f
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@571
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_6
    move-exception v18

    #@572
    move-object v11, v12

    #@573
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@574
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@576
    .line 989
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_a
    move-exception v5

    #@577
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    #@578
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_6

    #@57a
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_b
    move-exception v5

    #@57b
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    #@57c
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    #@57d
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
    .line 2009
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
    .line 2010
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
    .line 2011
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    .line 2012
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Ljava/util/HashSet;

    #@26
    .line 2013
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    #@28
    .line 2014
    new-instance v2, Ljava/util/HashSet;

    #@2a
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@2d
    .line 2015
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@32
    .line 2017
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@37
    .line 2022
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@39
    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 2004
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 632
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 634
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
    .line 638
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
    .line 613
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    const v1, 0x8000

    #@6
    and-int/2addr v0, v1

    #@7
    if-nez v0, :cond_0

    #@9
    .line 614
    return v2

    #@a
    .line 618
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
    .line 619
    return v2

    #@15
    .line 623
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
    .line 624
    return v2

    #@21
    .line 627
    :cond_2
    const/4 v0, 0x1

    #@22
    return v0
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currentPw"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x2710

    #@2
    .line 1591
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1592
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@a
    const/4 v2, 0x2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 1593
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
    .line 1594
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
    .line 1600
    .end local v0    # "pbkdf2Fallback":Z
    :cond_0
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 1592
    :cond_1
    const/4 v0, 0x0

    #@25
    .restart local v0    # "pbkdf2Fallback":Z
    goto :goto_0

    #@26
    .line 1596
    :cond_2
    const-string/jumbo v1, "BackupManagerService"

    #@29
    const-string/jumbo v2, "Backup password mismatch; aborting"

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1597
    const/4 v1, 0x0

    #@30
    return v1
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    #@0
    .prologue
    .line 1427
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@3
    move-result-object v2

    #@4
    .line 1428
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    #@6
    const/16 v4, 0x100

    #@8
    invoke-direct {v3, p2, p3, p4, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    #@b
    .line 1429
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
    .line 1432
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v0

    #@11
    .line 1433
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "BackupManagerService"

    #@14
    const-string/jumbo v5, "PBKDF2 unavailable!"

    #@17
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1435
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    const/4 v4, 0x0

    #@1b
    return-object v4

    #@1c
    .line 1430
    :catch_1
    move-exception v1

    #@1d
    .line 1431
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
    .line 1439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@4
    move-result-object v0

    #@5
    .line 1440
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    #@7
    .line 1441
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
    .line 1443
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
    .line 1422
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
    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p1

    #@3
    mul-int/lit8 v2, v2, 0x2

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 1448
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 1449
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
    .line 1448
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1451
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
    .line 8375
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    #@3
    move-result-object v0

    #@4
    .line 8376
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    #@7
    .line 8374
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
    .line 8383
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    #@2
    .line 8384
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
    .line 8385
    const-string/jumbo v3, " uid="

    #@1f
    .line 8384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 8385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@26
    move-result v3

    #@27
    .line 8384
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
    .line 8386
    return-void

    #@33
    .line 8389
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@35
    monitor-enter v2

    #@36
    .line 8391
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 8394
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@3e
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@41
    .line 8395
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@43
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    if-nez v1, :cond_1

    #@49
    .line 8401
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_1
    monitor-exit v2

    #@4d
    .line 8407
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4f
    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@52
    .line 8379
    return-void

    #@53
    .line 8389
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
    .line 8414
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.BACKUP"

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v6

    #@9
    .line 8415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v7

    #@d
    .line 8414
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@10
    move-result v4

    #@11
    .line 8415
    const/4 v5, -0x1

    #@12
    .line 8414
    if-ne v4, v5, :cond_0

    #@14
    .line 8416
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@16
    monitor-enter v5

    #@17
    .line 8417
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
    .line 8416
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 8422
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@2a
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@2d
    .line 8423
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v4, "@pm@"

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 8424
    const-string/jumbo v4, "@pm@"

    #@39
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3c
    .line 8436
    :goto_0
    return-object v3

    #@3d
    .line 8426
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@3f
    monitor-enter v5

    #@40
    .line 8427
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@45
    move-result v0

    #@46
    .line 8428
    .local v0, "N":I
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@49
    .line 8429
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Ljava/util/HashSet;

    #@51
    .line 8430
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    #@53
    .line 8431
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@56
    .line 8428
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
    .line 8426
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
    .line 9599
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 9600
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "Defined backup agents:"

    #@7
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 9601
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
    .line 9602
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "  "

    #@1d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 9603
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    const/16 v3, 0x3a

    #@27
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    #@2a
    .line 9604
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
    .line 9598
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 34
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 9609
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4
    move-object/from16 v26, v0

    #@6
    monitor-enter v26

    #@7
    .line 9610
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v25, "Backup Manager is "

    #@f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v25

    #@13
    move-object/from16 v0, p0

    #@15
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@17
    move/from16 v24, v0

    #@19
    if-eqz v24, :cond_1

    #@1b
    const-string/jumbo v24, "enabled"

    #@1e
    :goto_0
    move-object/from16 v0, v25

    #@20
    move-object/from16 v1, v24

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v24

    #@26
    .line 9611
    const-string/jumbo v25, " / "

    #@29
    .line 9610
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v25

    #@2d
    .line 9611
    move-object/from16 v0, p0

    #@2f
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@31
    move/from16 v24, v0

    #@33
    if-nez v24, :cond_2

    #@35
    const-string/jumbo v24, "not "

    #@38
    .line 9610
    :goto_1
    move-object/from16 v0, v25

    #@3a
    move-object/from16 v1, v24

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v24

    #@40
    .line 9611
    const-string/jumbo v25, "provisioned / "

    #@43
    .line 9610
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v25

    #@47
    .line 9612
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@4b
    move-object/from16 v24, v0

    #@4d
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    #@50
    move-result v24

    #@51
    if-nez v24, :cond_3

    #@53
    const-string/jumbo v24, "not "

    #@56
    .line 9610
    :goto_2
    move-object/from16 v0, v25

    #@58
    move-object/from16 v1, v24

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v24

    #@5e
    .line 9612
    const-string/jumbo v25, "pending init"

    #@61
    .line 9610
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v24

    #@65
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v24

    #@69
    move-object/from16 v0, p1

    #@6b
    move-object/from16 v1, v24

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 9613
    new-instance v24, Ljava/lang/StringBuilder;

    #@72
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v25, "Auto-restore is "

    #@78
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v25

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@80
    move/from16 v24, v0

    #@82
    if-eqz v24, :cond_4

    #@84
    const-string/jumbo v24, "enabled"

    #@87
    :goto_3
    move-object/from16 v0, v25

    #@89
    move-object/from16 v1, v24

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v24

    #@8f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v24

    #@93
    move-object/from16 v0, p1

    #@95
    move-object/from16 v1, v24

    #@97
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 9614
    move-object/from16 v0, p0

    #@9c
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@9e
    move/from16 v24, v0

    #@a0
    if-eqz v24, :cond_0

    #@a2
    const-string/jumbo v24, "Backup currently running"

    #@a5
    move-object/from16 v0, p1

    #@a7
    move-object/from16 v1, v24

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    .line 9615
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v25, "Last backup pass started: "

    #@b4
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v24

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    #@bc
    move-wide/from16 v28, v0

    #@be
    move-object/from16 v0, v24

    #@c0
    move-wide/from16 v1, v28

    #@c2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v24

    #@c6
    .line 9616
    const-string/jumbo v25, " (now = "

    #@c9
    .line 9615
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v24

    #@cd
    .line 9616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d0
    move-result-wide v28

    #@d1
    .line 9615
    move-object/from16 v0, v24

    #@d3
    move-wide/from16 v1, v28

    #@d5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v24

    #@d9
    .line 9616
    const/16 v25, 0x29

    #@db
    .line 9615
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@de
    move-result-object v24

    #@df
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v24

    #@e3
    move-object/from16 v0, p1

    #@e5
    move-object/from16 v1, v24

    #@e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 9617
    new-instance v24, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v25, "  next scheduled: "

    #@f2
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v24

    #@f6
    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    #@f9
    move-result-wide v28

    #@fa
    move-object/from16 v0, v24

    #@fc
    move-wide/from16 v1, v28

    #@fe
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@101
    move-result-object v24

    #@102
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v24

    #@106
    move-object/from16 v0, p1

    #@108
    move-object/from16 v1, v24

    #@10a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 9619
    const-string/jumbo v24, "Available transports:"

    #@110
    move-object/from16 v0, p1

    #@112
    move-object/from16 v1, v24

    #@114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@117
    .line 9620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    #@11a
    move-result-object v22

    #@11b
    .line 9621
    .local v22, "transports":[Ljava/lang/String;
    if-eqz v22, :cond_7

    #@11d
    .line 9622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    #@120
    move-result-object v27

    #@121
    const/16 v24, 0x0

    #@123
    move-object/from16 v0, v27

    #@125
    array-length v0, v0

    #@126
    move/from16 v28, v0

    #@128
    move/from16 v25, v24

    #@12a
    :goto_4
    move/from16 v0, v25

    #@12c
    move/from16 v1, v28

    #@12e
    if-ge v0, v1, :cond_7

    #@130
    aget-object v20, v27, v25

    #@132
    .line 9623
    .local v20, "t":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    #@134
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@13b
    move-object/from16 v24, v0

    #@13d
    move-object/from16 v0, v20

    #@13f
    move-object/from16 v1, v24

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@144
    move-result v24

    #@145
    if-eqz v24, :cond_5

    #@147
    const-string/jumbo v24, "  * "

    #@14a
    :goto_5
    move-object/from16 v0, v29

    #@14c
    move-object/from16 v1, v24

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v24

    #@152
    move-object/from16 v0, v24

    #@154
    move-object/from16 v1, v20

    #@156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v24

    #@15a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v24

    #@15e
    move-object/from16 v0, p1

    #@160
    move-object/from16 v1, v24

    #@162
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@165
    .line 9625
    :try_start_1
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v20

    #@169
    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@16c
    move-result-object v21

    #@16d
    .line 9626
    .local v21, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@173
    move-object/from16 v24, v0

    #@175
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@178
    move-result-object v29

    #@179
    move-object/from16 v0, v24

    #@17b
    move-object/from16 v1, v29

    #@17d
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@180
    .line 9627
    .local v7, "dir":Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    #@182
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v29, "       destination: "

    #@188
    move-object/from16 v0, v24

    #@18a
    move-object/from16 v1, v29

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v24

    #@190
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    #@193
    move-result-object v29

    #@194
    move-object/from16 v0, v24

    #@196
    move-object/from16 v1, v29

    #@198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v24

    #@19c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19f
    move-result-object v24

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    move-object/from16 v1, v24

    #@1a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a7
    .line 9628
    new-instance v24, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v29, "       intent: "

    #@1af
    move-object/from16 v0, v24

    #@1b1
    move-object/from16 v1, v29

    #@1b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v24

    #@1b7
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    #@1ba
    move-result-object v29

    #@1bb
    move-object/from16 v0, v24

    #@1bd
    move-object/from16 v1, v29

    #@1bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v24

    #@1c3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v24

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    move-object/from16 v1, v24

    #@1cb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 9629
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@1d1
    move-result-object v29

    #@1d2
    const/16 v24, 0x0

    #@1d4
    move-object/from16 v0, v29

    #@1d6
    array-length v0, v0

    #@1d7
    move/from16 v30, v0

    #@1d9
    :goto_6
    move/from16 v0, v24

    #@1db
    move/from16 v1, v30

    #@1dd
    if-ge v0, v1, :cond_6

    #@1df
    aget-object v11, v29, v24

    #@1e1
    .line 9630
    .local v11, "f":Ljava/io/File;
    new-instance v31, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v32, "       "

    #@1e9
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v31

    #@1ed
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1f0
    move-result-object v32

    #@1f1
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v31

    #@1f5
    const-string/jumbo v32, " - "

    #@1f8
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v31

    #@1fc
    invoke-virtual {v11}, Ljava/io/File;->length()J

    #@1ff
    move-result-wide v32

    #@200
    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@203
    move-result-object v31

    #@204
    const-string/jumbo v32, " state bytes"

    #@207
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v31

    #@20b
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v31

    #@20f
    move-object/from16 v0, p1

    #@211
    move-object/from16 v1, v31

    #@213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@216
    .line 9629
    add-int/lit8 v24, v24, 0x1

    #@218
    goto :goto_6

    #@219
    .line 9610
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v20    # "t":Ljava/lang/String;
    .end local v21    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v22    # "transports":[Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v24, "disabled"

    #@21c
    goto/16 :goto_0

    #@21e
    .line 9611
    :cond_2
    const-string/jumbo v24, ""

    #@221
    goto/16 :goto_1

    #@223
    .line 9612
    :cond_3
    const-string/jumbo v24, ""

    #@226
    goto/16 :goto_2

    #@228
    .line 9613
    :cond_4
    const-string/jumbo v24, "disabled"

    #@22b
    goto/16 :goto_3

    #@22d
    .line 9623
    .restart local v20    # "t":Ljava/lang/String;
    .restart local v22    # "transports":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v24, "    "

    #@230
    goto/16 :goto_5

    #@232
    .line 9632
    :catch_0
    move-exception v8

    #@233
    .line 9633
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "BackupManagerService"

    #@236
    const-string/jumbo v29, "Error in transport"

    #@239
    move-object/from16 v0, v24

    #@23b
    move-object/from16 v1, v29

    #@23d
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@240
    .line 9634
    new-instance v24, Ljava/lang/StringBuilder;

    #@242
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v29, "        Error: "

    #@248
    move-object/from16 v0, v24

    #@24a
    move-object/from16 v1, v29

    #@24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v24

    #@250
    move-object/from16 v0, v24

    #@252
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v24

    #@256
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v24

    #@25a
    move-object/from16 v0, p1

    #@25c
    move-object/from16 v1, v24

    #@25e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@261
    .line 9622
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_6
    add-int/lit8 v24, v25, 0x1

    #@263
    move/from16 v25, v24

    #@265
    goto/16 :goto_4

    #@267
    .line 9639
    .end local v20    # "t":Ljava/lang/String;
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    #@269
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@26c
    const-string/jumbo v25, "Pending init: "

    #@26f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v24

    #@273
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@277
    move-object/from16 v25, v0

    #@279
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    #@27c
    move-result v25

    #@27d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@280
    move-result-object v24

    #@281
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v24

    #@285
    move-object/from16 v0, p1

    #@287
    move-object/from16 v1, v24

    #@289
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28c
    .line 9640
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@290
    move-object/from16 v24, v0

    #@292
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@295
    move-result-object v19

    #@296
    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@299
    move-result v24

    #@29a
    if-eqz v24, :cond_8

    #@29c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29f
    move-result-object v18

    #@2a0
    check-cast v18, Ljava/lang/String;

    #@2a2
    .line 9641
    .local v18, "s":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v25, "    "

    #@2aa
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v24

    #@2ae
    move-object/from16 v0, v24

    #@2b0
    move-object/from16 v1, v18

    #@2b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v24

    #@2b6
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v24

    #@2ba
    move-object/from16 v0, p1

    #@2bc
    move-object/from16 v1, v24

    #@2be
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c1
    goto :goto_7

    #@2c2
    .line 9609
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s$iterator":Ljava/util/Iterator;
    .end local v22    # "transports":[Ljava/lang/String;
    :catchall_0
    move-exception v24

    #@2c3
    monitor-exit v26

    #@2c4
    throw v24

    #@2c5
    .line 9645
    .restart local v19    # "s$iterator":Ljava/util/Iterator;
    .restart local v22    # "transports":[Ljava/lang/String;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2c9
    move-object/from16 v25, v0

    #@2cb
    monitor-enter v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2cc
    .line 9646
    :try_start_4
    move-object/from16 v0, p0

    #@2ce
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2d0
    move-object/from16 v24, v0

    #@2d2
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    #@2d5
    move-result v24

    #@2d6
    if-nez v24, :cond_9

    #@2d8
    .line 9647
    const-string/jumbo v24, "Most recent backup trace:"

    #@2db
    move-object/from16 v0, p1

    #@2dd
    move-object/from16 v1, v24

    #@2df
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e2
    .line 9648
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2e6
    move-object/from16 v24, v0

    #@2e8
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2eb
    move-result-object v19

    #@2ec
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@2ef
    move-result v24

    #@2f0
    if-eqz v24, :cond_9

    #@2f2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f5
    move-result-object v18

    #@2f6
    check-cast v18, Ljava/lang/String;

    #@2f8
    .line 9649
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@2fa
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@2fd
    const-string/jumbo v27, "   "

    #@300
    move-object/from16 v0, v24

    #@302
    move-object/from16 v1, v27

    #@304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v24

    #@308
    move-object/from16 v0, v24

    #@30a
    move-object/from16 v1, v18

    #@30c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30f
    move-result-object v24

    #@310
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@313
    move-result-object v24

    #@314
    move-object/from16 v0, p1

    #@316
    move-object/from16 v1, v24

    #@318
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@31b
    goto :goto_8

    #@31c
    .line 9645
    .end local v18    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v24

    #@31d
    :try_start_5
    monitor-exit v25

    #@31e
    throw v24

    #@31f
    :cond_9
    monitor-exit v25

    #@320
    .line 9655
    const-string/jumbo v24, "Ancestral: "

    #@323
    move-object/from16 v0, p1

    #@325
    move-object/from16 v1, v24

    #@327
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32a
    move-object/from16 v0, p0

    #@32c
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@32e
    move-wide/from16 v24, v0

    #@330
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@333
    move-result-object v24

    #@334
    move-object/from16 v0, p1

    #@336
    move-object/from16 v1, v24

    #@338
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33b
    .line 9656
    const-string/jumbo v24, "Current:   "

    #@33e
    move-object/from16 v0, p1

    #@340
    move-object/from16 v1, v24

    #@342
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@345
    move-object/from16 v0, p0

    #@347
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@349
    move-wide/from16 v24, v0

    #@34b
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@34e
    move-result-object v24

    #@34f
    move-object/from16 v0, p1

    #@351
    move-object/from16 v1, v24

    #@353
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@356
    .line 9658
    move-object/from16 v0, p0

    #@358
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@35a
    move-object/from16 v24, v0

    #@35c
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    #@35f
    move-result v4

    #@360
    .line 9659
    .local v4, "N":I
    const-string/jumbo v24, "Participants:"

    #@363
    move-object/from16 v0, p1

    #@365
    move-object/from16 v1, v24

    #@367
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36a
    .line 9660
    const/4 v12, 0x0

    #@36b
    .local v12, "i":I
    :goto_9
    if-ge v12, v4, :cond_b

    #@36d
    .line 9661
    move-object/from16 v0, p0

    #@36f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@371
    move-object/from16 v24, v0

    #@373
    move-object/from16 v0, v24

    #@375
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    #@378
    move-result v23

    #@379
    .line 9662
    .local v23, "uid":I
    const-string/jumbo v24, "  uid: "

    #@37c
    move-object/from16 v0, p1

    #@37e
    move-object/from16 v1, v24

    #@380
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@383
    .line 9663
    move-object/from16 v0, p1

    #@385
    move/from16 v1, v23

    #@387
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    #@38a
    .line 9664
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@38e
    move-object/from16 v24, v0

    #@390
    move-object/from16 v0, v24

    #@392
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@395
    move-result-object v13

    #@396
    check-cast v13, Ljava/util/HashSet;

    #@398
    .line 9665
    .local v13, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39b
    move-result-object v6

    #@39c
    .local v6, "app$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@39f
    move-result v24

    #@3a0
    if-eqz v24, :cond_a

    #@3a2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a5
    move-result-object v5

    #@3a6
    check-cast v5, Ljava/lang/String;

    #@3a8
    .line 9666
    .local v5, "app":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@3aa
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3ad
    const-string/jumbo v25, "    "

    #@3b0
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b3
    move-result-object v24

    #@3b4
    move-object/from16 v0, v24

    #@3b6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b9
    move-result-object v24

    #@3ba
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bd
    move-result-object v24

    #@3be
    move-object/from16 v0, p1

    #@3c0
    move-object/from16 v1, v24

    #@3c2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c5
    goto :goto_a

    #@3c6
    .line 9660
    .end local v5    # "app":Ljava/lang/String;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    #@3c8
    goto :goto_9

    #@3c9
    .line 9670
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "uid":I
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    #@3cb
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@3ce
    const-string/jumbo v25, "Ancestral packages: "

    #@3d1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v25

    #@3d5
    .line 9671
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3d9
    move-object/from16 v24, v0

    #@3db
    if-nez v24, :cond_c

    #@3dd
    const-string/jumbo v24, "none"

    #@3e0
    .line 9670
    :goto_b
    move-object/from16 v0, v25

    #@3e2
    move-object/from16 v1, v24

    #@3e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v24

    #@3e8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3eb
    move-result-object v24

    #@3ec
    move-object/from16 v0, p1

    #@3ee
    move-object/from16 v1, v24

    #@3f0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f3
    .line 9672
    move-object/from16 v0, p0

    #@3f5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3f7
    move-object/from16 v24, v0

    #@3f9
    if-eqz v24, :cond_d

    #@3fb
    .line 9673
    move-object/from16 v0, p0

    #@3fd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@3ff
    move-object/from16 v24, v0

    #@401
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@404
    move-result-object v15

    #@405
    .local v15, "pkg$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@408
    move-result v24

    #@409
    if-eqz v24, :cond_d

    #@40b
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40e
    move-result-object v14

    #@40f
    check-cast v14, Ljava/lang/String;

    #@411
    .line 9674
    .local v14, "pkg":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@413
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@416
    const-string/jumbo v25, "    "

    #@419
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v24

    #@41d
    move-object/from16 v0, v24

    #@41f
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@422
    move-result-object v24

    #@423
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@426
    move-result-object v24

    #@427
    move-object/from16 v0, p1

    #@429
    move-object/from16 v1, v24

    #@42b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42e
    goto :goto_c

    #@42f
    .line 9671
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "pkg$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@433
    move-object/from16 v24, v0

    #@435
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    #@438
    move-result v24

    #@439
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43c
    move-result-object v24

    #@43d
    goto :goto_b

    #@43e
    .line 9678
    :cond_d
    new-instance v24, Ljava/lang/StringBuilder;

    #@440
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v25, "Ever backed up: "

    #@446
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v24

    #@44a
    move-object/from16 v0, p0

    #@44c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@44e
    move-object/from16 v25, v0

    #@450
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    #@453
    move-result v25

    #@454
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@457
    move-result-object v24

    #@458
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45b
    move-result-object v24

    #@45c
    move-object/from16 v0, p1

    #@45e
    move-object/from16 v1, v24

    #@460
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@463
    .line 9679
    move-object/from16 v0, p0

    #@465
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@467
    move-object/from16 v24, v0

    #@469
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46c
    move-result-object v15

    #@46d
    .restart local v15    # "pkg$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@470
    move-result v24

    #@471
    if-eqz v24, :cond_e

    #@473
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@476
    move-result-object v14

    #@477
    check-cast v14, Ljava/lang/String;

    #@479
    .line 9680
    .restart local v14    # "pkg":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@47b
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@47e
    const-string/jumbo v25, "    "

    #@481
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    move-result-object v24

    #@485
    move-object/from16 v0, v24

    #@487
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48a
    move-result-object v24

    #@48b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48e
    move-result-object v24

    #@48f
    move-object/from16 v0, p1

    #@491
    move-object/from16 v1, v24

    #@493
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@496
    goto :goto_d

    #@497
    .line 9683
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_e
    new-instance v24, Ljava/lang/StringBuilder;

    #@499
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@49c
    const-string/jumbo v25, "Pending key/value backup: "

    #@49f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v24

    #@4a3
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@4a7
    move-object/from16 v25, v0

    #@4a9
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    #@4ac
    move-result v25

    #@4ad
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b0
    move-result-object v24

    #@4b1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b4
    move-result-object v24

    #@4b5
    move-object/from16 v0, p1

    #@4b7
    move-object/from16 v1, v24

    #@4b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4bc
    .line 9684
    move-object/from16 v0, p0

    #@4be
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@4c0
    move-object/from16 v24, v0

    #@4c2
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4c5
    move-result-object v24

    #@4c6
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c9
    move-result-object v17

    #@4ca
    .local v17, "req$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@4cd
    move-result v24

    #@4ce
    if-eqz v24, :cond_f

    #@4d0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d3
    move-result-object v16

    #@4d4
    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@4d6
    .line 9685
    .local v16, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v24, Ljava/lang/StringBuilder;

    #@4d8
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@4db
    const-string/jumbo v25, "    "

    #@4de
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v24

    #@4e2
    move-object/from16 v0, v24

    #@4e4
    move-object/from16 v1, v16

    #@4e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e9
    move-result-object v24

    #@4ea
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ed
    move-result-object v24

    #@4ee
    move-object/from16 v0, p1

    #@4f0
    move-object/from16 v1, v24

    #@4f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f5
    goto :goto_e

    #@4f6
    .line 9688
    .end local v16    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_f
    new-instance v24, Ljava/lang/StringBuilder;

    #@4f8
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@4fb
    const-string/jumbo v25, "Full backup queue:"

    #@4fe
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@501
    move-result-object v24

    #@502
    move-object/from16 v0, p0

    #@504
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@506
    move-object/from16 v25, v0

    #@508
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@50b
    move-result v25

    #@50c
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50f
    move-result-object v24

    #@510
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@513
    move-result-object v24

    #@514
    move-object/from16 v0, p1

    #@516
    move-object/from16 v1, v24

    #@518
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51b
    .line 9689
    move-object/from16 v0, p0

    #@51d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@51f
    move-object/from16 v24, v0

    #@521
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@524
    move-result-object v10

    #@525
    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@528
    move-result v24

    #@529
    if-eqz v24, :cond_10

    #@52b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52e
    move-result-object v9

    #@52f
    check-cast v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@531
    .line 9690
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string/jumbo v24, "    "

    #@534
    move-object/from16 v0, p1

    #@536
    move-object/from16 v1, v24

    #@538
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53b
    iget-wide v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@53d
    move-wide/from16 v24, v0

    #@53f
    move-object/from16 v0, p1

    #@541
    move-wide/from16 v1, v24

    #@543
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@546
    .line 9691
    const-string/jumbo v24, " : "

    #@549
    move-object/from16 v0, p1

    #@54b
    move-object/from16 v1, v24

    #@54d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@550
    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@552
    move-object/from16 v24, v0

    #@554
    move-object/from16 v0, p1

    #@556
    move-object/from16 v1, v24

    #@558
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@55b
    goto :goto_f

    #@55c
    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_10
    monitor-exit v26

    #@55d
    .line 9608
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .locals 9
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4392
    if-nez p1, :cond_0

    #@3
    .line 4393
    const-string/jumbo v3, "BackupManagerService"

    #@6
    const-string/jumbo v4, "Transport not present; full data backup not performed"

    #@9
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 4394
    return v8

    #@d
    .line 4400
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
    .line 4401
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@1a
    const-string/jumbo v3, "@pm@"

    #@1d
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    .line 4402
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
    .line 4404
    const-string/jumbo v3, "BackupManagerService"

    #@2d
    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    #@30
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 4406
    return v8

    #@34
    .line 4408
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_0
    move-exception v0

    #@35
    .line 4409
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@38
    const-string/jumbo v4, "Unable to contact transport"

    #@3b
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 4410
    return v8

    #@3f
    .line 4413
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
    .line 323
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@2
    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 5
    .param p1, "transportName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2186
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    #@b
    .line 2188
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_0

    #@d
    .line 2189
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
    .line 2191
    return-object v0

    #@29
    .line 2186
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method static hashSignature(Landroid/content/pm/Signature;)[B
    .locals 4
    .param p0, "sig"    # Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 7150
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    #@3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    .line 7151
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    #@e
    .line 7152
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 7153
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    #@14
    .line 7154
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "BackupManagerService"

    #@17
    const-string/jumbo v3, "No SHA-256 algorithm found!"

    #@1a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 7156
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    div-int/lit8 v0, v3, 0x2

    #@6
    .line 1456
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 1457
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "Hex string must have an even number of digits"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 1460
    :cond_0
    new-array v2, v0, [B

    #@19
    .line 1461
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
    .line 1462
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
    .line 1461
    add-int/lit8 v1, v1, 0x2

    #@33
    goto :goto_0

    #@34
    .line 1464
    :cond_1
    return-object v2
.end method

.method private initPackageTracking()V
    .locals 24

    #@0
    .prologue
    .line 1159
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
    .line 1161
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
    .line 1162
    .local v19, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    #@2b
    move-result v20

    #@2c
    .line 1163
    .local v20, "version":I
    const/16 v21, 0x1

    #@2e
    move/from16 v0, v20

    #@30
    move/from16 v1, v21

    #@32
    if-ne v0, v1, :cond_0

    #@34
    .line 1164
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
    .line 1165
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
    .line 1167
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    #@4b
    move-result v12

    #@4c
    .line 1168
    .local v12, "numPackages":I
    if-ltz v12, :cond_0

    #@4e
    .line 1169
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
    .line 1170
    const/4 v9, 0x0

    #@5a
    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    #@5c
    .line 1171
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    #@5f
    move-result-object v14

    #@60
    .line 1172
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
    .line 1170
    add-int/lit8 v9, v9, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 1176
    .end local v9    # "i":I
    .end local v12    # "numPackages":I
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    .line 1187
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
    .line 1188
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
    .line 1193
    .local v18, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    #@9c
    move-result v21

    #@9d
    if-eqz v21, :cond_1

    #@9f
    .line 1194
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    #@a2
    .line 1199
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
    .line 1200
    const/16 v16, 0x0

    #@b0
    .line 1201
    .local v16, "temp":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    #@b1
    .line 1204
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
    .line 1205
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
    .line 1209
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
    .line 1212
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
    .line 1214
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
    .line 1215
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
    .line 1217
    :catch_0
    move-exception v4

    #@f6
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    #@f7
    .line 1180
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_1
    move-exception v6

    #@f8
    .line 1181
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
    .line 1177
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    #@108
    .line 1179
    .local v8, "fnf":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "BackupManagerService"

    #@10b
    const-string/jumbo v22, "No ancestral data"

    #@10e
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    goto/16 :goto_1

    #@113
    .line 1228
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_3
    move-exception v6

    #@114
    .line 1229
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
    .line 1231
    if-eqz v16, :cond_2

    #@123
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@126
    .line 1232
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    #@128
    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@12b
    .line 1236
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
    .line 1238
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
    .line 1243
    new-instance v7, Landroid/content/IntentFilter;

    #@13f
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    #@142
    .line 1244
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.PACKAGE_ADDED"

    #@145
    move-object/from16 v0, v21

    #@147
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14a
    .line 1245
    const-string/jumbo v21, "android.intent.action.PACKAGE_REMOVED"

    #@14d
    move-object/from16 v0, v21

    #@14f
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@152
    .line 1246
    const-string/jumbo v21, "android.intent.action.PACKAGE_CHANGED"

    #@155
    move-object/from16 v0, v21

    #@157
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15a
    .line 1247
    const-string/jumbo v21, "package"

    #@15d
    move-object/from16 v0, v21

    #@15f
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@162
    .line 1248
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
    .line 1250
    new-instance v15, Landroid/content/IntentFilter;

    #@177
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    #@17a
    .line 1251
    .local v15, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@17d
    move-object/from16 v0, v21

    #@17f
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@182
    .line 1252
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@185
    move-object/from16 v0, v21

    #@187
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18a
    .line 1253
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
    .line 1155
    return-void

    #@19e
    .line 1231
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    #@19f
    goto :goto_4

    #@1a0
    .line 1232
    :catch_5
    move-exception v6

    #@1a1
    goto :goto_5

    #@1a2
    .line 1222
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    #@1a3
    .line 1225
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
    .line 1226
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
    .line 1231
    :cond_4
    if-eqz v16, :cond_5

    #@1e4
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    #@1e7
    .line 1232
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
    .line 1231
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    #@1f2
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_7

    #@1f3
    .line 1230
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    #@1f4
    .line 1231
    :goto_8
    if-eqz v16, :cond_6

    #@1f6
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    #@1f9
    .line 1232
    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    #@1fb
    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    #@1fe
    .line 1230
    :cond_7
    :goto_a
    throw v21

    #@1ff
    .line 1231
    :catch_9
    move-exception v6

    #@200
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_9

    #@201
    .line 1232
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    #@202
    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    #@203
    .line 1236
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    #@204
    monitor-exit v22

    #@205
    throw v21

    #@206
    .line 1230
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
    .line 1222
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
    .line 1228
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
    .line 1468
    array-length v3, p2

    #@1
    new-array v2, v3, [C

    #@3
    .line 1469
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v3, p2

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 1470
    aget-byte v3, p2, v1

    #@9
    int-to-char v3, v3

    #@a
    aput-char v3, v2, v1

    #@c
    .line 1469
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1473
    :cond_0
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    #@12
    move-result-object v0

    #@13
    .line 1474
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
    .line 1394
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
    .line 1395
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
    .line 1399
    :cond_0
    const/4 v4, 0x0

    #@19
    .line 1401
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    const-string/jumbo v10, "BackupManagerService"

    #@1c
    const-string/jumbo v11, "Found stale backup journal, scheduling"

    #@1f
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1402
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
    .line 1404
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 1406
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    goto :goto_1

    #@32
    .line 1408
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Ljava/io/EOFException;
    move-object v4, v5

    #@34
    .line 1414
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v4, :cond_1

    #@36
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    #@39
    .line 1415
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@3c
    .line 1394
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1410
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    #@40
    .line 1411
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
    .line 1414
    if-eqz v4, :cond_3

    #@5c
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5f
    .line 1415
    :cond_3
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@62
    goto :goto_4

    #@63
    .line 1414
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
    .line 1412
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@68
    .line 1414
    :goto_7
    if-eqz v4, :cond_4

    #@6a
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@6d
    .line 1415
    :cond_4
    :goto_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@70
    .line 1412
    throw v7

    #@71
    .line 1414
    :catch_4
    move-exception v1

    #@72
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    #@73
    .line 1393
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_5
    return-void

    #@74
    .line 1412
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
    .line 1408
    .local v4, "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    #@78
    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_2

    #@79
    .line 1410
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
    .line 1479
    div-int/lit8 v1, p1, 0x8

    #@2
    new-array v0, v1, [B

    #@4
    .line 1480
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    #@6
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@9
    .line 1481
    return-object v0
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
    .line 1257
    const/4 v12, 0x0

    #@1
    .line 1258
    .local v12, "changed":Z
    const/16 v27, 0x0

    #@3
    .line 1260
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
    .line 1262
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
    .line 1263
    const/16 v16, 0x0

    #@1b
    .line 1264
    .local v16, "fstream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    #@1c
    .line 1265
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    #@1e
    .line 1267
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
    .line 1268
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
    .line 1269
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
    .line 1271
    .local v20, "in":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@3e
    .end local v19    # "in":Ljava/io/DataInputStream;
    move-result v29

    #@3f
    .line 1272
    .local v29, "version":I
    const/16 v30, 0x1

    #@41
    move/from16 v0, v29

    #@43
    move/from16 v1, v30

    #@45
    if-eq v0, v1, :cond_0

    #@47
    .line 1273
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
    .line 1274
    const/16 v30, 0x0

    #@67
    .line 1328
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6a
    .line 1329
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6d
    .line 1330
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 1274
    return-object v30

    #@71
    .line 1277
    :cond_0
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@74
    move-result v6

    #@75
    .line 1278
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
    .line 1284
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v28, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :try_start_5
    new-instance v15, Ljava/util/HashSet;

    #@7e
    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    #@81
    .line 1286
    .local v15, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    #@83
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@85
    if-ge v0, v6, :cond_4

    #@87
    .line 1287
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@8a
    move-result-object v26

    #@8b
    .line 1288
    .local v26, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    #@8e
    move-result-wide v24

    #@8f
    .line 1289
    .local v24, "lastBackup":J
    move-object/from16 v0, v26

    #@91
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@94
    .line 1291
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
    .line 1292
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
    .line 1293
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
    .line 1286
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    #@ce
    goto :goto_0

    #@cf
    .line 1296
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
    .line 1297
    const-string/jumbo v32, " no longer eligible for full backup"

    #@e9
    .line 1296
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
    .line 1300
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    #@f6
    .line 1302
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
    .line 1303
    const-string/jumbo v32, " not installed; dropping from full backup"

    #@110
    .line 1302
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
    .line 1323
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
    .line 1324
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
    .line 1325
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
    .line 1326
    const/16 v27, 0x0

    #@13c
    .line 1328
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13f
    .line 1329
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@142
    .line 1330
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@145
    .line 1334
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :cond_2
    :goto_3
    if-nez v27, :cond_7

    #@147
    .line 1337
    const/4 v12, 0x1

    #@148
    .line 1338
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
    .line 1339
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
    .line 1340
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
    .line 1341
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
    .line 1310
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
    .line 1311
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
    .line 1312
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
    .line 1316
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
    .line 1317
    const/4 v12, 0x1

    #@1db
    goto :goto_5

    #@1dc
    .line 1322
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    :cond_6
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1df
    .line 1328
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e2
    .line 1329
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e5
    .line 1330
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e8
    move-object/from16 v27, v28

    #@1ea
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_3

    #@1ec
    .line 1327
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
    .line 1328
    :goto_6
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f0
    .line 1329
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f3
    .line 1330
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f6
    .line 1327
    throw v30

    #@1f7
    .line 1346
    :cond_7
    if-eqz v12, :cond_8

    #@1f9
    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    #@1fc
    .line 1349
    :cond_8
    return-object v27

    #@1fd
    .line 1327
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
    .line 1323
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
    .line 1690
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1691
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
    .line 1692
    const-string/jumbo v7, "::"

    #@19
    .line 1691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    .line 1692
    const-string/jumbo v7, " = "

    #@24
    .line 1691
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
    .line 1693
    if-eqz p3, :cond_1

    #@35
    .line 1694
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v4, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 1695
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v4, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v5

    #@40
    .line 1708
    :try_start_1
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 1709
    .local v3, "transportName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@46
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@48
    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4b
    .line 1710
    .local v2, "stateDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@4e
    .line 1712
    new-instance v1, Ljava/io/File;

    #@50
    const-string/jumbo v4, "_need_init_"

    #@53
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@56
    .line 1713
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 1714
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@5e
    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5f
    .line 1715
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@61
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@64
    .line 1719
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@66
    .line 1720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@69
    move-result-wide v6

    #@6a
    .line 1718
    const-wide/32 v8, 0xea60

    #@6d
    .line 1720
    add-long/2addr v6, v8

    #@6e
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@70
    .line 1719
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
    .line 1689
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@76
    .line 1697
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
    .line 1698
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@83
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    monitor-exit v5

    #@87
    .line 1700
    return-void

    #@88
    .line 1690
    :catchall_0
    move-exception v4

    #@89
    monitor-exit v5

    #@8a
    throw v4

    #@8b
    .line 1714
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
    .line 1723
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@8f
    .line 1725
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
    .line 1726
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    #@ab
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 1727
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
    .line 2051
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2059
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9
    .line 2060
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    #@b
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 2050
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
    .line 3211
    new-instance v4, Ljava/io/FileInputStream;

    #@3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@6
    move-result-object v6

    #@7
    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@a
    .line 3212
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    #@c
    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@f
    .line 3214
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    #@12
    new-array v0, v6, [B

    #@14
    .line 3216
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@17
    move-result v1

    #@18
    .local v1, "chunkTotal":I
    if-lez v1, :cond_2

    #@1a
    .line 3217
    :goto_0
    if-lez v1, :cond_0

    #@1c
    .line 3218
    array-length v6, v0

    #@1d
    if-le v1, v6, :cond_1

    #@1f
    array-length v5, v0

    #@20
    .line 3219
    .local v5, "toRead":I
    :goto_1
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    #@23
    move-result v3

    #@24
    .line 3220
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    #@27
    .line 3221
    sub-int/2addr v1, v3

    #@28
    goto :goto_0

    #@29
    .line 3218
    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_1
    move v5, v1

    #@2a
    .restart local v5    # "toRead":I
    goto :goto_1

    #@2b
    .line 3210
    .end local v5    # "toRead":I
    :cond_2
    return-void
.end method

.method static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z
    .locals 11
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 7090
    if-nez p1, :cond_0

    #@4
    .line 7091
    return v9

    #@5
    .line 7099
    :cond_0
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v8, v8, 0x1

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 7101
    return v10

    #@e
    .line 7106
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@10
    .line 7109
    .local v1, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_2

    #@12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    if-nez v8, :cond_4

    #@18
    .line 7110
    :cond_2
    if-eqz v1, :cond_3

    #@1a
    array-length v8, v1

    #@1b
    if-nez v8, :cond_4

    #@1d
    .line 7111
    :cond_3
    return v10

    #@1e
    .line 7113
    :cond_4
    if-eqz p0, :cond_5

    #@20
    if-nez v1, :cond_6

    #@22
    .line 7114
    :cond_5
    return v9

    #@23
    .line 7120
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v6

    #@27
    .line 7121
    .local v6, "nStored":I
    array-length v5, v1

    #@28
    .line 7124
    .local v5, "nDevice":I
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@2d
    .line 7125
    .local v0, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    #@2e
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_7

    #@30
    .line 7126
    aget-object v8, v1, v2

    #@32
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->hashSignature(Landroid/content/pm/Signature;)[B

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 7125
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 7130
    :cond_7
    const/4 v4, 0x0

    #@3d
    .local v4, "n":I
    :goto_1
    if-ge v4, v6, :cond_b

    #@3f
    .line 7131
    const/4 v3, 0x0

    #@40
    .line 7132
    .local v3, "match":Z
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v7

    #@44
    check-cast v7, [B

    #@46
    .line 7133
    .local v7, "storedHash":[B
    const/4 v2, 0x0

    #@47
    :goto_2
    if-ge v2, v5, :cond_8

    #@49
    .line 7134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v8

    #@4d
    check-cast v8, [B

    #@4f
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_9

    #@55
    .line 7135
    const/4 v3, 0x1

    #@56
    .line 7140
    :cond_8
    if-nez v3, :cond_a

    #@58
    .line 7141
    return v9

    #@59
    .line 7133
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 7130
    :cond_a
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 7145
    .end local v3    # "match":Z
    .end local v7    # "storedHash":[B
    :cond_b
    return v10
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
    .line 7161
    if-nez p1, :cond_0

    #@4
    .line 7162
    return v8

    #@5
    .line 7170
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v6, v6, 0x1

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 7172
    return v9

    #@e
    .line 7177
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@10
    .line 7180
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_2

    #@12
    array-length v6, p0

    #@13
    if-nez v6, :cond_4

    #@15
    .line 7181
    :cond_2
    if-eqz v0, :cond_3

    #@17
    array-length v6, v0

    #@18
    if-nez v6, :cond_4

    #@1a
    .line 7182
    :cond_3
    return v9

    #@1b
    .line 7184
    :cond_4
    if-eqz p0, :cond_5

    #@1d
    if-nez v0, :cond_6

    #@1f
    .line 7185
    :cond_5
    return v8

    #@20
    .line 7191
    :cond_6
    array-length v5, p0

    #@21
    .line 7192
    .local v5, "nStored":I
    array-length v4, v0

    #@22
    .line 7194
    .local v4, "nDevice":I
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_a

    #@25
    .line 7195
    const/4 v3, 0x0

    #@26
    .line 7196
    .local v3, "match":Z
    const/4 v2, 0x0

    #@27
    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_7

    #@29
    .line 7197
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
    .line 7198
    const/4 v3, 0x1

    #@34
    .line 7202
    :cond_7
    if-nez v3, :cond_9

    #@36
    .line 7203
    return v8

    #@37
    .line 7196
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 7194
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 7206
    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_a
    return v9
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 1390
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@9
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1388
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8440
    const/4 v1, 0x0

    #@1
    .line 8442
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
    .line 8443
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
    .line 8444
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    #@1e
    move-result-wide v4

    #@1f
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@22
    .line 8445
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 8450
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
    .line 8439
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    #@2c
    .line 8450
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@2e
    .line 8446
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    #@2f
    .line 8447
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
    .line 8448
    const/4 v3, 0x0

    #@51
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    .line 8450
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
    .line 8449
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@5c
    .line 8450
    :goto_3
    if-eqz v1, :cond_3

    #@5e
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@61
    .line 8449
    :cond_3
    :goto_4
    throw v3

    #@62
    .line 8450
    :catch_3
    move-exception v0

    #@63
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@64
    .line 8449
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
    .line 8446
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
    .line 8787
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
    .line 8788
    const-string/jumbo v7, " allow="

    #@16
    .line 8787
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
    .line 8792
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@27
    const-string/jumbo v6, "android.permission.BACKUP"

    #@2a
    const-string/jumbo v7, "acknowledgeFullBackupOrRestore"

    #@2d
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 8794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v2

    #@34
    .line 8798
    .local v2, "oldId":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@36
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@37
    .line 8799
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    #@3f
    .line 8800
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v1, :cond_2

    #@41
    .line 8801
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@43
    const/16 v7, 0x9

    #@45
    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    #@48
    .line 8802
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    #@4d
    .line 8804
    if-eqz p2, :cond_1

    #@4f
    .line 8805
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    #@51
    if-eqz v5, :cond_0

    #@53
    .line 8806
    const/4 v4, 0x2

    #@54
    .line 8809
    .local v4, "verb":I
    :goto_0
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    #@56
    .line 8810
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    #@58
    .line 8812
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    #@5a
    .line 8815
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@5c
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5f
    .line 8816
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@61
    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@64
    move-result-object v0

    #@65
    .line 8817
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
    .line 8828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6e
    .line 8786
    return-void

    #@6f
    .line 8807
    :cond_0
    const/16 v4, 0xa

    #@71
    .restart local v4    # "verb":I
    goto :goto_0

    #@72
    .line 8819
    .end local v4    # "verb":I
    :cond_1
    :try_start_3
    const-string/jumbo v5, "BackupManagerService"

    #@75
    const-string/jumbo v7, "User rejected full backup/restore operation"

    #@78
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 8821
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_1

    #@7f
    .line 8798
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
    .line 8827
    :catchall_1
    move-exception v5

    #@83
    .line 8828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@86
    .line 8827
    throw v5

    #@87
    .line 8824
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
    .line 926
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 924
    return-void

    #@a
    .line 926
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
    .line 1991
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 1992
    .local v1, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    #@7
    .line 1994
    const/4 v2, 0x0

    #@8
    array-length v3, p1

    #@9
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    aget-object v0, p1, v2

    #@d
    .line 1995
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    #@10
    .line 1994
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1999
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    #@16
    .line 1989
    :cond_1
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 9061
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 9062
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    const/16 v3, 0x3e8

    #@9
    if-ne v1, v3, :cond_0

    #@b
    .line 9063
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
    .line 9064
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    #@33
    move-result-object v0

    #@34
    .line 9065
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@36
    .line 9066
    const/4 v1, 0x0

    #@37
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@39
    .line 9071
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
    .line 9060
    return-void

    #@40
    .line 9068
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
    .line 9069
    const-string/jumbo v4, " claiming agent connected"

    #@5a
    .line 9068
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
    .line 9061
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
    .line 9080
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 9081
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    const/16 v2, 0x3e8

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 9082
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@e
    .line 9083
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@11
    .line 9088
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 9078
    return-void

    #@18
    .line 9085
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
    .line 9086
    const-string/jumbo v3, " claiming agent disconnected"

    #@32
    .line 9085
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
    .line 9080
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
    .line 2067
    const/16 v4, 0x40

    #@2
    .line 2068
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@7
    move-result-object v5

    #@8
    .line 2069
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 2070
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    #@e
    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_2

    #@10
    .line 2071
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/content/pm/PackageInfo;

    #@16
    .line 2073
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    .line 2074
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1a
    const v8, 0x8000

    #@1d
    and-int/2addr v7, v8

    #@1e
    if-eqz v7, :cond_0

    #@20
    .line 2075
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@22
    if-nez v7, :cond_1

    #@24
    .line 2076
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    .line 2070
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2082
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2c
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2e
    .line 2083
    const/16 v9, 0x400

    #@30
    .line 2082
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@33
    move-result-object v2

    #@34
    .line 2084
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@36
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@38
    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    goto :goto_1

    #@3b
    .line 2086
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    #@3c
    .line 2087
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3f
    goto :goto_1

    #@40
    .line 2090
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method public backupNow()V
    .locals 4

    #@0
    .prologue
    .line 8541
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.BACKUP"

    #@5
    const-string/jumbo v3, "backupNow"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8543
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@d
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 8544
    const-string/jumbo v1, "BackupManagerService"

    #@16
    const-string/jumbo v2, "Not running backup while in battery save mode"

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 8545
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@1e
    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@21
    .line 8540
    :goto_0
    return-void

    #@22
    .line 8547
    :cond_0
    const-string/jumbo v1, "BackupManagerService"

    #@25
    const-string/jumbo v2, "Scheduling immediate backup pass"

    #@28
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 8548
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2

    #@2e
    .line 8551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    #@30
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 8558
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
    .line 8552
    :catch_0
    move-exception v0

    #@3b
    .line 8554
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
    .line 8548
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 20
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    #@0
    .prologue
    .line 4427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v14

    #@4
    .line 4428
    .local v14, "now":J
    const/4 v9, 0x0

    #@5
    .line 4429
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-wide/32 v12, 0x5265c00

    #@8
    .line 4431
    .local v12, "latency":J
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
    .line 4444
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
    .line 4445
    const-string/jumbo v2, "BackupManagerService"

    #@21
    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    #@24
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 4446
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2b
    const-wide/32 v6, 0xdbba00

    #@2e
    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    #@31
    .line 4447
    const/4 v2, 0x0

    #@32
    return v2

    #@33
    .line 4439
    :cond_0
    const/4 v2, 0x0

    #@34
    return v2

    #@35
    .line 4451
    :cond_1
    const-string/jumbo v2, "BackupManagerService"

    #@38
    const-string/jumbo v3, "Beginning scheduled full backup operation"

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 4455
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@42
    move-object/from16 v17, v0

    #@44
    monitor-enter v17

    #@45
    .line 4456
    :try_start_0
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@49
    if-eqz v2, :cond_2

    #@4b
    .line 4457
    const-string/jumbo v2, "BackupManagerService"

    #@4e
    const-string/jumbo v3, "Backup triggered but one already/still running!"

    #@51
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 4458
    const/4 v2, 0x0

    #@55
    monitor-exit v17

    #@56
    return v2

    #@57
    .line 4461
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v2

    #@5f
    if-nez v2, :cond_3

    #@61
    .line 4464
    const-string/jumbo v2, "BackupManagerService"

    #@64
    const-string/jumbo v3, "Backup queue empty; doing nothing"

    #@67
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 4466
    const/4 v2, 0x0

    #@6b
    monitor-exit v17

    #@6c
    return v2

    #@6d
    .line 4472
    :cond_3
    const/16 v16, 0x1

    #@6f
    .line 4474
    .local v16, "runBackup":Z
    :try_start_2
    move-object/from16 v0, p0

    #@71
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@78
    move-result-object v2

    #@79
    move-object/from16 v0, p0

    #@7b
    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_4

    #@81
    .line 4478
    const/16 v16, 0x0

    #@83
    .line 4482
    const-wide/32 v12, 0xdbba00

    #@86
    .line 4485
    :cond_4
    if-eqz v16, :cond_5

    #@88
    .line 4486
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@8c
    const/4 v3, 0x0

    #@8d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v2

    #@91
    move-object v0, v2

    #@92
    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@94
    move-object v9, v0

    #@95
    .line 4487
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v2, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@97
    sub-long v18, v14, v2

    #@99
    .line 4488
    .local v18, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    #@9c
    cmp-long v2, v18, v2

    #@9e
    if-ltz v2, :cond_6

    #@a0
    const/16 v16, 0x1

    #@a2
    .line 4489
    :goto_0
    if-nez v16, :cond_5

    #@a4
    .line 4495
    const-wide/32 v2, 0x5265c00

    #@a7
    sub-long v12, v2, v18

    #@a9
    .line 4499
    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v18    # "timeSinceRun":J
    :cond_5
    if-nez v16, :cond_7

    #@ab
    .line 4501
    const-string/jumbo v2, "BackupManagerService"

    #@ae
    new-instance v3, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 4503
    move-wide v10, v12

    #@c6
    .line 4504
    .local v10, "deferTime":J
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@ca
    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    #@cc
    move-object/from16 v0, p0

    #@ce
    invoke-direct {v3, v0, v10, v11}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    #@d1
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    .line 4509
    const/4 v2, 0x0

    #@d5
    monitor-exit v17

    #@d6
    return v2

    #@d7
    .line 4488
    .end local v10    # "deferTime":J
    .restart local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .restart local v18    # "timeSinceRun":J
    :cond_6
    const/16 v16, 0x0

    #@d9
    goto :goto_0

    #@da
    .line 4513
    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v18    # "timeSinceRun":J
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@de
    const/4 v3, 0x0

    #@df
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@e2
    .line 4514
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    #@e4
    const/4 v2, 0x1

    #@e5
    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@e8
    .line 4515
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    #@e9
    new-array v5, v2, [Ljava/lang/String;

    #@eb
    iget-object v2, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@ed
    const/4 v3, 0x0

    #@ee
    aput-object v2, v5, v3

    #@f0
    .line 4516
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@f2
    const/4 v4, 0x0

    #@f3
    const/4 v6, 0x1

    #@f4
    move-object/from16 v3, p0

    #@f6
    move-object/from16 v7, p1

    #@f8
    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@ff
    .line 4518
    new-instance v2, Ljava/lang/Thread;

    #@101
    move-object/from16 v0, p0

    #@103
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@105
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@108
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@10b
    monitor-exit v17

    #@10c
    .line 4521
    const/4 v2, 0x1

    #@10d
    return v2

    #@10e
    .line 4455
    .end local v5    # "pkg":[Ljava/lang/String;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v16    # "runBackup":Z
    :catchall_0
    move-exception v2

    #@10f
    monitor-exit v17

    #@110
    throw v2
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 9168
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
    .line 9169
    const-string/jumbo v5, " transport="

    #@17
    .line 9168
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
    .line 9171
    const/4 v1, 0x1

    #@27
    .line 9172
    .local v1, "needPermission":Z
    if-nez p2, :cond_0

    #@29
    .line 9173
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@2b
    .line 9175
    if-eqz p1, :cond_0

    #@2d
    .line 9176
    const/4 v0, 0x0

    #@2e
    .line 9178
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
    .line 9184
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
    .line 9188
    const/4 v1, 0x0

    #@40
    .line 9193
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    #@42
    .line 9194
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@44
    const-string/jumbo v4, "android.permission.BACKUP"

    #@47
    .line 9195
    const-string/jumbo v5, "beginRestoreSession"

    #@4a
    .line 9194
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 9200
    :goto_0
    monitor-enter p0

    #@4e
    .line 9201
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@50
    if-eqz v3, :cond_2

    #@52
    .line 9202
    const-string/jumbo v3, "BackupManagerService"

    #@55
    const-string/jumbo v4, "Restore session requested but one already active"

    #@58
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    .line 9203
    return-object v6

    #@5d
    .line 9179
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@5e
    .line 9180
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
    .line 9181
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
    .line 9197
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
    .line 9205
    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@a5
    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@a8
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@aa
    .line 9206
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@ac
    const/16 v4, 0x8

    #@ae
    const-wide/32 v6, 0xea60

    #@b1
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b4
    monitor-exit p0

    #@b5
    .line 9208
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@b7
    return-object v3

    #@b8
    .line 9200
    :catchall_0
    move-exception v3

    #@b9
    monitor-exit p0

    #@ba
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
    .line 2197
    const/4 v0, 0x0

    #@2
    .line 2198
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 2199
    const/4 v3, 0x1

    #@6
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@8
    .line 2200
    const/4 v3, 0x0

    #@9
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 2202
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@d
    invoke-interface {v3, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 2203
    const-string/jumbo v3, "BackupManagerService"

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "awaiting agent for "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 2207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30
    move-result-wide v8

    #@31
    const-wide/16 v10, 0x2710

    #@33
    add-long v4, v8, v10

    #@35
    .line 2208
    .local v4, "timeoutMark":J
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@37
    if-eqz v3, :cond_0

    #@39
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@3b
    if-nez v3, :cond_0

    #@3d
    .line 2209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    move-result-wide v8

    #@41
    cmp-long v3, v8, v4

    #@43
    if-gez v3, :cond_0

    #@45
    .line 2211
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    #@47
    const-wide/16 v8, 0x1388

    #@49
    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 2212
    :catch_0
    move-exception v2

    #@4e
    .line 2214
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    #@51
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "Interrupted: "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 2215
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@6a
    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    monitor-exit v6

    #@6e
    .line 2216
    return-object v12

    #@6f
    .line 2221
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    #@71
    if-eqz v3, :cond_1

    #@73
    .line 2222
    const-string/jumbo v3, "BackupManagerService"

    #@76
    new-instance v7, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v8, "Timeout waiting for agent "

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 2223
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@8f
    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@92
    monitor-exit v6

    #@93
    .line 2224
    return-object v12

    #@94
    .line 2226
    :cond_1
    :try_start_5
    const-string/jumbo v3, "BackupManagerService"

    #@97
    new-instance v7, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v8, "got agent "

    #@9f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 2227
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b2
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    .end local v4    # "timeoutMark":J
    :cond_2
    :goto_1
    monitor-exit v6

    #@b3
    .line 2233
    return-object v0

    #@b4
    .line 2198
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :catchall_0
    move-exception v3

    #@b5
    monitor-exit v6

    #@b6
    throw v3

    #@b7
    .line 2229
    :catch_1
    move-exception v1

    #@b8
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    .line 1962
    new-instance v2, Landroid/content/ComponentName;

    #@2
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@6
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1966
    .local v2, "svcName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    #@b
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@d
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@10
    .line 1967
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 1970
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@15
    monitor-enter v4

    #@16
    .line 1971
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@18
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1a
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@20
    .line 1972
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_0

    #@22
    .line 1973
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    #@24
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    #@27
    .line 1974
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    #@29
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :goto_0
    monitor-exit v4

    #@2f
    .line 1982
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@31
    .line 1984
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@33
    .line 1983
    const/4 v5, 0x1

    #@34
    .line 1982
    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@37
    move-result v3

    #@38
    return v3

    #@39
    .line 1979
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3b
    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1970
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_0
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1933
    new-instance v5, Landroid/content/Intent;

    #@3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    #@5
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@8
    .line 1934
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@a
    .line 1933
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@d
    move-result-object v4

    #@e
    .line 1935
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@10
    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    .line 1937
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@17
    move-result v0

    #@18
    .line 1938
    .local v0, "N":I
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@1b
    .line 1939
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@21
    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@23
    .line 1940
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@26
    .line 1938
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1932
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :cond_0
    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2240
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    const/4 v8, 0x0

    #@3
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@6
    move-result-object v3

    #@7
    .line 2241
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
    .line 2244
    return-void

    #@10
    .line 2246
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@11
    .line 2247
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
    .line 2248
    return-void

    #@33
    .line 2251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    #@35
    invoke-direct {v4, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@38
    .line 2253
    .local v4, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    #@3a
    monitor-enter v8

    #@3b
    .line 2254
    const/4 v5, 0x1

    #@3c
    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 2256
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
    .line 2262
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
    .line 2263
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
    .line 2265
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
    .line 2266
    :catch_1
    move-exception v2

    #@61
    .line 2268
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
    .line 2253
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
    .line 2237
    return-void

    #@6a
    .line 2257
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
    .line 8485
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
    .line 8488
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
    .line 8497
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
    .line 8498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@43
    move-result v17

    #@44
    .line 8497
    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@47
    move-result v14

    #@48
    .line 8498
    const/4 v15, -0x1

    #@49
    .line 8497
    if-ne v14, v15, :cond_1

    #@4b
    .line 8499
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
    .line 8515
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
    .line 8518
    move-object/from16 v0, p0

    #@63
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@65
    const/16 v15, 0xc

    #@67
    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@6a
    .line 8519
    move-object/from16 v0, p0

    #@6c
    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@6e
    monitor-enter v15

    #@6f
    .line 8520
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@72
    move-result-object v13

    #@73
    .line 8521
    .local v13, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v13, :cond_3

    #@75
    .line 8523
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@79
    .line 8524
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
    .line 8523
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
    .line 8525
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
    .line 8526
    return-void

    #@9e
    .line 8489
    .end local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v6

    #@9f
    .line 8490
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
    .line 8491
    return-void

    #@c3
    .line 8504
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    #@c5
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@c8
    .line 8505
    .restart local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@ca
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@cc
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@cf
    move-result v4

    #@d0
    .line 8506
    .local v4, "N":I
    const/4 v7, 0x0

    #@d1
    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_0

    #@d3
    .line 8507
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
    .line 8508
    .local v12, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    #@df
    .line 8509
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@e2
    .line 8506
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@e4
    goto :goto_0

    #@e5
    .line 8528
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
    .line 8529
    .local v10, "oldId":J
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@ed
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@f0
    .line 8530
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@f4
    .line 8531
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearParams;

    #@f6
    move-object/from16 v0, v16

    #@f8
    move-object/from16 v1, p0

    #@fa
    invoke-direct {v0, v1, v13, v8}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    #@fd
    .line 8530
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
    .line 8532
    .restart local v9    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@109
    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@10b
    invoke-virtual {v14, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@10e
    .line 8533
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@111
    monitor-exit v15

    #@112
    .line 8484
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "oldId":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    return-void

    #@113
    .line 8519
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
    .line 934
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 932
    return-void

    #@a
    .line 934
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
    .line 9212
    monitor-enter p0

    #@1
    .line 9213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 9214
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
    .line 9211
    return-void

    #@10
    .line 9216
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    #@13
    const-string/jumbo v1, "Clearing restore session and halting timeout"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 9217
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    #@1c
    .line 9218
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
    .line 9212
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
    .line 8457
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 8458
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    #@6
    .line 8466
    return-void

    #@7
    .line 8469
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    #@a
    move-result-object v1

    #@b
    .line 8470
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    #@d
    .line 8471
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
    .line 8472
    const-string/jumbo v4, " uid="

    #@2a
    .line 8471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 8472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v4

    #@32
    .line 8471
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
    .line 8473
    return-void

    #@3e
    .line 8476
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@40
    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    #@42
    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    #@45
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    #@48
    .line 8456
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
    .line 3601
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    #@4
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getEncryptionState()I

    #@7
    move-result v3

    #@8
    if-eq v3, v1, :cond_1

    #@a
    .line 3603
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
    .line 3601
    :goto_0
    return v1

    #@13
    :cond_0
    move v1, v2

    #@14
    .line 3603
    goto :goto_0

    #@15
    :cond_1
    move v1, v2

    #@16
    .line 3601
    goto :goto_0

    #@17
    .line 3605
    :catch_0
    move-exception v0

    #@18
    .line 3608
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
    .line 3609
    return v1
.end method

.method deviceIsProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 8564
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 8565
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
    .line 9575
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    const-string/jumbo v5, "BackupManagerService"

    #@8
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 9577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 9579
    .local v2, "identityToken":J
    if-eqz p3, :cond_2

    #@11
    .line 9580
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
    .line 9581
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    #@1a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 9582
    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    #@23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 9583
    const-string/jumbo v1, "  -h       : this help text"

    #@29
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 9584
    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    #@2f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 9594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 9585
    return-void

    #@36
    .line 9586
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
    .line 9587
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 9594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@45
    .line 9588
    return-void

    #@46
    .line 9580
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 9592
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 9594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 9574
    return-void

    #@50
    .line 9593
    :catchall_0
    move-exception v1

    #@51
    .line 9594
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 9593
    throw v1
.end method

.method endFullBackup()V
    .locals 3

    #@0
    .prologue
    .line 4527
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4530
    const-string/jumbo v0, "BackupManagerService"

    #@a
    const-string/jumbo v2, "Telling running backup to stop"

    #@d
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 4532
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
    .line 4526
    return-void

    #@18
    .line 4527
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    #@0
    .prologue
    .line 4356
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@2
    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    #@5
    .line 4357
    .local v4, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@7
    monitor-enter v7

    #@8
    .line 4358
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    .line 4362
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    #@10
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@12
    .line 4363
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@1a
    .line 4364
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v6, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 4365
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    .line 4362
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 4373
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_1
    const/4 v5, -0x1

    #@2b
    .line 4374
    .local v5, "which":I
    const-wide/16 v8, 0x0

    #@2d
    cmp-long v6, p2, v8

    #@2f
    if-lez v6, :cond_2

    #@31
    .line 4375
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v6

    #@37
    add-int/lit8 v5, v6, -0x1

    #@39
    :goto_1
    if-ltz v5, :cond_2

    #@3b
    .line 4376
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    #@43
    .line 4377
    .local v2, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v8, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    #@45
    cmp-long v6, v8, p2

    #@47
    if-gtz v6, :cond_4

    #@49
    .line 4378
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@4b
    add-int/lit8 v8, v5, 0x1

    #@4d
    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@50
    .line 4383
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_2
    if-gez v5, :cond_3

    #@52
    .line 4385
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    #@54
    const/4 v8, 0x0

    #@55
    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    :cond_3
    monitor-exit v7

    #@59
    .line 4388
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    #@5c
    .line 4355
    return-void

    #@5d
    .line 4375
    .restart local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@5f
    goto :goto_1

    #@60
    .line 4357
    .end local v0    # "N":I
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v3    # "i":I
    .end local v5    # "which":I
    :catchall_0
    move-exception v6

    #@61
    monitor-exit v7

    #@62
    throw v6
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
    .line 8577
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
    .line 8579
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v13

    #@11
    .line 8580
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_0

    #@13
    .line 8581
    new-instance v3, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v4, "Backup supported only for the device owner"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 8585
    :cond_0
    if-nez p6, :cond_2

    #@1e
    .line 8586
    if-nez p4, :cond_2

    #@20
    .line 8590
    if-eqz p9, :cond_1

    #@22
    move-object/from16 v0, p9

    #@24
    array-length v3, v0

    #@25
    if-nez v3, :cond_2

    #@27
    .line 8591
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@29
    .line 8592
    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    #@2c
    .line 8591
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 8597
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v16

    #@34
    .line 8600
    .local v16, "oldId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_3

    #@3a
    .line 8601
    const-string/jumbo v3, "BackupManagerService"

    #@3d
    const-string/jumbo v4, "Full backup not supported before setup"

    #@40
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@43
    .line 8638
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    .line 8642
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 8643
    const-string/jumbo v3, "BackupManagerService"

    #@4c
    const-string/jumbo v4, "Full backup processing complete."

    #@4f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 8602
    return-void

    #@53
    .line 8639
    :catch_0
    move-exception v14

    #@54
    .local v14, "e":Ljava/io/IOException;
    goto :goto_0

    #@55
    .line 8605
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
    .line 8606
    const-string/jumbo v5, " obb="

    #@6d
    .line 8605
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
    .line 8606
    const-string/jumbo v5, " shared="

    #@7a
    .line 8605
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
    .line 8606
    const-string/jumbo v5, " all="

    #@87
    .line 8605
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
    .line 8607
    const-string/jumbo v5, " system="

    #@94
    .line 8605
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
    .line 8607
    const-string/jumbo v5, " pkgs="

    #@a1
    .line 8605
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
    .line 8608
    const-string/jumbo v3, "BackupManagerService"

    #@b5
    const-string/jumbo v4, "Beginning full backup..."

    #@b8
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 8610
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
    .line 8612
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@d7
    move-result v15

    #@d8
    .line 8613
    .local v15, "token":I
    move-object/from16 v0, p0

    #@da
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@dc
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@dd
    .line 8614
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
    .line 8618
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
    .line 8619
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
    .line 8620
    const-string/jumbo v3, "BackupManagerService"

    #@10d
    const-string/jumbo v4, "Unable to launch full backup confirmation"

    #@110
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 8621
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@117
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@11a
    .line 8638
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@11d
    .line 8642
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@120
    .line 8643
    const-string/jumbo v3, "BackupManagerService"

    #@123
    const-string/jumbo v4, "Full backup processing complete."

    #@126
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    .line 8622
    return-void

    #@12a
    .line 8613
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
    .line 8636
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v15    # "token":I
    :catchall_1
    move-exception v3

    #@12e
    .line 8638
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@131
    .line 8642
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@134
    .line 8643
    const-string/jumbo v4, "BackupManagerService"

    #@137
    const-string/jumbo v5, "Full backup processing complete."

    #@13a
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    .line 8636
    throw v3

    #@13e
    .line 8639
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v15    # "token":I
    :catch_1
    move-exception v14

    #@13f
    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_1

    #@140
    .line 8626
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
    .line 8627
    const/4 v6, 0x0

    #@149
    .line 8628
    const/4 v7, 0x0

    #@14a
    .line 8626
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    #@14d
    .line 8631
    move-object/from16 v0, p0

    #@14f
    invoke-virtual {v0, v15, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    #@152
    .line 8634
    const-string/jumbo v3, "BackupManagerService"

    #@155
    const-string/jumbo v4, "Waiting for full backup completion..."

    #@158
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 8635
    move-object/from16 v0, p0

    #@15d
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@160
    .line 8638
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    #@163
    .line 8642
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@166
    .line 8643
    const-string/jumbo v3, "BackupManagerService"

    #@169
    const-string/jumbo v4, "Full backup processing complete."

    #@16c
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16f
    .line 8576
    return-void

    #@170
    .line 8639
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
    .line 8689
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v7, "android.permission.BACKUP"

    #@5
    const-string/jumbo v8, "fullRestore"

    #@8
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8691
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v0

    #@f
    .line 8692
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    #@11
    .line 8693
    new-instance v6, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v7, "Restore supported only for the device owner"

    #@16
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v6

    #@1a
    .line 8696
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 8701
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    #@21
    move-result v6

    #@22
    if-nez v6, :cond_1

    #@24
    .line 8702
    const-string/jumbo v6, "BackupManagerService"

    #@27
    const-string/jumbo v7, "Full restore not permitted before setup"

    #@2a
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2d
    .line 8735
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@30
    .line 8739
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 8740
    const-string/jumbo v6, "BackupManagerService"

    #@36
    const-string/jumbo v7, "Full restore processing complete."

    #@39
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 8703
    return-void

    #@3d
    .line 8736
    :catch_0
    move-exception v1

    #@3e
    .line 8737
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
    .line 8706
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "BackupManagerService"

    #@5c
    const-string/jumbo v7, "Beginning full restore..."

    #@5f
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 8708
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    #@64
    invoke-direct {v4, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    #@67
    .line 8709
    .local v4, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@6a
    move-result v5

    #@6b
    .line 8710
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@6d
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6e
    .line 8711
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
    .line 8715
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
    .line 8716
    const-string/jumbo v6, "fullrest"

    #@91
    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    #@94
    move-result v6

    #@95
    if-nez v6, :cond_2

    #@97
    .line 8717
    const-string/jumbo v6, "BackupManagerService"

    #@9a
    const-string/jumbo v7, "Unable to launch full restore confirmation"

    #@9d
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 8718
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    #@a2
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a5
    .line 8735
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@a8
    .line 8739
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ab
    .line 8740
    const-string/jumbo v6, "BackupManagerService"

    #@ae
    const-string/jumbo v7, "Full restore processing complete."

    #@b1
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 8719
    return-void

    #@b5
    .line 8710
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
    .line 8733
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catchall_1
    move-exception v6

    #@b9
    .line 8735
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@bc
    .line 8739
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@bf
    .line 8740
    const-string/jumbo v7, "BackupManagerService"

    #@c2
    const-string/jumbo v8, "Full restore processing complete."

    #@c5
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 8733
    throw v6

    #@c9
    .line 8736
    .restart local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :catch_1
    move-exception v1

    #@ca
    .line 8737
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
    .line 8723
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@e7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@ea
    move-result-wide v8

    #@eb
    .line 8724
    const/4 v7, 0x0

    #@ec
    .line 8725
    const/4 v10, 0x0

    #@ed
    .line 8723
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    #@f0
    .line 8728
    invoke-virtual {p0, v5, v4}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    #@f3
    .line 8731
    const-string/jumbo v6, "BackupManagerService"

    #@f6
    const-string/jumbo v7, "Waiting for full restore completion..."

    #@f9
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 8732
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@ff
    .line 8735
    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    #@102
    .line 8739
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@105
    .line 8740
    const-string/jumbo v6, "BackupManagerService"

    #@108
    const-string/jumbo v7, "Full restore processing complete."

    #@10b
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 8688
    return-void

    #@10f
    .line 8736
    :catch_2
    move-exception v1

    #@110
    .line 8737
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
    .line 8736
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catch_3
    move-exception v1

    #@12c
    .line 8737
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
    .locals 12
    .param p1, "pkgNames"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 8648
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v3, "android.permission.BACKUP"

    #@7
    .line 8649
    const-string/jumbo v5, "fullTransportBackup"

    #@a
    .line 8648
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 8651
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@10
    move-result v7

    #@11
    .line 8652
    .local v7, "callingUserHandle":I
    if-eqz v7, :cond_0

    #@13
    .line 8653
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v2, "Restore supported only for the device owner"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 8656
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@1e
    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@21
    move-result-object v1

    #@22
    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2

    #@28
    .line 8657
    const-string/jumbo v1, "BackupManagerService"

    #@2b
    const-string/jumbo v2, "Full backup not currently possible -- key/value backup not yet run?"

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 8684
    :cond_1
    const-string/jumbo v1, "BackupManagerService"

    #@34
    const-string/jumbo v2, "Done with full transport backup."

    #@37
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 8647
    return-void

    #@3b
    .line 8660
    :cond_2
    const-string/jumbo v1, "BackupManagerService"

    #@3e
    const-string/jumbo v3, "fullTransportBackup()"

    #@41
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 8663
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    #@46
    const/4 v1, 0x1

    #@47
    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@4a
    .line 8665
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@4c
    move-object v1, p0

    #@4d
    move-object v3, p1

    #@4e
    move-object v5, v2

    #@4f
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V

    #@52
    .line 8666
    .local v0, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v1, Ljava/lang/Thread;

    #@54
    const-string/jumbo v2, "full-transport-master"

    #@57
    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@5a
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@5d
    .line 8669
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 8677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@63
    move-result-wide v10

    #@64
    .line 8678
    .local v10, "now":J
    array-length v1, p1

    #@65
    :goto_1
    if-ge v4, v1, :cond_1

    #@67
    aget-object v9, p1, v4

    #@69
    .line 8679
    .local v9, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    #@6c
    .line 8678
    add-int/lit8 v4, v4, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 8671
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "now":J
    :catch_0
    move-exception v8

    #@70
    .local v8, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method generateToken()I
    .locals 3

    #@0
    .prologue
    .line 603
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    #@2
    monitor-enter v2

    #@3
    .line 604
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
    .line 606
    if-ltz v0, :cond_0

    #@c
    .line 607
    return v0

    #@d
    .line 603
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
    .line 2286
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.BACKUP"

    #@5
    .line 2287
    const-string/jumbo v4, "getAvailableRestoreToken"

    #@8
    .line 2286
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2289
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@d
    .line 2290
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@f
    monitor-enter v3

    #@10
    .line 2291
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@12
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 2295
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v3

    #@1b
    .line 2299
    return-wide v0

    #@1c
    .line 2290
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
    .line 8969
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 8970
    const-string/jumbo v5, "getConfigurationIntent"

    #@9
    .line 8969
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 8972
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 8973
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
    .line 8974
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 8976
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
    .line 8979
    return-object v1

    #@1f
    .line 8980
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 8986
    return-object v6

    #@22
    .line 8972
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
    .line 8919
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    .line 8920
    const-string/jumbo v2, "getCurrentTransport"

    #@8
    .line 8919
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8922
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
    .line 9016
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9017
    const-string/jumbo v5, "getDataManagementIntent"

    #@9
    .line 9016
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9019
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9020
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
    .line 9021
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9023
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
    .line 9026
    return-object v1

    #@1f
    .line 9027
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9033
    return-object v6

    #@22
    .line 9019
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
    .line 9039
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 9040
    const-string/jumbo v5, "getDataManagementLabel"

    #@9
    .line 9039
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 9042
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 9043
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
    .line 9044
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9046
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
    .line 9048
    return-object v1

    #@1f
    .line 9049
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9055
    return-object v6

    #@22
    .line 9042
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
    .line 8995
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.BACKUP"

    #@6
    .line 8996
    const-string/jumbo v5, "getDestinationString"

    #@9
    .line 8995
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 8998
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@e
    monitor-enter v4

    #@f
    .line 8999
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
    .line 9000
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    #@19
    .line 9002
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
    .line 9004
    return-object v1

    #@1f
    .line 9005
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    :cond_0
    monitor-exit v4

    #@21
    .line 9011
    return-object v6

    #@22
    .line 8998
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2362
    const/4 v1, 0x0

    #@1
    .line 2363
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 2364
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
    .line 2369
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v1, :cond_2

    #@10
    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    #@12
    .line 2370
    .local v2, "state":I
    :goto_0
    if-nez v2, :cond_0

    #@14
    .line 2371
    const-string/jumbo v3, "BackupManagerService"

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "TIMEOUT: token="

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 2372
    const/4 v3, -0x1

    #@33
    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    #@35
    .line 2373
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3a
    .line 2375
    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3c
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v4

    #@40
    .line 2379
    if-eqz v1, :cond_1

    #@42
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@44
    if-eqz v3, :cond_1

    #@46
    .line 2380
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@48
    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    #@4b
    .line 2360
    :cond_1
    return-void

    #@4c
    .line 2369
    .end local v2    # "state":I
    :cond_2
    const/4 v2, -0x1

    #@4d
    .restart local v2    # "state":I
    goto :goto_0

    #@4e
    .line 2363
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    #@4f
    monitor-exit v4

    #@50
    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1584
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.BACKUP"

    #@6
    .line 1585
    const-string/jumbo v3, "hasBackupPassword"

    #@9
    .line 1584
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 1587
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

.method public isBackupEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 8913
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    const-string/jumbo v2, "isBackupEnabled"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8914
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@d
    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 8927
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.BACKUP"

    #@5
    const-string/jumbo v6, "listAllTransports"

    #@8
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8929
    const/4 v3, 0x0

    #@c
    .line 8930
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 8931
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
    .line 8932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 8933
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
    .line 8937
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v4

    #@3b
    if-lez v4, :cond_2

    #@3d
    .line 8938
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v4

    #@41
    new-array v3, v4, [Ljava/lang/String;

    #@43
    .line 8939
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    .line 8941
    .end local v3    # "list":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2097
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
    .line 2099
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@c
    monitor-enter v4

    #@d
    .line 2100
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
    .line 2102
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 2104
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
    .line 2105
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    #@25
    move-result-wide v6

    #@26
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@29
    .line 2106
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2c
    .line 2110
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
    .line 2096
    return-void

    #@34
    .line 2110
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    #@35
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@36
    .line 2107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    #@37
    .line 2108
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
    .line 2110
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
    .line 2109
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@67
    .line 2110
    :goto_3
    if-eqz v1, :cond_4

    #@69
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6c
    .line 2109
    :cond_4
    :goto_4
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@6d
    .line 2099
    :catchall_1
    move-exception v3

    #@6e
    monitor-exit v4

    #@6f
    throw v3

    #@70
    .line 2110
    :catch_3
    move-exception v0

    #@71
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@72
    .line 2109
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
    .line 2107
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
    .line 9229
    const/4 v3, 0x0

    #@1
    .line 9230
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 9231
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
    .line 9232
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v3, :cond_0

    #@10
    .line 9233
    const/4 v4, 0x1

    #@11
    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    #@13
    .line 9235
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@15
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v5

    #@19
    .line 9239
    if-eqz v3, :cond_1

    #@1b
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 9240
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@21
    iget-object v5, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    #@23
    const/16 v6, 0x15

    #@25
    invoke-virtual {v4, v6, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v2

    #@29
    .line 9242
    .local v2, "msg":Landroid/os/Message;
    const-wide/32 v4, 0x7fffffff

    #@2c
    cmp-long v4, p2, v4

    #@2e
    if-lez v4, :cond_2

    #@30
    const v4, 0x7fffffff

    #@33
    :goto_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    #@35
    .line 9243
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@37
    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@3a
    .line 9225
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    #@3b
    .line 9230
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_0
    move-exception v4

    #@3c
    monitor-exit v5

    #@3d
    throw v4

    #@3e
    .line 9242
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2
    long-to-int v4, p2

    #@3f
    goto :goto_0
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
    .line 1485
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@4
    if-nez v1, :cond_1

    #@6
    .line 1487
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
    .line 1488
    :cond_0
    return v3

    #@12
    .line 1492
    :cond_1
    if-eqz p2, :cond_2

    #@14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-lez v1, :cond_2

    #@1a
    .line 1493
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    #@1c
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1494
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 1496
    return v3

    #@29
    .line 1500
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
    .line 2319
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2320
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
    .line 2322
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
    .line 2323
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@18
    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 2316
    return-void

    #@1d
    .line 2319
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
    .line 1608
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@5
    invoke-virtual {v6, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@8
    .line 1611
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@b
    move-result-object v4

    #@c
    .line 1612
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v4, :cond_1

    #@e
    .line 1613
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 1614
    .local v5, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    #@14
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@16
    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    .line 1615
    .local v3, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@1b
    const-string/jumbo v6, "_need_init_"

    #@1e
    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21
    .line 1617
    .local v1, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    #@23
    .line 1621
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@25
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 1623
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
    .line 1632
    :goto_0
    return-void

    #@31
    .line 1629
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@34
    .line 1630
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@36
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 1634
    .end local v1    # "initPendingFile":Ljava/io/File;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3b
    .line 1641
    :cond_1
    if-eqz p1, :cond_2

    #@3d
    .line 1642
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@3f
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@42
    .line 1643
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@44
    .line 1644
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@46
    .line 1645
    if-eqz p1, :cond_3

    #@48
    const/4 v6, 0x1

    #@49
    .line 1644
    :goto_1
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@4c
    move-result-object v6

    #@4d
    .line 1648
    const-wide/32 v10, 0x36ee80

    #@50
    .line 1643
    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@53
    .line 1605
    :cond_2
    return-void

    #@54
    :cond_3
    move v6, v7

    #@55
    .line 1645
    goto :goto_1

    #@56
    .line 1624
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
    .line 2117
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
    .line 2120
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@1c
    monitor-enter v7

    #@1d
    .line 2124
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
    .line 2125
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v1, 0x0

    #@28
    .line 2127
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
    .line 2128
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@32
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@35
    .line 2129
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
    .line 2130
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4a
    goto :goto_0

    #@4b
    .line 2138
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@4c
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    #@4d
    .line 2143
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
    .line 2144
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@6b
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@6e
    .line 2145
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@71
    .line 2146
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@73
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    .line 2148
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
    .line 2116
    return-void

    #@7d
    .line 2133
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@80
    .line 2134
    const/4 v1, 0x0

    #@81
    .line 2135
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
    .line 2136
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
    .line 2138
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    #@b1
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@b2
    .line 2148
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    #@b3
    goto :goto_2

    #@b4
    .line 2147
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@b5
    .line 2148
    :goto_3
    if-eqz v1, :cond_2

    #@b7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@ba
    .line 2147
    :cond_2
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@bb
    .line 2120
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    #@bc
    monitor-exit v7

    #@bd
    throw v6

    #@be
    .line 2148
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_3
    move-exception v0

    #@bf
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@c0
    .line 2147
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
    .line 2029
    if-nez p1, :cond_0

    #@2
    .line 2030
    const-string/jumbo v2, "BackupManagerService"

    #@5
    const-string/jumbo v3, "removePackageParticipants with null list"

    #@8
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 2031
    return-void

    #@c
    .line 2036
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
    .line 2038
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/HashSet;

    #@1a
    .line 2039
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@1c
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 2040
    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    #@25
    .line 2041
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 2043
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    #@30
    .line 2036
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 2028
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method resetBackupState(Ljava/io/File;)V
    .locals 12
    .param p1, "stateFileDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 1656
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 1658
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    #@5
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@8
    .line 1659
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    #@a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@d
    .line 1661
    const-wide/16 v8, 0x0

    #@f
    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@11
    .line 1662
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    #@14
    .line 1665
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
    .line 1667
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
    .line 1668
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2e
    .line 1665
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@30
    goto :goto_0

    #@31
    .end local v5    # "sf":Ljava/io/File;
    :cond_1
    monitor-exit v7

    #@32
    .line 1674
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@34
    monitor-enter v7

    #@35
    .line 1675
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@3a
    move-result v0

    #@3b
    .line 1676
    .local v0, "N":I
    const/4 v1, 0x0

    #@3c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@3e
    .line 1677
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Ljava/util/HashSet;

    #@46
    .line 1678
    .local v4, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    #@48
    .line 1679
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
    .line 1680
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_2

    #@5c
    .line 1674
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
    .line 1656
    :catchall_1
    move-exception v6

    #@60
    monitor-exit v7

    #@61
    throw v6

    #@62
    .line 1676
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
    .line 1655
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    #@0
    .prologue
    .line 9095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v3

    #@4
    const/16 v4, 0x3e8

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 9096
    const-string/jumbo v3, "BackupManagerService"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "Non-system process uid="

    #@13
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1a
    move-result v7

    #@1b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 9097
    const-string/jumbo v7, " attemping install-time restore"

    #@22
    .line 9096
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 9098
    return-void

    #@2e
    .line 9101
    :cond_0
    const/4 v13, 0x0

    #@2f
    .line 9103
    .local v13, "skip":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@32
    move-result-wide v8

    #@33
    .line 9104
    .local v8, "restoreSet":J
    const-string/jumbo v3, "BackupManagerService"

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "restoreAtInstall pkg="

    #@3e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    move-object/from16 v0, p1

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 9105
    const-string/jumbo v7, " token="

    #@4b
    .line 9104
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 9105
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 9104
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 9106
    const-string/jumbo v7, " restoreSet="

    #@5a
    .line 9104
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 9106
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    .line 9104
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 9107
    const-wide/16 v14, 0x0

    #@6f
    cmp-long v3, v8, v14

    #@71
    if-nez v3, :cond_1

    #@73
    .line 9109
    const/4 v13, 0x1

    #@74
    .line 9113
    :cond_1
    move-object/from16 v0, p0

    #@76
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    #@7d
    move-result-object v5

    #@7e
    .line 9114
    .local v5, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v5, :cond_2

    #@80
    .line 9115
    const-string/jumbo v3, "BackupManagerService"

    #@83
    const-string/jumbo v4, "No transport"

    #@86
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 9116
    const/4 v13, 0x1

    #@8a
    .line 9119
    :cond_2
    move-object/from16 v0, p0

    #@8c
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@8e
    if-nez v3, :cond_3

    #@90
    .line 9121
    const-string/jumbo v3, "BackupManagerService"

    #@93
    new-instance v4, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v7, "Non-restorable state: auto="

    #@9b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-boolean v7, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    #@a3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 9123
    const/4 v13, 0x1

    #@af
    .line 9126
    :cond_3
    if-nez v13, :cond_4

    #@b1
    .line 9133
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    .line 9138
    .local v6, "dirName":Ljava/lang/String;
    new-instance v10, Landroid/content/pm/PackageInfo;

    #@b7
    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    #@ba
    .line 9139
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p1

    #@bc
    iput-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@be
    .line 9141
    move-object/from16 v0, p0

    #@c0
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@c2
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@c5
    .line 9145
    move-object/from16 v0, p0

    #@c7
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@c9
    const/4 v4, 0x3

    #@ca
    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    #@cd
    move-result-object v12

    #@ce
    .line 9146
    .local v12, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    #@d0
    const/4 v7, 0x0

    #@d1
    move-object/from16 v4, p0

    #@d3
    move/from16 v11, p2

    #@d5
    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V

    #@d8
    iput-object v3, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@da
    .line 9148
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@de
    invoke-virtual {v3, v12}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e1
    .line 9156
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    if-eqz v13, :cond_5

    #@e3
    .line 9159
    const-string/jumbo v3, "BackupManagerService"

    #@e6
    const-string/jumbo v4, "Finishing install immediately"

    #@e9
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 9161
    :try_start_1
    move-object/from16 v0, p0

    #@ee
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    #@f0
    move/from16 v0, p2

    #@f2
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@f5
    .line 9094
    :cond_5
    :goto_1
    return-void

    #@f6
    .line 9149
    :catch_0
    move-exception v2

    #@f7
    .line 9151
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    #@fa
    const-string/jumbo v4, "Unable to contact transport"

    #@fd
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    .line 9152
    const/4 v13, 0x1

    #@101
    goto :goto_0

    #@102
    .line 9162
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@103
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    #@0
    .prologue
    .line 7212
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    #@4
    .line 7210
    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .locals 17
    .param p1, "transportMinLatency"    # J

    #@0
    .prologue
    .line 4328
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@4
    monitor-enter v12

    #@5
    .line 4329
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
    .line 4333
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
    .line 4334
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v14

    #@20
    sub-long v8, v14, v10

    #@22
    .line 4335
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    #@25
    cmp-long v7, v8, v14

    #@27
    if-gez v7, :cond_0

    #@29
    .line 4336
    const-wide/32 v14, 0x5265c00

    #@2c
    sub-long v2, v14, v8

    #@2e
    .line 4337
    .local v2, "appLatency":J
    :goto_0
    move-wide/from16 v0, p1

    #@30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@33
    move-result-wide v4

    #@34
    .line 4338
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/BackupManagerService$3;

    #@36
    move-object/from16 v0, p0

    #@38
    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    #@3b
    .line 4343
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
    .line 4327
    return-void

    #@46
    .line 4336
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_0
    const-wide/16 v2, 0x0

    #@48
    .restart local v2    # "appLatency":J
    goto :goto_0

    #@49
    .line 4346
    .end local v2    # "appLatency":J
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
    .line 4328
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
    .line 8946
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.BACKUP"

    #@5
    .line 8947
    const-string/jumbo v5, "selectBackupTransport"

    #@8
    .line 8946
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8949
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@d
    monitor-enter v4

    #@e
    .line 8950
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    move-result-wide v0

    #@12
    .line 8952
    .local v0, "oldId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@14
    .line 8953
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #@16
    .line 8954
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v3

    #@1c
    .line 8955
    const-string/jumbo v5, "backup_transport"

    #@1f
    .line 8954
    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@22
    .line 8956
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
    .line 8957
    const-string/jumbo v6, " returning "

    #@3a
    .line 8956
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
    .line 8960
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    monitor-exit v4

    #@4d
    .line 8958
    return-object v2

    #@4e
    .line 8959
    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@4f
    .line 8960
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 8959
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@53
    .line 8949
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
    .line 8885
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.BACKUP"

    #@5
    .line 8886
    const-string/jumbo v4, "setAutoRestore"

    #@8
    .line 8885
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8888
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
    .line 8890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@28
    move-result-wide v0

    #@29
    .line 8892
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 8893
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v3

    #@30
    .line 8894
    const-string/jumbo v4, "backup_auto_restore"

    #@33
    if-eqz p1, :cond_0

    #@35
    const/4 v2, 0x1

    #@36
    .line 8893
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@39
    .line 8895
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    .line 8898
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 8884
    return-void

    #@40
    .line 8894
    :cond_0
    const/4 v2, 0x0

    #@41
    goto :goto_0

    #@42
    .line 8892
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
    .line 8897
    :catchall_1
    move-exception v2

    #@46
    .line 8898
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 8897
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 12
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 8834
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v9, "android.permission.BACKUP"

    #@7
    .line 8835
    const-string/jumbo v10, "setBackupEnabled"

    #@a
    .line 8834
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 8837
    const-string/jumbo v8, "BackupManagerService"

    #@10
    new-instance v9, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v10, "Backup enabled => "

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 8839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2a
    move-result-wide v2

    #@2b
    .line 8841
    .local v2, "oldId":J
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    #@2d
    .line 8842
    .local v5, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2e
    .line 8843
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@33
    move-result-object v8

    #@34
    .line 8844
    const-string/jumbo v9, "backup_enabled"

    #@37
    if-eqz p1, :cond_1

    #@39
    .line 8843
    :goto_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@3c
    .line 8845
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@3e
    :try_start_2
    monitor-exit p0

    #@3f
    .line 8848
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@41
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    .line 8849
    if-eqz p1, :cond_0

    #@44
    if-eqz v5, :cond_2

    #@46
    .line 8853
    :cond_0
    if-nez p1, :cond_3

    #@48
    .line 8857
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4a
    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    #@4d
    .line 8862
    if-eqz v5, :cond_3

    #@4f
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@51
    if-eqz v6, :cond_3

    #@53
    .line 8866
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@55
    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    .line 8867
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    #@58
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@5d
    move-result-object v6

    #@5e
    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@61
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_5
    monitor-exit v8

    #@62
    .line 8870
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v4

    #@66
    .local v4, "transport$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_4

    #@6c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v1

    #@70
    check-cast v1, Ljava/lang/String;

    #@72
    .line 8871
    .local v1, "transport":Ljava/lang/String;
    const/4 v6, 0x1

    #@73
    invoke-virtual {p0, v6, v1}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@76
    goto :goto_1

    #@77
    .line 8848
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "transport":Ljava/lang/String;
    .end local v4    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@78
    :try_start_6
    monitor-exit v7

    #@79
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7a
    .line 8878
    .end local v5    # "wasEnabled":Z
    :catchall_1
    move-exception v6

    #@7b
    .line 8879
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7e
    .line 8878
    throw v6

    #@7f
    .restart local v5    # "wasEnabled":Z
    :cond_1
    move v6, v7

    #@80
    .line 8844
    goto :goto_0

    #@81
    .line 8842
    :catchall_2
    move-exception v6

    #@82
    :try_start_7
    monitor-exit p0

    #@83
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@84
    .line 8849
    :cond_2
    :try_start_8
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    #@86
    if-eqz v6, :cond_0

    #@88
    .line 8851
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@8a
    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    #@8d
    .line 8852
    const-wide/16 v8, 0x0

    #@8f
    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@92
    :cond_3
    :goto_2
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@93
    .line 8879
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 8833
    return-void

    #@97
    .line 8866
    :catchall_3
    move-exception v6

    #@98
    :try_start_a
    monitor-exit v8

    #@99
    throw v6

    #@9a
    .line 8873
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "transport$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    #@9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9f
    move-result-wide v8

    #@a0
    .line 8874
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    #@a2
    .line 8873
    const/4 v11, 0x0

    #@a3
    invoke-virtual {v6, v11, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@a6
    goto :goto_2
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1504
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v19, v0

    #@6
    const-string/jumbo v20, "android.permission.BACKUP"

    #@9
    .line 1505
    const-string/jumbo v21, "setBackupPassword"

    #@c
    .line 1504
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1508
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
    .line 1512
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
    .line 1513
    if-eqz v11, :cond_5

    #@33
    const-string/jumbo v19, "PBKDF2WithHmacSHA1And8bit"

    #@36
    .line 1514
    const/16 v20, 0x2710

    #@38
    .line 1513
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
    .line 1519
    :cond_0
    const/16 v19, 0x2

    #@48
    move/from16 v0, v19

    #@4a
    move-object/from16 v1, p0

    #@4c
    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    #@4e
    .line 1520
    const/4 v12, 0x0

    #@4f
    .line 1521
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    #@50
    .line 1523
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
    .line 1524
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
    .line 1525
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
    .line 1531
    if-eqz v15, :cond_1

    #@6f
    :try_start_3
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    #@72
    .line 1532
    :cond_1
    if-eqz v13, :cond_2

    #@74
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@77
    .line 1539
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
    .line 1540
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
    .line 1541
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
    .line 1543
    const-string/jumbo v19, "BackupManagerService"

    #@9a
    const-string/jumbo v20, "Unable to clear backup password"

    #@9d
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 1544
    const/16 v19, 0x0

    #@a2
    return v19

    #@a3
    .line 1508
    .end local v11    # "pbkdf2Fallback":Z
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_4
    const/4 v11, 0x0

    #@a4
    .restart local v11    # "pbkdf2Fallback":Z
    goto/16 :goto_0

    #@a6
    .line 1515
    :cond_5
    const/16 v19, 0x0

    #@a8
    return v19

    #@a9
    .line 1533
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    #@aa
    .line 1534
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@ad
    const-string/jumbo v20, "Unable to close pw version record"

    #@b0
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_1

    #@b4
    .line 1526
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    #@b5
    .line 1527
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
    .line 1528
    const/16 v19, 0x0

    #@c0
    .line 1531
    if-eqz v14, :cond_6

    #@c2
    :try_start_5
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    #@c5
    .line 1532
    :cond_6
    if-eqz v12, :cond_7

    #@c7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@ca
    .line 1528
    :cond_7
    :goto_3
    return v19

    #@cb
    .line 1533
    :catch_2
    move-exception v7

    #@cc
    .line 1534
    const-string/jumbo v20, "BackupManagerService"

    #@cf
    const-string/jumbo v21, "Unable to close pw version record"

    #@d2
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_3

    #@d6
    .line 1529
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    #@d7
    .line 1531
    :goto_4
    if-eqz v14, :cond_8

    #@d9
    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    #@dc
    .line 1532
    :cond_8
    if-eqz v12, :cond_9

    #@de
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@e1
    .line 1529
    :cond_9
    :goto_5
    throw v19

    #@e2
    .line 1533
    :catch_3
    move-exception v7

    #@e3
    .line 1534
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    #@e6
    const-string/jumbo v21, "Unable to close pw version record"

    #@e9
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    goto :goto_5

    #@ed
    .line 1547
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
    .line 1548
    const/16 v19, 0x0

    #@f7
    move-object/from16 v0, v19

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    #@fd
    .line 1549
    const/16 v19, 0x1

    #@ff
    return v19

    #@100
    .line 1554
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
    .line 1555
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
    .line 1557
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    #@11f
    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    #@120
    .line 1558
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    #@121
    .line 1560
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
    .line 1561
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
    .line 1562
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_a
    new-instance v10, Ljava/io/DataOutputStream;

    #@139
    .end local v5    # "buffer":Ljava/io/OutputStream;
    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@13c
    .line 1565
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
    .line 1566
    move-object/from16 v0, v18

    #@148
    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@14b
    .line 1567
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@14e
    .line 1568
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    #@151
    .line 1569
    move-object/from16 v0, p0

    #@153
    iput-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    #@155
    .line 1570
    move-object/from16 v0, v18

    #@157
    move-object/from16 v1, p0

    #@159
    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    #@15b
    .line 1571
    const/16 v19, 0x1

    #@15d
    .line 1573
    if-eqz v10, :cond_c

    #@15f
    :try_start_c
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    #@162
    .line 1574
    :cond_c
    if-eqz v6, :cond_d

    #@164
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    #@167
    .line 1575
    :cond_d
    if-eqz v17, :cond_e

    #@169
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    #@16c
    .line 1571
    :cond_e
    return v19

    #@16d
    .line 1572
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    :catchall_1
    move-exception v19

    #@16e
    .line 1573
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    :goto_6
    if-eqz v9, :cond_f

    #@170
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    #@173
    .line 1574
    :cond_f
    if-eqz v5, :cond_10

    #@175
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@178
    .line 1575
    :cond_10
    if-eqz v16, :cond_11

    #@17a
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    #@17d
    .line 1572
    :cond_11
    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    #@17e
    .line 1577
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v18    # "salt":[B
    :catch_4
    move-exception v7

    #@17f
    .line 1578
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    #@182
    const-string/jumbo v20, "Unable to set backup password"

    #@185
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    .line 1580
    const/16 v19, 0x0

    #@18a
    return v19

    #@18b
    .line 1572
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
    .line 1529
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
    .line 1526
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
    .line 8904
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.BACKUP"

    #@5
    .line 8905
    const-string/jumbo v2, "setBackupProvisioned"

    #@8
    .line 8904
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 8903
    return-void
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    #@0
    .prologue
    .line 8777
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 8778
    :try_start_0
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@9
    .line 8779
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 8776
    return-void

    #@10
    .line 8777
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
    .line 8761
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2
    const/16 v2, 0x9

    #@4
    .line 8762
    const/4 v3, 0x0

    #@5
    .line 8761
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 8763
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@b
    const-wide/32 v2, 0xea60

    #@e
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@11
    .line 8758
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8746
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 8747
    .local v0, "confIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.backupconfirm"

    #@8
    .line 8748
    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    #@b
    .line 8747
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 8749
    const-string/jumbo v2, "conftoken"

    #@11
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 8750
    const/high16 v2, 0x10000000

    #@16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    .line 8751
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 8755
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 8752
    .end local v0    # "confIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@21
    .line 8753
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    #@22
    return v2
.end method

.method tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 3229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@5
    .line 3234
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@7
    const/16 v2, 0x3e8

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 3235
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@d
    const-string/jumbo v2, "com.android.backupconfirm"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 3226
    :cond_0
    :goto_0
    return-void

    #@17
    .line 3236
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@19
    const/16 v2, 0x3e9

    #@1b
    if-eq v1, v2, :cond_0

    #@1d
    .line 3238
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@1f
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@21
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@23
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 3242
    :catch_0
    move-exception v0

    #@28
    .line 3243
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@2b
    const-string/jumbo v2, "Lost app trying to shut down"

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    goto :goto_0
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1947
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
    .line 1948
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@e
    and-int/lit8 v2, v2, 0x8

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1950
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1952
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
    .line 1957
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v5

    #@3b
    .line 1954
    :catch_0
    move-exception v0

    #@3c
    .line 1955
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
    .line 8767
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v2

    #@3
    .line 8768
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
    .line 8770
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
    .line 8771
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
    .line 8766
    return-void

    #@15
    .line 8767
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
    .line 2331
    const/4 v2, 0x0

    #@3
    .line 2332
    .local v2, "finalState":I
    const/4 v3, 0x0

    #@4
    .line 2333
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@6
    monitor-enter v7

    #@7
    .line 2335
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
    .line 2336
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-nez v3, :cond_0

    #@13
    :goto_1
    monitor-exit v7

    #@14
    .line 2354
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@16
    const/4 v7, 0x7

    #@17
    invoke-virtual {v4, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@1a
    .line 2357
    if-ne v2, v5, :cond_2

    #@1c
    move v4, v5

    #@1d
    :goto_2
    return v4

    #@1e
    .line 2340
    :cond_0
    :try_start_1
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v4, :cond_1

    #@22
    .line 2342
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
    .line 2343
    :catch_0
    move-exception v1

    #@29
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@2a
    .line 2347
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget v2, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .line 2333
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
    .line 2357
    goto :goto_2
.end method

.method writeRestoreTokens()V
    .locals 7

    #@0
    .prologue
    .line 2158
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    #@2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    #@4
    const-string/jumbo v5, "rwd"

    #@7
    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 2161
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    #@b
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@e
    .line 2164
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    #@10
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@13
    .line 2165
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@15
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@18
    .line 2168
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 2169
    const/4 v4, -0x1

    #@1d
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@20
    .line 2178
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    #@23
    .line 2156
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    #@24
    .line 2171
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
    .line 2172
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
    .line 2173
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
    .line 2174
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    goto :goto_1

    #@63
    .line 2179
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@64
    .line 2180
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    #@67
    const-string/jumbo v5, "Unable to write token file:"

    #@6a
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_0
.end method
