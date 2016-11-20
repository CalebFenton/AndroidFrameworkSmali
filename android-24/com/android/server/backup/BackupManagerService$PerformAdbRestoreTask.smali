.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$RestorePolicy:[I

.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

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

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

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
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

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
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

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

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6540
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 6499
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@8
    .line 6500
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@a
    .line 6501
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    #@c
    .line 6528
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 6527
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@13
    .line 6531
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    #@1a
    .line 6535
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    .line 6534
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    #@21
    .line 6538
    new-instance v0, Ljava/util/HashSet;

    #@23
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    #@28
    .line 7205
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@2f
    .line 7206
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    #@34
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    #@36
    .line 6542
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@38
    .line 6543
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    #@3a
    .line 6544
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    #@3c
    .line 6545
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3e
    .line 6546
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@40
    .line 6547
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@42
    .line 6548
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    #@44
    .line 6549
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@46
    .line 6550
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@48
    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@4b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@4d
    .line 6554
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    #@4f
    const-string/jumbo v1, "android"

    #@52
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@55
    .line 6555
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    #@57
    const-string/jumbo v1, "com.android.providers.settings"

    #@5a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5d
    .line 6541
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
    .line 7659
    const/4 v3, 0x0

    #@3
    .line 7660
    .local v3, "offset":I
    array-length v4, p1

    #@4
    .line 7661
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const/16 v5, 0x40

    #@8
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 7662
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    #@d
    .line 7663
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
    .line 7664
    const/16 v5, 0x10

    #@21
    if-le v4, v5, :cond_0

    #@23
    const/16 v2, 0x10

    #@25
    .line 7665
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    #@28
    .line 7666
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
    .line 7665
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_2

    #@41
    .line 7664
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    #@42
    .restart local v2    # "numThisLine":I
    goto :goto_1

    #@43
    .line 7668
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
    .line 7669
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@50
    .line 7670
    sub-int/2addr v4, v2

    #@51
    .line 7671
    add-int/2addr v3, v2

    #@52
    goto :goto_0

    #@53
    .line 7658
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 28
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    #@0
    .prologue
    .line 6704
    const/16 v22, 0x0

    #@2
    .line 6707
    .local v22, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v25, "AES/CBC/PKCS5Padding"

    #@5
    invoke-static/range {v25 .. v25}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@8
    move-result-object v6

    #@9
    .line 6708
    .local v6, "c":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d
    move-object/from16 v25, v0

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    #@13
    move-object/from16 v26, v0

    #@15
    move-object/from16 v0, v25

    #@17
    move-object/from16 v1, p1

    #@19
    move-object/from16 v2, v26

    #@1b
    move-object/from16 v3, p2

    #@1d
    move/from16 v4, p4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@22
    move-result-object v24

    #@23
    .line 6710
    .local v24, "userKey":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    move-object/from16 v25, v0

    #@29
    move-object/from16 v0, v25

    #@2b
    move-object/from16 v1, p5

    #@2d
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    #@30
    move-result-object v5

    #@31
    .line 6711
    .local v5, "IV":[B
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    #@33
    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@36
    .line 6713
    .local v14, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    #@38
    invoke-interface/range {v24 .. v24}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@3b
    move-result-object v26

    #@3c
    const-string/jumbo v27, "AES"

    #@3f
    invoke-direct/range {v25 .. v27}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@42
    .line 6712
    const/16 v26, 0x2

    #@44
    move/from16 v0, v26

    #@46
    move-object/from16 v1, v25

    #@48
    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@4b
    .line 6715
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4f
    move-object/from16 v25, v0

    #@51
    move-object/from16 v0, v25

    #@53
    move-object/from16 v1, p6

    #@55
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    #@58
    move-result-object v19

    #@59
    .line 6716
    .local v19, "mkCipher":[B
    move-object/from16 v0, v19

    #@5b
    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@5e
    move-result-object v17

    #@5f
    .line 6719
    .local v17, "mkBlob":[B
    const/16 v25, 0x0

    #@61
    .line 6720
    const/16 v20, 0x1

    #@63
    .local v20, "offset":I
    aget-byte v15, v17, v25

    #@65
    .line 6721
    .local v15, "len":I
    add-int/lit8 v25, v15, 0x1

    #@67
    move-object/from16 v0, v17

    #@69
    move/from16 v1, v20

    #@6b
    move/from16 v2, v25

    #@6d
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@70
    move-result-object v5

    #@71
    .line 6722
    add-int/lit8 v20, v15, 0x1

    #@73
    .line 6724
    add-int/lit8 v21, v20, 0x1

    #@75
    .end local v20    # "offset":I
    .local v21, "offset":I
    aget-byte v15, v17, v20

    #@77
    .line 6726
    add-int v25, v21, v15

    #@79
    .line 6725
    move-object/from16 v0, v17

    #@7b
    move/from16 v1, v21

    #@7d
    move/from16 v2, v25

    #@7f
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@82
    move-result-object v16

    #@83
    .line 6727
    .local v16, "mk":[B
    add-int v20, v21, v15

    #@85
    .line 6729
    .end local v21    # "offset":I
    .restart local v20    # "offset":I
    add-int/lit8 v21, v20, 0x1

    #@87
    .end local v20    # "offset":I
    .restart local v21    # "offset":I
    aget-byte v15, v17, v20

    #@89
    .line 6731
    add-int v25, v21, v15

    #@8b
    .line 6730
    move-object/from16 v0, v17

    #@8d
    move/from16 v1, v21

    #@8f
    move/from16 v2, v25

    #@91
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@94
    move-result-object v18

    #@95
    .line 6734
    .local v18, "mkChecksum":[B
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@99
    move-object/from16 v25, v0

    #@9b
    move-object/from16 v0, v25

    #@9d
    move-object/from16 v1, p1

    #@9f
    move-object/from16 v2, v16

    #@a1
    move-object/from16 v3, p3

    #@a3
    move/from16 v4, p4

    #@a5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    #@a8
    move-result-object v7

    #@a9
    .line 6735
    .local v7, "calculatedCk":[B
    move-object/from16 v0, v18

    #@ab
    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@ae
    move-result v25

    #@af
    if-eqz v25, :cond_1

    #@b1
    .line 6736
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    #@b3
    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@b6
    .line 6738
    .restart local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    #@b8
    const-string/jumbo v26, "AES"

    #@bb
    move-object/from16 v0, v25

    #@bd
    move-object/from16 v1, v16

    #@bf
    move-object/from16 v2, v26

    #@c1
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@c4
    .line 6737
    const/16 v26, 0x2

    #@c6
    move/from16 v0, v26

    #@c8
    move-object/from16 v1, v25

    #@ca
    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@cd
    .line 6741
    new-instance v23, Ljavax/crypto/CipherInputStream;

    #@cf
    move-object/from16 v0, v23

    #@d1
    move-object/from16 v1, p7

    #@d3
    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    #@d6
    .local v23, "result":Ljava/io/InputStream;
    move-object/from16 v22, v23

    #@d8
    .line 6761
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "len":I
    .end local v16    # "mk":[B
    .end local v17    # "mkBlob":[B
    .end local v18    # "mkChecksum":[B
    .end local v19    # "mkCipher":[B
    .end local v21    # "offset":I
    .end local v22    # "result":Ljava/io/InputStream;
    .end local v23    # "result":Ljava/io/InputStream;
    .end local v24    # "userKey":Ljavax/crypto/SecretKey;
    :cond_0
    :goto_0
    return-object v22

    #@d9
    .line 6742
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v7    # "calculatedCk":[B
    .restart local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "len":I
    .restart local v16    # "mk":[B
    .restart local v17    # "mkBlob":[B
    .restart local v18    # "mkChecksum":[B
    .restart local v19    # "mkCipher":[B
    .restart local v21    # "offset":I
    .restart local v22    # "result":Ljava/io/InputStream;
    .restart local v24    # "userKey":Ljavax/crypto/SecretKey;
    :cond_1
    if-eqz p8, :cond_0

    #@db
    const-string/jumbo v25, "BackupManagerService"

    #@de
    const-string/jumbo v26, "Incorrect password"

    #@e1
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    #@e4
    goto :goto_0

    #@e5
    .line 6743
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v14    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v15    # "len":I
    .end local v16    # "mk":[B
    .end local v17    # "mkBlob":[B
    .end local v18    # "mkChecksum":[B
    .end local v19    # "mkCipher":[B
    .end local v21    # "offset":I
    .end local v24    # "userKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v8

    #@e6
    .line 6744
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_0

    #@e8
    const-string/jumbo v25, "BackupManagerService"

    #@eb
    const-string/jumbo v26, "Needed parameter spec unavailable!"

    #@ee
    move-object/from16 v0, v25

    #@f0
    move-object/from16 v1, v26

    #@f2
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f5
    goto :goto_0

    #@f6
    .line 6757
    .end local v8    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v9

    #@f7
    .line 6758
    .local v9, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_0

    #@f9
    const-string/jumbo v25, "BackupManagerService"

    #@fc
    const-string/jumbo v26, "Illegal password; aborting"

    #@ff
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto :goto_0

    #@103
    .line 6755
    .end local v9    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v13

    #@104
    .line 6756
    .local v13, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_0

    #@106
    const-string/jumbo v25, "BackupManagerService"

    #@109
    const-string/jumbo v26, "Needed padding mechanism unavailable!"

    #@10c
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    goto :goto_0

    #@110
    .line 6753
    .end local v13    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v10

    #@111
    .line 6754
    .local v10, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_0

    #@113
    const-string/jumbo v25, "BackupManagerService"

    #@116
    const-string/jumbo v26, "Needed decryption algorithm unavailable!"

    #@119
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    goto :goto_0

    #@11d
    .line 6751
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v12

    #@11e
    .line 6752
    .local v12, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_0

    #@120
    const-string/jumbo v25, "BackupManagerService"

    #@123
    const-string/jumbo v26, "Invalid block size in master key"

    #@126
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    goto :goto_0

    #@12a
    .line 6745
    .end local v12    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v11

    #@12b
    .line 6750
    .local v11, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_0

    #@12d
    const-string/jumbo v25, "BackupManagerService"

    #@130
    const-string/jumbo v26, "Incorrect password"

    #@133
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@136
    goto :goto_0
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 15
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 6766
    const/4 v13, 0x0

    #@1
    .line 6768
    .local v13, "result":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v1, "AES-256"

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 6770
    move-object/from16 v0, p3

    #@e
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@11
    move-result-object v14

    #@12
    .line 6771
    .local v14, "userSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14
    invoke-static {v1, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    #@17
    move-result-object v3

    #@18
    .line 6773
    .local v3, "userSalt":[B
    move-object/from16 v0, p3

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    .line 6774
    .local v10, "ckSaltHex":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    invoke-static {v1, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    #@23
    move-result-object v4

    #@24
    .line 6776
    .local v4, "ckSalt":[B
    move-object/from16 v0, p3

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v5

    #@2e
    .line 6777
    .local v5, "rounds":I
    move-object/from16 v0, p3

    #@30
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 6779
    .local v6, "userIvHex":Ljava/lang/String;
    move-object/from16 v0, p3

    #@36
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    .line 6782
    .local v7, "masterKeyBlobHex":Ljava/lang/String;
    const-string/jumbo v2, "PBKDF2WithHmacSHA1"

    #@3d
    .line 6783
    const/4 v9, 0x0

    #@3e
    move-object v1, p0

    #@3f
    move-object/from16 v8, p3

    #@41
    .line 6782
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    #@44
    move-result-object v13

    #@45
    .line 6784
    .local v13, "result":Ljava/io/InputStream;
    if-nez v13, :cond_0

    #@47
    if-eqz p2, :cond_0

    #@49
    .line 6785
    const-string/jumbo v2, "PBKDF2WithHmacSHA1And8bit"

    #@4c
    .line 6786
    const/4 v9, 0x1

    #@4d
    move-object v1, p0

    #@4e
    move-object/from16 v8, p3

    #@50
    .line 6785
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    #@53
    move-result-object v13

    #@54
    .line 6795
    .end local v3    # "userSalt":[B
    .end local v4    # "ckSalt":[B
    .end local v5    # "rounds":I
    .end local v6    # "userIvHex":Ljava/lang/String;
    .end local v7    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v10    # "ckSaltHex":Ljava/lang/String;
    .end local v13    # "result":Ljava/io/InputStream;
    .end local v14    # "userSaltHex":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v13

    #@55
    .line 6788
    .local v13, "result":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v1, "BackupManagerService"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v8, "Unsupported encryption method: "

    #@60
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    goto :goto_0

    #@72
    .line 6789
    .end local v13    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v12

    #@73
    .line 6790
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "BackupManagerService"

    #@76
    const-string/jumbo v2, "Can\'t parse restore data header"

    #@79
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    goto :goto_0

    #@7d
    .line 6791
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    #@7e
    .line 6792
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    #@81
    const-string/jumbo v2, "Can\'t read input header"

    #@84
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_0
.end method

.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@0
    .prologue
    const/16 v6, 0x78

    #@2
    const/16 v5, 0x77

    #@4
    const/16 v4, 0x72

    #@6
    const-wide/16 v12, 0x0

    #@8
    const/16 v3, 0x2d

    #@a
    .line 7530
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const/16 v2, 0x80

    #@e
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11
    .line 7533
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@13
    const/4 v7, 0x2

    #@14
    if-ne v2, v7, :cond_0

    #@16
    const/16 v2, 0x64

    #@18
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 7534
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@1d
    const-wide/16 v10, 0x100

    #@1f
    and-long/2addr v8, v10

    #@20
    cmp-long v2, v8, v12

    #@22
    if-eqz v2, :cond_1

    #@24
    move v2, v4

    #@25
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 7535
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@2a
    const-wide/16 v10, 0x80

    #@2c
    and-long/2addr v8, v10

    #@2d
    cmp-long v2, v8, v12

    #@2f
    if-eqz v2, :cond_2

    #@31
    move v2, v5

    #@32
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 7536
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@37
    const-wide/16 v10, 0x40

    #@39
    and-long/2addr v8, v10

    #@3a
    cmp-long v2, v8, v12

    #@3c
    if-eqz v2, :cond_3

    #@3e
    move v2, v6

    #@3f
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 7537
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@44
    const-wide/16 v10, 0x20

    #@46
    and-long/2addr v8, v10

    #@47
    cmp-long v2, v8, v12

    #@49
    if-eqz v2, :cond_4

    #@4b
    move v2, v4

    #@4c
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    .line 7538
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@51
    const-wide/16 v10, 0x10

    #@53
    and-long/2addr v8, v10

    #@54
    cmp-long v2, v8, v12

    #@56
    if-eqz v2, :cond_5

    #@58
    move v2, v5

    #@59
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 7539
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@5e
    const-wide/16 v10, 0x8

    #@60
    and-long/2addr v8, v10

    #@61
    cmp-long v2, v8, v12

    #@63
    if-eqz v2, :cond_6

    #@65
    move v2, v6

    #@66
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    .line 7540
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@6b
    const-wide/16 v10, 0x4

    #@6d
    and-long/2addr v8, v10

    #@6e
    cmp-long v2, v8, v12

    #@70
    if-eqz v2, :cond_7

    #@72
    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    .line 7541
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@77
    const-wide/16 v10, 0x2

    #@79
    and-long/2addr v8, v10

    #@7a
    cmp-long v2, v8, v12

    #@7c
    if-eqz v2, :cond_8

    #@7e
    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    .line 7542
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@83
    const-wide/16 v8, 0x1

    #@85
    and-long/2addr v4, v8

    #@86
    cmp-long v2, v4, v12

    #@88
    if-eqz v2, :cond_9

    #@8a
    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8d
    .line 7543
    const-string/jumbo v2, " %9d "

    #@90
    const/4 v3, 0x1

    #@91
    new-array v3, v3, [Ljava/lang/Object;

    #@93
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@95
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@98
    move-result-object v4

    #@99
    const/4 v5, 0x0

    #@9a
    aput-object v4, v3, v5

    #@9c
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 7545
    new-instance v1, Ljava/util/Date;

    #@a5
    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@a7
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@aa
    .line 7546
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@ac
    const-string/jumbo v3, "MMM dd HH:mm:ss "

    #@af
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@b2
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 7548
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@bb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 7549
    const-string/jumbo v2, " :: "

    #@c1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    .line 7550
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@c6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 7551
    const-string/jumbo v2, " :: "

    #@cc
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 7552
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@d1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    .line 7554
    const-string/jumbo v2, "BackupManagerService"

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 7528
    return-void

    #@df
    .end local v1    # "stamp":Ljava/util/Date;
    :cond_0
    move v2, v3

    #@e0
    .line 7533
    goto/16 :goto_0

    #@e2
    :cond_1
    move v2, v3

    #@e3
    .line 7534
    goto/16 :goto_1

    #@e5
    :cond_2
    move v2, v3

    #@e6
    .line 7535
    goto/16 :goto_2

    #@e8
    :cond_3
    move v2, v3

    #@e9
    .line 7536
    goto/16 :goto_3

    #@eb
    :cond_4
    move v2, v3

    #@ec
    .line 7537
    goto/16 :goto_4

    #@ee
    :cond_5
    move v2, v3

    #@ef
    .line 7538
    goto/16 :goto_5

    #@f1
    :cond_6
    move v2, v3

    #@f2
    .line 7539
    goto/16 :goto_6

    #@f4
    :cond_7
    move v4, v3

    #@f5
    .line 7540
    goto/16 :goto_7

    #@f7
    :cond_8
    move v5, v3

    #@f8
    .line 7541
    goto :goto_8

    #@f9
    :cond_9
    move v6, v3

    #@fa
    .line 7542
    goto :goto_9
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
    .line 7511
    array-length v1, p1

    #@1
    .line 7512
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
    .line 7515
    :cond_0
    move v2, p2

    #@d
    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@f
    .line 7516
    aget-byte v0, p1, v2

    #@11
    .line 7519
    .local v0, "c":B
    const/16 v3, 0xa

    #@13
    if-ne v0, v3, :cond_2

    #@15
    .line 7523
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
    .line 7524
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 7525
    return v2

    #@22
    .line 7515
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
    .line 7761
    const-wide/16 v4, 0x0

    #@4
    .line 7762
    .local v4, "value":J
    add-int v1, p2, p3

    #@6
    .line 7763
    .local v1, "end":I
    move v2, p2

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@9
    .line 7764
    aget-byte v0, p1, v2

    #@b
    .line 7766
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@d
    const/16 v3, 0x20

    #@f
    if-ne v0, v3, :cond_1

    #@11
    .line 7772
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    #@12
    .line 7767
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
    .line 7768
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
    const-string/jumbo v7, "\' for radix "

    #@30
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
    .line 7770
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
    .line 7763
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
    .line 7776
    add-int v0, p2, p3

    #@2
    .line 7777
    .local v0, "end":I
    move v1, p2

    #@3
    .line 7779
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
    .line 7780
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

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 7209
    const/4 v10, 0x1

    #@1
    .line 7211
    .local v10, "okay":Z
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7215
    new-instance v4, Ljava/io/File;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

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
    .line 7217
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    #@3e
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@41
    .line 7218
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v19, 0x8000

    #@44
    move/from16 v0, v19

    #@46
    new-array v6, v0, [B

    #@48
    .line 7219
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    #@4a
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4c
    .line 7220
    .local v14, "size":J
    :goto_0
    const-wide/16 v20, 0x0

    #@4e
    cmp-long v19, v14, v20

    #@50
    if-lez v19, :cond_2

    #@52
    .line 7221
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
    .line 7222
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
    .line 7223
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

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
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@8a
    .line 7224
    :cond_0
    const/16 v19, 0x0

    #@8c
    move/from16 v0, v19

    #@8e
    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    #@91
    .line 7225
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
    .line 7221
    goto :goto_1

    #@9a
    .line 7227
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    #@9d
    .line 7230
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
    .line 7233
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@ab
    move-result-object v11

    #@ac
    .line 7234
    .local v11, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@b0
    move-object/from16 v19, v0

    #@b2
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->reset()V

    #@b5
    .line 7235
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b9
    move-object/from16 v19, v0

    #@bb
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@be
    move-result-object v19

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@c3
    move-object/from16 v20, v0

    #@c5
    .line 7236
    const/16 v21, 0x22

    #@c7
    .line 7235
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
    .line 7238
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@d6
    move-object/from16 v19, v0

    #@d8
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    #@db
    .line 7240
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@df
    move-object/from16 v19, v0

    #@e1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->getResult()I

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
    .line 7244
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

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
    .line 7245
    const/4 v10, 0x0

    #@106
    .line 7304
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@109
    .line 7307
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v10

    #@10a
    .line 7249
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/16 v18, 0x0

    #@10c
    .line 7250
    .local v18, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@110
    move-object/from16 v19, v0

    #@112
    move-object/from16 v0, v19

    #@114
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

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
    .line 7251
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7252
    move-object/from16 v0, p1

    #@135
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@137
    move-object/from16 v21, v0

    #@139
    .line 7251
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v20

    #@13d
    .line 7252
    const-string/jumbo v21, " but apk was really "

    #@140
    .line 7251
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v20

    #@144
    .line 7253
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@148
    move-object/from16 v21, v0

    #@14a
    move-object/from16 v0, v21

    #@14c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@14e
    move-object/from16 v21, v0

    #@150
    .line 7251
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
    .line 7255
    const/4 v10, 0x0

    #@15c
    .line 7256
    const/16 v18, 0x1

    #@15e
    .line 7293
    :cond_5
    :goto_4
    if-eqz v18, :cond_3

    #@160
    .line 7294
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    #@164
    move-object/from16 v19, v0

    #@166
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->reset()V

    #@169
    .line 7295
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16d
    move-object/from16 v19, v0

    #@16f
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@172
    move-result-object v19

    #@173
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    #@177
    move-object/from16 v20, v0

    #@179
    move-object/from16 v0, v20

    #@17b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    #@17d
    move-object/from16 v20, v0

    #@17f
    .line 7296
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    #@183
    move-object/from16 v21, v0

    #@185
    const/16 v22, 0x0

    #@187
    .line 7295
    invoke-virtual/range {v19 .. v22}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    #@18a
    .line 7297
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    #@18e
    move-object/from16 v19, v0

    #@190
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@193
    goto/16 :goto_2

    #@195
    .line 7300
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catch_0
    move-exception v9

    #@196
    .line 7301
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "BackupManagerService"

    #@199
    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    #@19c
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19f
    .line 7302
    const/4 v10, 0x0

    #@1a0
    .line 7304
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@1a3
    goto/16 :goto_3

    #@1a5
    .line 7259
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
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

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
    .line 7260
    const/16 v21, 0x40

    #@1b7
    .line 7259
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@1ba
    move-result-object v12

    #@1bb
    .line 7261
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
    .line 7262
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7263
    move-object/from16 v0, p1

    #@1dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1df
    move-object/from16 v21, v0

    #@1e1
    .line 7262
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v20

    #@1e5
    .line 7263
    const-string/jumbo v21, " but it disallows backup/restore"

    #@1e8
    .line 7262
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
    .line 7264
    const/4 v10, 0x0

    #@1f4
    goto/16 :goto_4

    #@1f6
    .line 7267
    :cond_7
    move-object/from16 v0, p0

    #@1f8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

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
    .line 7268
    .local v13, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v13, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    #@20b
    move-result v19

    #@20c
    if-eqz v19, :cond_8

    #@20e
    .line 7271
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
    .line 7272
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
    .line 7273
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7274
    const-string/jumbo v21, " has restricted uid and no agent"

    #@248
    .line 7273
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
    .line 7275
    const/4 v10, 0x0

    #@254
    goto/16 :goto_4

    #@256
    .line 7278
    :cond_8
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7279
    const-string/jumbo v21, " signatures do not match restore manifest"

    #@272
    .line 7278
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
    .line 7280
    const/4 v10, 0x0

    #@27e
    .line 7281
    const/16 v18, 0x1

    #@280
    goto/16 :goto_4

    #@282
    .line 7284
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    #@283
    .line 7285
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v19, "BackupManagerService"

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
    .line 7286
    const-string/jumbo v21, " succeeded but now not found"

    #@29f
    .line 7285
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
    .line 7287
    const/4 v10, 0x0

    #@2ab
    goto/16 :goto_4

    #@2ad
    .line 7303
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catchall_0
    move-exception v19

    #@2ae
    .line 7304
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@2b1
    .line 7303
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
    .line 7390
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
    .line 7391
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
    .line 7394
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
    .line 7395
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
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

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
    .line 7396
    move-object/from16 v0, p0

    #@6a
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

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
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@7c
    .line 7399
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@7e
    .line 7400
    .local v15, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v19, 0x1

    #@80
    move/from16 v0, v19

    #@82
    new-array v0, v0, [Ljava/lang/String;

    #@84
    move-object/from16 v17, v0

    #@86
    .line 7401
    .local v17, "str":[Ljava/lang/String;
    const/4 v13, 0x0

    #@87
    .line 7404
    .local v13, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, v17

    #@8b
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@8e
    move-result v13

    #@8f
    .line 7405
    const/16 v19, 0x0

    #@91
    aget-object v19, v17, v19

    #@93
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@96
    move-result v18

    #@97
    .line 7406
    .local v18, "version":I
    const/16 v19, 0x1

    #@99
    move/from16 v0, v18

    #@9b
    move/from16 v1, v19

    #@9d
    if-ne v0, v1, :cond_d

    #@9f
    .line 7407
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v17

    #@a3
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@a6
    move-result v13

    #@a7
    .line 7408
    const/16 v19, 0x0

    #@a9
    aget-object v11, v17, v19

    #@ab
    .line 7410
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
    if-eqz v19, :cond_c

    #@b9
    .line 7411
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v17

    #@bd
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@c0
    move-result v13

    #@c1
    .line 7412
    const/16 v19, 0x0

    #@c3
    aget-object v19, v17, v19

    #@c5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c8
    move-result v18

    #@c9
    .line 7413
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v17

    #@cd
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@d0
    move-result v13

    #@d1
    .line 7416
    const/16 v19, 0x0

    #@d3
    aget-object v19, v17, v19

    #@d5
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d8
    .line 7417
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, v17

    #@dc
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@df
    move-result v13

    #@e0
    .line 7418
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
    .line 7419
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v17

    #@f8
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@fb
    move-result v13

    #@fc
    .line 7420
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
    .line 7421
    .local v9, "hasApk":Z
    move-object/from16 v0, p0

    #@109
    move-object/from16 v1, v17

    #@10b
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@10e
    move-result v13

    #@10f
    .line 7422
    const/16 v19, 0x0

    #@111
    aget-object v19, v17, v19

    #@113
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@116
    move-result v12

    #@117
    .line 7423
    .local v12, "numSigs":I
    if-lez v12, :cond_b

    #@119
    .line 7424
    new-array v0, v12, [Landroid/content/pm/Signature;

    #@11b
    move-object/from16 v16, v0

    #@11d
    .line 7425
    .local v16, "sigs":[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    #@11e
    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_3

    #@120
    .line 7426
    move-object/from16 v0, p0

    #@122
    move-object/from16 v1, v17

    #@124
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@127
    move-result v13

    #@128
    .line 7427
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
    .line 7425
    add-int/lit8 v10, v10, 0x1

    #@135
    goto :goto_1

    #@136
    .line 7397
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
    .line 7418
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
    .line 7429
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v12    # "numSigs":I
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

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
    .line 7433
    :try_start_2
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@15b
    move-object/from16 v19, v0

    #@15d
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@160
    move-result-object v19

    #@161
    .line 7434
    move-object/from16 v0, p1

    #@163
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@165
    move-object/from16 v20, v0

    #@167
    const/16 v21, 0x40

    #@169
    .line 7433
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@16c
    move-result-object v14

    #@16d
    .line 7436
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16f
    move-object/from16 v19, v0

    #@171
    move-object/from16 v0, v19

    #@173
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@175
    .line 7437
    .local v8, "flags":I
    const v19, 0x8000

    #@178
    and-int v19, v19, v8

    #@17a
    if-eqz v19, :cond_9

    #@17c
    .line 7440
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
    .line 7441
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
    if-eqz v19, :cond_8

    #@19a
    .line 7449
    :cond_4
    move-object/from16 v0, v16

    #@19c
    invoke-static {v0, v14}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    #@19f
    move-result v19

    #@1a0
    if-eqz v19, :cond_7

    #@1a2
    .line 7450
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
    .line 7451
    const-string/jumbo v19, "BackupManagerService"

    #@1af
    const-string/jumbo v20, "Sig + version match; taking data"

    #@1b2
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b5
    .line 7452
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@1b7
    .line 7483
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
    if-eqz v9, :cond_a

    #@1bf
    .line 7505
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
    .line 7457
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
    const-string/jumbo v19, "BackupManagerService"

    #@1c3
    new-instance v20, Ljava/lang/StringBuilder;

    #@1c5
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1c8
    const-string/jumbo v21, "Data version "

    #@1cb
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v20

    #@1cf
    move-object/from16 v0, v20

    #@1d1
    move/from16 v1, v18

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v20

    #@1d7
    .line 7458
    const-string/jumbo v21, " is newer than installed version "

    #@1da
    .line 7457
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v20

    #@1de
    .line 7459
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1e0
    move/from16 v21, v0

    #@1e2
    .line 7457
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v20

    #@1e6
    .line 7459
    const-string/jumbo v21, " - requiring apk"

    #@1e9
    .line 7457
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v20

    #@1ed
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v20

    #@1f1
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f4
    .line 7460
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@1f6
    goto :goto_2

    #@1f7
    .line 7463
    :cond_7
    const-string/jumbo v19, "BackupManagerService"

    #@1fa
    new-instance v20, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v21, "Restore manifest signatures do not match installed application for "

    #@202
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v20

    #@206
    .line 7464
    move-object/from16 v0, p1

    #@208
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@20a
    move-object/from16 v21, v0

    #@20c
    .line 7463
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v20

    #@210
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v20

    #@214
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    #@217
    goto :goto_2

    #@218
    .line 7474
    .end local v8    # "flags":I
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    #@219
    .line 7478
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string/jumbo v19, "BackupManagerService"

    #@21c
    new-instance v20, Ljava/lang/StringBuilder;

    #@21e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@221
    const-string/jumbo v21, "Package "

    #@224
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v20

    #@228
    move-object/from16 v0, p1

    #@22a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@22c
    move-object/from16 v21, v0

    #@22e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v20

    #@232
    .line 7479
    const-string/jumbo v21, " not installed; requiring apk in dataset"

    #@235
    .line 7478
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v20

    #@239
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v20

    #@23d
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@240
    .line 7480
    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    #@242
    goto/16 :goto_2

    #@244
    .line 7467
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "flags":I
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    :try_start_6
    const-string/jumbo v19, "BackupManagerService"

    #@247
    new-instance v20, Ljava/lang/StringBuilder;

    #@249
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string/jumbo v21, "Package "

    #@24f
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v20

    #@253
    move-object/from16 v0, p1

    #@255
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@257
    move-object/from16 v21, v0

    #@259
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v20

    #@25d
    .line 7468
    const-string/jumbo v21, " is system level with no agent"

    #@260
    .line 7467
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v20

    #@264
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v20

    #@268
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    #@26b
    goto/16 :goto_2

    #@26d
    .line 7499
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

    #@26e
    .line 7500
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v19, "BackupManagerService"

    #@271
    new-instance v20, Ljava/lang/StringBuilder;

    #@273
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    const-string/jumbo v21, "Corrupt restore manifest for package "

    #@279
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v20

    #@27d
    move-object/from16 v0, p1

    #@27f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@281
    move-object/from16 v21, v0

    #@283
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v20

    #@287
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28a
    move-result-object v20

    #@28b
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28e
    goto/16 :goto_3

    #@290
    .line 7471
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "flags":I
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "numSigs":I
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "version":I
    :cond_9
    :try_start_7
    const-string/jumbo v19, "BackupManagerService"

    #@293
    new-instance v20, Ljava/lang/StringBuilder;

    #@295
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@298
    const-string/jumbo v21, "Restore manifest from "

    #@29b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    move-result-object v20

    #@29f
    .line 7472
    move-object/from16 v0, p1

    #@2a1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@2a3
    move-object/from16 v21, v0

    #@2a5
    .line 7471
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v20

    #@2a9
    .line 7472
    const-string/jumbo v21, " but allowBackup=false"

    #@2ac
    .line 7471
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v20

    #@2b0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b3
    move-result-object v20

    #@2b4
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    #@2b7
    goto/16 :goto_2

    #@2b9
    .line 7501
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

    #@2ba
    .line 7502
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v19, "BackupManagerService"

    #@2bd
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@2c0
    move-result-object v20

    #@2c1
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c4
    goto/16 :goto_3

    #@2c6
    .line 7484
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "hasApk":Z
    .restart local v10    # "i":I
    .restart local v11    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "numSigs":I
    .restart local v16    # "sigs":[Landroid/content/pm/Signature;
    .restart local v18    # "version":I
    :cond_a
    :try_start_8
    const-string/jumbo v19, "BackupManagerService"

    #@2c9
    new-instance v20, Ljava/lang/StringBuilder;

    #@2cb
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2ce
    const-string/jumbo v21, "Cannot restore package "

    #@2d1
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v20

    #@2d5
    move-object/from16 v0, p1

    #@2d7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@2d9
    move-object/from16 v21, v0

    #@2db
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v20

    #@2df
    .line 7485
    const-string/jumbo v21, " without the matching .apk"

    #@2e2
    .line 7484
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v20

    #@2e6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e9
    move-result-object v20

    #@2ea
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2ed
    goto/16 :goto_3

    #@2ef
    .line 7488
    .end local v10    # "i":I
    .end local v16    # "sigs":[Landroid/content/pm/Signature;
    :cond_b
    const-string/jumbo v19, "BackupManagerService"

    #@2f2
    new-instance v20, Ljava/lang/StringBuilder;

    #@2f4
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@2f7
    const-string/jumbo v21, "Missing signature on backed-up package "

    #@2fa
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fd
    move-result-object v20

    #@2fe
    .line 7489
    move-object/from16 v0, p1

    #@300
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@302
    move-object/from16 v21, v0

    #@304
    .line 7488
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v20

    #@308
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30b
    move-result-object v20

    #@30c
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30f
    goto/16 :goto_3

    #@311
    .line 7492
    .end local v9    # "hasApk":Z
    .end local v12    # "numSigs":I
    :cond_c
    const-string/jumbo v19, "BackupManagerService"

    #@314
    new-instance v20, Ljava/lang/StringBuilder;

    #@316
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@319
    const-string/jumbo v21, "Expected package "

    #@31c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v20

    #@320
    move-object/from16 v0, p1

    #@322
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@324
    move-object/from16 v21, v0

    #@326
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@329
    move-result-object v20

    #@32a
    .line 7493
    const-string/jumbo v21, " but restore manifest claims "

    #@32d
    .line 7492
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    move-result-object v20

    #@331
    move-object/from16 v0, v20

    #@333
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-result-object v20

    #@337
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33a
    move-result-object v20

    #@33b
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@33e
    goto/16 :goto_3

    #@340
    .line 7496
    .end local v11    # "manifestPackage":Ljava/lang/String;
    :cond_d
    const-string/jumbo v19, "BackupManagerService"

    #@343
    new-instance v20, Ljava/lang/StringBuilder;

    #@345
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@348
    const-string/jumbo v21, "Unknown restore manifest version "

    #@34b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v20

    #@34f
    move-object/from16 v0, v20

    #@351
    move/from16 v1, v18

    #@353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@356
    move-result-object v20

    #@357
    .line 7497
    const-string/jumbo v21, " for package "

    #@35a
    .line 7496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v20

    #@35e
    .line 7497
    move-object/from16 v0, p1

    #@360
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@362
    move-object/from16 v21, v0

    #@364
    .line 7496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v20

    #@368
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36b
    move-result-object v20

    #@36c
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    #@36f
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
    .line 7680
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
    .line 7682
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 7683
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    #@e
    .line 7684
    add-int v2, p3, v1

    #@10
    sub-int v3, p4, v1

    #@12
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@15
    move-result v0

    #@16
    .line 7685
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    #@18
    .line 7691
    .end local v0    # "nRead":I
    :cond_1
    return v1

    #@19
    .line 7689
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    #@1a
    goto :goto_0
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 6693
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x50

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 6694
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@a
    move-result v1

    #@b
    .local v1, "c":I
    if-ltz v1, :cond_0

    #@d
    .line 6695
    const/16 v2, 0xa

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 6698
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 6696
    :cond_1
    int-to-char v2, v1

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 7326
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
    .line 7327
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
    .line 7330
    :cond_0
    move-object/from16 v0, p1

    #@2b
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@2d
    long-to-int v11, v12

    #@2e
    new-array v3, v11, [B

    #@30
    .line 7331
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
    invoke-virtual {v0, v1, v3, v12, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

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
    .line 7332
    move-object/from16 v0, p0

    #@49
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@4b
    move-object/from16 v0, p1

    #@4d
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@4f
    add-long/2addr v12, v14

    #@50
    move-object/from16 v0, p0

    #@52
    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@54
    .line 7335
    const/4 v11, 0x1

    #@55
    new-array v8, v11, [Ljava/lang/String;

    #@57
    .line 7336
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    #@58
    move-object/from16 v0, p0

    #@5a
    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@5d
    move-result v5

    #@5e
    .line 7337
    .local v5, "offset":I
    const/4 v11, 0x0

    #@5f
    aget-object v11, v8, v11

    #@61
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@64
    move-result v10

    #@65
    .line 7338
    .local v10, "version":I
    const/4 v11, 0x1

    #@66
    if-ne v10, v11, :cond_5

    #@68
    .line 7339
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    #@6d
    move-result v5

    #@6e
    .line 7340
    const/4 v11, 0x0

    #@6f
    aget-object v6, v8, v11

    #@71
    .line 7341
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
    .line 7344
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@7d
    .line 7345
    array-length v11, v3

    #@7e
    sub-int/2addr v11, v5

    #@7f
    .line 7344
    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@82
    .line 7346
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    #@84
    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@87
    .line 7347
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    #@8a
    move-result v11

    #@8b
    if-lez v11, :cond_4

    #@8d
    .line 7348
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@90
    move-result v9

    #@91
    .line 7349
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@94
    move-result v7

    #@95
    .line 7350
    .local v7, "size":I
    const/high16 v11, 0x10000

    #@97
    if-le v7, v11, :cond_2

    #@99
    .line 7351
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
    .line 7352
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@aa
    move-result-object v13

    #@ab
    .line 7351
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v12

    #@af
    .line 7353
    const-string/jumbo v13, " too big; corrupt? size="

    #@b2
    .line 7351
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v12

    #@b6
    .line 7353
    move-object/from16 v0, p1

    #@b8
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@ba
    .line 7351
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
    .line 7333
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
    .line 7355
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
    .line 7368
    const-string/jumbo v11, "BackupManagerService"

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
    .line 7369
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e4
    move-result-object v13

    #@e5
    .line 7368
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    .line 7370
    const-string/jumbo v13, " for "

    #@ec
    .line 7368
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v12

    #@f0
    .line 7370
    move-object/from16 v0, p1

    #@f2
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@f4
    .line 7368
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
    .line 7372
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@102
    goto :goto_0

    #@103
    .line 7361
    :pswitch_0
    new-array v11, v7, [B

    #@105
    move-object/from16 v0, p0

    #@107
    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    #@109
    .line 7362
    move-object/from16 v0, p0

    #@10b
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    #@10d
    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    #@110
    goto/16 :goto_0

    #@112
    .line 7378
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_3
    const-string/jumbo v11, "BackupManagerService"

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
    .line 7379
    const-string/jumbo v13, " but widget data for "

    #@12c
    .line 7378
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
    .line 7324
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    #@13c
    .line 7382
    :cond_5
    const-string/jumbo v11, "BackupManagerService"

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
    .line 7355
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
    .line 7706
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
    .line 7707
    const-string/jumbo v12, "BackupManagerService"

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
    .line 7708
    const-string/jumbo v14, " - aborting"

    #@25
    .line 7707
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
    .line 7709
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
    .line 7713
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
    .line 7714
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    #@5b
    new-array v3, v12, [B

    #@5d
    .line 7715
    .local v3, "data":[B
    array-length v12, v3

    #@5e
    const/4 v13, 0x0

    #@5f
    move-object/from16 v0, p0

    #@61
    move-object/from16 v1, p1

    #@63
    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    #@66
    move-result v12

    #@67
    array-length v13, v3

    #@68
    if-ge v12, v13, :cond_1

    #@6a
    .line 7716
    new-instance v12, Ljava/io/IOException;

    #@6c
    const-string/jumbo v13, "Unable to read full pax header"

    #@6f
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw v12

    #@73
    .line 7718
    :cond_1
    move-object/from16 v0, p0

    #@75
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@77
    array-length v14, v3

    #@78
    int-to-long v14, v14

    #@79
    add-long/2addr v12, v14

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@7e
    .line 7720
    move-object/from16 v0, p2

    #@80
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@82
    long-to-int v2, v12

    #@83
    .line 7721
    .local v2, "contentSize":I
    const/4 v9, 0x0

    #@84
    .line 7724
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    #@86
    .line 7725
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
    .line 7726
    :cond_3
    if-lt v4, v2, :cond_4

    #@93
    .line 7728
    new-instance v12, Ljava/io/IOException;

    #@95
    const-string/jumbo v13, "Invalid pax data"

    #@98
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v12

    #@9c
    .line 7731
    :cond_4
    sub-int v12, v4, v9

    #@9e
    const/16 v13, 0xa

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    #@a5
    move-result-wide v12

    #@a6
    long-to-int v7, v12

    #@a7
    .line 7732
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    #@a9
    .line 7733
    .local v5, "key":I
    add-int v12, v9, v7

    #@ab
    add-int/lit8 v4, v12, -0x1

    #@ad
    .line 7735
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
    .line 7736
    :cond_5
    if-le v11, v4, :cond_6

    #@bc
    .line 7737
    new-instance v12, Ljava/io/IOException;

    #@be
    const-string/jumbo v13, "Invalid pax declaration"

    #@c1
    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v12

    #@c5
    .line 7741
    :cond_6
    new-instance v6, Ljava/lang/String;

    #@c7
    sub-int v12, v11, v5

    #@c9
    const-string/jumbo v13, "UTF-8"

    #@cc
    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@cf
    .line 7743
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
    .line 7745
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v12, "path"

    #@e0
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v12

    #@e4
    if-eqz v12, :cond_7

    #@e6
    .line 7746
    move-object/from16 v0, p2

    #@e8
    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@ea
    .line 7753
    :goto_2
    add-int/2addr v9, v7

    #@eb
    .line 7754
    if-lt v9, v2, :cond_2

    #@ed
    .line 7756
    const/4 v12, 0x1

    #@ee
    return v12

    #@ef
    .line 7747
    :cond_7
    const-string/jumbo v12, "size"

    #@f2
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v12

    #@f6
    if-eqz v12, :cond_8

    #@f8
    .line 7748
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
    .line 7750
    :cond_8
    const-string/jumbo v12, "BackupManagerService"

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
    .line 7695
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    #@6
    move-result v0

    #@7
    .line 7696
    .local v0, "got":I
    if-nez v0, :cond_0

    #@9
    return v1

    #@a
    .line 7697
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
    .line 7698
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@17
    const-wide/16 v4, 0x200

    #@19
    add-long/2addr v2, v4

    #@1a
    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@1c
    .line 7699
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
    .line 7559
    const/16 v8, 0x200

    #@2
    new-array v0, v8, [B

    #@4
    .line 7560
    .local v0, "block":[B
    const/4 v3, 0x0

    #@5
    .line 7562
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    #@8
    move-result v2

    #@9
    .line 7563
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    #@b
    .line 7566
    :try_start_0
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@d
    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 7567
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    #@12
    const/16 v9, 0xc

    #@14
    const/16 v10, 0x8

    #@16
    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    #@19
    move-result-wide v8

    #@1a
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1c
    .line 7568
    const/16 v8, 0x88

    #@1e
    const/16 v9, 0xc

    #@20
    const/16 v10, 0x8

    #@22
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    #@25
    move-result-wide v8

    #@26
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@28
    .line 7569
    const/16 v8, 0x64

    #@2a
    const/16 v9, 0x8

    #@2c
    const/16 v10, 0x8

    #@2e
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    #@31
    move-result-wide v8

    #@32
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@34
    .line 7571
    const/16 v8, 0x159

    #@36
    const/16 v9, 0x9b

    #@38
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@3e
    .line 7572
    const/4 v8, 0x0

    #@3f
    const/16 v9, 0x64

    #@41
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 7573
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@48
    move-result v8

    #@49
    if-lez v8, :cond_1

    #@4b
    .line 7574
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
    .line 7575
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
    .line 7579
    :cond_1
    const/16 v8, 0x9c

    #@81
    aget-byte v7, v0, v8

    #@83
    .line 7580
    .local v7, "typeChar":I
    const/16 v8, 0x78

    #@85
    if-ne v7, v8, :cond_4

    #@87
    .line 7582
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    #@8a
    move-result v2

    #@8b
    .line 7583
    if-eqz v2, :cond_2

    #@8d
    .line 7586
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    #@90
    move-result v2

    #@91
    .line 7588
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
    .line 7647
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    #@9d
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    #@9e
    .line 7649
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_0
    const-string/jumbo v8, "BackupManagerService"

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
    .line 7650
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->HEXLOG([B)V

    #@bf
    .line 7652
    throw v1

    #@c0
    .line 7590
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    #@c2
    :try_start_2
    aget-byte v7, v0, v8

    #@c4
    .line 7593
    :cond_4
    sparse-switch v7, :sswitch_data_0

    #@c7
    .line 7609
    const-string/jumbo v8, "BackupManagerService"

    #@ca
    new-instance v9, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v10, "Unknown tar entity type: "

    #@d2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v9

    #@da
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v9

    #@de
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 7610
    new-instance v8, Ljava/io/IOException;

    #@e3
    new-instance v9, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v10, "Unknown entity type "

    #@eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v9

    #@ef
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v9

    #@f7
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v8

    #@fb
    .line 7594
    :sswitch_0
    const/4 v8, 0x1

    #@fc
    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@fe
    .line 7617
    :cond_5
    :goto_1
    const-string/jumbo v8, "shared/"

    #@101
    .line 7618
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@103
    const-string/jumbo v10, "shared/"

    #@106
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@109
    move-result v10

    #@10a
    .line 7617
    const/4 v11, 0x0

    #@10b
    .line 7618
    const/4 v12, 0x0

    #@10c
    .line 7617
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@10f
    move-result v8

    #@110
    if-eqz v8, :cond_8

    #@112
    .line 7620
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@114
    const-string/jumbo v9, "shared/"

    #@117
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@11a
    move-result v9

    #@11b
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11e
    move-result-object v8

    #@11f
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@121
    .line 7621
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    #@124
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@126
    .line 7622
    const-string/jumbo v8, "shared"

    #@129
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@12b
    .line 7623
    const-string/jumbo v8, "BackupManagerService"

    #@12e
    new-instance v9, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v10, "File in shared storage: "

    #@136
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v9

    #@13a
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@13c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v9

    #@140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v9

    #@144
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    :cond_6
    :goto_2
    move-object v3, v4

    #@148
    .line 7655
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :cond_7
    return-object v3

    #@149
    .line 7596
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    #@14a
    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@14c
    .line 7597
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@14e
    const-wide/16 v10, 0x0

    #@150
    cmp-long v8, v8, v10

    #@152
    if-eqz v8, :cond_5

    #@154
    .line 7598
    const-string/jumbo v8, "BackupManagerService"

    #@157
    const-string/jumbo v9, "Directory entry with nonzero size in header"

    #@15a
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    .line 7599
    const-wide/16 v8, 0x0

    #@15f
    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@161
    goto :goto_1

    #@162
    .line 7605
    :sswitch_2
    const-string/jumbo v8, "BackupManagerService"

    #@165
    new-instance v9, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    const-string/jumbo v10, "Saw type=0 in tar header block, info="

    #@16d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v9

    #@171
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v9

    #@175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v9

    #@179
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17c
    .line 7606
    const/4 v8, 0x0

    #@17d
    return-object v8

    #@17e
    .line 7624
    :cond_8
    const-string/jumbo v8, "apps/"

    #@181
    .line 7625
    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@183
    const-string/jumbo v10, "apps/"

    #@186
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@189
    move-result v10

    #@18a
    .line 7624
    const/4 v11, 0x0

    #@18b
    .line 7625
    const/4 v12, 0x0

    #@18c
    .line 7624
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@18f
    move-result v8

    #@190
    if-eqz v8, :cond_6

    #@192
    .line 7629
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@194
    const-string/jumbo v9, "apps/"

    #@197
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@19a
    move-result v9

    #@19b
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19e
    move-result-object v8

    #@19f
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1a1
    .line 7632
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1a3
    const/16 v9, 0x2f

    #@1a5
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@1a8
    move-result v6

    #@1a9
    .line 7633
    .local v6, "slash":I
    if-gez v6, :cond_9

    #@1ab
    new-instance v8, Ljava/io/IOException;

    #@1ad
    new-instance v9, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v10, "Illegal semantic path in "

    #@1b5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v9

    #@1b9
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1bb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v9

    #@1bf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v9

    #@1c3
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c6
    throw v8

    #@1c7
    .line 7634
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1c9
    const/4 v9, 0x0

    #@1ca
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1cd
    move-result-object v8

    #@1ce
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@1d0
    .line 7635
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1d2
    add-int/lit8 v9, v6, 0x1

    #@1d4
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d7
    move-result-object v8

    #@1d8
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1da
    .line 7639
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1dc
    const-string/jumbo v9, "_manifest"

    #@1df
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e2
    move-result v8

    #@1e3
    if-nez v8, :cond_6

    #@1e5
    .line 7640
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1e7
    const-string/jumbo v9, "_meta"

    #@1ea
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ed
    move-result v8

    #@1ee
    if-nez v8, :cond_6

    #@1f0
    .line 7641
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@1f2
    const/16 v9, 0x2f

    #@1f4
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    #@1f7
    move-result v6

    #@1f8
    .line 7642
    if-gez v6, :cond_a

    #@1fa
    new-instance v8, Ljava/io/IOException;

    #@1fc
    new-instance v9, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    #@204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v9

    #@208
    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@20a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v9

    #@20e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v9

    #@212
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@215
    throw v8

    #@216
    .line 7643
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@218
    const/4 v9, 0x0

    #@219
    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21c
    move-result-object v8

    #@21d
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@21f
    .line 7644
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@221
    add-int/lit8 v9, v6, 0x1

    #@223
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@226
    move-result-object v8

    #@227
    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@229
    goto/16 :goto_2

    #@22b
    .line 7647
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_1
    move-exception v1

    #@22c
    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@22e
    .line 7593
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .locals 47
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    #@0
    .prologue
    .line 6801
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    #@3
    move-result-object v35

    #@4
    .line 6802
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v35, :cond_2

    #@6
    .line 6807
    move-object/from16 v0, v35

    #@8
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@a
    .line 6808
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_1

    #@14
    .line 6811
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@18
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 6812
    move-object/from16 v0, p0

    #@20
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@22
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@24
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 6817
    :cond_0
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 6818
    const-string/jumbo v5, "BackupManagerService"

    #@30
    const-string/jumbo v7, "Saw new package; finalizing old one"

    #@33
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 6820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@39
    .line 6821
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@3d
    const/4 v7, 0x1

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v5, v7}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@43
    .line 6822
    const/4 v5, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@48
    .line 6823
    const/4 v5, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    #@4d
    .line 6827
    :cond_1
    move-object/from16 v0, v35

    #@4f
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@51
    const-string/jumbo v7, "_manifest"

    #@54
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_3

    #@5a
    .line 6828
    move-object/from16 v0, p0

    #@5c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@5e
    move-object/from16 v0, p0

    #@60
    move-object/from16 v1, v35

    #@62
    move-object/from16 v2, p1

    #@64
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 6829
    move-object/from16 v0, p0

    #@6d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    #@6f
    move-object/from16 v0, v35

    #@71
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    #@73
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 6833
    move-object/from16 v0, v35

    #@78
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@7a
    move-object/from16 v0, p0

    #@7c
    move-object/from16 v1, p1

    #@7e
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    #@81
    .line 6834
    move-object/from16 v0, p0

    #@83
    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    #@86
    .line 7076
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_2
    :goto_0
    if-eqz v35, :cond_1b

    #@88
    const/4 v5, 0x1

    #@89
    :goto_1
    return v5

    #@8a
    .line 6835
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_3
    move-object/from16 v0, v35

    #@8c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@8e
    const-string/jumbo v7, "_meta"

    #@91
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v5

    #@95
    if-eqz v5, :cond_4

    #@97
    .line 6837
    move-object/from16 v0, p0

    #@99
    move-object/from16 v1, v35

    #@9b
    move-object/from16 v2, p1

    #@9d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    #@a0
    .line 6838
    move-object/from16 v0, v35

    #@a2
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@a4
    move-object/from16 v0, p0

    #@a6
    move-object/from16 v1, p1

    #@a8
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    goto :goto_0

    #@ac
    .line 7070
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_0
    move-exception v34

    #@ad
    .line 7071
    .local v34, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    #@b0
    const-string/jumbo v7, "io exception on restore socket read"

    #@b3
    move-object/from16 v0, v34

    #@b5
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b8
    .line 7073
    const/16 v35, 0x0

    #@ba
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_0

    #@bb
    .line 6842
    .end local v34    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_4
    const/16 v40, 0x1

    #@bd
    .line 6843
    .local v40, "okay":Z
    :try_start_1
    move-object/from16 v0, p0

    #@bf
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@c1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    move-result-object v43

    #@c5
    check-cast v43, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@c7
    .line 6844
    .local v43, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    #@ce
    move-result v7

    #@cf
    aget v5, v5, v7

    #@d1
    packed-switch v5, :pswitch_data_0

    #@d4
    .line 6889
    const-string/jumbo v5, "BackupManagerService"

    #@d7
    const-string/jumbo v7, "Invalid policy from manifest"

    #@da
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 6890
    const/16 v40, 0x0

    #@df
    .line 6891
    move-object/from16 v0, p0

    #@e1
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@e3
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@e5
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    .line 6896
    :cond_5
    :goto_2
    move-object/from16 v0, v35

    #@ea
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@ec
    const-string/jumbo v7, ".."

    #@ef
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@f2
    move-result v5

    #@f3
    if-nez v5, :cond_6

    #@f5
    move-object/from16 v0, v35

    #@f7
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@f9
    const-string/jumbo v7, "//"

    #@fc
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@ff
    move-result v5

    #@100
    if-eqz v5, :cond_7

    #@102
    .line 6900
    :cond_6
    const/16 v40, 0x0

    #@104
    .line 6905
    :cond_7
    if-eqz v40, :cond_8

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@10a
    if-eqz v5, :cond_8

    #@10c
    .line 6906
    const-string/jumbo v5, "BackupManagerService"

    #@10f
    const-string/jumbo v7, "Reusing existing agent instance"

    #@112
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    .line 6908
    :cond_8
    if-eqz v40, :cond_9

    #@117
    move-object/from16 v0, p0

    #@119
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@11b
    if-nez v5, :cond_9

    #@11d
    .line 6909
    const-string/jumbo v5, "BackupManagerService"

    #@120
    new-instance v7, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v8, "Need to launch agent for "

    #@128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v7

    #@12c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v7

    #@130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v7

    #@134
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@137
    .line 6912
    :try_start_2
    move-object/from16 v0, p0

    #@139
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@13b
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@13e
    move-result-object v5

    #@13f
    const/4 v7, 0x0

    #@140
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@143
    move-result-object v5

    #@144
    move-object/from16 v0, p0

    #@146
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@148
    .line 6916
    move-object/from16 v0, p0

    #@14a
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    #@14c
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@14f
    move-result v5

    #@150
    if-nez v5, :cond_14

    #@152
    .line 6920
    move-object/from16 v0, p0

    #@154
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@156
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@158
    if-nez v5, :cond_13

    #@15a
    .line 6921
    const-string/jumbo v5, "BackupManagerService"

    #@15d
    const-string/jumbo v7, "Clearing app data preparatory to full restore"

    #@160
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@163
    .line 6922
    move-object/from16 v0, p0

    #@165
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@167
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    #@16a
    .line 6927
    :goto_3
    move-object/from16 v0, p0

    #@16c
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    #@16e
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@171
    .line 6933
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->setUpPipes()V

    #@174
    .line 6934
    move-object/from16 v0, p0

    #@176
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@17c
    .line 6935
    const/4 v8, 0x3

    #@17d
    .line 6934
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@180
    move-result-object v5

    #@181
    move-object/from16 v0, p0

    #@183
    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@185
    .line 6936
    move-object/from16 v0, p0

    #@187
    iput-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    #@189
    .line 6943
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    #@18b
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@18d
    if-nez v5, :cond_9

    #@18f
    .line 6944
    const-string/jumbo v5, "BackupManagerService"

    #@192
    new-instance v7, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v8, "Unable to create agent for "

    #@19a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v7

    #@19e
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v7

    #@1a2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v7

    #@1a6
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 6945
    const/16 v40, 0x0

    #@1ab
    .line 6946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@1ae
    .line 6947
    move-object/from16 v0, p0

    #@1b0
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@1b2
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@1b4
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b7
    .line 6953
    :cond_9
    if-eqz v40, :cond_a

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    #@1bd
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c0
    move-result v5

    #@1c1
    if-eqz v5, :cond_15

    #@1c3
    .line 6963
    :cond_a
    :goto_6
    if-eqz v40, :cond_f

    #@1c5
    .line 6964
    const/4 v4, 0x1

    #@1c6
    .line 6965
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v35

    #@1c8
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@1ca
    move-wide/from16 v44, v0

    #@1cc
    .line 6966
    .local v44, "toCopy":J
    move-object/from16 v0, p0

    #@1ce
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d0
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@1d3
    move-result v16

    #@1d4
    .line 6968
    .local v16, "token":I
    :try_start_4
    move-object/from16 v0, p0

    #@1d6
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d8
    const-wide/32 v8, 0x493e0

    #@1db
    const/4 v7, 0x0

    #@1dc
    move/from16 v0, v16

    #@1de
    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@1e1
    .line 6969
    move-object/from16 v0, v35

    #@1e3
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@1e5
    const-string/jumbo v7, "obb"

    #@1e8
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1eb
    move-result v5

    #@1ec
    if-eqz v5, :cond_16

    #@1ee
    .line 6970
    const-string/jumbo v5, "BackupManagerService"

    #@1f1
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v8, "Restoring OBB file for "

    #@1f9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v7

    #@1fd
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v7

    #@201
    .line 6971
    const-string/jumbo v8, " : "

    #@204
    .line 6970
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v7

    #@208
    .line 6971
    move-object/from16 v0, v35

    #@20a
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@20c
    .line 6970
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v7

    #@210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v7

    #@214
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@217
    .line 6972
    move-object/from16 v0, p0

    #@219
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@21b
    move-object/from16 v0, p0

    #@21d
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@21f
    const/4 v8, 0x0

    #@220
    aget-object v7, v7, v8

    #@222
    .line 6973
    move-object/from16 v0, v35

    #@224
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@226
    move-object/from16 v0, v35

    #@228
    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@22a
    move-object/from16 v0, v35

    #@22c
    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@22e
    move-object/from16 v0, v35

    #@230
    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@232
    .line 6974
    move-object/from16 v0, v35

    #@234
    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@236
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23a
    move-object/from16 v17, v0

    #@23c
    move-object/from16 v0, v17

    #@23e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@240
    move-object/from16 v17, v0

    #@242
    .line 6972
    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@245
    .line 7007
    :goto_7
    if-eqz v40, :cond_e

    #@247
    .line 7008
    const/16 v42, 0x1

    #@249
    .line 7009
    .local v42, "pipeOkay":Z
    :try_start_5
    new-instance v41, Ljava/io/FileOutputStream;

    #@24b
    .line 7010
    move-object/from16 v0, p0

    #@24d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@24f
    const/4 v7, 0x1

    #@250
    aget-object v5, v5, v7

    #@252
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@255
    move-result-object v5

    #@256
    .line 7009
    move-object/from16 v0, v41

    #@258
    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@25b
    .line 7011
    .local v41, "pipe":Ljava/io/FileOutputStream;
    :cond_b
    :goto_8
    const-wide/16 v8, 0x0

    #@25d
    cmp-long v5, v44, v8

    #@25f
    if-lez v5, :cond_d

    #@261
    .line 7012
    move-object/from16 v0, p2

    #@263
    array-length v5, v0

    #@264
    int-to-long v8, v5

    #@265
    cmp-long v5, v44, v8

    #@267
    if-lez v5, :cond_18

    #@269
    .line 7013
    move-object/from16 v0, p2

    #@26b
    array-length v0, v0

    #@26c
    move/from16 v46, v0

    #@26e
    .line 7014
    .local v46, "toRead":I
    :goto_9
    const/4 v5, 0x0

    #@26f
    move-object/from16 v0, p1

    #@271
    move-object/from16 v1, p2

    #@273
    move/from16 v2, v46

    #@275
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    #@278
    move-result v37

    #@279
    .line 7015
    .local v37, "nRead":I
    if-ltz v37, :cond_c

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@27f
    move/from16 v0, v37

    #@281
    int-to-long v12, v0

    #@282
    add-long/2addr v8, v12

    #@283
    move-object/from16 v0, p0

    #@285
    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@287
    .line 7016
    :cond_c
    if-gtz v37, :cond_19

    #@289
    .line 7033
    .end local v37    # "nRead":I
    .end local v46    # "toRead":I
    :cond_d
    move-object/from16 v0, v35

    #@28b
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@28d
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, p1

    #@291
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    #@294
    .line 7037
    move-object/from16 v0, p0

    #@296
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@298
    move/from16 v0, v16

    #@29a
    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    #@29d
    move-result v4

    #@29e
    .line 7042
    .end local v4    # "agentSuccess":Z
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    :cond_e
    if-nez v4, :cond_f

    #@2a0
    .line 7044
    const-string/jumbo v5, "BackupManagerService"

    #@2a3
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v8, "Agent failure restoring "

    #@2ab
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v7

    #@2af
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v7

    #@2b3
    const-string/jumbo v8, "; now ignoring"

    #@2b6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v7

    #@2ba
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v7

    #@2be
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c1
    .line 7046
    move-object/from16 v0, p0

    #@2c3
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c5
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@2c7
    const/4 v7, 0x7

    #@2c8
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@2cb
    .line 7047
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@2ce
    .line 7048
    move-object/from16 v0, p0

    #@2d0
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@2d2
    const/4 v7, 0x0

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    invoke-virtual {v0, v5, v7}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@2d8
    .line 7049
    move-object/from16 v0, p0

    #@2da
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@2dc
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@2de
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e1
    .line 7056
    .end local v16    # "token":I
    .end local v44    # "toCopy":J
    :cond_f
    if-nez v40, :cond_2

    #@2e3
    .line 7057
    const-string/jumbo v5, "BackupManagerService"

    #@2e6
    const-string/jumbo v7, "[discarding file content]"

    #@2e9
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2ec
    .line 7058
    move-object/from16 v0, v35

    #@2ee
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@2f0
    const-wide/16 v12, 0x1ff

    #@2f2
    add-long/2addr v8, v12

    #@2f3
    const-wide/16 v12, -0x200

    #@2f5
    and-long v30, v8, v12

    #@2f7
    .line 7059
    .local v30, "bytesToConsume":J
    :goto_a
    const-wide/16 v8, 0x0

    #@2f9
    cmp-long v5, v30, v8

    #@2fb
    if-lez v5, :cond_2

    #@2fd
    .line 7060
    move-object/from16 v0, p2

    #@2ff
    array-length v5, v0

    #@300
    int-to-long v8, v5

    #@301
    cmp-long v5, v30, v8

    #@303
    if-lez v5, :cond_1a

    #@305
    .line 7061
    move-object/from16 v0, p2

    #@307
    array-length v0, v0

    #@308
    move/from16 v46, v0

    #@30a
    .line 7062
    .restart local v46    # "toRead":I
    :goto_b
    const/4 v5, 0x0

    #@30b
    move-object/from16 v0, p1

    #@30d
    move-object/from16 v1, p2

    #@30f
    move/from16 v2, v46

    #@311
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    #@314
    move-result v5

    #@315
    int-to-long v0, v5

    #@316
    move-wide/from16 v38, v0

    #@318
    .line 7063
    .local v38, "nRead":J
    const-wide/16 v8, 0x0

    #@31a
    cmp-long v5, v38, v8

    #@31c
    if-ltz v5, :cond_10

    #@31e
    move-object/from16 v0, p0

    #@320
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@322
    add-long v8, v8, v38

    #@324
    move-object/from16 v0, p0

    #@326
    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@328
    .line 7064
    :cond_10
    const-wide/16 v8, 0x0

    #@32a
    cmp-long v5, v38, v8

    #@32c
    if-lez v5, :cond_2

    #@32e
    .line 7065
    sub-long v30, v30, v38

    #@330
    goto :goto_a

    #@331
    .line 6846
    .end local v30    # "bytesToConsume":J
    .end local v38    # "nRead":J
    .end local v46    # "toRead":I
    :pswitch_0
    const/16 v40, 0x0

    #@333
    .line 6847
    goto/16 :goto_2

    #@335
    .line 6852
    :pswitch_1
    move-object/from16 v0, v35

    #@337
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@339
    const-string/jumbo v7, "a"

    #@33c
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33f
    move-result v5

    #@340
    if-eqz v5, :cond_12

    #@342
    .line 6853
    const-string/jumbo v5, "BackupManagerService"

    #@345
    const-string/jumbo v7, "APK file; installing"

    #@348
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34b
    .line 6855
    move-object/from16 v0, p0

    #@34d
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    #@34f
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@352
    move-result-object v36

    #@353
    check-cast v36, Ljava/lang/String;

    #@355
    .line 6856
    .local v36, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@357
    move-object/from16 v1, v35

    #@359
    move-object/from16 v2, v36

    #@35b
    move-object/from16 v3, p1

    #@35d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    #@360
    move-result v40

    #@361
    .line 6858
    .local v40, "okay":Z
    move-object/from16 v0, p0

    #@363
    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@365
    if-eqz v40, :cond_11

    #@367
    .line 6859
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@369
    .line 6858
    :goto_c
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36c
    .line 6864
    move-object/from16 v0, v35

    #@36e
    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@370
    move-object/from16 v0, p0

    #@372
    move-object/from16 v1, p1

    #@374
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    #@377
    .line 6865
    const/4 v5, 0x1

    #@378
    return v5

    #@379
    .line 6860
    :cond_11
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@37b
    goto :goto_c

    #@37c
    .line 6869
    .end local v36    # "installerName":Ljava/lang/String;
    .local v40, "okay":Z
    :cond_12
    move-object/from16 v0, p0

    #@37e
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@380
    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@382
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@385
    .line 6870
    const/16 v40, 0x0

    #@387
    goto/16 :goto_2

    #@389
    .line 6875
    :pswitch_2
    move-object/from16 v0, v35

    #@38b
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@38d
    const-string/jumbo v7, "a"

    #@390
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@393
    move-result v5

    #@394
    if-eqz v5, :cond_5

    #@396
    .line 6876
    const-string/jumbo v5, "BackupManagerService"

    #@399
    const-string/jumbo v7, "apk present but ACCEPT"

    #@39c
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@39f
    .line 6881
    const/16 v40, 0x0

    #@3a1
    goto/16 :goto_2

    #@3a3
    .line 6924
    :cond_13
    :try_start_6
    const-string/jumbo v5, "BackupManagerService"

    #@3a6
    new-instance v7, Ljava/lang/StringBuilder;

    #@3a8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3ab
    const-string/jumbo v8, "backup agent ("

    #@3ae
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b1
    move-result-object v7

    #@3b2
    .line 6925
    move-object/from16 v0, p0

    #@3b4
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@3b6
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@3b8
    .line 6924
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v7

    #@3bc
    .line 6925
    const-string/jumbo v8, ") => no clear"

    #@3bf
    .line 6924
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c2
    move-result-object v7

    #@3c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c6
    move-result-object v7

    #@3c7
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3ca
    goto/16 :goto_3

    #@3cc
    .line 6937
    :catch_1
    move-exception v34

    #@3cd
    .restart local v34    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@3cf
    .line 6929
    .end local v34    # "e":Ljava/io/IOException;
    :cond_14
    const-string/jumbo v5, "BackupManagerService"

    #@3d2
    const-string/jumbo v7, "We\'ve initialized this app already; no clear required"

    #@3d5
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    #@3d8
    goto/16 :goto_4

    #@3da
    .line 6939
    :catch_2
    move-exception v32

    #@3db
    .local v32, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_5

    #@3dd
    .line 6954
    .end local v32    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_15
    :try_start_7
    const-string/jumbo v5, "BackupManagerService"

    #@3e0
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e5
    const-string/jumbo v8, "Restoring data for "

    #@3e8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3eb
    move-result-object v7

    #@3ec
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v7

    #@3f0
    .line 6955
    const-string/jumbo v8, " but agent is for "

    #@3f3
    .line 6954
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f6
    move-result-object v7

    #@3f7
    .line 6955
    move-object/from16 v0, p0

    #@3f9
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    #@3fb
    .line 6954
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fe
    move-result-object v7

    #@3ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@402
    move-result-object v7

    #@403
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    #@406
    .line 6956
    const/16 v40, 0x0

    #@408
    goto/16 :goto_6

    #@40a
    .line 6976
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v44    # "toCopy":J
    :cond_16
    :try_start_8
    const-string/jumbo v5, "BackupManagerService"

    #@40d
    new-instance v7, Ljava/lang/StringBuilder;

    #@40f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@412
    const-string/jumbo v8, "Invoking agent to restore file "

    #@415
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@418
    move-result-object v7

    #@419
    .line 6977
    move-object/from16 v0, v35

    #@41b
    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@41d
    .line 6976
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v7

    #@421
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@424
    move-result-object v7

    #@425
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@428
    .line 6982
    move-object/from16 v0, p0

    #@42a
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@42c
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@42e
    const-string/jumbo v7, "system"

    #@431
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@434
    move-result v5

    #@435
    if-eqz v5, :cond_17

    #@437
    .line 6983
    const-string/jumbo v5, "BackupManagerService"

    #@43a
    const-string/jumbo v7, "system process agent - spinning a thread"

    #@43d
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@440
    .line 6984
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;

    #@442
    .line 6985
    move-object/from16 v0, p0

    #@444
    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@446
    move-object/from16 v0, p0

    #@448
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@44a
    const/4 v7, 0x0

    #@44b
    aget-object v15, v5, v7

    #@44d
    move-object/from16 v12, p0

    #@44f
    move-object/from16 v14, v35

    #@451
    .line 6984
    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    #@454
    .line 6986
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    #@456
    const-string/jumbo v7, "restore-sys-runner"

    #@459
    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@45c
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    #@45f
    goto/16 :goto_7

    #@461
    .line 6993
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    :catch_3
    move-exception v34

    #@462
    .line 6995
    .restart local v34    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v5, "BackupManagerService"

    #@465
    const-string/jumbo v7, "Couldn\'t establish restore"

    #@468
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    #@46b
    .line 6996
    const/4 v4, 0x0

    #@46c
    .line 6997
    const/16 v40, 0x0

    #@46e
    goto/16 :goto_7

    #@470
    .line 6988
    .end local v34    # "e":Ljava/io/IOException;
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    #@472
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@474
    move-object/from16 v17, v0

    #@476
    move-object/from16 v0, p0

    #@478
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@47a
    const/4 v7, 0x0

    #@47b
    aget-object v18, v5, v7

    #@47d
    move-object/from16 v0, v35

    #@47f
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@481
    move-wide/from16 v19, v0

    #@483
    move-object/from16 v0, v35

    #@485
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@487
    move/from16 v21, v0

    #@489
    .line 6989
    move-object/from16 v0, v35

    #@48b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@48d
    move-object/from16 v22, v0

    #@48f
    move-object/from16 v0, v35

    #@491
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@493
    move-object/from16 v23, v0

    #@495
    move-object/from16 v0, v35

    #@497
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    #@499
    move-wide/from16 v24, v0

    #@49b
    move-object/from16 v0, v35

    #@49d
    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    #@49f
    move-wide/from16 v26, v0

    #@4a1
    .line 6990
    move-object/from16 v0, p0

    #@4a3
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4a5
    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@4a7
    move-object/from16 v29, v0

    #@4a9
    move/from16 v28, v16

    #@4ab
    .line 6988
    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    #@4ae
    goto/16 :goto_7

    #@4b0
    .line 6998
    :catch_4
    move-exception v33

    #@4b1
    .line 7001
    .local v33, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v5, "BackupManagerService"

    #@4b4
    const-string/jumbo v7, "Agent crashed during full restore"

    #@4b7
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    #@4ba
    .line 7002
    const/4 v4, 0x0

    #@4bb
    .line 7003
    const/16 v40, 0x0

    #@4bd
    goto/16 :goto_7

    #@4bf
    .line 7013
    .end local v33    # "e":Landroid/os/RemoteException;
    .restart local v41    # "pipe":Ljava/io/FileOutputStream;
    .restart local v42    # "pipeOkay":Z
    :cond_18
    move-wide/from16 v0, v44

    #@4c1
    long-to-int v0, v0

    #@4c2
    move/from16 v46, v0

    #@4c4
    goto/16 :goto_9

    #@4c6
    .line 7017
    .restart local v37    # "nRead":I
    .restart local v46    # "toRead":I
    :cond_19
    move/from16 v0, v37

    #@4c8
    int-to-long v8, v0

    #@4c9
    sub-long v44, v44, v8

    #@4cb
    .line 7021
    if-eqz v42, :cond_b

    #@4cd
    .line 7023
    const/4 v5, 0x0

    #@4ce
    :try_start_c
    move-object/from16 v0, v41

    #@4d0
    move-object/from16 v1, p2

    #@4d2
    move/from16 v2, v37

    #@4d4
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    #@4d7
    goto/16 :goto_8

    #@4d9
    .line 7024
    :catch_5
    move-exception v34

    #@4da
    .line 7025
    .restart local v34    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v5, "BackupManagerService"

    #@4dd
    const-string/jumbo v7, "Failed to write to restore pipe"

    #@4e0
    move-object/from16 v0, v34

    #@4e2
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    #@4e5
    .line 7026
    const/16 v42, 0x0

    #@4e7
    goto/16 :goto_8

    #@4e9
    .line 7061
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v34    # "e":Ljava/io/IOException;
    .end local v37    # "nRead":I
    .end local v41    # "pipe":Ljava/io/FileOutputStream;
    .end local v42    # "pipeOkay":Z
    .end local v44    # "toCopy":J
    .end local v46    # "toRead":I
    .restart local v30    # "bytesToConsume":J
    :cond_1a
    move-wide/from16 v0, v30

    #@4eb
    long-to-int v0, v0

    #@4ec
    move/from16 v46, v0

    #@4ee
    goto/16 :goto_b

    #@4f0
    .line 7076
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v30    # "bytesToConsume":J
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v40    # "okay":Z
    .end local v43    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_1b
    const/4 v5, 0x0

    #@4f1
    goto/16 :goto_1

    #@4f3
    .line 6844
    nop

    #@4f4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 25

    #@0
    .prologue
    .line 6592
    const-string/jumbo v21, "BackupManagerService"

    #@3
    const-string/jumbo v22, "--- Performing full-dataset restore ---"

    #@6
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 6593
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@d
    move-object/from16 v21, v0

    #@f
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    #@12
    .line 6594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendStartRestore()V

    #@15
    .line 6597
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@18
    move-result-object v21

    #@19
    const-string/jumbo v22, "mounted"

    #@1c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v21

    #@20
    if-eqz v21, :cond_0

    #@22
    .line 6598
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    #@26
    move-object/from16 v21, v0

    #@28
    const-string/jumbo v22, "com.android.sharedstoragebackup"

    #@2b
    sget-object v23, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    #@2d
    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 6601
    :cond_0
    const/16 v17, 0x0

    #@32
    .line 6602
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    #@33
    .line 6604
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@37
    move-object/from16 v21, v0

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    #@3d
    move-object/from16 v22, v0

    #@3f
    invoke-static/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    #@42
    move-result v21

    #@43
    if-nez v21, :cond_1

    #@45
    .line 6605
    const-string/jumbo v21, "BackupManagerService"

    #@48
    const-string/jumbo v22, "Backup password mismatch; aborting"

    #@4b
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    #@4e
    .line 6666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@51
    .line 6667
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@55
    move-object/from16 v21, v0

    #@57
    const/16 v22, 0x1

    #@59
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, v21

    #@5d
    move/from16 v2, v22

    #@5f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@62
    .line 6672
    :try_start_1
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@66
    move-object/from16 v21, v0

    #@68
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@6b
    .line 6677
    :goto_0
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6f
    move-object/from16 v21, v0

    #@71
    move-object/from16 v0, v21

    #@73
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@75
    move-object/from16 v22, v0

    #@77
    monitor-enter v22

    #@78
    .line 6678
    :try_start_2
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7c
    move-object/from16 v21, v0

    #@7e
    move-object/from16 v0, v21

    #@80
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@82
    move-object/from16 v21, v0

    #@84
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@87
    monitor-exit v22

    #@88
    .line 6680
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8c
    move-object/from16 v22, v0

    #@8e
    monitor-enter v22

    #@8f
    .line 6681
    :try_start_3
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@93
    move-object/from16 v21, v0

    #@95
    const/16 v23, 0x1

    #@97
    move-object/from16 v0, v21

    #@99
    move/from16 v1, v23

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@9e
    .line 6682
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a2
    move-object/from16 v21, v0

    #@a4
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a7
    monitor-exit v22

    #@a8
    .line 6684
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@ac
    move-object/from16 v21, v0

    #@ae
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@b1
    .line 6685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    #@b4
    .line 6686
    const-string/jumbo v21, "BackupManagerService"

    #@b7
    const-string/jumbo v22, "Full restore pass complete."

    #@ba
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 6687
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c1
    move-object/from16 v21, v0

    #@c3
    move-object/from16 v0, v21

    #@c5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@c7
    move-object/from16 v21, v0

    #@c9
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    #@cc
    .line 6606
    return-void

    #@cd
    .line 6673
    :catch_0
    move-exception v8

    #@ce
    .line 6674
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@d1
    const-string/jumbo v22, "Close of restore data pipe threw"

    #@d4
    move-object/from16 v0, v21

    #@d6
    move-object/from16 v1, v22

    #@d8
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@db
    goto :goto_0

    #@dc
    .line 6677
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    #@dd
    monitor-exit v22

    #@de
    throw v21

    #@df
    .line 6680
    :catchall_1
    move-exception v21

    #@e0
    monitor-exit v22

    #@e1
    throw v21

    #@e2
    .line 6609
    :cond_1
    const-wide/16 v22, 0x0

    #@e4
    :try_start_4
    move-wide/from16 v0, v22

    #@e6
    move-object/from16 v2, p0

    #@e8
    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@ea
    .line 6610
    const v21, 0x8000

    #@ed
    move/from16 v0, v21

    #@ef
    new-array v5, v0, [B

    #@f1
    .line 6611
    .local v5, "buffer":[B
    new-instance v18, Ljava/io/FileInputStream;

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@f7
    move-object/from16 v21, v0

    #@f9
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@fc
    move-result-object v21

    #@fd
    move-object/from16 v0, v18

    #@ff
    move-object/from16 v1, v21

    #@101
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    #@104
    .line 6612
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .local v18, "rawInStream":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v16, Ljava/io/DataInputStream;

    #@106
    move-object/from16 v0, v16

    #@108
    move-object/from16 v1, v18

    #@10a
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    #@10d
    .line 6615
    .local v16, "rawDataIn":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    #@10e
    .line 6616
    .local v6, "compressed":Z
    move-object/from16 v14, v18

    #@110
    .line 6619
    .local v14, "preCompressStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    #@111
    .line 6620
    .local v12, "okay":Z
    :try_start_6
    const-string/jumbo v21, "ANDROID BACKUP\n"

    #@114
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@117
    move-result v9

    #@118
    .line 6621
    .local v9, "headerLen":I
    new-array v0, v9, [B

    #@11a
    move-object/from16 v20, v0

    #@11c
    .line 6622
    .local v20, "streamHeader":[B
    move-object/from16 v0, v16

    #@11e
    move-object/from16 v1, v20

    #@120
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    #@123
    .line 6623
    const-string/jumbo v21, "ANDROID BACKUP\n"

    #@126
    const-string/jumbo v22, "UTF-8"

    #@129
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@12c
    move-result-object v11

    #@12d
    .line 6624
    .local v11, "magicBytes":[B
    move-object/from16 v0, v20

    #@12f
    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@132
    move-result v21

    #@133
    if-eqz v21, :cond_e

    #@135
    .line 6626
    move-object/from16 v0, p0

    #@137
    move-object/from16 v1, v18

    #@139
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@13c
    move-result-object v19

    #@13d
    .line 6627
    .local v19, "s":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@140
    move-result v4

    #@141
    .line 6628
    .local v4, "archiveVersion":I
    const/16 v21, 0x4

    #@143
    move/from16 v0, v21

    #@145
    if-gt v4, v0, :cond_b

    #@147
    .line 6631
    const/16 v21, 0x1

    #@149
    move/from16 v0, v21

    #@14b
    if-ne v4, v0, :cond_5

    #@14d
    const/4 v13, 0x1

    #@14e
    .line 6633
    .local v13, "pbkdf2Fallback":Z
    :goto_1
    move-object/from16 v0, p0

    #@150
    move-object/from16 v1, v18

    #@152
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@155
    move-result-object v19

    #@156
    .line 6634
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@159
    move-result v21

    #@15a
    if-eqz v21, :cond_6

    #@15c
    const/4 v6, 0x1

    #@15d
    .line 6635
    :goto_2
    move-object/from16 v0, p0

    #@15f
    move-object/from16 v1, v18

    #@161
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@164
    move-result-object v19

    #@165
    .line 6636
    const-string/jumbo v21, "none"

    #@168
    move-object/from16 v0, v19

    #@16a
    move-object/from16 v1, v21

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16f
    move-result v21

    #@170
    if-eqz v21, :cond_7

    #@172
    .line 6638
    const/4 v12, 0x1

    #@173
    .line 6649
    .end local v4    # "archiveVersion":I
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    :cond_2
    :goto_3
    if-nez v12, :cond_f

    #@175
    .line 6650
    const-string/jumbo v21, "BackupManagerService"

    #@178
    const-string/jumbo v22, "Invalid restore data; aborting."

    #@17b
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@17e
    .line 6666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@181
    .line 6667
    move-object/from16 v0, p0

    #@183
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@185
    move-object/from16 v21, v0

    #@187
    const/16 v22, 0x1

    #@189
    move-object/from16 v0, p0

    #@18b
    move-object/from16 v1, v21

    #@18d
    move/from16 v2, v22

    #@18f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@192
    .line 6670
    if-eqz v16, :cond_3

    #@194
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    #@197
    .line 6671
    :cond_3
    if-eqz v18, :cond_4

    #@199
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    #@19c
    .line 6672
    :cond_4
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@1a0
    move-object/from16 v21, v0

    #@1a2
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@1a5
    .line 6677
    :goto_4
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a9
    move-object/from16 v21, v0

    #@1ab
    move-object/from16 v0, v21

    #@1ad
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@1af
    move-object/from16 v22, v0

    #@1b1
    monitor-enter v22

    #@1b2
    .line 6678
    :try_start_8
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b6
    move-object/from16 v21, v0

    #@1b8
    move-object/from16 v0, v21

    #@1ba
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@1bc
    move-object/from16 v21, v0

    #@1be
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@1c1
    monitor-exit v22

    #@1c2
    .line 6680
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c6
    move-object/from16 v22, v0

    #@1c8
    monitor-enter v22

    #@1c9
    .line 6681
    :try_start_9
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1cd
    move-object/from16 v21, v0

    #@1cf
    const/16 v23, 0x1

    #@1d1
    move-object/from16 v0, v21

    #@1d3
    move/from16 v1, v23

    #@1d5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1d8
    .line 6682
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1dc
    move-object/from16 v21, v0

    #@1de
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@1e1
    monitor-exit v22

    #@1e2
    .line 6684
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@1e6
    move-object/from16 v21, v0

    #@1e8
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@1eb
    .line 6685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    #@1ee
    .line 6686
    const-string/jumbo v21, "BackupManagerService"

    #@1f1
    const-string/jumbo v22, "Full restore pass complete."

    #@1f4
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f7
    .line 6687
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1fb
    move-object/from16 v21, v0

    #@1fd
    move-object/from16 v0, v21

    #@1ff
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@201
    move-object/from16 v21, v0

    #@203
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    #@206
    .line 6651
    return-void

    #@207
    .line 6631
    .restart local v4    # "archiveVersion":I
    .restart local v19    # "s":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    #@208
    .restart local v13    # "pbkdf2Fallback":Z
    goto/16 :goto_1

    #@20a
    .line 6634
    :cond_6
    const/4 v6, 0x0

    #@20b
    goto/16 :goto_2

    #@20d
    .line 6639
    :cond_7
    :try_start_a
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    #@211
    move-object/from16 v21, v0

    #@213
    if-eqz v21, :cond_8

    #@215
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    #@219
    move-object/from16 v21, v0

    #@21b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@21e
    move-result v21

    #@21f
    if-lez v21, :cond_8

    #@221
    .line 6640
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, v19

    #@225
    move-object/from16 v2, v18

    #@227
    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    #@22a
    move-result-object v14

    #@22b
    .line 6642
    if-eqz v14, :cond_2

    #@22d
    .line 6643
    const/4 v12, 0x1

    #@22e
    goto/16 :goto_3

    #@230
    .line 6645
    :cond_8
    const-string/jumbo v21, "BackupManagerService"

    #@233
    const-string/jumbo v22, "Archive is encrypted but no password given"

    #@236
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@239
    goto/16 :goto_3

    #@23b
    .line 6663
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catch_1
    move-exception v8

    #@23c
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    #@23e
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    #@240
    .line 6664
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_b
    const-string/jumbo v21, "BackupManagerService"

    #@243
    const-string/jumbo v22, "Unable to read restore input"

    #@246
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    #@249
    .line 6666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@24c
    .line 6667
    move-object/from16 v0, p0

    #@24e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@250
    move-object/from16 v21, v0

    #@252
    const/16 v22, 0x1

    #@254
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, v21

    #@258
    move/from16 v2, v22

    #@25a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@25d
    .line 6670
    if-eqz v15, :cond_9

    #@25f
    :try_start_c
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    #@262
    .line 6671
    :cond_9
    if-eqz v17, :cond_a

    #@264
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    #@267
    .line 6672
    :cond_a
    move-object/from16 v0, p0

    #@269
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@26b
    move-object/from16 v21, v0

    #@26d
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    #@270
    .line 6677
    :goto_6
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@274
    move-object/from16 v21, v0

    #@276
    move-object/from16 v0, v21

    #@278
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@27a
    move-object/from16 v22, v0

    #@27c
    monitor-enter v22

    #@27d
    .line 6678
    :try_start_d
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@281
    move-object/from16 v21, v0

    #@283
    move-object/from16 v0, v21

    #@285
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@287
    move-object/from16 v21, v0

    #@289
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    #@28c
    monitor-exit v22

    #@28d
    .line 6680
    move-object/from16 v0, p0

    #@28f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@291
    move-object/from16 v22, v0

    #@293
    monitor-enter v22

    #@294
    .line 6681
    :try_start_e
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@298
    move-object/from16 v21, v0

    #@29a
    const/16 v23, 0x1

    #@29c
    move-object/from16 v0, v21

    #@29e
    move/from16 v1, v23

    #@2a0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2a3
    .line 6682
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a7
    move-object/from16 v21, v0

    #@2a9
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    #@2ac
    monitor-exit v22

    #@2ad
    .line 6684
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@2b1
    move-object/from16 v21, v0

    #@2b3
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@2b6
    .line 6685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    #@2b9
    .line 6686
    const-string/jumbo v21, "BackupManagerService"

    #@2bc
    const-string/jumbo v22, "Full restore pass complete."

    #@2bf
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c2
    .line 6687
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c6
    move-object/from16 v21, v0

    #@2c8
    move-object/from16 v0, v21

    #@2ca
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2cc
    move-object/from16 v21, v0

    #@2ce
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2d1
    .line 6591
    .end local v8    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    #@2d2
    .line 6646
    .restart local v4    # "archiveVersion":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v19    # "s":Ljava/lang/String;
    .restart local v20    # "streamHeader":[B
    :cond_b
    :try_start_f
    const-string/jumbo v21, "BackupManagerService"

    #@2d5
    new-instance v22, Ljava/lang/StringBuilder;

    #@2d7
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2da
    const-string/jumbo v23, "Wrong header version: "

    #@2dd
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v22

    #@2e1
    move-object/from16 v0, v22

    #@2e3
    move-object/from16 v1, v19

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v22

    #@2e9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v22

    #@2ed
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@2f0
    goto/16 :goto_3

    #@2f2
    .line 6665
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catchall_2
    move-exception v21

    #@2f3
    move-object/from16 v15, v16

    #@2f5
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    #@2f7
    .line 6666
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@2fa
    .line 6667
    move-object/from16 v0, p0

    #@2fc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@2fe
    move-object/from16 v22, v0

    #@300
    const/16 v23, 0x1

    #@302
    move-object/from16 v0, p0

    #@304
    move-object/from16 v1, v22

    #@306
    move/from16 v2, v23

    #@308
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@30b
    .line 6670
    if-eqz v15, :cond_c

    #@30d
    :try_start_10
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    #@310
    .line 6671
    :cond_c
    if-eqz v17, :cond_d

    #@312
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    #@315
    .line 6672
    :cond_d
    move-object/from16 v0, p0

    #@317
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@319
    move-object/from16 v22, v0

    #@31b
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    #@31e
    .line 6677
    :goto_9
    move-object/from16 v0, p0

    #@320
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@322
    move-object/from16 v22, v0

    #@324
    move-object/from16 v0, v22

    #@326
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@328
    move-object/from16 v22, v0

    #@32a
    monitor-enter v22

    #@32b
    .line 6678
    :try_start_11
    move-object/from16 v0, p0

    #@32d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@32f
    move-object/from16 v23, v0

    #@331
    move-object/from16 v0, v23

    #@333
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@335
    move-object/from16 v23, v0

    #@337
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    #@33a
    monitor-exit v22

    #@33b
    .line 6680
    move-object/from16 v0, p0

    #@33d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@33f
    move-object/from16 v22, v0

    #@341
    monitor-enter v22

    #@342
    .line 6681
    :try_start_12
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@346
    move-object/from16 v23, v0

    #@348
    const/16 v24, 0x1

    #@34a
    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@34d
    .line 6682
    move-object/from16 v0, p0

    #@34f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@351
    move-object/from16 v23, v0

    #@353
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    #@356
    monitor-exit v22

    #@357
    .line 6684
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@35b
    move-object/from16 v22, v0

    #@35d
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@360
    .line 6685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    #@363
    .line 6686
    const-string/jumbo v22, "BackupManagerService"

    #@366
    const-string/jumbo v23, "Full restore pass complete."

    #@369
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36c
    .line 6687
    move-object/from16 v0, p0

    #@36e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@370
    move-object/from16 v22, v0

    #@372
    move-object/from16 v0, v22

    #@374
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@376
    move-object/from16 v22, v0

    #@378
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    #@37b
    .line 6665
    throw v21

    #@37c
    .line 6647
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v20    # "streamHeader":[B
    :cond_e
    :try_start_13
    const-string/jumbo v21, "BackupManagerService"

    #@37f
    const-string/jumbo v22, "Didn\'t read the right header magic"

    #@382
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    #@385
    goto/16 :goto_3

    #@387
    .line 6673
    :catch_2
    move-exception v8

    #@388
    .line 6674
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@38b
    const-string/jumbo v22, "Close of restore data pipe threw"

    #@38e
    move-object/from16 v0, v21

    #@390
    move-object/from16 v1, v22

    #@392
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@395
    goto/16 :goto_4

    #@397
    .line 6677
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v21

    #@398
    monitor-exit v22

    #@399
    throw v21

    #@39a
    .line 6680
    :catchall_4
    move-exception v21

    #@39b
    monitor-exit v22

    #@39c
    throw v21

    #@39d
    .line 6655
    :cond_f
    if-eqz v6, :cond_13

    #@39f
    :try_start_14
    new-instance v10, Ljava/util/zip/InflaterInputStream;

    #@3a1
    invoke-direct {v10, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3a4
    .line 6659
    .local v10, "in":Ljava/io/InputStream;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    #@3a6
    invoke-virtual {v0, v10, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@3a9
    move-result v7

    #@3aa
    .line 6660
    .local v7, "didRestore":Z
    if-nez v7, :cond_10

    #@3ac
    .line 6666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    #@3af
    .line 6667
    move-object/from16 v0, p0

    #@3b1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@3b3
    move-object/from16 v21, v0

    #@3b5
    const/16 v22, 0x1

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    move-object/from16 v1, v21

    #@3bb
    move/from16 v2, v22

    #@3bd
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    #@3c0
    .line 6670
    if-eqz v16, :cond_11

    #@3c2
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    #@3c5
    .line 6671
    :cond_11
    if-eqz v18, :cond_12

    #@3c7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    #@3ca
    .line 6672
    :cond_12
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    #@3ce
    move-object/from16 v21, v0

    #@3d0
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    #@3d3
    .line 6677
    :goto_b
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3d7
    move-object/from16 v21, v0

    #@3d9
    move-object/from16 v0, v21

    #@3db
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3dd
    move-object/from16 v22, v0

    #@3df
    monitor-enter v22

    #@3e0
    .line 6678
    :try_start_16
    move-object/from16 v0, p0

    #@3e2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e4
    move-object/from16 v21, v0

    #@3e6
    move-object/from16 v0, v21

    #@3e8
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@3ea
    move-object/from16 v21, v0

    #@3ec
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    #@3ef
    monitor-exit v22

    #@3f0
    .line 6680
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3f4
    move-object/from16 v22, v0

    #@3f6
    monitor-enter v22

    #@3f7
    .line 6681
    :try_start_17
    move-object/from16 v0, p0

    #@3f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3fb
    move-object/from16 v21, v0

    #@3fd
    const/16 v23, 0x1

    #@3ff
    move-object/from16 v0, v21

    #@401
    move/from16 v1, v23

    #@403
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@406
    .line 6682
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@40a
    move-object/from16 v21, v0

    #@40c
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    #@40f
    monitor-exit v22

    #@410
    .line 6684
    move-object/from16 v0, p0

    #@412
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@414
    move-object/from16 v21, v0

    #@416
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@419
    .line 6685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    #@41c
    .line 6686
    const-string/jumbo v21, "BackupManagerService"

    #@41f
    const-string/jumbo v22, "Full restore pass complete."

    #@422
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@425
    .line 6687
    move-object/from16 v0, p0

    #@427
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@429
    move-object/from16 v21, v0

    #@42b
    move-object/from16 v0, v21

    #@42d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@42f
    move-object/from16 v21, v0

    #@431
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    #@434
    move-object/from16 v15, v16

    #@436
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    #@438
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@43a
    .line 6655
    .end local v7    # "didRestore":Z
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :cond_13
    move-object v10, v14

    #@43b
    .restart local v10    # "in":Ljava/io/InputStream;
    goto/16 :goto_a

    #@43d
    .line 6673
    .restart local v7    # "didRestore":Z
    :catch_3
    move-exception v8

    #@43e
    .line 6674
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    #@441
    const-string/jumbo v22, "Close of restore data pipe threw"

    #@444
    move-object/from16 v0, v21

    #@446
    move-object/from16 v1, v22

    #@448
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44b
    goto :goto_b

    #@44c
    .line 6677
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v21

    #@44d
    monitor-exit v22

    #@44e
    throw v21

    #@44f
    .line 6680
    :catchall_6
    move-exception v21

    #@450
    monitor-exit v22

    #@451
    throw v21

    #@452
    .line 6673
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v7    # "didRestore":Z
    .end local v9    # "headerLen":I
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "magicBytes":[B
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .end local v20    # "streamHeader":[B
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    #@453
    .line 6674
    const-string/jumbo v21, "BackupManagerService"

    #@456
    const-string/jumbo v22, "Close of restore data pipe threw"

    #@459
    move-object/from16 v0, v21

    #@45b
    move-object/from16 v1, v22

    #@45d
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@460
    goto/16 :goto_6

    #@462
    .line 6677
    :catchall_7
    move-exception v21

    #@463
    monitor-exit v22

    #@464
    throw v21

    #@465
    .line 6680
    :catchall_8
    move-exception v21

    #@466
    monitor-exit v22

    #@467
    throw v21

    #@468
    .line 6673
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@469
    .line 6674
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "BackupManagerService"

    #@46c
    const-string/jumbo v23, "Close of restore data pipe threw"

    #@46f
    move-object/from16 v0, v22

    #@471
    move-object/from16 v1, v23

    #@473
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@476
    goto/16 :goto_9

    #@478
    .line 6677
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v21

    #@479
    monitor-exit v22

    #@47a
    throw v21

    #@47b
    .line 6680
    :catchall_a
    move-exception v21

    #@47c
    monitor-exit v22

    #@47d
    throw v21

    #@47e
    .line 6665
    :catchall_b
    move-exception v21

    #@47f
    goto/16 :goto_8

    #@481
    .restart local v5    # "buffer":[B
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catchall_c
    move-exception v21

    #@482
    move-object/from16 v17, v18

    #@484
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    #@486
    .line 6663
    .end local v5    # "buffer":[B
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    #@487
    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@489
    .end local v8    # "e":Ljava/io/IOException;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    #@48a
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    #@48c
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method sendEndRestore()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7807
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 7806
    :cond_0
    :goto_0
    return-void

    #@b
    .line 7810
    :catch_0
    move-exception v0

    #@c
    .line 7811
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full restore observer went away: endRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 7812
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

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
    .line 7795
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7798
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 7794
    :cond_0
    :goto_0
    return-void

    #@b
    .line 7799
    :catch_0
    move-exception v0

    #@c
    .line 7800
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full restore observer went away: restorePackage"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 7801
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@17
    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7784
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    #@7
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 7783
    :cond_0
    :goto_0
    return-void

    #@b
    .line 7787
    :catch_0
    move-exception v0

    #@c
    .line 7788
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    #@f
    const-string/jumbo v2, "full restore observer went away: startRestore"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 7789
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

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
    .line 7080
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@6
    .line 7079
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
    .line 7313
    add-long v4, p1, v6

    #@4
    rem-long v2, v4, v6

    #@6
    .line 7314
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    #@8
    cmp-long v4, v2, v4

    #@a
    if-lez v4, :cond_0

    #@c
    .line 7315
    long-to-int v4, v2

    #@d
    rsub-int v1, v4, 0x200

    #@f
    .line 7316
    .local v1, "needed":I
    new-array v0, v1, [B

    #@11
    .line 7317
    .local v0, "buffer":[B
    const/4 v4, 0x0

    #@12
    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    #@15
    move-result v4

    #@16
    if-ne v4, v1, :cond_1

    #@18
    .line 7318
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@1a
    int-to-long v6, v1

    #@1b
    add-long/2addr v4, v6

    #@1c
    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    #@1e
    .line 7312
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    #@1f
    .line 7319
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

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 7098
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@3
    if-eqz v4, :cond_2

    #@5
    .line 7101
    if-eqz p2, :cond_0

    #@7
    .line 7102
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@9
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@c
    move-result v3

    #@d
    .line 7103
    .local v3, "token":I
    new-instance v1, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;

    #@f
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    invoke-direct {v1, v4}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@14
    .line 7104
    .local v1, "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    const-wide/32 v6, 0x493e0

    #@19
    invoke-virtual {v4, v3, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@1c
    .line 7105
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    #@1e
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@20
    const-string/jumbo v5, "system"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3

    #@29
    .line 7109
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;

    #@2b
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@2d
    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;I)V

    #@30
    .line 7110
    .local v2, "runner":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    #@32
    const-string/jumbo v5, "restore-sys-finished-runner"

    #@35
    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@38
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    #@3b
    .line 7115
    .end local v2    # "runner":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->await()V

    #@3e
    .line 7119
    .end local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .end local v3    # "token":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@43
    move-result-object v4

    #@44
    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    #@47
    .line 7124
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@49
    const/16 v5, 0x2710

    #@4b
    if-lt v4, v5, :cond_1

    #@4d
    .line 7125
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4f
    const-string/jumbo v5, "com.android.backupconfirm"

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_4

    #@58
    .line 7129
    :cond_1
    const-string/jumbo v4, "BackupManagerService"

    #@5b
    const-string/jumbo v5, "Not killing after full restore"

    #@5e
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 7134
    :goto_1
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@63
    .line 7097
    :cond_2
    return-void

    #@64
    .line 7112
    .restart local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .restart local v3    # "token":I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    #@66
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@68
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@6a
    invoke-interface {v4, v3, v5}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@6d
    goto :goto_0

    #@6e
    .line 7131
    .end local v1    # "latch":Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
    .end local v3    # "token":I
    :catch_0
    move-exception v0

    #@6f
    .line 7132
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BackupManagerService"

    #@72
    const-string/jumbo v5, "Lost app trying to shut down"

    #@75
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    goto :goto_1

    #@79
    .line 7126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    #@7c
    const-string/jumbo v5, "Killing host process"

    #@7f
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 7127
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@84
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@87
    move-result-object v4

    #@88
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@8a
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8c
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@8f
    goto :goto_1
.end method

.method tearDownPipes()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 7084
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@7
    const/4 v2, 0x0

    #@8
    aget-object v1, v1, v2

    #@a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@d
    .line 7087
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@f
    const/4 v2, 0x0

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    .line 7088
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@15
    const/4 v2, 0x1

    #@16
    aget-object v1, v1, v2

    #@18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    #@1b
    .line 7089
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x1

    #@1f
    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 7093
    :goto_0
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    #@23
    .line 7083
    :cond_0
    return-void

    #@24
    .line 7090
    :catch_0
    move-exception v0

    #@25
    .line 7091
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    #@28
    const-string/jumbo v2, "Couldn\'t close agent pipes"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method
