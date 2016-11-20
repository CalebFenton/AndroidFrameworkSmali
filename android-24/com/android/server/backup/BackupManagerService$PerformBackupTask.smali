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
.field private static final synthetic -com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I = null

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

.field mObserver:Landroid/app/backup/IBackupObserver;

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

.field mPendingFullBackups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$BackupStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p8, "userInitiated"    # Z
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
            "Landroid/app/backup/IBackupObserver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2656
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .local p7, "pendingFullBackups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2659
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@7
    .line 2660
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@9
    .line 2661
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@b
    .line 2662
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@d
    .line 2663
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@f
    .line 2664
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    #@11
    .line 2666
    new-instance v0, Ljava/io/File;

    #@13
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    #@15
    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@1a
    .line 2668
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1e
    .line 2669
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@21
    .line 2671
    const-string/jumbo v0, "STATE => INITIAL"

    #@24
    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@27
    .line 2658
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 3122
    :try_start_0
    const-string/jumbo v5, "SHA-1"

    #@3
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v3

    #@7
    .line 3123
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 3129
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    #@d
    array-length v5, v0

    #@e
    mul-int/lit8 v5, v5, 0x2

    #@10
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@13
    .line 3130
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    array-length v5, v0

    #@15
    if-ge v2, v5, :cond_0

    #@17
    .line 3131
    aget-byte v5, v0, v2

    #@19
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 3130
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3124
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    #@24
    .line 3125
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v5, "PerformBackupTask"

    #@27
    const-string/jumbo v6, "Unable to use SHA-1!"

    #@2a
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 3126
    const-string/jumbo v5, "00"

    #@30
    return-object v5

    #@31
    .line 3133
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
    .line 3140
    const/16 v16, 0x0

    #@2
    .line 3139
    move-object/from16 v0, p2

    #@4
    move/from16 v1, v16

    #@6
    invoke-static {v0, v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    #@9
    move-result-object v15

    #@a
    .line 3142
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
    .line 3143
    .local v14, "widgetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    #@34
    move-result v11

    #@35
    .line 3152
    .local v11, "priorStateExists":Z
    if-nez v11, :cond_0

    #@37
    if-nez v15, :cond_0

    #@39
    .line 3154
    return-void

    #@3a
    .line 3161
    :cond_0
    const/4 v8, 0x0

    #@3b
    .line 3162
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v15, :cond_a

    #@3d
    .line 3163
    move-object/from16 v0, p0

    #@3f
    invoke-direct {v0, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    .line 3164
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v11, :cond_a

    #@45
    .line 3166
    const/16 v17, 0x0

    #@47
    const/4 v2, 0x0

    #@48
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    #@49
    .line 3167
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@4b
    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    #@4e
    .line 3168
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
    .line 3170
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
    .line 3171
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
    .line 3172
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
    .line 3174
    return-void

    #@bf
    .line 3179
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
    .line 3180
    .local v9, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v15, :cond_14

    #@c8
    .line 3181
    const/16 v17, 0x0

    #@ca
    const/4 v4, 0x0

    #@cb
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    #@cc
    .line 3182
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    #@ce
    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@d1
    .line 3183
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
    .line 3185
    .local v13, "stateOut":Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@d9
    .line 3186
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
    .line 3188
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
    .line 3189
    array-length v0, v15

    #@148
    move/from16 v16, v0

    #@14a
    move/from16 v0, v16

    #@14c
    invoke-virtual {v9, v15, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@14f
    .line 3137
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    :goto_c
    return-void

    #@150
    .line 3192
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
    .line 3193
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    #@15f
    goto :goto_c

    #@160
    .line 3186
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
    .line 3171
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
    .line 3408
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@5
    .line 3409
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@a
    .line 3410
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    #@d
    .line 3412
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
    .line 3407
    return-void

    #@1b
    .line 3412
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1d
    goto :goto_0
.end method

.method beginBackup()V
    .locals 13

    #@0
    .prologue
    const/16 v12, -0x3e8

    #@2
    const/4 v10, 0x0

    #@3
    .line 2701
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    #@8
    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    const/16 v8, 0x100

    #@c
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 2703
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "beginBackup: ["

    #@12
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 2704
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@17
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v6

    #@1b
    .local v6, "req$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_0

    #@21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@27
    .line 2705
    .local v5, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v8, 0x20

    #@29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 2706
    iget-object v8, v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    goto :goto_0

    #@32
    .line 2708
    .end local v5    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    const-string/jumbo v8, " ]"

    #@35
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 2709
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@41
    .line 2712
    const/4 v8, 0x0

    #@42
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@44
    .line 2713
    iput v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@46
    .line 2716
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_1

    #@4e
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_1

    #@56
    .line 2717
    const-string/jumbo v8, "PerformBackupTask"

    #@59
    const-string/jumbo v9, "Backup begun with an empty queue - nothing to do."

    #@5c
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 2718
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@61
    const-string/jumbo v9, "queue empty at begin"

    #@64
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@67
    .line 2719
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@69
    invoke-static {v8, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@6c
    .line 2720
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@6e
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@71
    .line 2721
    return-void

    #@72
    .line 2727
    :cond_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@77
    move-result-object v8

    #@78
    check-cast v8, Ljava/util/ArrayList;

    #@7a
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@7c
    .line 2733
    const/4 v2, 0x0

    #@7d
    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v8

    #@83
    if-ge v2, v8, :cond_2

    #@85
    .line 2734
    const-string/jumbo v9, "@pm@"

    #@88
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v8

    #@8e
    check-cast v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@90
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@92
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_7

    #@98
    .line 2738
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@9a
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@9d
    .line 2743
    :cond_2
    const-string/jumbo v8, "PerformBackupTask"

    #@a0
    new-instance v9, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v10, "Beginning backup of "

    #@a8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v9

    #@ac
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@ae
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@b1
    move-result v10

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    const-string/jumbo v10, " targets"

    #@b9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v9

    #@c1
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 2745
    new-instance v4, Ljava/io/File;

    #@c6
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@c8
    const-string/jumbo v9, "@pm@"

    #@cb
    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ce
    .line 2747
    .local v4, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@d0
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@d3
    move-result-object v7

    #@d4
    .line 2748
    .local v7, "transportName":Ljava/lang/String;
    const/16 v8, 0xb05

    #@d6
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@d9
    .line 2751
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@db
    if-nez v8, :cond_3

    #@dd
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@e0
    move-result-wide v8

    #@e1
    const-wide/16 v10, 0x0

    #@e3
    cmp-long v8, v8, v10

    #@e5
    if-gtz v8, :cond_3

    #@e7
    .line 2752
    const-string/jumbo v8, "PerformBackupTask"

    #@ea
    const-string/jumbo v9, "Initializing (wiping) backup state and transport storage"

    #@ed
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 2753
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f2
    new-instance v9, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v10, "initializing transport "

    #@fa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v9

    #@106
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@109
    .line 2754
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10b
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@10d
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@110
    .line 2755
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@112
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    #@115
    move-result v8

    #@116
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@118
    .line 2757
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11a
    new-instance v9, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v10, "transport.initializeDevice() == "

    #@122
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v9

    #@12c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v9

    #@130
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@133
    .line 2758
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@135
    if-nez v8, :cond_8

    #@137
    .line 2759
    const/4 v8, 0x0

    #@138
    new-array v8, v8, [Ljava/lang/Object;

    #@13a
    const/16 v9, 0xb0b

    #@13c
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@13f
    .line 2771
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@141
    if-nez v8, :cond_4

    #@143
    .line 2772
    new-instance v3, Lcom/android/server/backup/PackageManagerBackupAgent;

    #@145
    .line 2773
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@147
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@14a
    move-result-object v8

    #@14b
    .line 2772
    invoke-direct {v3, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    #@14e
    .line 2774
    .local v3, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string/jumbo v8, "@pm@"

    #@151
    .line 2775
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    #@154
    move-result-object v9

    #@155
    invoke-static {v9}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    #@158
    move-result-object v9

    #@159
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@15b
    .line 2774
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    #@15e
    move-result v8

    #@15f
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@161
    .line 2776
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@163
    new-instance v9, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v10, "PMBA invoke: "

    #@16b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v9

    #@16f
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@171
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v9

    #@175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v9

    #@179
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@17c
    .line 2781
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@17e
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@180
    const/4 v9, 0x7

    #@181
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@184
    .line 2784
    .end local v3    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_4
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@186
    const/16 v9, -0x3e9

    #@188
    if-ne v8, v9, :cond_5

    #@18a
    .line 2788
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@18c
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    #@18f
    move-result-object v8

    #@190
    const/16 v9, 0xb0a

    #@192
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@195
    .line 2798
    :cond_5
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@197
    new-instance v9, Ljava/lang/StringBuilder;

    #@199
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    const-string/jumbo v10, "exiting prelim: "

    #@19f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v9

    #@1a3
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v9

    #@1a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v9

    #@1ad
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1b0
    .line 2799
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1b2
    if-eqz v8, :cond_6

    #@1b4
    .line 2802
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b6
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@1b8
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@1bb
    .line 2804
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@1bd
    invoke-static {v8, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@1c0
    .line 2805
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1c2
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@1c5
    .line 2699
    .end local v7    # "transportName":Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    #@1c6
    .line 2733
    .end local v4    # "pmState":Ljava/io/File;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@1c8
    goto/16 :goto_1

    #@1ca
    .line 2761
    .restart local v4    # "pmState":Ljava/io/File;
    .restart local v7    # "transportName":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string/jumbo v8, "(initialize)"

    #@1cd
    const/16 v9, 0xb06

    #@1cf
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@1d2
    .line 2762
    const-string/jumbo v8, "PerformBackupTask"

    #@1d5
    const-string/jumbo v9, "Transport error in initializeDevice()"

    #@1d8
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1db
    goto/16 :goto_2

    #@1dd
    .line 2790
    .end local v7    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1de
    .line 2791
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "PerformBackupTask"

    #@1e1
    const-string/jumbo v9, "Error in backup thread"

    #@1e4
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e7
    .line 2792
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1e9
    new-instance v9, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v10, "Exception in backup thread: "

    #@1f1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v9

    #@1f5
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v9

    #@1f9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v9

    #@1fd
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@200
    .line 2793
    const/16 v8, -0x3e8

    #@202
    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@204
    .line 2798
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@206
    new-instance v9, Ljava/lang/StringBuilder;

    #@208
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@20b
    const-string/jumbo v10, "exiting prelim: "

    #@20e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v9

    #@212
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@214
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@217
    move-result-object v9

    #@218
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v9

    #@21c
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@21f
    .line 2799
    iget v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@221
    if-eqz v8, :cond_6

    #@223
    .line 2802
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@225
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@227
    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@22a
    .line 2804
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@22c
    invoke-static {v8, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@22f
    .line 2805
    sget-object v8, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@231
    invoke-virtual {p0, v8}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@234
    goto :goto_3

    #@235
    .line 2794
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@236
    .line 2798
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@238
    new-instance v10, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v11, "exiting prelim: "

    #@240
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v10

    #@244
    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@249
    move-result-object v10

    #@24a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24d
    move-result-object v10

    #@24e
    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@251
    .line 2799
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@253
    if-eqz v9, :cond_9

    #@255
    .line 2802
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@257
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@259
    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    #@25c
    .line 2804
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@25e
    invoke-static {v9, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@261
    .line 2805
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@263
    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@266
    .line 2794
    :cond_9
    throw v8
.end method

.method clearAgentState()V
    .locals 5

    #@0
    .prologue
    .line 3417
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
    .line 3418
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
    .line 3419
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
    .line 3420
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d
    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 3424
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    #@27
    .line 3425
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
    .line 3429
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@33
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 3430
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
    .line 3432
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
    .line 3416
    :cond_3
    :goto_3
    return-void

    #@62
    .line 3420
    :catchall_0
    move-exception v2

    #@63
    monitor-exit v3

    #@64
    throw v2

    #@65
    .line 3433
    :catch_0
    move-exception v0

    #@66
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@67
    .line 3419
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@68
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    #@69
    .line 3418
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@6a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6b
    .line 3417
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
    .line 3035
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@4
    const-string/jumbo v2, "@pm@"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a
    .line 3036
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@13
    .line 3034
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    #@0
    .prologue
    .line 2678
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-getcom-android-server-backup-BackupManagerService$BackupStateSwitchesValues()[I

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
    .line 2677
    :goto_0
    return-void

    #@10
    .line 2680
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->beginBackup()V

    #@13
    goto :goto_0

    #@14
    .line 2684
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    #@17
    goto :goto_0

    #@18
    .line 2688
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@1a
    if-nez v0, :cond_0

    #@1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    #@1f
    .line 2692
    :goto_1
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    #@22
    goto :goto_0

    #@23
    .line 2690
    :cond_0
    const-string/jumbo v0, "PerformBackupTask"

    #@26
    const-string/jumbo v1, "Duplicate finish"

    #@29
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_1

    #@2d
    .line 2678
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
    .line 3440
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
    .line 3441
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1b
    .line 3442
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
    .line 3443
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@29
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    #@2c
    .line 3437
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3112
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 3110
    :goto_0
    return-void

    #@4
    .line 3113
    :catch_0
    move-exception v0

    #@5
    .line 3114
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
    .locals 14

    #@0
    .prologue
    .line 2946
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    const-string/jumbo v2, "finishing"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@8
    .line 2952
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
    if-eqz v1, :cond_4

    #@14
    .line 2959
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    iget-wide v4, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@18
    const-wide/16 v12, 0x0

    #@1a
    cmp-long v1, v4, v12

    #@1c
    if-nez v1, :cond_1

    #@1e
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@20
    if-nez v1, :cond_1

    #@22
    .line 2960
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@24
    const-string/jumbo v2, "success; recording token"

    #@27
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2a
    .line 2962
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2c
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@2e
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    #@31
    move-result-wide v4

    #@32
    iput-wide v4, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    #@34
    .line 2963
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@36
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 2974
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3b
    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    #@3d
    monitor-enter v2

    #@3e
    .line 2975
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40
    const/4 v4, 0x0

    #@41
    iput-boolean v4, v1, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    #@43
    .line 2976
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@45
    const/16 v4, -0x3e9

    #@47
    if-ne v1, v4, :cond_2

    #@49
    .line 2979
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4b
    const-string/jumbo v4, "init required; rerunning"

    #@4e
    invoke-virtual {v1, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 2981
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@53
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@55
    invoke-static {v1, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap11(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    #@58
    move-result-object v11

    #@59
    .line 2982
    .local v11, "name":Ljava/lang/String;
    if-eqz v11, :cond_5

    #@5b
    .line 2983
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@5d
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    #@5f
    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 2994
    .end local v11    # "name":Ljava/lang/String;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearMetadata()V

    #@65
    .line 2995
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@67
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->backupNow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    :cond_2
    monitor-exit v2

    #@6b
    .line 2999
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@6d
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    #@70
    .line 3001
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@72
    if-nez v1, :cond_3

    #@74
    .line 3002
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@76
    if-eqz v1, :cond_3

    #@78
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_6

    #@80
    .line 3015
    :cond_3
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@82
    sparse-switch v1, :sswitch_data_0

    #@85
    .line 3024
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@87
    const/16 v2, -0x3e8

    #@89
    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@8c
    .line 3028
    :goto_3
    const-string/jumbo v1, "BackupManagerService"

    #@8f
    const-string/jumbo v2, "K/V backup pass finished."

    #@92
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 3030
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@97
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@99
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@9c
    .line 2945
    return-void

    #@9d
    .line 2953
    :cond_4
    const-string/jumbo v1, "PerformBackupTask"

    #@a0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v4, "Unable to remove backup journal file "

    #@a8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    #@ae
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto/16 :goto_0

    #@bb
    .line 2964
    :catch_0
    move-exception v9

    #@bc
    .line 2967
    .local v9, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@be
    const-string/jumbo v2, "transport threw returning token"

    #@c1
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@c4
    goto/16 :goto_1

    #@c6
    .line 2986
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string/jumbo v1, "PerformBackupTask"

    #@c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v5, "Couldn\'t find name of transport "

    #@d1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@d7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 2987
    const-string/jumbo v5, " for init"

    #@de
    .line 2986
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v4

    #@e6
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e9
    goto/16 :goto_2

    #@eb
    .line 2990
    .end local v11    # "name":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@ec
    .line 2991
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "PerformBackupTask"

    #@ef
    const-string/jumbo v4, "Failed to query transport name heading for init"

    #@f2
    invoke-static {v1, v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f5
    goto/16 :goto_2

    #@f7
    .line 2974
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@f8
    monitor-exit v2

    #@f9
    throw v1

    #@fa
    .line 3003
    :cond_6
    const-string/jumbo v1, "PerformBackupTask"

    #@fd
    new-instance v2, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v4, "Starting full backups for: "

    #@105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v2

    #@109
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@10b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v2

    #@113
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    .line 3004
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    #@118
    const/4 v1, 0x1

    #@119
    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@11c
    .line 3006
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@11e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v2

    #@124
    new-array v2, v2, [Ljava/lang/String;

    #@126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@129
    move-result-object v3

    #@12a
    check-cast v3, [Ljava/lang/String;

    #@12c
    .line 3008
    .local v3, "fullBackups":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@12e
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@130
    .line 3010
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@132
    iget-boolean v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    #@134
    .line 3008
    const/4 v2, 0x0

    #@135
    .line 3009
    const/4 v4, 0x0

    #@136
    const/4 v5, 0x0

    #@137
    .line 3008
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    #@13a
    .line 3012
    .local v0, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@13c
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@13e
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@141
    .line 3013
    new-instance v1, Ljava/lang/Thread;

    #@143
    const-string/jumbo v2, "full-transport-requested"

    #@146
    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@149
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@14c
    goto/16 :goto_3

    #@14e
    .line 3017
    .end local v0    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .end local v3    # "fullBackups":[Ljava/lang/String;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@150
    const/4 v2, 0x0

    #@151
    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@154
    goto/16 :goto_3

    #@156
    .line 3020
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@158
    const/16 v2, -0x3e8

    #@15a
    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    #@15d
    goto/16 :goto_3

    #@15f
    .line 3015
    nop

    #@160
    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleTimeout()V
    .locals 3

    #@0
    .prologue
    .line 3378
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
    .line 3379
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
    .line 3380
    const-string/jumbo v1, "timeout"

    #@2b
    const/4 v2, 0x1

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 3379
    const/16 v1, 0xb07

    #@30
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@33
    .line 3381
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
    .line 3382
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    #@53
    .line 3383
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@55
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@57
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@59
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@5c
    .line 3373
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
    .line 3043
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
    .line 3044
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
    .line 3046
    new-instance v0, Ljava/io/File;

    #@37
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    #@39
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@3e
    .line 3047
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
    .line 3048
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
    .line 3051
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@7c
    .line 3052
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@7e
    .line 3053
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@80
    .line 3055
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@82
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@85
    move-result v4

    #@86
    .line 3060
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
    .line 3063
    new-instance v0, Landroid/content/pm/PackageInfo;

    #@91
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    #@94
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@96
    .line 3064
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@98
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@9a
    .line 3070
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@9c
    .line 3071
    const/high16 v1, 0x18000000

    #@9e
    .line 3070
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    #@a4
    .line 3074
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@a6
    .line 3075
    const/high16 v1, 0x3c000000    # 0.0078125f

    #@a8
    .line 3074
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@ab
    move-result-object v0

    #@ac
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@ae
    .line 3079
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@b0
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@b3
    move-result v0

    #@b4
    if-nez v0, :cond_1

    #@b6
    .line 3080
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
    .line 3083
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@d4
    .line 3084
    const/high16 v1, 0x3c000000    # 0.0078125f

    #@d6
    .line 3083
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@d9
    move-result-object v0

    #@da
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    #@dc
    .line 3089
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@de
    const-string/jumbo v1, "setting timeout"

    #@e1
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@e4
    .line 3090
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e6
    const-wide/16 v2, 0x7530

    #@e8
    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@eb
    .line 3091
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ed
    const-string/jumbo v1, "calling agent doBackup()"

    #@f0
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@f3
    .line 3092
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
    .line 3106
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@103
    const-string/jumbo v1, "invoke success"

    #@106
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@109
    .line 3107
    return v7

    #@10a
    .line 3093
    :catch_0
    move-exception v6

    #@10b
    .line 3094
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
    .line 3095
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
    .line 3096
    const/4 v0, 0x2

    #@13f
    new-array v0, v0, [Ljava/lang/Object;

    #@141
    aput-object p1, v0, v7

    #@143
    .line 3097
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    const/4 v2, 0x1

    #@148
    aput-object v1, v0, v2

    #@14a
    .line 3096
    const/16 v1, 0xb07

    #@14c
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@14f
    .line 3098
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    #@152
    .line 3099
    const/16 v0, -0x3eb

    #@154
    return v0
.end method

.method invokeNextAgent()V
    .locals 13

    #@0
    .prologue
    const/16 v12, -0x7d2

    #@2
    const/16 v11, -0x3ec

    #@4
    const/4 v10, 0x0

    #@5
    const/16 v9, -0x3eb

    #@7
    const/4 v6, 0x0

    #@8
    .line 2813
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@a
    .line 2814
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "invoke q="

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@29
    .line 2818
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_0

    #@31
    .line 2820
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@33
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@36
    .line 2821
    return-void

    #@37
    .line 2825
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    #@3f
    .line 2826
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@44
    .line 2828
    const-string/jumbo v5, "PerformBackupTask"

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "starting key/value backup of "

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2829
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@60
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "launch agent for "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@6e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@79
    .line 2837
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@7b
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@7e
    move-result-object v5

    #@7f
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@81
    .line 2838
    const/16 v8, 0x40

    #@83
    .line 2837
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@86
    move-result-object v5

    #@87
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@89
    .line 2839
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@8b
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8d
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@90
    move-result v5

    #@91
    if-nez v5, :cond_5

    #@93
    .line 2843
    const-string/jumbo v5, "PerformBackupTask"

    #@96
    new-instance v7, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v8, "Package "

    #@9e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    .line 2844
    const-string/jumbo v8, " no longer supports backup; skipping"

    #@ab
    .line 2843
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    .line 2845
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b8
    const-string/jumbo v7, "skipping - not eligible, completion is noop"

    #@bb
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@be
    .line 2848
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@c0
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@c2
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@c4
    .line 2849
    const/16 v8, -0x7d1

    #@c6
    .line 2848
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@c9
    .line 2850
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@cb
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ce
    .line 2907
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@d0
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@d2
    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@d5
    .line 2911
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@d7
    if-eqz v5, :cond_4

    #@d9
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@db
    .line 2913
    .local v3, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@dd
    .line 2917
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@df
    if-ne v5, v9, :cond_2

    #@e1
    .line 2920
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e3
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@e5
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@e8
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@ea
    .line 2922
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@ec
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@ef
    move-result v5

    #@f0
    if-eqz v5, :cond_1

    #@f2
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@f4
    .line 2923
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@f6
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@f8
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@fa
    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@fd
    .line 2937
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@100
    .line 2851
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_1
    return-void

    #@101
    .line 2925
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_2
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@103
    if-ne v5, v11, :cond_3

    #@105
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@107
    .line 2929
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@109
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@10b
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@10d
    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@110
    goto :goto_0

    #@111
    .line 2933
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@114
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@116
    goto :goto_0

    #@117
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@119
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@11c
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@11f
    goto :goto_1

    #@120
    .line 2854
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@122
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    #@125
    move-result v5

    #@126
    if-eqz v5, :cond_a

    #@128
    .line 2858
    const-string/jumbo v5, "PerformBackupTask"

    #@12b
    new-instance v7, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v8, "Package "

    #@133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v7

    #@137
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v7

    #@13d
    .line 2859
    const-string/jumbo v8, " requests full-data rather than key/value; skipping"

    #@140
    .line 2858
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v7

    #@144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v7

    #@148
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14b
    .line 2860
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14d
    const-string/jumbo v7, "skipping - fullBackupOnly, completion is noop"

    #@150
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@153
    .line 2863
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@155
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@157
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@159
    .line 2864
    const/16 v8, -0x7d1

    #@15b
    .line 2863
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@15e
    .line 2865
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@160
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@163
    .line 2907
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@165
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@167
    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@16a
    .line 2911
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@16c
    if-eqz v5, :cond_9

    #@16e
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@170
    .line 2913
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@172
    .line 2917
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@174
    if-ne v5, v9, :cond_7

    #@176
    .line 2920
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@178
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@17a
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@17d
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@17f
    .line 2922
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@181
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@184
    move-result v5

    #@185
    if-eqz v5, :cond_6

    #@187
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@189
    .line 2923
    :cond_6
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@18b
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@18d
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@18f
    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@192
    .line 2937
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@195
    .line 2866
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_3
    return-void

    #@196
    .line 2925
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_7
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@198
    if-ne v5, v11, :cond_8

    #@19a
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@19c
    .line 2929
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@19e
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1a0
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1a2
    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@1a5
    goto :goto_2

    #@1a6
    .line 2933
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@1a9
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1ab
    goto :goto_2

    #@1ac
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1ae
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@1b1
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1b4
    goto :goto_3

    #@1b5
    .line 2869
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1b7
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b9
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    #@1bc
    move-result v5

    #@1bd
    if-eqz v5, :cond_f

    #@1bf
    .line 2873
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1c1
    const-string/jumbo v7, "skipping - stopped"

    #@1c4
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1c7
    .line 2874
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@1c9
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@1cb
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1cd
    .line 2875
    const/16 v8, -0x7d1

    #@1cf
    .line 2874
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@1d2
    .line 2876
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1d4
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d7
    .line 2907
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1d9
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@1db
    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@1de
    .line 2911
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1e0
    if-eqz v5, :cond_e

    #@1e2
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1e4
    .line 2913
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@1e6
    .line 2917
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1e8
    if-ne v5, v9, :cond_c

    #@1ea
    .line 2920
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1ec
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@1ee
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@1f1
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1f3
    .line 2922
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@1f5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@1f8
    move-result v5

    #@1f9
    if-eqz v5, :cond_b

    #@1fb
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@1fd
    .line 2923
    :cond_b
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@1ff
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@201
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@203
    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@206
    .line 2937
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@209
    .line 2877
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_5
    return-void

    #@20a
    .line 2925
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_c
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@20c
    if-ne v5, v11, :cond_d

    #@20e
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@210
    .line 2929
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@212
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@214
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@216
    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@219
    goto :goto_4

    #@21a
    .line 2933
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@21d
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@21f
    goto :goto_4

    #@220
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@222
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@225
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@228
    goto :goto_5

    #@229
    .line 2880
    :cond_f
    const/4 v0, 0x0

    #@22a
    .line 2882
    .local v0, "agent":Landroid/app/IBackupAgent;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22c
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@22e
    new-instance v7, Landroid/os/WorkSource;

    #@230
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@232
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@234
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@236
    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    #@239
    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@23c
    .line 2883
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@23e
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@240
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@242
    .line 2884
    const/4 v8, 0x0

    #@243
    .line 2883
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    #@246
    move-result-object v0

    #@247
    .line 2885
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@249
    new-instance v5, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    const-string/jumbo v8, "agent bound; a? = "

    #@251
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v8

    #@255
    if-eqz v0, :cond_11

    #@257
    const/4 v5, 0x1

    #@258
    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v5

    #@25c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25f
    move-result-object v5

    #@260
    invoke-virtual {v7, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@263
    .line 2886
    if-eqz v0, :cond_12

    #@265
    .line 2887
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@267
    .line 2888
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@269
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@26b
    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    #@26e
    move-result v5

    #@26f
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@271
    .line 2907
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_7
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@273
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@275
    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@278
    .line 2911
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@27a
    if-eqz v5, :cond_16

    #@27c
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@27e
    .line 2913
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@280
    .line 2917
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@282
    if-ne v5, v9, :cond_14

    #@284
    .line 2920
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@286
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@288
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@28b
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@28d
    .line 2922
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@28f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@292
    move-result v5

    #@293
    if-eqz v5, :cond_10

    #@295
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@297
    .line 2923
    :cond_10
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@299
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@29b
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@29d
    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@2a0
    .line 2937
    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@2a3
    .line 2812
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_9
    return-void

    #@2a4
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_11
    move v5, v6

    #@2a5
    .line 2885
    goto :goto_6

    #@2a6
    .line 2894
    :cond_12
    const/16 v5, -0x3eb

    #@2a8
    :try_start_4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2aa
    goto :goto_7

    #@2ab
    .line 2896
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_0
    move-exception v2

    #@2ac
    .line 2898
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_5
    const-string/jumbo v5, "PerformBackupTask"

    #@2af
    const-string/jumbo v7, "error in bind/backup"

    #@2b2
    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b5
    .line 2899
    const/16 v5, -0x3eb

    #@2b7
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2b9
    .line 2900
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2bb
    const-string/jumbo v7, "agent SE"

    #@2be
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@2c1
    goto :goto_7

    #@2c2
    .line 2902
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@2c3
    .line 2903
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v5, "PerformBackupTask"

    #@2c6
    const-string/jumbo v7, "Package does not exist; skipping"

    #@2c9
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2cc
    .line 2904
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ce
    const-string/jumbo v7, "no such package"

    #@2d1
    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2d4
    .line 2905
    const/16 v5, -0x3ec

    #@2d6
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@2d8
    .line 2907
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2da
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2dc
    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@2df
    .line 2911
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2e1
    if-eqz v5, :cond_19

    #@2e3
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2e5
    .line 2913
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@2e7
    .line 2917
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2e9
    if-ne v5, v9, :cond_17

    #@2eb
    .line 2920
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ed
    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2ef
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2f2
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2f4
    .line 2922
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@2f6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@2f9
    move-result v5

    #@2fa
    if-eqz v5, :cond_13

    #@2fc
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2fe
    .line 2923
    :cond_13
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@300
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@302
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@304
    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@307
    .line 2937
    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@30a
    goto :goto_9

    #@30b
    .line 2925
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@30d
    if-ne v5, v11, :cond_15

    #@30f
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@311
    .line 2929
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@313
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@315
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@317
    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@31a
    goto :goto_8

    #@31b
    .line 2933
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@31e
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@320
    goto :goto_8

    #@321
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@323
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@326
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@329
    goto/16 :goto_9

    #@32b
    .line 2925
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_17
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@32d
    if-ne v5, v11, :cond_18

    #@32f
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@331
    .line 2929
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@333
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@335
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@337
    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@33a
    goto :goto_a

    #@33b
    .line 2933
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@33e
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@340
    goto :goto_a

    #@341
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_19
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@343
    const-string/jumbo v6, "expecting completion/timeout callback"

    #@346
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@349
    goto/16 :goto_9

    #@34b
    .line 2906
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    #@34c
    .line 2907
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@34e
    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@350
    invoke-virtual {v7, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@353
    .line 2911
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@355
    if-eqz v7, :cond_1d

    #@357
    .line 2912
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@359
    .line 2913
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@35b
    .line 2917
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@35d
    if-ne v7, v9, :cond_1b

    #@35f
    .line 2920
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@361
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@363
    invoke-static {v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@366
    .line 2921
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@368
    .line 2922
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@36a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@36d
    move-result v6

    #@36e
    if-eqz v6, :cond_1a

    #@370
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@372
    .line 2923
    :cond_1a
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@374
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@376
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@378
    invoke-static {v6, v7, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@37b
    .line 2937
    :goto_b
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@37e
    .line 2906
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_c
    throw v5

    #@37f
    .line 2925
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1b
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@381
    if-ne v7, v11, :cond_1c

    #@383
    .line 2928
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@385
    .line 2929
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@387
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@389
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@38b
    invoke-static {v6, v7, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@38e
    goto :goto_b

    #@38f
    .line 2933
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@392
    .line 2934
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@394
    goto :goto_b

    #@395
    .line 2940
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1d
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@397
    const-string/jumbo v7, "expecting completion/timeout callback"

    #@39a
    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@39d
    goto :goto_c
.end method

.method public operationComplete(J)V
    .locals 28
    .param p1, "unusedResult"    # J

    #@0
    .prologue
    .line 3201
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@4
    move-object/from16 v23, v0

    #@6
    if-nez v23, :cond_1

    #@8
    .line 3206
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@c
    move-object/from16 v23, v0

    #@e
    if-eqz v23, :cond_0

    #@10
    .line 3207
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@14
    move-object/from16 v23, v0

    #@16
    move-object/from16 v0, v23

    #@18
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1a
    move-object/from16 v18, v0

    #@1c
    .line 3211
    .local v18, "pkg":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    move-object/from16 v23, v0

    #@22
    new-instance v26, Ljava/lang/StringBuilder;

    #@24
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v27, "late opComplete; curPkg = "

    #@2a
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v26

    #@2e
    move-object/from16 v0, v26

    #@30
    move-object/from16 v1, v18

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v26

    #@36
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v26

    #@3a
    move-object/from16 v0, v23

    #@3c
    move-object/from16 v1, v26

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@41
    .line 3212
    return-void

    #@42
    .line 3207
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v18, "[none]"

    #@45
    .restart local v18    # "pkg":Ljava/lang/String;
    goto :goto_0

    #@46
    .line 3215
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@4a
    move-object/from16 v23, v0

    #@4c
    move-object/from16 v0, v23

    #@4e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@50
    move-object/from16 v19, v0

    #@52
    .line 3216
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@56
    move-object/from16 v23, v0

    #@58
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    #@5b
    move-result-wide v12

    #@5c
    .line 3217
    .local v12, "filepos":J
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    #@60
    move-object/from16 v23, v0

    #@62
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@65
    move-result-object v11

    #@66
    .line 3221
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@6a
    move-object/from16 v23, v0

    #@6c
    move-object/from16 v0, v23

    #@6e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@70
    move-object/from16 v23, v0

    #@72
    if-eqz v23, :cond_a

    #@74
    .line 3222
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@78
    move-object/from16 v23, v0

    #@7a
    move-object/from16 v0, v23

    #@7c
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7e
    move-object/from16 v23, v0

    #@80
    move-object/from16 v0, v23

    #@82
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@84
    move/from16 v23, v0

    #@86
    and-int/lit8 v23, v23, 0x1

    #@88
    if-nez v23, :cond_a

    #@8a
    .line 3223
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@8e
    move-object/from16 v23, v0

    #@90
    .line 3224
    const/high16 v26, 0x10000000

    #@92
    .line 3223
    move-object/from16 v0, v23

    #@94
    move/from16 v1, v26

    #@96
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@99
    move-result-object v22

    #@9a
    .line 3225
    .local v22, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v15, Landroid/app/backup/BackupDataInput;

    #@9c
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9f
    move-result-object v23

    #@a0
    move-object/from16 v0, v23

    #@a2
    invoke-direct {v15, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a5
    .line 3227
    .local v15, "in":Landroid/app/backup/BackupDataInput;
    :goto_1
    :try_start_1
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@a8
    move-result v23

    #@a9
    if-eqz v23, :cond_9

    #@ab
    .line 3228
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@ae
    move-result-object v16

    #@af
    .line 3229
    .local v16, "key":Ljava/lang/String;
    if-eqz v16, :cond_3

    #@b1
    const/16 v23, 0x0

    #@b3
    move-object/from16 v0, v16

    #@b5
    move/from16 v1, v23

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@ba
    move-result v23

    #@bb
    const v26, 0xff00

    #@be
    move/from16 v0, v23

    #@c0
    move/from16 v1, v26

    #@c2
    if-lt v0, v1, :cond_3

    #@c4
    .line 3231
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@c8
    move-object/from16 v23, v0

    #@ca
    new-instance v26, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v27, "Illegal backup key: "

    #@d2
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v26

    #@d6
    move-object/from16 v0, v26

    #@d8
    move-object/from16 v1, v16

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v26

    #@de
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v26

    #@e2
    move-object/from16 v0, p0

    #@e4
    move-object/from16 v1, v23

    #@e6
    move-object/from16 v2, v26

    #@e8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    #@eb
    .line 3232
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ef
    move-object/from16 v23, v0

    #@f1
    new-instance v26, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v27, "illegal key "

    #@f9
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v26

    #@fd
    move-object/from16 v0, v26

    #@ff
    move-object/from16 v1, v16

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v26

    #@105
    const-string/jumbo v27, " from "

    #@108
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v26

    #@10c
    move-object/from16 v0, v26

    #@10e
    move-object/from16 v1, v19

    #@110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v26

    #@114
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v26

    #@118
    move-object/from16 v0, v23

    #@11a
    move-object/from16 v1, v26

    #@11c
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@11f
    .line 3233
    const/16 v23, 0x2

    #@121
    move/from16 v0, v23

    #@123
    new-array v0, v0, [Ljava/lang/Object;

    #@125
    move-object/from16 v23, v0

    #@127
    const/16 v26, 0x0

    #@129
    aput-object v19, v23, v26

    #@12b
    .line 3234
    const-string/jumbo v26, "bad key"

    #@12e
    const/16 v27, 0x1

    #@130
    aput-object v26, v23, v27

    #@132
    .line 3233
    const/16 v26, 0xb07

    #@134
    move/from16 v0, v26

    #@136
    move-object/from16 v1, v23

    #@138
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@13b
    .line 3235
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@13f
    move-object/from16 v23, v0

    #@141
    move-object/from16 v0, v23

    #@143
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@145
    move-object/from16 v23, v0

    #@147
    const/16 v26, 0x7

    #@149
    move-object/from16 v0, v23

    #@14b
    move/from16 v1, v26

    #@14d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@150
    .line 3236
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@154
    move-object/from16 v23, v0

    #@156
    .line 3237
    const/16 v26, -0x3eb

    #@158
    .line 3236
    move-object/from16 v0, v23

    #@15a
    move-object/from16 v1, v19

    #@15c
    move/from16 v2, v26

    #@15e
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@161
    .line 3238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@164
    .line 3245
    if-eqz v22, :cond_2

    #@166
    .line 3246
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@169
    .line 3240
    :cond_2
    return-void

    #@16a
    .line 3242
    :cond_3
    :try_start_3
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@16d
    goto/16 :goto_1

    #@16f
    .line 3244
    .end local v16    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v23

    #@170
    .line 3245
    if-eqz v22, :cond_4

    #@172
    .line 3246
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V

    #@175
    .line 3244
    :cond_4
    throw v23
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@176
    .line 3253
    .end local v15    # "in":Landroid/app/backup/BackupDataInput;
    .end local v22    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    #@177
    .line 3258
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v23, "PerformBackupTask"

    #@17a
    new-instance v26, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v27, "Unable to save widget state for "

    #@182
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v26

    #@186
    move-object/from16 v0, v26

    #@188
    move-object/from16 v1, v19

    #@18a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v26

    #@18e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v26

    #@192
    move-object/from16 v0, v23

    #@194
    move-object/from16 v1, v26

    #@196
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@199
    .line 3260
    :try_start_5
    invoke-static {v11, v12, v13}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    #@19c
    .line 3269
    .end local v8    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1a0
    move-object/from16 v23, v0

    #@1a2
    move-object/from16 v0, v23

    #@1a4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    #@1a6
    move-object/from16 v23, v0

    #@1a8
    const/16 v26, 0x7

    #@1aa
    move-object/from16 v0, v23

    #@1ac
    move/from16 v1, v26

    #@1ae
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    #@1b1
    .line 3270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    #@1b4
    .line 3271
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1b8
    move-object/from16 v23, v0

    #@1ba
    const-string/jumbo v26, "operation complete"

    #@1bd
    move-object/from16 v0, v23

    #@1bf
    move-object/from16 v1, v26

    #@1c1
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1c4
    .line 3273
    const/4 v6, 0x0

    #@1c5
    .line 3274
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    const/16 v23, 0x0

    #@1c7
    move/from16 v0, v23

    #@1c9
    move-object/from16 v1, p0

    #@1cb
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1cd
    .line 3275
    const-wide/16 v24, 0x0

    #@1cf
    .line 3277
    .local v24, "size":J
    :try_start_6
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@1d3
    move-object/from16 v23, v0

    #@1d5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    #@1d8
    move-result-wide v24

    #@1d9
    .line 3278
    const-wide/16 v26, 0x0

    #@1db
    cmp-long v23, v24, v26

    #@1dd
    if-lez v23, :cond_d

    #@1df
    .line 3279
    move-object/from16 v0, p0

    #@1e1
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@1e3
    move/from16 v23, v0

    #@1e5
    if-nez v23, :cond_5

    #@1e7
    .line 3280
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@1eb
    move-object/from16 v23, v0

    #@1ed
    .line 3281
    const/high16 v26, 0x10000000

    #@1ef
    .line 3280
    move-object/from16 v0, v23

    #@1f1
    move/from16 v1, v26

    #@1f3
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@1f6
    move-result-object v6

    #@1f7
    .line 3282
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@1fb
    move-object/from16 v23, v0

    #@1fd
    const-string/jumbo v26, "sending data to transport"

    #@200
    move-object/from16 v0, v23

    #@202
    move-object/from16 v1, v26

    #@204
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@207
    .line 3283
    move-object/from16 v0, p0

    #@209
    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    #@20b
    move/from16 v23, v0

    #@20d
    if-eqz v23, :cond_b

    #@20f
    const/4 v14, 0x1

    #@210
    .line 3284
    .local v14, "flags":I
    :goto_3
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@214
    move-object/from16 v23, v0

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@21a
    move-object/from16 v26, v0

    #@21c
    move-object/from16 v0, v23

    #@21e
    move-object/from16 v1, v26

    #@220
    invoke-interface {v0, v1, v6, v14}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    #@223
    move-result v23

    #@224
    move/from16 v0, v23

    #@226
    move-object/from16 v1, p0

    #@228
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@22a
    .line 3292
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "flags":I
    :cond_5
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@22e
    move-object/from16 v23, v0

    #@230
    new-instance v26, Ljava/lang/StringBuilder;

    #@232
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v27, "data delivered: "

    #@238
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v26

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@240
    move/from16 v27, v0

    #@242
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v26

    #@246
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@249
    move-result-object v26

    #@24a
    move-object/from16 v0, v23

    #@24c
    move-object/from16 v1, v26

    #@24e
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@251
    .line 3293
    move-object/from16 v0, p0

    #@253
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@255
    move/from16 v23, v0

    #@257
    if-nez v23, :cond_c

    #@259
    .line 3294
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@25d
    move-object/from16 v23, v0

    #@25f
    const-string/jumbo v26, "finishing op on transport"

    #@262
    move-object/from16 v0, v23

    #@264
    move-object/from16 v1, v26

    #@266
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@269
    .line 3295
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@26d
    move-object/from16 v23, v0

    #@26f
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    #@272
    move-result v23

    #@273
    move/from16 v0, v23

    #@275
    move-object/from16 v1, p0

    #@277
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@279
    .line 3296
    move-object/from16 v0, p0

    #@27b
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@27d
    move-object/from16 v23, v0

    #@27f
    new-instance v26, Ljava/lang/StringBuilder;

    #@281
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v27, "finished: "

    #@287
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v26

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@28f
    move/from16 v27, v0

    #@291
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@294
    move-result-object v26

    #@295
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v26

    #@299
    move-object/from16 v0, v23

    #@29b
    move-object/from16 v1, v26

    #@29d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@2a0
    .line 3305
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@2a2
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@2a4
    move/from16 v23, v0

    #@2a6
    if-nez v23, :cond_f

    #@2a8
    .line 3309
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@2ac
    move-object/from16 v23, v0

    #@2ae
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    #@2b1
    .line 3310
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@2b5
    move-object/from16 v23, v0

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    #@2bb
    move-object/from16 v26, v0

    #@2bd
    move-object/from16 v0, v23

    #@2bf
    move-object/from16 v1, v26

    #@2c1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@2c4
    .line 3311
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@2c8
    move-object/from16 v23, v0

    #@2ca
    const/16 v26, 0x0

    #@2cc
    move-object/from16 v0, v23

    #@2ce
    move-object/from16 v1, v19

    #@2d0
    move/from16 v2, v26

    #@2d2
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@2d5
    .line 3312
    const/16 v23, 0x2

    #@2d7
    move/from16 v0, v23

    #@2d9
    new-array v0, v0, [Ljava/lang/Object;

    #@2db
    move-object/from16 v23, v0

    #@2dd
    const/16 v26, 0x0

    #@2df
    aput-object v19, v23, v26

    #@2e1
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e4
    move-result-object v26

    #@2e5
    const/16 v27, 0x1

    #@2e7
    aput-object v26, v23, v27

    #@2e9
    const/16 v26, 0xb08

    #@2eb
    move/from16 v0, v26

    #@2ed
    move-object/from16 v1, v23

    #@2ef
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2f2
    .line 3313
    move-object/from16 v0, p0

    #@2f4
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2f6
    move-object/from16 v23, v0

    #@2f8
    move-object/from16 v0, v23

    #@2fa
    move-object/from16 v1, v19

    #@2fc
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@2ff
    .line 3339
    :goto_5
    if-eqz v6, :cond_7

    #@301
    :try_start_7
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@304
    .line 3343
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    #@306
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@308
    move/from16 v23, v0

    #@30a
    if-eqz v23, :cond_8

    #@30c
    .line 3344
    move-object/from16 v0, p0

    #@30e
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@310
    move/from16 v23, v0

    #@312
    const/16 v26, -0x3ea

    #@314
    move/from16 v0, v23

    #@316
    move/from16 v1, v26

    #@318
    if-ne v0, v1, :cond_13

    #@31a
    .line 3347
    :cond_8
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@31e
    move-object/from16 v23, v0

    #@320
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    #@323
    move-result v23

    #@324
    if-eqz v23, :cond_12

    #@326
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@328
    .line 3369
    .local v17, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_7
    move-object/from16 v0, p0

    #@32a
    move-object/from16 v1, v17

    #@32c
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    #@32f
    .line 3198
    return-void

    #@330
    .line 3245
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v24    # "size":J
    .restart local v15    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v22    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    if-eqz v22, :cond_a

    #@332
    .line 3246
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V

    #@335
    .line 3252
    .end local v15    # "in":Landroid/app/backup/BackupDataInput;
    .end local v22    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object/from16 v0, p0

    #@337
    move-object/from16 v1, v19

    #@339
    invoke-direct {v0, v11, v1}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@33c
    goto/16 :goto_2

    #@33e
    .line 3261
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    #@33f
    .line 3262
    .local v10, "ee":Landroid/system/ErrnoException;
    const-string/jumbo v23, "PerformBackupTask"

    #@342
    const-string/jumbo v26, "Unable to roll back!"

    #@345
    move-object/from16 v0, v23

    #@347
    move-object/from16 v1, v26

    #@349
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34c
    goto/16 :goto_2

    #@34e
    .line 3283
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "ee":Landroid/system/ErrnoException;
    .restart local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v24    # "size":J
    :cond_b
    const/4 v14, 0x0

    #@34f
    .restart local v14    # "flags":I
    goto/16 :goto_3

    #@351
    .line 3297
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "flags":I
    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    #@353
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@355
    move/from16 v23, v0

    #@357
    const/16 v26, -0x3ea

    #@359
    move/from16 v0, v23

    #@35b
    move/from16 v1, v26

    #@35d
    if-ne v0, v1, :cond_6

    #@35f
    .line 3298
    move-object/from16 v0, p0

    #@361
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@363
    move-object/from16 v23, v0

    #@365
    const-string/jumbo v26, "transport rejected package"

    #@368
    move-object/from16 v0, v23

    #@36a
    move-object/from16 v1, v26

    #@36c
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@36f
    goto/16 :goto_4

    #@371
    .line 3332
    :catch_2
    move-exception v9

    #@372
    .line 3333
    .local v9, "e":Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@376
    move-object/from16 v23, v0

    #@378
    .line 3334
    const/16 v26, -0x3e8

    #@37a
    .line 3333
    move-object/from16 v0, v23

    #@37c
    move-object/from16 v1, v19

    #@37e
    move/from16 v2, v26

    #@380
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@383
    .line 3335
    const-string/jumbo v23, "PerformBackupTask"

    #@386
    new-instance v26, Ljava/lang/StringBuilder;

    #@388
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string/jumbo v27, "Transport error backing up "

    #@38e
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v26

    #@392
    move-object/from16 v0, v26

    #@394
    move-object/from16 v1, v19

    #@396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@399
    move-result-object v26

    #@39a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39d
    move-result-object v26

    #@39e
    move-object/from16 v0, v23

    #@3a0
    move-object/from16 v1, v26

    #@3a2
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a5
    .line 3336
    const/16 v23, 0xb06

    #@3a7
    move/from16 v0, v23

    #@3a9
    move-object/from16 v1, v19

    #@3ab
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@3ae
    .line 3337
    const/16 v23, -0x3e8

    #@3b0
    move/from16 v0, v23

    #@3b2
    move-object/from16 v1, p0

    #@3b4
    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@3b6
    .line 3339
    if-eqz v6, :cond_7

    #@3b8
    :try_start_b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    #@3bb
    goto/16 :goto_6

    #@3bd
    :catch_3
    move-exception v8

    #@3be
    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    #@3c0
    .line 3302
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3c4
    move-object/from16 v23, v0

    #@3c6
    const-string/jumbo v26, "no data to send"

    #@3c9
    move-object/from16 v0, v23

    #@3cb
    move-object/from16 v1, v26

    #@3cd
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@3d0
    goto/16 :goto_4

    #@3d2
    .line 3338
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v23

    #@3d3
    .line 3339
    if-eqz v6, :cond_e

    #@3d5
    :try_start_d
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    #@3d8
    .line 3338
    :cond_e
    :goto_8
    throw v23

    #@3d9
    .line 3314
    :cond_f
    :try_start_e
    move-object/from16 v0, p0

    #@3db
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@3dd
    move/from16 v23, v0

    #@3df
    const/16 v26, -0x3ea

    #@3e1
    move/from16 v0, v23

    #@3e3
    move/from16 v1, v26

    #@3e5
    if-ne v0, v1, :cond_10

    #@3e7
    .line 3317
    move-object/from16 v0, p0

    #@3e9
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    #@3eb
    move-object/from16 v23, v0

    #@3ed
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    #@3f0
    .line 3318
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    #@3f4
    move-object/from16 v23, v0

    #@3f6
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    #@3f9
    .line 3319
    move-object/from16 v0, p0

    #@3fb
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@3fd
    move-object/from16 v23, v0

    #@3ff
    .line 3320
    const/16 v26, -0x3ea

    #@401
    .line 3319
    move-object/from16 v0, v23

    #@403
    move-object/from16 v1, v19

    #@405
    move/from16 v2, v26

    #@407
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@40a
    .line 3321
    const-string/jumbo v23, "Transport rejected"

    #@40d
    move-object/from16 v0, v19

    #@40f
    move-object/from16 v1, v23

    #@411
    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    #@414
    goto/16 :goto_5

    #@416
    .line 3322
    :cond_10
    move-object/from16 v0, p0

    #@418
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@41a
    move/from16 v23, v0

    #@41c
    const/16 v26, -0x3ed

    #@41e
    move/from16 v0, v23

    #@420
    move/from16 v1, v26

    #@422
    if-ne v0, v1, :cond_11

    #@424
    .line 3323
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@428
    move-object/from16 v23, v0

    #@42a
    .line 3324
    const/16 v26, -0x3ed

    #@42c
    .line 3323
    move-object/from16 v0, v23

    #@42e
    move-object/from16 v1, v19

    #@430
    move/from16 v2, v26

    #@432
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@435
    .line 3325
    const/16 v23, 0xb0d

    #@437
    move/from16 v0, v23

    #@439
    move-object/from16 v1, v19

    #@43b
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@43e
    goto/16 :goto_5

    #@440
    .line 3328
    :cond_11
    move-object/from16 v0, p0

    #@442
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    #@444
    move-object/from16 v23, v0

    #@446
    .line 3329
    const/16 v26, -0x3e8

    #@448
    .line 3328
    move-object/from16 v0, v23

    #@44a
    move-object/from16 v1, v19

    #@44c
    move/from16 v2, v26

    #@44e
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    #@451
    .line 3330
    const/16 v23, 0xb06

    #@453
    move/from16 v0, v23

    #@455
    move-object/from16 v1, v19

    #@457
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@45a
    goto/16 :goto_5

    #@45c
    .line 3339
    :catch_4
    move-exception v8

    #@45d
    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    #@45f
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@460
    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    #@462
    .line 3347
    .end local v8    # "e":Ljava/io/IOException;
    :cond_12
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@464
    .restart local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    #@466
    .line 3348
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_13
    move-object/from16 v0, p0

    #@468
    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    #@46a
    move/from16 v23, v0

    #@46c
    const/16 v26, -0x3ed

    #@46e
    move/from16 v0, v23

    #@470
    move/from16 v1, v26

    #@472
    if-ne v0, v1, :cond_16

    #@474
    .line 3353
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@478
    move-object/from16 v23, v0

    #@47a
    if-eqz v23, :cond_14

    #@47c
    .line 3355
    :try_start_f
    move-object/from16 v0, p0

    #@47e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@480
    move-object/from16 v23, v0

    #@482
    move-object/from16 v0, p0

    #@484
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    #@486
    move-object/from16 v26, v0

    #@488
    move-object/from16 v0, v26

    #@48a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@48c
    move-object/from16 v26, v0

    #@48e
    const/16 v27, 0x0

    #@490
    move-object/from16 v0, v23

    #@492
    move-object/from16 v1, v26

    #@494
    move/from16 v2, v27

    #@496
    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    #@499
    move-result-wide v20

    #@49a
    .line 3356
    .local v20, "quota":J
    move-object/from16 v0, p0

    #@49c
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    #@49e
    move-object/from16 v23, v0

    #@4a0
    move-object/from16 v0, v23

    #@4a2
    move-wide/from16 v1, v24

    #@4a4
    move-wide/from16 v3, v20

    #@4a6
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    #@4a9
    .line 3361
    .end local v20    # "quota":J
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    #@4ab
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    #@4ad
    move-object/from16 v23, v0

    #@4af
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    #@4b2
    move-result v23

    #@4b3
    if-eqz v23, :cond_15

    #@4b5
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@4b7
    .restart local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    #@4b9
    .line 3357
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :catch_6
    move-exception v7

    #@4ba
    .line 3358
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v23, "PerformBackupTask"

    #@4bd
    const-string/jumbo v26, "Unable to contact backup agent for quota exceeded"

    #@4c0
    move-object/from16 v0, v23

    #@4c2
    move-object/from16 v1, v26

    #@4c4
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c7
    goto :goto_9

    #@4c8
    .line 3361
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_15
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@4ca
    .restart local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    #@4cc
    .line 3365
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    #@4cf
    .line 3366
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@4d1
    .restart local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7
.end method

.method revertAndEndBackup()V
    .locals 7

    #@0
    .prologue
    .line 3388
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    const-string/jumbo v6, "transport error; reverting"

    #@5
    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@8
    .line 3394
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@a
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v0

    #@e
    .line 3399
    .local v0, "delay":J
    :goto_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    #@15
    .line 3401
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
    .line 3402
    .local v3, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    iget-object v6, v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #@2b
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    #@2e
    goto :goto_1

    #@2f
    .line 3395
    .end local v0    # "delay":J
    .end local v3    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v4    # "request$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    #@30
    .line 3396
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PerformBackupTask"

    #@33
    const-string/jumbo v6, "Unable to contact transport for recommended backoff"

    #@36
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 3397
    const-wide/16 v0, 0x0

    #@3b
    .restart local v0    # "delay":J
    goto :goto_0

    #@3c
    .line 3386
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
