.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
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
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static synthetic -com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$BackupState:[I

.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom_android_server_backup_BackupManagerService$BackupStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$BackupState;->values()[Lcom/android/server/backup/BackupManagerService$BackupState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@10
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

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
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@19
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

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
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@22
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

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
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com_android_server_backup_BackupManagerService$BackupStateSwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2414
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2416
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 2417
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@9
    .line 2418
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@b
    .line 2420
    new-instance v0, Ljava/io/File;

    #@d
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@f
    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@14
    .line 2422
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@16
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@18
    .line 2423
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@1b
    .line 2425
    const-string/jumbo v0, "STATE => INITIAL"

    #@1e
    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@21
    .line 2415
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 2817
    :try_start_0
    const-string/jumbo v5, "SHA-1"

    #@3
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v3

    #@7
    .line 2818
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 2824
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    #@d
    array-length v5, v0

    #@e
    mul-int/lit8 v5, v5, 0x2

    #@10
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@13
    .line 2825
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@15
    if-ge v2, v5, :cond_0

    #@17
    .line 2826
    aget-byte v5, v0, v2

    #@19
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 2825
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2819
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    #@24
    .line 2820
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v5, "PerformBackupTask"

    #@27
    const-string/jumbo v6, "Unable to use SHA-1!"

    #@2a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 2821
    const-string/jumbo v5, "00"

    #@30
    return-object v5

    #@31
    .line 2828
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "checksum":[B
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    return-object v5
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2834
    const/16 v16, 0x0

    #@2
    .line 2833
    move-object/from16 v0, p2

    #@4
    move/from16 v1, v16

    #@6
    invoke-static {v0, v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    #@9
    move-result-object v15

    #@a
    .line 2836
    .local v15, "widgetState":[B
    new-instance v14, Ljava/io/File;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@10
    move-object/from16 v16, v0

    #@12
    new-instance v17, Ljava/lang/StringBuilder;

    #@14
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    move-object/from16 v0, v17

    #@19
    move-object/from16 v1, p2

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v17

    #@1f
    const-string/jumbo v18, "_widget"

    #@22
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v17

    #@26
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v17

    #@2a
    move-object/from16 v0, v16

    #@2c
    move-object/from16 v1, v17

    #@2e
    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@31
    .line 2837
    .local v14, "widgetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    #@34
    move-result v11

    #@35
    .line 2846
    .local v11, "priorStateExists":Z
    if-nez v11, :cond_0

    #@37
    if-nez v15, :cond_0

    #@39
    .line 2848
    return-void

    #@3a
    .line 2855
    :cond_0
    const/4 v8, 0x0

    #@3b
    .line 2856
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v15, :cond_a

    #@3d
    .line 2857
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    .line 2858
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v11, :cond_a

    #@45
    .line 2860
    const/16 v17, 0x0

    #@47
    const/4 v2, 0x0

    #@48
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    #@49
    .line 2861
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@4b
    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    #@4e
    .line 2862
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    #@50
    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    #@53
    .line 2864
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    #@56
    .end local v6    # "in":Ljava/io/DataInputStream;
    move-result-object v10

    #@57
    .line 2865
    .local v10, "priorChecksum":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@59
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@5c
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    #@5e
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    #@61
    :cond_2
    move-object/from16 v16, v17

    #@63
    :cond_3
    :goto_1
    if-eqz v16, :cond_9

    #@65
    throw v16

    #@66
    :catch_0
    move-exception v17

    #@67
    goto :goto_0

    #@68
    :catch_1
    move-exception v16

    #@69
    if-eqz v17, :cond_3

    #@6b
    move-object/from16 v0, v17

    #@6d
    move-object/from16 v1, v16

    #@6f
    if-eq v0, v1, :cond_2

    #@71
    move-object/from16 v0, v17

    #@73
    move-object/from16 v1, v16

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@78
    move-object/from16 v16, v17

    #@7a
    goto :goto_1

    #@7b
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v16

    #@7c
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_2
    :try_start_5
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7d
    :catchall_0
    move-exception v17

    #@7e
    move-object/from16 v19, v17

    #@80
    move-object/from16 v17, v16

    #@82
    move-object/from16 v16, v19

    #@84
    :goto_3
    if-eqz v6, :cond_4

    #@86
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    #@89
    :cond_4
    move-object/from16 v18, v17

    #@8b
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    #@8d
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    #@90
    :cond_6
    move-object/from16 v17, v18

    #@92
    :cond_7
    :goto_5
    if-eqz v17, :cond_8

    #@94
    throw v17

    #@95
    :catch_3
    move-exception v18

    #@96
    if-eqz v17, :cond_5

    #@98
    move-object/from16 v0, v17

    #@9a
    move-object/from16 v1, v18

    #@9c
    if-eq v0, v1, :cond_4

    #@9e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@a1
    move-object/from16 v18, v17

    #@a3
    goto :goto_4

    #@a4
    :catch_4
    move-exception v17

    #@a5
    if-eqz v18, :cond_7

    #@a7
    move-object/from16 v0, v18

    #@a9
    move-object/from16 v1, v17

    #@ab
    if-eq v0, v1, :cond_6

    #@ad
    move-object/from16 v0, v18

    #@af
    move-object/from16 v1, v17

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@b4
    move-object/from16 v17, v18

    #@b6
    goto :goto_5

    #@b7
    :cond_8
    throw v16

    #@b8
    .line 2866
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "priorChecksum":Ljava/lang/String;
    :cond_9
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@bb
    move-result v16

    #@bc
    if-eqz v16, :cond_a

    #@be
    .line 2868
    return-void

    #@bf
    .line 2873
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "newChecksum":Ljava/lang/String;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/app/backup/BackupDataOutput;

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@c6
    .line 2874
    .local v9, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v15, :cond_14

    #@c8
    .line 2875
    const/16 v17, 0x0

    #@ca
    const/4 v4, 0x0

    #@cb
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    #@cc
    .line 2876
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    #@ce
    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@d1
    .line 2877
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v13, Ljava/io/DataOutputStream;

    #@d3
    invoke-direct {v13, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@d6
    .line 2879
    .local v13, "stateOut":Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@d9
    .line 2880
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    if-eqz v13, :cond_b

    #@db
    :try_start_b
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    #@de
    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    #@e0
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    #@e3
    :cond_c
    move-object/from16 v16, v17

    #@e5
    :cond_d
    :goto_7
    if-eqz v16, :cond_13

    #@e7
    throw v16

    #@e8
    :catch_5
    move-exception v17

    #@e9
    goto :goto_6

    #@ea
    :catch_6
    move-exception v16

    #@eb
    if-eqz v17, :cond_d

    #@ed
    move-object/from16 v0, v17

    #@ef
    move-object/from16 v1, v16

    #@f1
    if-eq v0, v1, :cond_c

    #@f3
    move-object/from16 v0, v17

    #@f5
    move-object/from16 v1, v16

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@fa
    move-object/from16 v16, v17

    #@fc
    goto :goto_7

    #@fd
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v16

    #@fe
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    :goto_8
    :try_start_d
    throw v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@ff
    :catchall_1
    move-exception v17

    #@100
    move-object/from16 v19, v17

    #@102
    move-object/from16 v17, v16

    #@104
    move-object/from16 v16, v19

    #@106
    :goto_9
    if-eqz v12, :cond_e

    #@108
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    #@10b
    :cond_e
    move-object/from16 v18, v17

    #@10d
    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    #@10f
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    #@112
    :cond_10
    move-object/from16 v17, v18

    #@114
    :cond_11
    :goto_b
    if-eqz v17, :cond_12

    #@116
    throw v17

    #@117
    :catch_8
    move-exception v18

    #@118
    if-eqz v17, :cond_f

    #@11a
    move-object/from16 v0, v17

    #@11c
    move-object/from16 v1, v18

    #@11e
    if-eq v0, v1, :cond_e

    #@120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@123
    move-object/from16 v18, v17

    #@125
    goto :goto_a

    #@126
    :catch_9
    move-exception v17

    #@127
    if-eqz v18, :cond_11

    #@129
    move-object/from16 v0, v18

    #@12b
    move-object/from16 v1, v17

    #@12d
    if-eq v0, v1, :cond_10

    #@12f
    move-object/from16 v0, v18

    #@131
    move-object/from16 v1, v17

    #@133
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@136
    move-object/from16 v17, v18

    #@138
    goto :goto_b

    #@139
    :cond_12
    throw v16

    #@13a
    .line 2882
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :cond_13
    const-string/jumbo v16, "\uffed\uffedwidget"

    #@13d
    array-length v0, v15

    #@13e
    move/from16 v17, v0

    #@140
    move-object/from16 v0, v16

    #@142
    move/from16 v1, v17

    #@144
    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@147
    .line 2883
    array-length v0, v15

    #@148
    move/from16 v16, v0

    #@14a
    move/from16 v0, v16

    #@14c
    invoke-virtual {v9, v15, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@14f
    .line 2832
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    :goto_c
    return-void

    #@150
    .line 2886
    :cond_14
    const-string/jumbo v16, "\uffed\uffedwidget"

    #@153
    const/16 v17, -0x1

    #@155
    move-object/from16 v0, v16

    #@157
    move/from16 v1, v17

    #@159
    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@15c
    .line 2887
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    #@15f
    goto :goto_c

    #@160
    .line 2880
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v16

    #@161
    goto :goto_9

    #@162
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v16

    #@163
    move-object v4, v5

    #@164
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    #@165
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v16

    #@166
    move-object v12, v13

    #@167
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    #@168
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    #@169
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v16

    #@16a
    move-object v4, v5

    #@16b
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    #@16c
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v16

    #@16d
    move-object v12, v13

    #@16e
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    #@16f
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    #@170
    .line 2865
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "newChecksum":Ljava/lang/String;
    :catchall_5
    move-exception v16

    #@171
    goto/16 :goto_3

    #@173
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v16

    #@174
    move-object v2, v3

    #@175
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    #@177
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catchall_7
    move-exception v16

    #@178
    move-object v6, v7

    #@179
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    #@17a
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    #@17c
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :catch_c
    move-exception v16

    #@17d
    move-object v2, v3

    #@17e
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    #@180
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_d
    move-exception v16

    #@181
    move-object v6, v7

    #@182
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    #@183
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method agentErrorCleanup()V
    .locals 1

    #@0
    .prologue
    .line 3073
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@5
    .line 3074
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    .line 3075
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    #@d
    .line 3077
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@17
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@1a
    .line 3072
    return-void

    #@1b
    .line 3077
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1d
    goto :goto_0
.end method

.method beginBackup()V
    .locals 12

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2455
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    #@6
    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const/16 v8, 0x100

    #@a
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 2457
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "beginBackup: ["

    #@10
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 2458
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@15
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v6

    #@19
    .local v6, "req$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_0

    #@1f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@25
    .line 2459
    .local v5, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v8, 0x20

    #@27
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 2460
    iget-object v8, v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0

    #@30
    .line 2462
    .end local v5    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    const-string/jumbo v8, " ]"

    #@33
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 2463
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@3f
    .line 2466
    const/4 v8, 0x0

    #@40
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@42
    .line 2467
    iput v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@44
    .line 2470
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_1

    #@4c
    .line 2471
    const-string/jumbo v8, "PerformBackupTask"

    #@4f
    const-string/jumbo v9, "Backup begun with an empty queue - nothing to do."

    #@52
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 2472
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@57
    const-string/jumbo v9, "queue empty at begin"

    #@5a
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@5d
    .line 2473
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@5f
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@62
    .line 2474
    return-void

    #@63
    .line 2480
    :cond_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@68
    move-result-object v8

    #@69
    check-cast v8, Ljava/util/ArrayList;

    #@6b
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@6d
    .line 2486
    const/4 v2, 0x0

    #@6e
    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@73
    move-result v8

    #@74
    if-ge v2, v8, :cond_2

    #@76
    .line 2487
    const-string/jumbo v9, "@pm@"

    #@79
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v8

    #@7f
    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@81
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@83
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v8

    #@87
    if-eqz v8, :cond_7

    #@89
    .line 2491
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@8e
    .line 2496
    :cond_2
    const-string/jumbo v8, "PerformBackupTask"

    #@91
    new-instance v9, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v10, "Beginning backup of "

    #@99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v10

    #@a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v9

    #@a7
    const-string/jumbo v10, " targets"

    #@aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v9

    #@b2
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    .line 2498
    new-instance v4, Ljava/io/File;

    #@b7
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@b9
    const-string/jumbo v9, "@pm@"

    #@bc
    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@bf
    .line 2500
    .local v4, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@c1
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@c4
    move-result-object v7

    #@c5
    .line 2501
    .local v7, "transportName":Ljava/lang/String;
    const/16 v8, 0xb05

    #@c7
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@ca
    .line 2504
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@cc
    if-nez v8, :cond_3

    #@ce
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@d1
    move-result-wide v8

    #@d2
    const-wide/16 v10, 0x0

    #@d4
    cmp-long v8, v8, v10

    #@d6
    if-gtz v8, :cond_3

    #@d8
    .line 2505
    const-string/jumbo v8, "PerformBackupTask"

    #@db
    const-string/jumbo v9, "Initializing (wiping) backup state and transport storage"

    #@de
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 2506
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e3
    new-instance v9, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v10, "initializing transport "

    #@eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v9

    #@ef
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@fa
    .line 2507
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fc
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@fe
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@101
    .line 2508
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@103
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    #@106
    move-result v8

    #@107
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@109
    .line 2510
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10b
    new-instance v9, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v10, "transport.initializeDevice() == "

    #@113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v9

    #@117
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v9

    #@121
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@124
    .line 2511
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@126
    if-nez v8, :cond_8

    #@128
    .line 2512
    const/4 v8, 0x0

    #@129
    new-array v8, v8, [Ljava/lang/Object;

    #@12b
    const/16 v9, 0xb0b

    #@12d
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@130
    .line 2524
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@132
    if-nez v8, :cond_4

    #@134
    .line 2525
    new-instance v3, Lcom/android/server/backup/PackageManagerBackupAgent;

    #@136
    .line 2526
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@138
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@13b
    move-result-object v8

    #@13c
    .line 2525
    invoke-direct {v3, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    #@13f
    .line 2527
    .local v3, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string/jumbo v8, "@pm@"

    #@142
    .line 2528
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    #@145
    move-result-object v9

    #@146
    invoke-static {v9}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    #@149
    move-result-object v9

    #@14a
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@14c
    .line 2527
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    #@14f
    move-result v8

    #@150
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@152
    .line 2529
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@154
    new-instance v9, Ljava/lang/StringBuilder;

    #@156
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@159
    const-string/jumbo v10, "PMBA invoke: "

    #@15c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v9

    #@160
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@162
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@165
    move-result-object v9

    #@166
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v9

    #@16a
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@16d
    .line 2534
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16f
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@171
    const/4 v9, 0x7

    #@172
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@175
    .line 2537
    .end local v3    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_4
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@177
    const/16 v9, -0x3e9

    #@179
    if-ne v8, v9, :cond_5

    #@17b
    .line 2541
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@17d
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@180
    move-result-object v8

    #@181
    const/16 v9, 0xb0a

    #@183
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@186
    .line 2551
    :cond_5
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@188
    new-instance v9, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18d
    const-string/jumbo v10, "exiting prelim: "

    #@190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v9

    #@194
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@199
    move-result-object v9

    #@19a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v9

    #@19e
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1a1
    .line 2552
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1a3
    if-eqz v8, :cond_6

    #@1a5
    .line 2555
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a7
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@1a9
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@1ac
    .line 2556
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1ae
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@1b1
    .line 2453
    .end local v7    # "transportName":Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    #@1b2
    .line 2486
    .end local v4    # "pmState":Ljava/io/File;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@1b4
    goto/16 :goto_1

    #@1b6
    .line 2514
    .restart local v4    # "pmState":Ljava/io/File;
    .restart local v7    # "transportName":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string/jumbo v8, "(initialize)"

    #@1b9
    const/16 v9, 0xb06

    #@1bb
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@1be
    .line 2515
    const-string/jumbo v8, "PerformBackupTask"

    #@1c1
    const-string/jumbo v9, "Transport error in initializeDevice()"

    #@1c4
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c7
    goto/16 :goto_2

    #@1c9
    .line 2543
    .end local v7    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1ca
    .line 2544
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "PerformBackupTask"

    #@1cd
    const-string/jumbo v9, "Error in backup thread"

    #@1d0
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d3
    .line 2545
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d5
    new-instance v9, Ljava/lang/StringBuilder;

    #@1d7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1da
    const-string/jumbo v10, "Exception in backup thread: "

    #@1dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v9

    #@1e1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v9

    #@1e5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e8
    move-result-object v9

    #@1e9
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1ec
    .line 2546
    const/16 v8, -0x3e8

    #@1ee
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f0
    .line 2551
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f2
    new-instance v9, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v10, "exiting prelim: "

    #@1fa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v9

    #@1fe
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@200
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@203
    move-result-object v9

    #@204
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v9

    #@208
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@20b
    .line 2552
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@20d
    if-eqz v8, :cond_6

    #@20f
    .line 2555
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@211
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@213
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@216
    .line 2556
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@218
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@21b
    goto :goto_3

    #@21c
    .line 2547
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@21d
    .line 2551
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@21f
    new-instance v10, Ljava/lang/StringBuilder;

    #@221
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@224
    const-string/jumbo v11, "exiting prelim: "

    #@227
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v10

    #@22b
    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@22d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@230
    move-result-object v10

    #@231
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@234
    move-result-object v10

    #@235
    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@238
    .line 2552
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@23a
    if-eqz v9, :cond_9

    #@23c
    .line 2555
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23e
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@240
    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@243
    .line 2556
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@245
    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@248
    .line 2547
    :cond_9
    throw v8
.end method

.method clearAgentState()V
    .locals 5

    #@0
    .prologue
    .line 3082
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    #@9
    .line 3083
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@b
    if-eqz v2, :cond_1

    #@d
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@12
    .line 3084
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@14
    if-eqz v2, :cond_2

    #@16
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@18
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1b
    .line 3085
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d
    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 3089
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@27
    .line 3090
    const/4 v2, 0x0

    #@28
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@2a
    const/4 v2, 0x0

    #@2b
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@2d
    const/4 v2, 0x0

    #@2e
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    monitor-exit v3

    #@31
    .line 3094
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@33
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 3095
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "unbinding "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@47
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@54
    .line 3097
    :try_start_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    #@59
    move-result-object v2

    #@5a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@5c
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5e
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@61
    .line 3081
    :cond_3
    :goto_3
    return-void

    #@62
    .line 3085
    :catchall_0
    move-exception v2

    #@63
    monitor-exit v3

    #@64
    throw v2

    #@65
    .line 3098
    :catch_0
    move-exception v0

    #@66
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@67
    .line 3084
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@68
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    #@69
    .line 3083
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@6a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6b
    .line 3082
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    #@6c
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method clearMetadata()V
    .locals 3

    #@0
    .prologue
    .line 2730
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@4
    const-string/jumbo v2, "@pm@"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 2731
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@13
    .line 2729
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    #@0
    .prologue
    .line 2432
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-getcom_android_server_backup_BackupManagerService$BackupStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@6
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 2431
    :goto_0
    return-void

    #@10
    .line 2434
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->beginBackup()V

    #@13
    goto :goto_0

    #@14
    .line 2438
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    #@17
    goto :goto_0

    #@18
    .line 2442
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@1a
    if-nez v0, :cond_0

    #@1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    #@1f
    .line 2446
    :goto_1
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@22
    goto :goto_0

    #@23
    .line 2444
    :cond_0
    const-string/jumbo v0, "PerformBackupTask"

    #@26
    const-string/jumbo v1, "Duplicate finish"

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_1

    #@2d
    .line 2432
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    #@0
    .prologue
    .line 3105
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "executeNextState => "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@19
    .line 3106
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1b
    .line 3107
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1f
    const/16 v2, 0x14

    #@21
    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@24
    move-result-object v0

    #@25
    .line 3108
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@29
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@2c
    .line 3102
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2807
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2805
    :goto_0
    return-void

    #@4
    .line 2808
    :catch_0
    move-exception v0

    #@5
    .line 2809
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PerformBackupTask"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error conveying failure to "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@16
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0
.end method

.method finalizeBackup()V
    .locals 6

    #@0
    .prologue
    .line 2683
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    const-string/jumbo v2, "finishing"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@8
    .line 2689
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@e
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 2696
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    iget-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-nez v1, :cond_1

    #@1e
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@20
    if-nez v1, :cond_1

    #@22
    .line 2697
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@24
    const-string/jumbo v2, "success; recording token"

    #@27
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2a
    .line 2699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@2e
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    #@31
    move-result-wide v2

    #@32
    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@34
    .line 2700
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@36
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 2711
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3b
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@3d
    monitor-enter v2

    #@3e
    .line 2712
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40
    const/4 v3, 0x0

    #@41
    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@43
    .line 2713
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@45
    const/16 v3, -0x3e9

    #@47
    if-ne v1, v3, :cond_2

    #@49
    .line 2715
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearMetadata()V

    #@4c
    .line 2717
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4e
    const-string/jumbo v3, "init required; rerunning"

    #@51
    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@54
    .line 2718
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@56
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->backupNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    :cond_2
    monitor-exit v2

    #@5a
    .line 2723
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5c
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    #@5f
    .line 2724
    const-string/jumbo v1, "BackupManagerService"

    #@62
    const-string/jumbo v2, "Backup pass finished."

    #@65
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 2725
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6a
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@6c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@6f
    .line 2682
    return-void

    #@70
    .line 2690
    :cond_3
    const-string/jumbo v1, "PerformBackupTask"

    #@73
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v3, "Unable to remove backup journal file "

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    goto :goto_0

    #@8d
    .line 2701
    :catch_0
    move-exception v0

    #@8e
    .line 2704
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@90
    const-string/jumbo v2, "transport threw returning token"

    #@93
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@96
    goto :goto_1

    #@97
    .line 2711
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@98
    monitor-exit v2

    #@99
    throw v1
.end method

.method public handleTimeout()V
    .locals 3

    #@0
    .prologue
    .line 3043
    const-string/jumbo v0, "PerformBackupTask"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Timeout backing up "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

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
    .line 3044
    const/4 v0, 0x2

    #@1f
    new-array v0, v0, [Ljava/lang/Object;

    #@21
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@23
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v1, v0, v2

    #@28
    .line 3045
    const-string/jumbo v1, "timeout"

    #@2b
    const/4 v2, 0x1

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 3044
    const/16 v1, 0xb07

    #@30
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@33
    .line 3046
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "timeout of "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@43
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@50
    .line 3047
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    #@53
    .line 3048
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@55
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@57
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@59
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@5c
    .line 3038
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2738
    const-string/jumbo v0, "PerformBackupTask"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "invokeAgentForBackup on "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2739
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "invoking "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@35
    .line 2741
    new-instance v0, Ljava/io/File;

    #@37
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@39
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@3e
    .line 2742
    new-instance v0, Ljava/io/File;

    #@40
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@42
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string/jumbo v3, ".data"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@5d
    .line 2743
    new-instance v0, Ljava/io/File;

    #@5f
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@61
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    const-string/jumbo v3, ".new"

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@78
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@7a
    .line 2746
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@7c
    .line 2747
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@7e
    .line 2748
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@80
    .line 2750
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@82
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@85
    move-result v4

    #@86
    .line 2755
    .local v4, "token":I
    :try_start_0
    const-string/jumbo v0, "@pm@"

    #@89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_0

    #@8f
    .line 2758
    new-instance v0, Landroid/content/pm/PackageInfo;

    #@91
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    #@94
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@96
    .line 2759
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@98
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9a
    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@9c
    .line 2766
    const/high16 v1, 0x18000000

    #@9e
    .line 2765
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@a4
    .line 2769
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@a6
    .line 2770
    const/high16 v1, 0x3c000000    # 0.0078125f

    #@a8
    .line 2769
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@ab
    move-result-object v0

    #@ac
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@ae
    .line 2774
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@b0
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@b3
    move-result v0

    #@b4
    if-nez v0, :cond_1

    #@b6
    .line 2775
    const-string/jumbo v0, "PerformBackupTask"

    #@b9
    new-instance v1, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v2, "SELinux restorecon failed on "

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v1

    #@cf
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 2778
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@d4
    .line 2779
    const/high16 v1, 0x3c000000    # 0.0078125f

    #@d6
    .line 2778
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@d9
    move-result-object v0

    #@da
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@dc
    .line 2784
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@de
    const-string/jumbo v1, "setting timeout"

    #@e1
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@e4
    .line 2785
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e6
    const-wide/16 v2, 0x7530

    #@e8
    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@eb
    .line 2786
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ed
    const-string/jumbo v1, "calling agent doBackup()"

    #@f0
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@f3
    .line 2787
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@f5
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@f7
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@f9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fb
    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@fd
    move-object v0, p2

    #@fe
    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@101
    .line 2801
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@103
    const-string/jumbo v1, "invoke success"

    #@106
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@109
    .line 2802
    return v7

    #@10a
    .line 2788
    :catch_0
    move-exception v6

    #@10b
    .line 2789
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PerformBackupTask"

    #@10e
    new-instance v1, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v2, "Error invoking for backup on "

    #@116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v1

    #@11a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    .line 2790
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@127
    new-instance v1, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v2, "exception: "

    #@12f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v1

    #@133
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@13e
    .line 2791
    const/4 v0, 0x2

    #@13f
    new-array v0, v0, [Ljava/lang/Object;

    #@141
    aput-object p1, v0, v7

    #@143
    .line 2792
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    const/4 v2, 0x1

    #@148
    aput-object v1, v0, v2

    #@14a
    .line 2791
    const/16 v1, 0xb07

    #@14c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@14f
    .line 2793
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    #@152
    .line 2794
    const/16 v0, -0x3eb

    #@154
    return v0
.end method

.method invokeNextAgent()V
    .locals 12

    #@0
    .prologue
    const/16 v11, -0x3ec

    #@2
    const/16 v10, -0x3eb

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    .line 2564
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@8
    .line 2565
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "invoke q="

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v8

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@27
    .line 2569
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 2571
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@31
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@34
    .line 2572
    return-void

    #@35
    .line 2576
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@3d
    .line 2577
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@42
    .line 2579
    const-string/jumbo v5, "PerformBackupTask"

    #@45
    new-instance v7, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v8, "starting key/value backup of "

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 2580
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5e
    new-instance v7, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v8, "launch agent for "

    #@66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@77
    .line 2588
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@79
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@7c
    move-result-object v5

    #@7d
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@7f
    .line 2589
    const/16 v8, 0x40

    #@81
    .line 2588
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@84
    move-result-object v5

    #@85
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@87
    .line 2590
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@89
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8b
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@8e
    move-result v5

    #@8f
    if-nez v5, :cond_5

    #@91
    .line 2594
    const-string/jumbo v5, "PerformBackupTask"

    #@94
    new-instance v7, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v8, "Package "

    #@9c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v7

    #@a0
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    .line 2595
    const-string/jumbo v8, " no longer supports backup; skipping"

    #@a9
    .line 2594
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 2596
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b6
    const-string/jumbo v7, "skipping - not eligible, completion is noop"

    #@b9
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@bc
    .line 2597
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@be
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c1
    .line 2648
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c3
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@c5
    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@c8
    .line 2652
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@ca
    if-eqz v5, :cond_4

    #@cc
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@ce
    .line 2654
    .local v3, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@d0
    .line 2658
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@d2
    if-ne v5, v10, :cond_2

    #@d4
    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d6
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@d8
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@db
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@dd
    .line 2663
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@df
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@e2
    move-result v5

    #@e3
    if-eqz v5, :cond_1

    #@e5
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@e7
    .line 2674
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@ea
    .line 2598
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_1
    return-void

    #@eb
    .line 2664
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_2
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@ed
    if-ne v5, v11, :cond_3

    #@ef
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@f1
    goto :goto_0

    #@f2
    .line 2670
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@f5
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@f7
    goto :goto_0

    #@f8
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@fa
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@fd
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@100
    goto :goto_1

    #@101
    .line 2601
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@103
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    #@106
    move-result v5

    #@107
    if-eqz v5, :cond_a

    #@109
    .line 2605
    const-string/jumbo v5, "PerformBackupTask"

    #@10c
    new-instance v7, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v8, "Package "

    #@114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v7

    #@118
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@11a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v7

    #@11e
    .line 2606
    const-string/jumbo v8, " requests full-data rather than key/value; skipping"

    #@121
    .line 2605
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v7

    #@125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v7

    #@129
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12c
    .line 2607
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@12e
    const-string/jumbo v7, "skipping - fullBackupOnly, completion is noop"

    #@131
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@134
    .line 2608
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@136
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@139
    .line 2648
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@13b
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@13d
    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@140
    .line 2652
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@142
    if-eqz v5, :cond_9

    #@144
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@146
    .line 2654
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@148
    .line 2658
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@14a
    if-ne v5, v10, :cond_7

    #@14c
    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14e
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@150
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@153
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@155
    .line 2663
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@157
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@15a
    move-result v5

    #@15b
    if-eqz v5, :cond_6

    #@15d
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@15f
    .line 2674
    :cond_6
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@162
    .line 2609
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_3
    return-void

    #@163
    .line 2664
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_7
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@165
    if-ne v5, v11, :cond_8

    #@167
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@169
    goto :goto_2

    #@16a
    .line 2670
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@16d
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@16f
    goto :goto_2

    #@170
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@172
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@175
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@178
    goto :goto_3

    #@179
    .line 2612
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@17b
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17d
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@17f
    const/high16 v7, 0x200000

    #@181
    and-int/2addr v5, v7

    #@182
    if-eqz v5, :cond_f

    #@184
    .line 2616
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@186
    const-string/jumbo v7, "skipping - stopped"

    #@189
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@18c
    .line 2617
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@18e
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@191
    .line 2648
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@193
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@195
    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@198
    .line 2652
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@19a
    if-eqz v5, :cond_e

    #@19c
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@19e
    .line 2654
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@1a0
    .line 2658
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1a2
    if-ne v5, v10, :cond_c

    #@1a4
    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a6
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@1a8
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@1ab
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1ad
    .line 2663
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@1af
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@1b2
    move-result v5

    #@1b3
    if-eqz v5, :cond_b

    #@1b5
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1b7
    .line 2674
    :cond_b
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@1ba
    .line 2618
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_5
    return-void

    #@1bb
    .line 2664
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_c
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1bd
    if-ne v5, v11, :cond_d

    #@1bf
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1c1
    goto :goto_4

    #@1c2
    .line 2670
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@1c5
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1c7
    goto :goto_4

    #@1c8
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1ca
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@1cd
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1d0
    goto :goto_5

    #@1d1
    .line 2621
    :cond_f
    const/4 v0, 0x0

    #@1d2
    .line 2623
    .local v0, "agent":Landroid/app/IBackupAgent;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d4
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1d6
    new-instance v7, Landroid/os/WorkSource;

    #@1d8
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1da
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1dc
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1de
    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    #@1e1
    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@1e4
    .line 2624
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e6
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1e8
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1ea
    .line 2625
    const/4 v8, 0x0

    #@1eb
    .line 2624
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@1ee
    move-result-object v0

    #@1ef
    .line 2626
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1f1
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f6
    const-string/jumbo v8, "agent bound; a? = "

    #@1f9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v8

    #@1fd
    if-eqz v0, :cond_11

    #@1ff
    const/4 v5, 0x1

    #@200
    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@203
    move-result-object v5

    #@204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v5

    #@208
    invoke-virtual {v7, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@20b
    .line 2627
    if-eqz v0, :cond_12

    #@20d
    .line 2628
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@20f
    .line 2629
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@211
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@213
    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    #@216
    move-result v5

    #@217
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@219
    .line 2648
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_7
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@21b
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@21d
    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@220
    .line 2652
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@222
    if-eqz v5, :cond_16

    #@224
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@226
    .line 2654
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@228
    .line 2658
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@22a
    if-ne v5, v10, :cond_14

    #@22c
    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22e
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@230
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@233
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@235
    .line 2663
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@237
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@23a
    move-result v5

    #@23b
    if-eqz v5, :cond_10

    #@23d
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@23f
    .line 2674
    :cond_10
    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@242
    .line 2563
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_9
    return-void

    #@243
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_11
    move v5, v6

    #@244
    .line 2626
    goto :goto_6

    #@245
    .line 2635
    :cond_12
    const/16 v5, -0x3eb

    #@247
    :try_start_4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@249
    goto :goto_7

    #@24a
    .line 2637
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_0
    move-exception v2

    #@24b
    .line 2639
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_5
    const-string/jumbo v5, "PerformBackupTask"

    #@24e
    const-string/jumbo v7, "error in bind/backup"

    #@251
    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@254
    .line 2640
    const/16 v5, -0x3eb

    #@256
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@258
    .line 2641
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@25a
    const-string/jumbo v7, "agent SE"

    #@25d
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@260
    goto :goto_7

    #@261
    .line 2643
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@262
    .line 2644
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v5, "PerformBackupTask"

    #@265
    const-string/jumbo v7, "Package does not exist; skipping"

    #@268
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26b
    .line 2645
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@26d
    const-string/jumbo v7, "no such package"

    #@270
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@273
    .line 2646
    const/16 v5, -0x3ec

    #@275
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@277
    .line 2648
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@279
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@27b
    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@27e
    .line 2652
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@280
    if-eqz v5, :cond_19

    #@282
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@284
    .line 2654
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@286
    .line 2658
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@288
    if-ne v5, v10, :cond_17

    #@28a
    .line 2661
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@28c
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@28e
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@291
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@293
    .line 2663
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@295
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@298
    move-result v5

    #@299
    if-eqz v5, :cond_13

    #@29b
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@29d
    .line 2674
    :cond_13
    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@2a0
    goto :goto_9

    #@2a1
    .line 2664
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2a3
    if-ne v5, v11, :cond_15

    #@2a5
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2a7
    goto :goto_8

    #@2a8
    .line 2670
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@2ab
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2ad
    goto :goto_8

    #@2ae
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b0
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@2b3
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2b6
    goto :goto_9

    #@2b7
    .line 2664
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_17
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2b9
    if-ne v5, v11, :cond_18

    #@2bb
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2bd
    goto :goto_a

    #@2be
    .line 2670
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@2c1
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2c3
    goto :goto_a

    #@2c4
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_19
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c6
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@2c9
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2cc
    goto/16 :goto_9

    #@2ce
    .line 2647
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    #@2cf
    .line 2648
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2d1
    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2d3
    invoke-virtual {v7, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@2d6
    .line 2652
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2d8
    if-eqz v7, :cond_1d

    #@2da
    .line 2653
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2dc
    .line 2654
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@2de
    .line 2658
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2e0
    if-ne v7, v10, :cond_1b

    #@2e2
    .line 2661
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e4
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2e6
    invoke-static {v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2e9
    .line 2662
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2eb
    .line 2663
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@2ed
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@2f0
    move-result v6

    #@2f1
    if-eqz v6, :cond_1a

    #@2f3
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2f5
    .line 2674
    :cond_1a
    :goto_b
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@2f8
    .line 2647
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_c
    throw v5

    #@2f9
    .line 2664
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1b
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2fb
    if-ne v7, v11, :cond_1c

    #@2fd
    .line 2667
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2ff
    goto :goto_b

    #@300
    .line 2670
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@303
    .line 2671
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@305
    goto :goto_b

    #@306
    .line 2677
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1d
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@308
    const-string/jumbo v7, "expecting completion/timeout callback"

    #@30b
    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@30e
    goto :goto_c
.end method

.method public operationComplete(I)V
    .locals 21
    .param p1, "unusedResult"    # I

    #@0
    .prologue
    .line 2895
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@4
    move-object/from16 v18, v0

    #@6
    if-nez v18, :cond_1

    #@8
    .line 2900
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@c
    move-object/from16 v18, v0

    #@e
    if-eqz v18, :cond_0

    #@10
    .line 2901
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@14
    move-object/from16 v18, v0

    #@16
    move-object/from16 v0, v18

    #@18
    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1a
    .line 2905
    .local v14, "pkg":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e
    move-object/from16 v18, v0

    #@20
    new-instance v19, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v20, "late opComplete; curPkg = "

    #@28
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v19

    #@2c
    move-object/from16 v0, v19

    #@2e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v19

    #@32
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v19

    #@36
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@39
    .line 2906
    return-void

    #@3a
    .line 2901
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v14, "[none]"

    #@3d
    .restart local v14    # "pkg":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 2909
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@42
    move-object/from16 v18, v0

    #@44
    move-object/from16 v0, v18

    #@46
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@48
    .line 2910
    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@4c
    move-object/from16 v18, v0

    #@4e
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    #@51
    move-result-wide v10

    #@52
    .line 2911
    .local v10, "filepos":J
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@56
    move-object/from16 v18, v0

    #@58
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5b
    move-result-object v8

    #@5c
    .line 2915
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@60
    move-object/from16 v18, v0

    #@62
    move-object/from16 v0, v18

    #@64
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@66
    move-object/from16 v18, v0

    #@68
    if-eqz v18, :cond_a

    #@6a
    .line 2916
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@6e
    move-object/from16 v18, v0

    #@70
    move-object/from16 v0, v18

    #@72
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@74
    move-object/from16 v18, v0

    #@76
    move-object/from16 v0, v18

    #@78
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@7a
    move/from16 v18, v0

    #@7c
    and-int/lit8 v18, v18, 0x1

    #@7e
    if-nez v18, :cond_a

    #@80
    .line 2917
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@84
    move-object/from16 v18, v0

    #@86
    .line 2918
    const/high16 v19, 0x10000000

    #@88
    .line 2917
    invoke-static/range {v18 .. v19}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@8b
    move-result-object v16

    #@8c
    .line 2919
    .local v16, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/app/backup/BackupDataInput;

    #@8e
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@91
    move-result-object v18

    #@92
    move-object/from16 v0, v18

    #@94
    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@97
    .line 2921
    .local v9, "in":Landroid/app/backup/BackupDataInput;
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@9a
    move-result v18

    #@9b
    if-eqz v18, :cond_9

    #@9d
    .line 2922
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    .line 2923
    .local v12, "key":Ljava/lang/String;
    if-eqz v12, :cond_3

    #@a3
    const/16 v18, 0x0

    #@a5
    move/from16 v0, v18

    #@a7
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@aa
    move-result v18

    #@ab
    const v19, 0xff00

    #@ae
    move/from16 v0, v18

    #@b0
    move/from16 v1, v19

    #@b2
    if-lt v0, v1, :cond_3

    #@b4
    .line 2925
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@b8
    move-object/from16 v18, v0

    #@ba
    new-instance v19, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v20, "Illegal backup key: "

    #@c2
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v19

    #@c6
    move-object/from16 v0, v19

    #@c8
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v19

    #@cc
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v19

    #@d0
    move-object/from16 v0, p0

    #@d2
    move-object/from16 v1, v18

    #@d4
    move-object/from16 v2, v19

    #@d6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    #@d9
    .line 2926
    move-object/from16 v0, p0

    #@db
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@dd
    move-object/from16 v18, v0

    #@df
    new-instance v19, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v20, "illegal key "

    #@e7
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v19

    #@eb
    move-object/from16 v0, v19

    #@ed
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v19

    #@f1
    const-string/jumbo v20, " from "

    #@f4
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v19

    #@f8
    move-object/from16 v0, v19

    #@fa
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v19

    #@fe
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v19

    #@102
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@105
    .line 2927
    const/16 v18, 0x2

    #@107
    move/from16 v0, v18

    #@109
    new-array v0, v0, [Ljava/lang/Object;

    #@10b
    move-object/from16 v18, v0

    #@10d
    const/16 v19, 0x0

    #@10f
    aput-object v15, v18, v19

    #@111
    .line 2928
    const-string/jumbo v19, "bad key"

    #@114
    const/16 v20, 0x1

    #@116
    aput-object v19, v18, v20

    #@118
    .line 2927
    const/16 v19, 0xb07

    #@11a
    move/from16 v0, v19

    #@11c
    move-object/from16 v1, v18

    #@11e
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@121
    .line 2929
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@125
    move-object/from16 v18, v0

    #@127
    move-object/from16 v0, v18

    #@129
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@12b
    move-object/from16 v18, v0

    #@12d
    const/16 v19, 0x7

    #@12f
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@132
    .line 2930
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@135
    .line 2937
    if-eqz v16, :cond_2

    #@137
    .line 2938
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@13a
    .line 2932
    :cond_2
    return-void

    #@13b
    .line 2934
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@13e
    goto/16 :goto_1

    #@140
    .line 2936
    .end local v12    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v18

    #@141
    .line 2937
    if-eqz v16, :cond_4

    #@143
    .line 2938
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@146
    .line 2936
    :cond_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@147
    .line 2945
    .end local v9    # "in":Landroid/app/backup/BackupDataInput;
    .end local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v5

    #@148
    .line 2950
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v18, "PerformBackupTask"

    #@14b
    new-instance v19, Ljava/lang/StringBuilder;

    #@14d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@150
    const-string/jumbo v20, "Unable to save widget state for "

    #@153
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v19

    #@157
    move-object/from16 v0, v19

    #@159
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v19

    #@15d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v19

    #@161
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@164
    .line 2952
    :try_start_5
    invoke-static {v8, v10, v11}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    #@167
    .line 2961
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    #@169
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16b
    move-object/from16 v18, v0

    #@16d
    move-object/from16 v0, v18

    #@16f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@171
    move-object/from16 v18, v0

    #@173
    const/16 v19, 0x7

    #@175
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@178
    .line 2962
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    #@17b
    .line 2963
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@17f
    move-object/from16 v18, v0

    #@181
    const-string/jumbo v19, "operation complete"

    #@184
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@187
    .line 2965
    const/4 v4, 0x0

    #@188
    .line 2966
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    #@18a
    move/from16 v0, v18

    #@18c
    move-object/from16 v1, p0

    #@18e
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@190
    .line 2968
    :try_start_6
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@194
    move-object/from16 v18, v0

    #@196
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    #@199
    move-result-wide v18

    #@19a
    move-wide/from16 v0, v18

    #@19c
    long-to-int v0, v0

    #@19d
    move/from16 v17, v0

    #@19f
    .line 2969
    .local v17, "size":I
    if-lez v17, :cond_c

    #@1a1
    .line 2970
    move-object/from16 v0, p0

    #@1a3
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1a5
    move/from16 v18, v0

    #@1a7
    if-nez v18, :cond_5

    #@1a9
    .line 2971
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@1ad
    move-object/from16 v18, v0

    #@1af
    .line 2972
    const/high16 v19, 0x10000000

    #@1b1
    .line 2971
    invoke-static/range {v18 .. v19}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1b4
    move-result-object v4

    #@1b5
    .line 2973
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b9
    move-object/from16 v18, v0

    #@1bb
    const-string/jumbo v19, "sending data to transport"

    #@1be
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1c1
    .line 2974
    move-object/from16 v0, p0

    #@1c3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@1c5
    move-object/from16 v18, v0

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1cb
    move-object/from16 v19, v0

    #@1cd
    move-object/from16 v0, v18

    #@1cf
    move-object/from16 v1, v19

    #@1d1
    invoke-interface {v0, v1, v4}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    #@1d4
    move-result v18

    #@1d5
    move/from16 v0, v18

    #@1d7
    move-object/from16 v1, p0

    #@1d9
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1db
    .line 2982
    .end local v4    # "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_5
    move-object/from16 v0, p0

    #@1dd
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1df
    move-object/from16 v18, v0

    #@1e1
    new-instance v19, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v20, "data delivered: "

    #@1e9
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v19

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1f1
    move/from16 v20, v0

    #@1f3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v19

    #@1f7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v19

    #@1fb
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1fe
    .line 2983
    move-object/from16 v0, p0

    #@200
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@202
    move/from16 v18, v0

    #@204
    if-nez v18, :cond_b

    #@206
    .line 2984
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20a
    move-object/from16 v18, v0

    #@20c
    const-string/jumbo v19, "finishing op on transport"

    #@20f
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@212
    .line 2985
    move-object/from16 v0, p0

    #@214
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@216
    move-object/from16 v18, v0

    #@218
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@21b
    move-result v18

    #@21c
    move/from16 v0, v18

    #@21e
    move-object/from16 v1, p0

    #@220
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@222
    .line 2986
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@226
    move-object/from16 v18, v0

    #@228
    new-instance v19, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    const-string/jumbo v20, "finished: "

    #@230
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v19

    #@234
    move-object/from16 v0, p0

    #@236
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@238
    move/from16 v20, v0

    #@23a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v19

    #@23e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@241
    move-result-object v19

    #@242
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@245
    .line 2995
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@247
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@249
    move/from16 v18, v0

    #@24b
    if-nez v18, :cond_e

    #@24d
    .line 2999
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@251
    move-object/from16 v18, v0

    #@253
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    #@256
    .line 3000
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@25a
    move-object/from16 v18, v0

    #@25c
    move-object/from16 v0, p0

    #@25e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@260
    move-object/from16 v19, v0

    #@262
    invoke-virtual/range {v18 .. v19}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@265
    .line 3001
    const/16 v18, 0x2

    #@267
    move/from16 v0, v18

    #@269
    new-array v0, v0, [Ljava/lang/Object;

    #@26b
    move-object/from16 v18, v0

    #@26d
    const/16 v19, 0x0

    #@26f
    aput-object v15, v18, v19

    #@271
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@274
    move-result-object v19

    #@275
    const/16 v20, 0x1

    #@277
    aput-object v19, v18, v20

    #@279
    const/16 v19, 0xb08

    #@27b
    move/from16 v0, v19

    #@27d
    move-object/from16 v1, v18

    #@27f
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@282
    .line 3002
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@286
    move-object/from16 v18, v0

    #@288
    move-object/from16 v0, v18

    #@28a
    invoke-virtual {v0, v15}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@28d
    .line 3018
    :goto_4
    if-eqz v4, :cond_7

    #@28f
    :try_start_7
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@292
    .line 3022
    .end local v17    # "size":I
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    #@294
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@296
    move/from16 v18, v0

    #@298
    if-eqz v18, :cond_8

    #@29a
    .line 3023
    move-object/from16 v0, p0

    #@29c
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@29e
    move/from16 v18, v0

    #@2a0
    const/16 v19, -0x3ea

    #@2a2
    move/from16 v0, v18

    #@2a4
    move/from16 v1, v19

    #@2a6
    if-ne v0, v1, :cond_11

    #@2a8
    .line 3026
    :cond_8
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@2ac
    move-object/from16 v18, v0

    #@2ae
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    #@2b1
    move-result v18

    #@2b2
    if-eqz v18, :cond_10

    #@2b4
    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2b6
    .line 3034
    .local v13, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_6
    move-object/from16 v0, p0

    #@2b8
    invoke-virtual {v0, v13}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@2bb
    .line 2892
    return-void

    #@2bc
    .line 2937
    .end local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v9    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    if-eqz v16, :cond_a

    #@2be
    .line 2938
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    #@2c1
    .line 2944
    .end local v9    # "in":Landroid/app/backup/BackupDataInput;
    .end local v16    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object/from16 v0, p0

    #@2c3
    invoke-direct {v0, v8, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@2c6
    goto/16 :goto_2

    #@2c8
    .line 2953
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    #@2c9
    .line 2954
    .local v7, "ee":Landroid/system/ErrnoException;
    const-string/jumbo v18, "PerformBackupTask"

    #@2cc
    const-string/jumbo v19, "Unable to roll back!"

    #@2cf
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d2
    goto/16 :goto_2

    #@2d4
    .line 2987
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "ee":Landroid/system/ErrnoException;
    .restart local v17    # "size":I
    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    #@2d6
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2d8
    move/from16 v18, v0

    #@2da
    const/16 v19, -0x3ea

    #@2dc
    move/from16 v0, v18

    #@2de
    move/from16 v1, v19

    #@2e0
    if-ne v0, v1, :cond_6

    #@2e2
    .line 2988
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e6
    move-object/from16 v18, v0

    #@2e8
    const-string/jumbo v19, "transport rejected package"

    #@2eb
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@2ee
    goto/16 :goto_3

    #@2f0
    .line 3013
    .end local v17    # "size":I
    :catch_2
    move-exception v6

    #@2f1
    .line 3014
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v18, "PerformBackupTask"

    #@2f4
    new-instance v19, Ljava/lang/StringBuilder;

    #@2f6
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2f9
    const-string/jumbo v20, "Transport error backing up "

    #@2fc
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v19

    #@300
    move-object/from16 v0, v19

    #@302
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v19

    #@306
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@309
    move-result-object v19

    #@30a
    move-object/from16 v0, v18

    #@30c
    move-object/from16 v1, v19

    #@30e
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@311
    .line 3015
    const/16 v18, 0xb06

    #@313
    move/from16 v0, v18

    #@315
    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@318
    .line 3016
    const/16 v18, -0x3e8

    #@31a
    move/from16 v0, v18

    #@31c
    move-object/from16 v1, p0

    #@31e
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@320
    .line 3018
    if-eqz v4, :cond_7

    #@322
    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    #@325
    goto/16 :goto_5

    #@327
    :catch_3
    move-exception v5

    #@328
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@32a
    .line 2992
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "size":I
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    #@32c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@32e
    move-object/from16 v18, v0

    #@330
    const-string/jumbo v19, "no data to send"

    #@333
    invoke-virtual/range {v18 .. v19}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@336
    goto/16 :goto_3

    #@338
    .line 3017
    .end local v4    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "size":I
    :catchall_1
    move-exception v18

    #@339
    .line 3018
    if-eqz v4, :cond_d

    #@33b
    :try_start_d
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    #@33e
    .line 3017
    :cond_d
    :goto_7
    throw v18

    #@33f
    .line 3003
    .restart local v17    # "size":I
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    #@341
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@343
    move/from16 v18, v0

    #@345
    const/16 v19, -0x3ea

    #@347
    move/from16 v0, v18

    #@349
    move/from16 v1, v19

    #@34b
    if-ne v0, v1, :cond_f

    #@34d
    .line 3006
    move-object/from16 v0, p0

    #@34f
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@351
    move-object/from16 v18, v0

    #@353
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    #@356
    .line 3007
    move-object/from16 v0, p0

    #@358
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@35a
    move-object/from16 v18, v0

    #@35c
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    #@35f
    .line 3008
    const-string/jumbo v18, "Transport rejected"

    #@362
    move-object/from16 v0, v18

    #@364
    invoke-static {v15, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    #@367
    goto/16 :goto_4

    #@369
    .line 3011
    :cond_f
    const/16 v18, 0xb06

    #@36b
    move/from16 v0, v18

    #@36d
    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@370
    goto/16 :goto_4

    #@372
    .line 3018
    :catch_4
    move-exception v5

    #@373
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@375
    .end local v5    # "e":Ljava/io/IOException;
    .end local v17    # "size":I
    :catch_5
    move-exception v5

    #@376
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_7

    #@377
    .line 3026
    .end local v5    # "e":Ljava/io/IOException;
    :cond_10
    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@379
    .restart local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_6

    #@37b
    .line 3030
    .end local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@37e
    .line 3031
    sget-object v13, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@380
    .restart local v13    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_6
.end method

.method revertAndEndBackup()V
    .locals 7

    #@0
    .prologue
    .line 3053
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    const-string/jumbo v6, "transport error; reverting"

    #@5
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@8
    .line 3059
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@a
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v0

    #@e
    .line 3064
    .local v0, "delay":J
    :goto_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    #@15
    .line 3066
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@17
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    .local v4, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@27
    .line 3067
    .local v3, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    iget-object v6, v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2b
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2e
    goto :goto_1

    #@2f
    .line 3060
    .end local v0    # "delay":J
    .end local v3    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v4    # "request$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@30
    .line 3061
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PerformBackupTask"

    #@33
    const-string/jumbo v6, "Unable to contact transport for recommended backoff"

    #@36
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 3062
    const-wide/16 v0, 0x0

    #@3b
    .restart local v0    # "delay":J
    goto :goto_0

    #@3c
    .line 3051
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
