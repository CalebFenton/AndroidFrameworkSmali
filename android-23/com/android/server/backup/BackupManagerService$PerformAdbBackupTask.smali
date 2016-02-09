.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    #@0
    .prologue
    .line 3631
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 3635
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@5
    .line 3636
    move-object/from16 v0, p14

    #@7
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    .line 3638
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 3639
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    #@d
    .line 3640
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@f
    .line 3641
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    #@11
    .line 3642
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    #@13
    .line 3643
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@15
    .line 3644
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@17
    .line 3645
    if-nez p13, :cond_1

    #@19
    .line 3646
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 3645
    :goto_0
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@20
    .line 3648
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    #@22
    .line 3653
    if-eqz p9, :cond_0

    #@24
    const-string/jumbo v1, ""

    #@27
    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 3654
    :cond_0
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@2f
    .line 3658
    :goto_1
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@31
    .line 3634
    return-void

    #@32
    .line 3647
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@34
    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3656
    :cond_2
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@3e
    goto :goto_1
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 23
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 3678
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    move-object/from16 v19, v0

    #@6
    const/16 v20, 0x200

    #@8
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;I)[B

    #@b
    move-result-object v17

    #@c
    .line 3679
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10
    move-object/from16 v19, v0

    #@12
    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@19
    move-object/from16 v21, v0

    #@1b
    .line 3680
    const/16 v22, 0x2710

    #@1d
    .line 3679
    move-object/from16 v0, v19

    #@1f
    move-object/from16 v1, v20

    #@21
    move-object/from16 v2, v21

    #@23
    move-object/from16 v3, v17

    #@25
    move/from16 v4, v22

    #@27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@2a
    move-result-object v18

    #@2b
    .line 3683
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    #@2d
    move/from16 v0, v19

    #@2f
    new-array v13, v0, [B

    #@31
    .line 3684
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@35
    move-object/from16 v19, v0

    #@37
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    #@3a
    move-result-object v19

    #@3b
    move-object/from16 v0, v19

    #@3d
    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@40
    .line 3685
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@44
    move-object/from16 v19, v0

    #@46
    const/16 v20, 0x200

    #@48
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;I)[B

    #@4b
    move-result-object v9

    #@4c
    .line 3688
    .local v9, "checksumSalt":[B
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@4f
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@52
    move-result-object v7

    #@53
    .line 3689
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    #@55
    const-string/jumbo v19, "AES"

    #@58
    move-object/from16 v0, v19

    #@5a
    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@5d
    .line 3690
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    #@5f
    move/from16 v0, v19

    #@61
    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@64
    .line 3691
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@6b
    .line 3694
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string/jumbo v19, "AES-256"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v19

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 3695
    const/16 v19, 0xa

    #@77
    move-object/from16 v0, p1

    #@79
    move/from16 v1, v19

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 3697
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@82
    move-object/from16 v19, v0

    #@84
    move-object/from16 v0, v19

    #@86
    move-object/from16 v1, v17

    #@88
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@8b
    move-result-object v19

    #@8c
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v19

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 3698
    const/16 v19, 0xa

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v19

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    .line 3700
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a0
    move-object/from16 v19, v0

    #@a2
    move-object/from16 v0, v19

    #@a4
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@a7
    move-result-object v19

    #@a8
    move-object/from16 v0, p1

    #@aa
    move-object/from16 v1, v19

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 3701
    const/16 v19, 0xa

    #@b1
    move-object/from16 v0, p1

    #@b3
    move/from16 v1, v19

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    .line 3703
    const/16 v19, 0x2710

    #@ba
    move-object/from16 v0, p1

    #@bc
    move/from16 v1, v19

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    .line 3704
    const/16 v19, 0xa

    #@c3
    move-object/from16 v0, p1

    #@c5
    move/from16 v1, v19

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 3707
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@cd
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@d0
    move-result-object v15

    #@d1
    .line 3708
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    #@d3
    move/from16 v0, v19

    #@d5
    move-object/from16 v1, v18

    #@d7
    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@da
    .line 3710
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    #@dd
    move-result-object v5

    #@de
    .line 3711
    .local v5, "IV":[B
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e2
    move-object/from16 v19, v0

    #@e4
    move-object/from16 v0, v19

    #@e6
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@e9
    move-result-object v19

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v19

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 3712
    const/16 v19, 0xa

    #@f3
    move-object/from16 v0, p1

    #@f5
    move/from16 v1, v19

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fa
    .line 3724
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    #@fd
    move-result-object v5

    #@fe
    .line 3725
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    #@101
    move-result-object v14

    #@102
    .line 3726
    .local v14, "mk":[B
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@106
    move-object/from16 v19, v0

    #@108
    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    #@10b
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    #@10e
    move-result-object v21

    #@10f
    .line 3727
    const/16 v22, 0x2710

    #@111
    .line 3726
    move-object/from16 v0, v19

    #@113
    move-object/from16 v1, v20

    #@115
    move-object/from16 v2, v21

    #@117
    move/from16 v3, v22

    #@119
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    #@11c
    move-result-object v8

    #@11d
    .line 3729
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #@11f
    array-length v0, v5

    #@120
    move/from16 v19, v0

    #@122
    array-length v0, v14

    #@123
    move/from16 v20, v0

    #@125
    add-int v19, v19, v20

    #@127
    .line 3730
    array-length v0, v8

    #@128
    move/from16 v20, v0

    #@12a
    .line 3729
    add-int v19, v19, v20

    #@12c
    add-int/lit8 v19, v19, 0x3

    #@12e
    move/from16 v0, v19

    #@130
    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@133
    .line 3731
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13a
    .line 3732
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    #@13b
    move/from16 v19, v0

    #@13d
    move-object/from16 v0, v16

    #@13f
    move/from16 v1, v19

    #@141
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@144
    .line 3733
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    #@149
    .line 3734
    array-length v0, v14

    #@14a
    move/from16 v19, v0

    #@14c
    move-object/from16 v0, v16

    #@14e
    move/from16 v1, v19

    #@150
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@153
    .line 3735
    move-object/from16 v0, v16

    #@155
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    #@158
    .line 3736
    array-length v0, v8

    #@159
    move/from16 v19, v0

    #@15b
    move-object/from16 v0, v16

    #@15d
    move/from16 v1, v19

    #@15f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@162
    .line 3737
    move-object/from16 v0, v16

    #@164
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    #@167
    .line 3738
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    #@16a
    .line 3739
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@16d
    move-result-object v19

    #@16e
    move-object/from16 v0, v19

    #@170
    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@173
    move-result-object v10

    #@174
    .line 3740
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@178
    move-object/from16 v19, v0

    #@17a
    move-object/from16 v0, v19

    #@17c
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@17f
    move-result-object v19

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v19

    #@184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    .line 3741
    const/16 v19, 0xa

    #@189
    move-object/from16 v0, p1

    #@18b
    move/from16 v1, v19

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@190
    .line 3743
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 3749
    const/16 v2, 0x400

    #@2
    :try_start_0
    new-array v1, v2, [B

    #@4
    .line 3750
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3746
    .end local v1    # "eof":[B
    :goto_0
    return-void

    #@8
    .line 3751
    :catch_0
    move-exception v0

    #@9
    .line 3752
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    #@c
    const-string/jumbo v3, "Error attempting to finalize backup stream"

    #@f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    goto :goto_0
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3662
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v3

    #@4
    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    .line 3663
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    .line 3665
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@18
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 3666
    const/16 v5, 0x40

    #@1e
    .line 3665
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@21
    move-result-object v1

    #@22
    .line 3667
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 3668
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .line 3669
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "BackupManagerService"

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "Unknown package "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, ", skipping"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0

    #@49
    .line 3661
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public run()V
    .locals 31

    #@0
    .prologue
    .line 3758
    const-string/jumbo v3, "BackupManagerService"

    #@3
    const-string/jumbo v4, "--- Performing full-dataset adb backup ---"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 3760
    new-instance v28, Ljava/util/TreeMap;

    #@b
    invoke-direct/range {v28 .. v28}, Ljava/util/TreeMap;-><init>()V

    #@e
    .line 3761
    .local v28, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v25, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14
    move-object/from16 v0, v25

    #@16
    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@19
    .line 3762
    .local v25, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    #@1c
    .line 3764
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    #@1f
    .line 3767
    move-object/from16 v0, p0

    #@21
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 3768
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v3

    #@2d
    .line 3769
    const/16 v4, 0x40

    #@2f
    .line 3768
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@32
    move-result-object v10

    #@33
    .line 3770
    .local v10, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v22, 0x0

    #@35
    .local v22, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@38
    move-result v3

    #@39
    move/from16 v0, v22

    #@3b
    if-ge v0, v3, :cond_2

    #@3d
    .line 3771
    move/from16 v0, v22

    #@3f
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v29

    #@43
    check-cast v29, Landroid/content/pm/PackageInfo;

    #@45
    .line 3773
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@47
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@49
    if-nez v3, :cond_0

    #@4b
    .line 3774
    move-object/from16 v0, v29

    #@4d
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4f
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@51
    and-int/lit8 v3, v3, 0x1

    #@53
    if-nez v3, :cond_1

    #@55
    .line 3775
    :cond_0
    move-object/from16 v0, v29

    #@57
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@59
    move-object/from16 v0, v28

    #@5b
    move-object/from16 v1, v29

    #@5d
    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 3770
    :cond_1
    add-int/lit8 v22, v22, 0x1

    #@62
    goto :goto_0

    #@63
    .line 3782
    .end local v10    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v22    # "i":I
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    move-object/from16 v0, p0

    #@65
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    #@67
    if-eqz v3, :cond_3

    #@69
    .line 3784
    const/4 v3, 0x0

    #@6a
    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    #@6d
    move-result-object v30

    #@6e
    .line 3785
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v30, :cond_3

    #@70
    .line 3796
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, v28

    #@74
    move-object/from16 v2, v30

    #@76
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    #@79
    .line 3803
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    #@7b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@7d
    if-eqz v3, :cond_4

    #@7f
    .line 3804
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@83
    move-object/from16 v0, p0

    #@85
    move-object/from16 v1, v28

    #@87
    invoke-virtual {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    #@8a
    .line 3810
    :cond_4
    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@8d
    move-result-object v3

    #@8e
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@91
    move-result-object v24

    #@92
    .line 3811
    .local v24, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_6

    #@98
    .line 3812
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9b
    move-result-object v3

    #@9c
    check-cast v3, Ljava/util/Map$Entry;

    #@9e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a1
    move-result-object v29

    #@a2
    check-cast v29, Landroid/content/pm/PackageInfo;

    #@a4
    .line 3813
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v29

    #@a6
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a8
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@ab
    move-result v3

    #@ac
    if-nez v3, :cond_5

    #@ae
    .line 3814
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    #@b1
    goto :goto_1

    #@b2
    .line 3820
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    #@b4
    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@b7
    move-result-object v3

    #@b8
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@bb
    .line 3821
    .local v11, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v27, Ljava/io/FileOutputStream;

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@c1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@c4
    move-result-object v3

    #@c5
    move-object/from16 v0, v27

    #@c7
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@ca
    .line 3822
    .local v27, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    #@cb
    .line 3824
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v29, 0x0

    #@cd
    .line 3826
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@d1
    if-eqz v3, :cond_8

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@d7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@da
    move-result v3

    #@db
    if-lez v3, :cond_8

    #@dd
    const/16 v17, 0x1

    #@df
    .line 3829
    .local v17, "encrypting":Z
    :goto_2
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e3
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    #@e6
    move-result v3

    #@e7
    if-eqz v3, :cond_7

    #@e9
    if-eqz v17, :cond_9

    #@eb
    .line 3834
    :cond_7
    move-object/from16 v18, v27

    #@ed
    .line 3838
    .local v18, "finalOutput":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@ef
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    #@f5
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    #@f8
    move-result v3

    #@f9
    if-nez v3, :cond_a

    #@fb
    .line 3839
    const-string/jumbo v3, "BackupManagerService"

    #@fe
    const-string/jumbo v4, "Backup password mismatch; aborting"

    #@101
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    #@104
    .line 3938
    :try_start_1
    move-object/from16 v0, p0

    #@106
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@108
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    #@10b
    .line 3942
    :goto_3
    move-object/from16 v0, p0

    #@10d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@10f
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@111
    monitor-enter v4

    #@112
    .line 3943
    :try_start_2
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@116
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@118
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@11b
    monitor-exit v4

    #@11c
    .line 3945
    move-object/from16 v0, p0

    #@11e
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@120
    monitor-enter v4

    #@121
    .line 3946
    :try_start_3
    move-object/from16 v0, p0

    #@123
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@125
    const/4 v6, 0x1

    #@126
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@129
    .line 3947
    move-object/from16 v0, p0

    #@12b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@130
    monitor-exit v4

    #@131
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@134
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@137
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@13a
    const-string/jumbo v4, "Full backup pass complete."

    #@13d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    .line 3952
    move-object/from16 v0, p0

    #@142
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@144
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@146
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@149
    .line 3840
    return-void

    #@14a
    .line 3826
    .end local v17    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    :cond_8
    const/16 v17, 0x0

    #@14c
    .restart local v17    # "encrypting":Z
    goto :goto_2

    #@14d
    .line 3830
    :cond_9
    :try_start_4
    const-string/jumbo v3, "BackupManagerService"

    #@150
    const-string/jumbo v4, "Unencrypted backup of encrypted device; aborting"

    #@153
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    #@156
    .line 3938
    :try_start_5
    move-object/from16 v0, p0

    #@158
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@15a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    #@15d
    .line 3942
    :goto_4
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@161
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@163
    monitor-enter v4

    #@164
    .line 3943
    :try_start_6
    move-object/from16 v0, p0

    #@166
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@168
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@16a
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@16d
    monitor-exit v4

    #@16e
    .line 3945
    move-object/from16 v0, p0

    #@170
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@172
    monitor-enter v4

    #@173
    .line 3946
    :try_start_7
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@177
    const/4 v6, 0x1

    #@178
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@17b
    .line 3947
    move-object/from16 v0, p0

    #@17d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17f
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@182
    monitor-exit v4

    #@183
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@186
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@189
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@18c
    const-string/jumbo v4, "Full backup pass complete."

    #@18f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@192
    .line 3952
    move-object/from16 v0, p0

    #@194
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@196
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@198
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@19b
    .line 3831
    return-void

    #@19c
    .line 3942
    :catchall_0
    move-exception v3

    #@19d
    monitor-exit v4

    #@19e
    throw v3

    #@19f
    .line 3945
    :catchall_1
    move-exception v3

    #@1a0
    monitor-exit v4

    #@1a1
    throw v3

    #@1a2
    .line 3942
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    #@1a3
    monitor-exit v4

    #@1a4
    throw v3

    #@1a5
    .line 3945
    :catchall_3
    move-exception v3

    #@1a6
    monitor-exit v4

    #@1a7
    throw v3

    #@1a8
    .line 3868
    :cond_a
    :try_start_8
    new-instance v21, Ljava/lang/StringBuilder;

    #@1aa
    const/16 v3, 0x400

    #@1ac
    move-object/from16 v0, v21

    #@1ae
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b1
    .line 3870
    .local v21, "headerbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ANDROID BACKUP\n"

    #@1b4
    move-object/from16 v0, v21

    #@1b6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    .line 3871
    const/4 v3, 0x3

    #@1ba
    move-object/from16 v0, v21

    #@1bc
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    .line 3872
    move-object/from16 v0, p0

    #@1c1
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@1c3
    if-eqz v3, :cond_d

    #@1c5
    const-string/jumbo v3, "\n1\n"

    #@1c8
    :goto_5
    move-object/from16 v0, v21

    #@1ca
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    #@1cd
    .line 3876
    if-eqz v17, :cond_e

    #@1cf
    .line 3877
    :try_start_9
    move-object/from16 v0, p0

    #@1d1
    move-object/from16 v1, v21

    #@1d3
    move-object/from16 v2, v18

    #@1d5
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    #@1d8
    move-result-object v18

    #@1d9
    move-object/from16 v19, v18

    #@1db
    .line 3882
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "finalOutput":Ljava/io/OutputStream;
    :goto_6
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1de
    move-result-object v3

    #@1df
    const-string/jumbo v4, "UTF-8"

    #@1e2
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@1e5
    move-result-object v20

    #@1e6
    .line 3883
    .local v20, "header":[B
    move-object/from16 v0, v27

    #@1e8
    move-object/from16 v1, v20

    #@1ea
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    #@1ed
    .line 3886
    move-object/from16 v0, p0

    #@1ef
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@1f1
    if-eqz v3, :cond_15

    #@1f3
    .line 3887
    new-instance v12, Ljava/util/zip/Deflater;

    #@1f5
    const/16 v3, 0x9

    #@1f7
    invoke-direct {v12, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    #@1fa
    .line 3888
    .local v12, "deflater":Ljava/util/zip/Deflater;
    new-instance v18, Ljava/util/zip/DeflaterOutputStream;

    #@1fc
    const/4 v3, 0x1

    #@1fd
    move-object/from16 v0, v18

    #@1ff
    move-object/from16 v1, v19

    #@201
    invoke-direct {v0, v1, v12, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    #@204
    .line 3891
    .end local v12    # "deflater":Ljava/util/zip/Deflater;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :goto_7
    move-object/from16 v5, v18

    #@206
    .line 3899
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_b
    move-object/from16 v0, p0

    #@208
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    #@20a
    if-eqz v3, :cond_b

    #@20c
    .line 3901
    :try_start_c
    move-object/from16 v0, p0

    #@20e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@210
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@213
    move-result-object v3

    #@214
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    #@217
    const/4 v6, 0x0

    #@218
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@21b
    move-result-object v29

    #@21c
    .line 3902
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v29

    #@21e
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@221
    .line 3909
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_b
    :goto_8
    :try_start_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@224
    move-result v9

    #@225
    .line 3910
    .local v9, "N":I
    const/16 v22, 0x0

    #@227
    .restart local v22    # "i":I
    :goto_9
    move/from16 v0, v22

    #@229
    if-ge v0, v9, :cond_12

    #@22b
    .line 3911
    move/from16 v0, v22

    #@22d
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@230
    move-result-object v3

    #@231
    move-object v0, v3

    #@232
    check-cast v0, Landroid/content/pm/PackageInfo;

    #@234
    move-object/from16 v29, v0

    #@236
    .line 3913
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v29

    #@238
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@23a
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    #@23d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@240
    move-result v23

    #@241
    .line 3915
    .local v23, "isSharedStorage":Z
    new-instance v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@247
    move-object/from16 v0, v29

    #@249
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@24b
    move-object/from16 v0, p0

    #@24d
    iget-boolean v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    #@24f
    const/4 v7, 0x0

    #@250
    invoke-direct/range {v3 .. v8}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Z)V

    #@253
    move-object/from16 v0, p0

    #@255
    iput-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@257
    .line 3916
    if-eqz v23, :cond_10

    #@259
    const-string/jumbo v3, "Shared storage"

    #@25c
    :goto_a
    move-object/from16 v0, p0

    #@25e
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    #@261
    .line 3917
    move-object/from16 v0, p0

    #@263
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@265
    move-object/from16 v0, v29

    #@267
    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I

    #@26a
    .line 3921
    move-object/from16 v0, p0

    #@26c
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@26e
    if-eqz v3, :cond_11

    #@270
    .line 3922
    move-object/from16 v0, v25

    #@272
    move-object/from16 v1, v29

    #@274
    invoke-virtual {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    #@277
    move-result v26

    #@278
    .line 3923
    .local v26, "obbOkay":Z
    if-nez v26, :cond_11

    #@27a
    .line 3924
    new-instance v3, Ljava/lang/RuntimeException;

    #@27c
    new-instance v4, Ljava/lang/StringBuilder;

    #@27e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@281
    const-string/jumbo v6, "Failure writing OBB stack for "

    #@284
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v4

    #@288
    move-object/from16 v0, v29

    #@28a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v4

    #@28e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v4

    #@292
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@295
    throw v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    #@296
    .line 3931
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v9    # "N":I
    .end local v17    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "header":[B
    .end local v21    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v22    # "i":I
    .end local v23    # "isSharedStorage":Z
    .end local v26    # "obbOkay":Z
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v14

    #@297
    .line 3932
    .local v14, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v3, "BackupManagerService"

    #@29a
    const-string/jumbo v4, "App died during full backup"

    #@29d
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    #@2a0
    .line 3937
    if-eqz v5, :cond_c

    #@2a2
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@2a5
    .line 3938
    :cond_c
    move-object/from16 v0, p0

    #@2a7
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@2a9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    #@2ac
    .line 3942
    :goto_b
    move-object/from16 v0, p0

    #@2ae
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b0
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@2b2
    monitor-enter v4

    #@2b3
    .line 3943
    :try_start_10
    move-object/from16 v0, p0

    #@2b5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b7
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@2b9
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    #@2bc
    monitor-exit v4

    #@2bd
    .line 3945
    move-object/from16 v0, p0

    #@2bf
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c1
    monitor-enter v4

    #@2c2
    .line 3946
    :try_start_11
    move-object/from16 v0, p0

    #@2c4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c6
    const/4 v6, 0x1

    #@2c7
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2ca
    .line 3947
    move-object/from16 v0, p0

    #@2cc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2ce
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    #@2d1
    monitor-exit v4

    #@2d2
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@2d5
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@2d8
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@2db
    const-string/jumbo v4, "Full backup pass complete."

    #@2de
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e1
    .line 3952
    move-object/from16 v0, p0

    #@2e3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e5
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2e7
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2ea
    .line 3757
    .end local v14    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void

    #@2eb
    .line 3872
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v17    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "headerbuf":Ljava/lang/StringBuilder;
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    :cond_d
    :try_start_12
    const-string/jumbo v3, "\n0\n"
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    #@2ee
    goto/16 :goto_5

    #@2f0
    .line 3879
    :cond_e
    :try_start_13
    const-string/jumbo v3, "none\n"

    #@2f3
    move-object/from16 v0, v21

    #@2f5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    #@2f8
    move-object/from16 v19, v18

    #@2fa
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_6

    #@2fc
    .line 3892
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_1
    move-exception v16

    #@2fd
    .line 3894
    .local v16, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@300
    const-string/jumbo v4, "Unable to emit archive header"

    #@303
    move-object/from16 v0, v16

    #@305
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    #@308
    .line 3938
    :try_start_15
    move-object/from16 v0, p0

    #@30a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@30c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    #@30f
    .line 3942
    :goto_e
    move-object/from16 v0, p0

    #@311
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@313
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@315
    monitor-enter v4

    #@316
    .line 3943
    :try_start_16
    move-object/from16 v0, p0

    #@318
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@31a
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@31c
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    #@31f
    monitor-exit v4

    #@320
    .line 3945
    move-object/from16 v0, p0

    #@322
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@324
    monitor-enter v4

    #@325
    .line 3946
    :try_start_17
    move-object/from16 v0, p0

    #@327
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@329
    const/4 v6, 0x1

    #@32a
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@32d
    .line 3947
    move-object/from16 v0, p0

    #@32f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@331
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    #@334
    monitor-exit v4

    #@335
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@338
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@33b
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@33e
    const-string/jumbo v4, "Full backup pass complete."

    #@341
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@344
    .line 3952
    move-object/from16 v0, p0

    #@346
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@348
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@34a
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@34d
    .line 3895
    return-void

    #@34e
    .line 3942
    :catchall_4
    move-exception v3

    #@34f
    monitor-exit v4

    #@350
    throw v3

    #@351
    .line 3945
    :catchall_5
    move-exception v3

    #@352
    monitor-exit v4

    #@353
    throw v3

    #@354
    .line 3903
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v20    # "header":[B
    :catch_2
    move-exception v13

    #@355
    .line 3904
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_18
    const-string/jumbo v3, "BackupManagerService"

    #@358
    const-string/jumbo v4, "Unable to find shared-storage backup handler"

    #@35b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@35e
    goto/16 :goto_8

    #@360
    .line 3933
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "header":[B
    .end local v21    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v16

    #@361
    .line 3934
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string/jumbo v3, "BackupManagerService"

    #@364
    const-string/jumbo v4, "Internal exception during full backup"

    #@367
    move-object/from16 v0, v16

    #@369
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    #@36c
    .line 3937
    if-eqz v5, :cond_f

    #@36e
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@371
    .line 3938
    :cond_f
    move-object/from16 v0, p0

    #@373
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@375
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6

    #@378
    .line 3942
    :goto_f
    move-object/from16 v0, p0

    #@37a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@37c
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@37e
    monitor-enter v4

    #@37f
    .line 3943
    :try_start_1b
    move-object/from16 v0, p0

    #@381
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@383
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@385
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    #@388
    monitor-exit v4

    #@389
    .line 3945
    move-object/from16 v0, p0

    #@38b
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@38d
    monitor-enter v4

    #@38e
    .line 3946
    :try_start_1c
    move-object/from16 v0, p0

    #@390
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@392
    const/4 v6, 0x1

    #@393
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@396
    .line 3947
    move-object/from16 v0, p0

    #@398
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@39a
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    #@39d
    monitor-exit v4

    #@39e
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@3a1
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@3a4
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@3a7
    const-string/jumbo v4, "Full backup pass complete."

    #@3aa
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3ad
    .line 3952
    move-object/from16 v0, p0

    #@3af
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3b1
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3b3
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3b6
    goto/16 :goto_c

    #@3b8
    .line 3916
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v9    # "N":I
    .restart local v17    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "header":[B
    .restart local v21    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v22    # "i":I
    .restart local v23    # "isSharedStorage":Z
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    :cond_10
    :try_start_1d
    move-object/from16 v0, v29

    #@3ba
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@3bc
    goto/16 :goto_a

    #@3be
    .line 3910
    :cond_11
    add-int/lit8 v22, v22, 0x1

    #@3c0
    goto/16 :goto_9

    #@3c2
    .line 3930
    .end local v23    # "isSharedStorage":Z
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_12
    move-object/from16 v0, p0

    #@3c4
    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    #@3c7
    .line 3937
    if-eqz v5, :cond_13

    #@3c9
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@3cc
    .line 3938
    :cond_13
    move-object/from16 v0, p0

    #@3ce
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@3d0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    #@3d3
    .line 3942
    :goto_10
    move-object/from16 v0, p0

    #@3d5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3d7
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3d9
    monitor-enter v4

    #@3da
    .line 3943
    :try_start_1f
    move-object/from16 v0, p0

    #@3dc
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3de
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@3e0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    #@3e3
    monitor-exit v4

    #@3e4
    .line 3945
    move-object/from16 v0, p0

    #@3e6
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e8
    monitor-enter v4

    #@3e9
    .line 3946
    :try_start_20
    move-object/from16 v0, p0

    #@3eb
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3ed
    const/4 v6, 0x1

    #@3ee
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@3f1
    .line 3947
    move-object/from16 v0, p0

    #@3f3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3f5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    #@3f8
    monitor-exit v4

    #@3f9
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@3fc
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@3ff
    .line 3951
    const-string/jumbo v3, "BackupManagerService"

    #@402
    const-string/jumbo v4, "Full backup pass complete."

    #@405
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@408
    .line 3952
    move-object/from16 v0, p0

    #@40a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40c
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@40e
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@411
    goto/16 :goto_c

    #@413
    .line 3942
    :catchall_6
    move-exception v3

    #@414
    monitor-exit v4

    #@415
    throw v3

    #@416
    .line 3945
    :catchall_7
    move-exception v3

    #@417
    monitor-exit v4

    #@418
    throw v3

    #@419
    .line 3942
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v9    # "N":I
    .end local v17    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "header":[B
    .end local v21    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v22    # "i":I
    .restart local v16    # "e":Ljava/lang/Exception;
    :catchall_8
    move-exception v3

    #@41a
    monitor-exit v4

    #@41b
    throw v3

    #@41c
    .line 3945
    :catchall_9
    move-exception v3

    #@41d
    monitor-exit v4

    #@41e
    throw v3

    #@41f
    .line 3942
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v14    # "e":Landroid/os/RemoteException;
    :catchall_a
    move-exception v3

    #@420
    monitor-exit v4

    #@421
    throw v3

    #@422
    .line 3945
    :catchall_b
    move-exception v3

    #@423
    monitor-exit v4

    #@424
    throw v3

    #@425
    .line 3935
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_c
    move-exception v3

    #@426
    .line 3937
    if-eqz v5, :cond_14

    #@428
    :try_start_21
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@42b
    .line 3938
    :cond_14
    move-object/from16 v0, p0

    #@42d
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@42f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_4

    #@432
    .line 3942
    :goto_11
    move-object/from16 v0, p0

    #@434
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@436
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@438
    monitor-enter v4

    #@439
    .line 3943
    :try_start_22
    move-object/from16 v0, p0

    #@43b
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@43d
    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@43f
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    #@442
    monitor-exit v4

    #@443
    .line 3945
    move-object/from16 v0, p0

    #@445
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@447
    monitor-enter v4

    #@448
    .line 3946
    :try_start_23
    move-object/from16 v0, p0

    #@44a
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@44c
    const/4 v7, 0x1

    #@44d
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@450
    .line 3947
    move-object/from16 v0, p0

    #@452
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@454
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    #@457
    monitor-exit v4

    #@458
    .line 3949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@45b
    .line 3950
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@45e
    .line 3951
    const-string/jumbo v4, "BackupManagerService"

    #@461
    const-string/jumbo v6, "Full backup pass complete."

    #@464
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@467
    .line 3952
    move-object/from16 v0, p0

    #@469
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@46b
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@46d
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@470
    .line 3935
    throw v3

    #@471
    .line 3942
    :catchall_d
    move-exception v3

    #@472
    monitor-exit v4

    #@473
    throw v3

    #@474
    .line 3945
    :catchall_e
    move-exception v3

    #@475
    monitor-exit v4

    #@476
    throw v3

    #@477
    .line 3939
    :catch_4
    move-exception v15

    #@478
    .local v15, "e":Ljava/io/IOException;
    goto :goto_11

    #@479
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v14    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v15

    #@47a
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    #@47c
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v16    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v15

    #@47d
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_f

    #@47f
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v9    # "N":I
    .restart local v17    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "header":[B
    .restart local v21    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v22    # "i":I
    :catch_7
    move-exception v15

    #@480
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_10

    #@482
    .end local v9    # "N":I
    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "header":[B
    .end local v22    # "i":I
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v16    # "e":Ljava/lang/Exception;
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    :catch_8
    move-exception v15

    #@483
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    #@485
    .line 3892
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_9
    move-exception v16

    #@486
    .restart local v16    # "e":Ljava/lang/Exception;
    move-object/from16 v18, v19

    #@488
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_d

    #@48a
    .line 3939
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v21    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v15

    #@48b
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@48d
    .end local v15    # "e":Ljava/io/IOException;
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_b
    move-exception v15

    #@48e
    .restart local v15    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    #@490
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "header":[B
    .restart local v21    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_15
    move-object/from16 v18, v19

    #@492
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_7
.end method
