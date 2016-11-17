.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


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

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

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
    .line 3999
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 4003
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@5
    .line 4004
    move-object/from16 v0, p14

    #@7
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    .line 4006
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 4007
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    #@d
    .line 4008
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@f
    .line 4009
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    #@11
    .line 4010
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    #@13
    .line 4011
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@15
    .line 4012
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@17
    .line 4013
    if-nez p13, :cond_1

    #@19
    .line 4014
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 4013
    :goto_0
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@20
    .line 4016
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    #@22
    .line 4021
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
    .line 4022
    :cond_0
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@2f
    .line 4029
    :goto_1
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@31
    .line 4002
    return-void

    #@32
    .line 4015
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
    .line 4024
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
    .line 4049
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    move-object/from16 v19, v0

    #@6
    const/16 v20, 0x200

    #@8
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;I)[B

    #@b
    move-result-object v17

    #@c
    .line 4050
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
    .line 4051
    const/16 v22, 0x2710

    #@1d
    .line 4050
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
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    #@2a
    move-result-object v18

    #@2b
    .line 4054
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    #@2d
    move/from16 v0, v19

    #@2f
    new-array v13, v0, [B

    #@31
    .line 4055
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
    .line 4056
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@44
    move-object/from16 v19, v0

    #@46
    const/16 v20, 0x200

    #@48
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;I)[B

    #@4b
    move-result-object v9

    #@4c
    .line 4059
    .local v9, "checksumSalt":[B
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@4f
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@52
    move-result-object v7

    #@53
    .line 4060
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    #@55
    const-string/jumbo v19, "AES"

    #@58
    move-object/from16 v0, v19

    #@5a
    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@5d
    .line 4061
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    #@5f
    move/from16 v0, v19

    #@61
    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@64
    .line 4062
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@6b
    .line 4065
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string/jumbo v19, "AES-256"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v19

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 4066
    const/16 v19, 0xa

    #@77
    move-object/from16 v0, p1

    #@79
    move/from16 v1, v19

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 4068
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
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@8b
    move-result-object v19

    #@8c
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v19

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 4069
    const/16 v19, 0xa

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v19

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    .line 4071
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@a0
    move-object/from16 v19, v0

    #@a2
    move-object/from16 v0, v19

    #@a4
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@a7
    move-result-object v19

    #@a8
    move-object/from16 v0, p1

    #@aa
    move-object/from16 v1, v19

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 4072
    const/16 v19, 0xa

    #@b1
    move-object/from16 v0, p1

    #@b3
    move/from16 v1, v19

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    .line 4074
    const/16 v19, 0x2710

    #@ba
    move-object/from16 v0, p1

    #@bc
    move/from16 v1, v19

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    .line 4075
    const/16 v19, 0xa

    #@c3
    move-object/from16 v0, p1

    #@c5
    move/from16 v1, v19

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 4078
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@cd
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@d0
    move-result-object v15

    #@d1
    .line 4079
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    #@d3
    move/from16 v0, v19

    #@d5
    move-object/from16 v1, v18

    #@d7
    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@da
    .line 4081
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    #@dd
    move-result-object v5

    #@de
    .line 4082
    .local v5, "IV":[B
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e2
    move-object/from16 v19, v0

    #@e4
    move-object/from16 v0, v19

    #@e6
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@e9
    move-result-object v19

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v19

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 4083
    const/16 v19, 0xa

    #@f3
    move-object/from16 v0, p1

    #@f5
    move/from16 v1, v19

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fa
    .line 4095
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    #@fd
    move-result-object v5

    #@fe
    .line 4096
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    #@101
    move-result-object v14

    #@102
    .line 4097
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
    .line 4098
    const/16 v22, 0x2710

    #@111
    .line 4097
    move-object/from16 v0, v19

    #@113
    move-object/from16 v1, v20

    #@115
    move-object/from16 v2, v21

    #@117
    move/from16 v3, v22

    #@119
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    #@11c
    move-result-object v8

    #@11d
    .line 4100
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
    .line 4101
    array-length v0, v8

    #@128
    move/from16 v20, v0

    #@12a
    .line 4100
    add-int v19, v19, v20

    #@12c
    add-int/lit8 v19, v19, 0x3

    #@12e
    move/from16 v0, v19

    #@130
    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@133
    .line 4102
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13a
    .line 4103
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
    .line 4104
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    #@149
    .line 4105
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
    .line 4106
    move-object/from16 v0, v16

    #@155
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    #@158
    .line 4107
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
    .line 4108
    move-object/from16 v0, v16

    #@164
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    #@167
    .line 4109
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    #@16a
    .line 4110
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
    .line 4111
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@178
    move-object/from16 v19, v0

    #@17a
    move-object/from16 v0, v19

    #@17c
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    #@17f
    move-result-object v19

    #@180
    move-object/from16 v0, p1

    #@182
    move-object/from16 v1, v19

    #@184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    .line 4112
    const/16 v19, 0xa

    #@189
    move-object/from16 v0, p1

    #@18b
    move/from16 v1, v19

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@190
    .line 4114
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 4120
    const/16 v2, 0x400

    #@2
    :try_start_0
    new-array v1, v2, [B

    #@4
    .line 4121
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 4117
    .end local v1    # "eof":[B
    :goto_0
    return-void

    #@8
    .line 4122
    :catch_0
    move-exception v0

    #@9
    .line 4123
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
    .line 4033
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
    .line 4034
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    .line 4036
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@18
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 4037
    const/16 v5, 0x40

    #@1e
    .line 4036
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@21
    move-result-object v1

    #@22
    .line 4038
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 4039
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .line 4040
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
    .line 4032
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 4335
    return-void
.end method

.method public handleTimeout()V
    .locals 4

    #@0
    .prologue
    .line 4346
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@2
    .line 4348
    .local v0, "target":Landroid/content/pm/PackageInfo;
    const-string/jumbo v1, "BackupManagerService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "adb backup timeout of "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 4350
    if-eqz v0, :cond_0

    #@1e
    .line 4351
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@22
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@27
    .line 4345
    :cond_0
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    #@0
    .prologue
    .line 4340
    return-void
.end method

.method public run()V
    .locals 31

    #@0
    .prologue
    .line 4129
    const-string/jumbo v3, "BackupManagerService"

    #@3
    const-string/jumbo v4, "--- Performing full-dataset adb backup ---"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4131
    new-instance v29, Ljava/util/TreeMap;

    #@b
    invoke-direct/range {v29 .. v29}, Ljava/util/TreeMap;-><init>()V

    #@e
    .line 4132
    .local v29, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v26, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@14
    move-object/from16 v0, v26

    #@16
    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    #@19
    .line 4133
    .local v26, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    #@1c
    .line 4135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    #@1f
    .line 4138
    move-object/from16 v0, p0

    #@21
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 4139
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v3

    #@2d
    .line 4140
    const/16 v4, 0x40

    #@2f
    .line 4139
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@32
    move-result-object v11

    #@33
    .line 4141
    .local v11, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v23, 0x0

    #@35
    .local v23, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@38
    move-result v3

    #@39
    move/from16 v0, v23

    #@3b
    if-ge v0, v3, :cond_2

    #@3d
    .line 4142
    move/from16 v0, v23

    #@3f
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Landroid/content/pm/PackageInfo;

    #@45
    .line 4144
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@47
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@49
    if-nez v3, :cond_0

    #@4b
    .line 4145
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4f
    and-int/lit8 v3, v3, 0x1

    #@51
    if-nez v3, :cond_1

    #@53
    .line 4146
    :cond_0
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@55
    move-object/from16 v0, v29

    #@57
    invoke-virtual {v0, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 4141
    :cond_1
    add-int/lit8 v23, v23, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 4153
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v23    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@5f
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 4156
    const/4 v3, 0x0

    #@64
    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    #@67
    move-result-object v30

    #@68
    .line 4157
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v30, :cond_3

    #@6a
    .line 4168
    move-object/from16 v0, p0

    #@6c
    move-object/from16 v1, v29

    #@6e
    move-object/from16 v2, v30

    #@70
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    #@73
    .line 4175
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@77
    if-eqz v3, :cond_4

    #@79
    .line 4176
    move-object/from16 v0, p0

    #@7b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@7d
    move-object/from16 v0, p0

    #@7f
    move-object/from16 v1, v29

    #@81
    invoke-virtual {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    #@84
    .line 4182
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@87
    move-result-object v3

    #@88
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8b
    move-result-object v25

    #@8c
    .line 4183
    .local v25, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_7

    #@92
    .line 4184
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@95
    move-result-object v3

    #@96
    check-cast v3, Ljava/util/Map$Entry;

    #@98
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@9b
    move-result-object v7

    #@9c
    check-cast v7, Landroid/content/pm/PackageInfo;

    #@9e
    .line 4185
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a0
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@a3
    move-result v3

    #@a4
    if-eqz v3, :cond_6

    #@a6
    .line 4186
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a8
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    #@ab
    move-result v3

    #@ac
    .line 4185
    if-nez v3, :cond_6

    #@ae
    .line 4187
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    #@b1
    move-result v3

    #@b2
    .line 4185
    if-eqz v3, :cond_5

    #@b4
    .line 4188
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    #@b7
    goto :goto_1

    #@b8
    .line 4194
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    #@ba
    invoke-virtual/range {v29 .. v29}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@bd
    move-result-object v3

    #@be
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c1
    .line 4195
    .local v12, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v28, Ljava/io/FileOutputStream;

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@c7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@ca
    move-result-object v3

    #@cb
    move-object/from16 v0, v28

    #@cd
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@d0
    .line 4196
    .local v28, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    #@d1
    .line 4198
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    #@d2
    .line 4200
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@d6
    if-eqz v3, :cond_9

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@dc
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@df
    move-result v3

    #@e0
    if-lez v3, :cond_9

    #@e2
    const/16 v18, 0x1

    #@e4
    .line 4203
    .local v18, "encrypting":Z
    :goto_2
    move-object/from16 v0, p0

    #@e6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@e8
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    #@eb
    move-result v3

    #@ec
    if-eqz v3, :cond_8

    #@ee
    if-eqz v18, :cond_a

    #@f0
    .line 4208
    :cond_8
    move-object/from16 v19, v28

    #@f2
    .line 4212
    .local v19, "finalOutput":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    #@f4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    #@fa
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    #@fd
    move-result v3

    #@fe
    if-nez v3, :cond_b

    #@100
    .line 4213
    const-string/jumbo v3, "BackupManagerService"

    #@103
    const-string/jumbo v4, "Backup password mismatch; aborting"

    #@106
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    #@109
    .line 4315
    :try_start_1
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@10d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    #@110
    .line 4319
    :goto_3
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@114
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@116
    monitor-enter v4

    #@117
    .line 4320
    :try_start_2
    move-object/from16 v0, p0

    #@119
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11b
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@11d
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@120
    monitor-exit v4

    #@121
    .line 4322
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@125
    monitor-enter v4

    #@126
    .line 4323
    :try_start_3
    move-object/from16 v0, p0

    #@128
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12a
    const/4 v6, 0x1

    #@12b
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@12e
    .line 4324
    move-object/from16 v0, p0

    #@130
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@132
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@135
    monitor-exit v4

    #@136
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@139
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@13c
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@13f
    const-string/jumbo v4, "Full backup pass complete."

    #@142
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    .line 4329
    move-object/from16 v0, p0

    #@147
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@149
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@14b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14e
    .line 4214
    return-void

    #@14f
    .line 4200
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_9
    const/16 v18, 0x0

    #@151
    .restart local v18    # "encrypting":Z
    goto :goto_2

    #@152
    .line 4204
    :cond_a
    :try_start_4
    const-string/jumbo v3, "BackupManagerService"

    #@155
    const-string/jumbo v4, "Unencrypted backup of encrypted device; aborting"

    #@158
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    #@15b
    .line 4315
    :try_start_5
    move-object/from16 v0, p0

    #@15d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@15f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    #@162
    .line 4319
    :goto_4
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@166
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@168
    monitor-enter v4

    #@169
    .line 4320
    :try_start_6
    move-object/from16 v0, p0

    #@16b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16d
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@16f
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@172
    monitor-exit v4

    #@173
    .line 4322
    move-object/from16 v0, p0

    #@175
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@177
    monitor-enter v4

    #@178
    .line 4323
    :try_start_7
    move-object/from16 v0, p0

    #@17a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17c
    const/4 v6, 0x1

    #@17d
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@180
    .line 4324
    move-object/from16 v0, p0

    #@182
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@184
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@187
    monitor-exit v4

    #@188
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@18b
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@18e
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@191
    const-string/jumbo v4, "Full backup pass complete."

    #@194
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@197
    .line 4329
    move-object/from16 v0, p0

    #@199
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19b
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@19d
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1a0
    .line 4205
    return-void

    #@1a1
    .line 4319
    :catchall_0
    move-exception v3

    #@1a2
    monitor-exit v4

    #@1a3
    throw v3

    #@1a4
    .line 4322
    :catchall_1
    move-exception v3

    #@1a5
    monitor-exit v4

    #@1a6
    throw v3

    #@1a7
    .line 4319
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    #@1a8
    monitor-exit v4

    #@1a9
    throw v3

    #@1aa
    .line 4322
    :catchall_3
    move-exception v3

    #@1ab
    monitor-exit v4

    #@1ac
    throw v3

    #@1ad
    .line 4242
    :cond_b
    :try_start_8
    new-instance v22, Ljava/lang/StringBuilder;

    #@1af
    const/16 v3, 0x400

    #@1b1
    move-object/from16 v0, v22

    #@1b3
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b6
    .line 4244
    .local v22, "headerbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ANDROID BACKUP\n"

    #@1b9
    move-object/from16 v0, v22

    #@1bb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    .line 4245
    const/4 v3, 0x4

    #@1bf
    move-object/from16 v0, v22

    #@1c1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    .line 4246
    move-object/from16 v0, p0

    #@1c6
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@1c8
    if-eqz v3, :cond_e

    #@1ca
    const-string/jumbo v3, "\n1\n"

    #@1cd
    :goto_5
    move-object/from16 v0, v22

    #@1cf
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    #@1d2
    .line 4250
    if-eqz v18, :cond_f

    #@1d4
    .line 4251
    :try_start_9
    move-object/from16 v0, p0

    #@1d6
    move-object/from16 v1, v22

    #@1d8
    move-object/from16 v2, v28

    #@1da
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    #@1dd
    move-result-object v19

    #@1de
    move-object/from16 v20, v19

    #@1e0
    .line 4256
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .local v20, "finalOutput":Ljava/io/OutputStream;
    :goto_6
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v3

    #@1e4
    const-string/jumbo v4, "UTF-8"

    #@1e7
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@1ea
    move-result-object v21

    #@1eb
    .line 4257
    .local v21, "header":[B
    move-object/from16 v0, v28

    #@1ed
    move-object/from16 v1, v21

    #@1ef
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    #@1f2
    .line 4260
    move-object/from16 v0, p0

    #@1f4
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@1f6
    if-eqz v3, :cond_16

    #@1f8
    .line 4261
    new-instance v13, Ljava/util/zip/Deflater;

    #@1fa
    const/16 v3, 0x9

    #@1fc
    invoke-direct {v13, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    #@1ff
    .line 4262
    .local v13, "deflater":Ljava/util/zip/Deflater;
    new-instance v19, Ljava/util/zip/DeflaterOutputStream;

    #@201
    const/4 v3, 0x1

    #@202
    move-object/from16 v0, v19

    #@204
    move-object/from16 v1, v20

    #@206
    invoke-direct {v0, v1, v13, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    #@209
    .line 4265
    .end local v13    # "deflater":Ljava/util/zip/Deflater;
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :goto_7
    move-object/from16 v5, v19

    #@20b
    .line 4273
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_b
    move-object/from16 v0, p0

    #@20d
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    #@20f
    if-eqz v3, :cond_c

    #@211
    .line 4275
    :try_start_c
    move-object/from16 v0, p0

    #@213
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@215
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@218
    move-result-object v3

    #@219
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    #@21c
    const/4 v6, 0x0

    #@21d
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@220
    move-result-object v7

    #@221
    .line 4276
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@224
    .line 4283
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_c
    :goto_8
    :try_start_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@227
    move-result v10

    #@228
    .line 4284
    .local v10, "N":I
    const/16 v23, 0x0

    #@22a
    .restart local v23    # "i":I
    :goto_9
    move/from16 v0, v23

    #@22c
    if-ge v0, v10, :cond_13

    #@22e
    .line 4285
    move/from16 v0, v23

    #@230
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@233
    move-result-object v3

    #@234
    move-object v0, v3

    #@235
    check-cast v0, Landroid/content/pm/PackageInfo;

    #@237
    move-object v7, v0

    #@238
    .line 4287
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@23a
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    #@23d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@240
    move-result v24

    #@241
    .line 4289
    .local v24, "isSharedStorage":Z
    new-instance v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@247
    move-object/from16 v0, p0

    #@249
    iget-boolean v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    #@24b
    const/4 v6, 0x0

    #@24c
    move-object/from16 v9, p0

    #@24e
    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@251
    move-object/from16 v0, p0

    #@253
    iput-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@255
    .line 4290
    if-eqz v24, :cond_11

    #@257
    const-string/jumbo v3, "Shared storage"

    #@25a
    :goto_a
    move-object/from16 v0, p0

    #@25c
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    #@25f
    .line 4293
    move-object/from16 v0, p0

    #@261
    iput-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@263
    .line 4294
    move-object/from16 v0, p0

    #@265
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@267
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage()I

    #@26a
    .line 4298
    move-object/from16 v0, p0

    #@26c
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@26e
    if-eqz v3, :cond_12

    #@270
    .line 4299
    move-object/from16 v0, v26

    #@272
    invoke-virtual {v0, v7, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    #@275
    move-result v27

    #@276
    .line 4300
    .local v27, "obbOkay":Z
    if-nez v27, :cond_12

    #@278
    .line 4301
    new-instance v3, Ljava/lang/RuntimeException;

    #@27a
    new-instance v4, Ljava/lang/StringBuilder;

    #@27c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27f
    const-string/jumbo v6, "Failure writing OBB stack for "

    #@282
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v4

    #@286
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v4

    #@28a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v4

    #@28e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@291
    throw v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    #@292
    .line 4308
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "N":I
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v23    # "i":I
    .end local v24    # "isSharedStorage":Z
    .end local v27    # "obbOkay":Z
    :catch_0
    move-exception v15

    #@293
    .line 4309
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v3, "BackupManagerService"

    #@296
    const-string/jumbo v4, "App died during full backup"

    #@299
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    #@29c
    .line 4314
    if-eqz v5, :cond_d

    #@29e
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@2a1
    .line 4315
    :cond_d
    move-object/from16 v0, p0

    #@2a3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@2a5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    #@2a8
    .line 4319
    :goto_b
    move-object/from16 v0, p0

    #@2aa
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2ac
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@2ae
    monitor-enter v4

    #@2af
    .line 4320
    :try_start_10
    move-object/from16 v0, p0

    #@2b1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b3
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@2b5
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    #@2b8
    monitor-exit v4

    #@2b9
    .line 4322
    move-object/from16 v0, p0

    #@2bb
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2bd
    monitor-enter v4

    #@2be
    .line 4323
    :try_start_11
    move-object/from16 v0, p0

    #@2c0
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c2
    const/4 v6, 0x1

    #@2c3
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2c6
    .line 4324
    move-object/from16 v0, p0

    #@2c8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2ca
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    #@2cd
    monitor-exit v4

    #@2ce
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@2d1
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@2d4
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@2d7
    const-string/jumbo v4, "Full backup pass complete."

    #@2da
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2dd
    .line 4329
    move-object/from16 v0, p0

    #@2df
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e1
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2e3
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2e6
    .line 4128
    .end local v15    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void

    #@2e7
    .line 4246
    .local v5, "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_e
    :try_start_12
    const-string/jumbo v3, "\n0\n"
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    #@2ea
    goto/16 :goto_5

    #@2ec
    .line 4253
    :cond_f
    :try_start_13
    const-string/jumbo v3, "none\n"

    #@2ef
    move-object/from16 v0, v22

    #@2f1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    #@2f4
    move-object/from16 v20, v19

    #@2f6
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_6

    #@2f8
    .line 4266
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_1
    move-exception v17

    #@2f9
    .line 4268
    .local v17, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@2fc
    const-string/jumbo v4, "Unable to emit archive header"

    #@2ff
    move-object/from16 v0, v17

    #@301
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    #@304
    .line 4315
    :try_start_15
    move-object/from16 v0, p0

    #@306
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@308
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    #@30b
    .line 4319
    :goto_e
    move-object/from16 v0, p0

    #@30d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@30f
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@311
    monitor-enter v4

    #@312
    .line 4320
    :try_start_16
    move-object/from16 v0, p0

    #@314
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@316
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@318
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    #@31b
    monitor-exit v4

    #@31c
    .line 4322
    move-object/from16 v0, p0

    #@31e
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@320
    monitor-enter v4

    #@321
    .line 4323
    :try_start_17
    move-object/from16 v0, p0

    #@323
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@325
    const/4 v6, 0x1

    #@326
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@329
    .line 4324
    move-object/from16 v0, p0

    #@32b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@32d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    #@330
    monitor-exit v4

    #@331
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@334
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@337
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@33a
    const-string/jumbo v4, "Full backup pass complete."

    #@33d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@340
    .line 4329
    move-object/from16 v0, p0

    #@342
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@344
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@346
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@349
    .line 4269
    return-void

    #@34a
    .line 4319
    :catchall_4
    move-exception v3

    #@34b
    monitor-exit v4

    #@34c
    throw v3

    #@34d
    .line 4322
    :catchall_5
    move-exception v3

    #@34e
    monitor-exit v4

    #@34f
    throw v3

    #@350
    .line 4277
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v17    # "e":Ljava/lang/Exception;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    :catch_2
    move-exception v14

    #@351
    .line 4278
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_18
    const-string/jumbo v3, "BackupManagerService"

    #@354
    const-string/jumbo v4, "Unable to find shared-storage backup handler"

    #@357
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@35a
    goto/16 :goto_8

    #@35c
    .line 4310
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v17

    #@35d
    .line 4311
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string/jumbo v3, "BackupManagerService"

    #@360
    const-string/jumbo v4, "Internal exception during full backup"

    #@363
    move-object/from16 v0, v17

    #@365
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    #@368
    .line 4314
    if-eqz v5, :cond_10

    #@36a
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@36d
    .line 4315
    :cond_10
    move-object/from16 v0, p0

    #@36f
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@371
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6

    #@374
    .line 4319
    :goto_f
    move-object/from16 v0, p0

    #@376
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@378
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@37a
    monitor-enter v4

    #@37b
    .line 4320
    :try_start_1b
    move-object/from16 v0, p0

    #@37d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@37f
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@381
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    #@384
    monitor-exit v4

    #@385
    .line 4322
    move-object/from16 v0, p0

    #@387
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@389
    monitor-enter v4

    #@38a
    .line 4323
    :try_start_1c
    move-object/from16 v0, p0

    #@38c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@38e
    const/4 v6, 0x1

    #@38f
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@392
    .line 4324
    move-object/from16 v0, p0

    #@394
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@396
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    #@399
    monitor-exit v4

    #@39a
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@39d
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@3a0
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@3a3
    const-string/jumbo v4, "Full backup pass complete."

    #@3a6
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a9
    .line 4329
    move-object/from16 v0, p0

    #@3ab
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3ad
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3af
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3b2
    goto/16 :goto_c

    #@3b4
    .line 4290
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "N":I
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v23    # "i":I
    .restart local v24    # "isSharedStorage":Z
    :cond_11
    :try_start_1d
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@3b6
    goto/16 :goto_a

    #@3b8
    .line 4284
    :cond_12
    add-int/lit8 v23, v23, 0x1

    #@3ba
    goto/16 :goto_9

    #@3bc
    .line 4307
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v24    # "isSharedStorage":Z
    :cond_13
    move-object/from16 v0, p0

    #@3be
    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    #@3c1
    .line 4314
    if-eqz v5, :cond_14

    #@3c3
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@3c6
    .line 4315
    :cond_14
    move-object/from16 v0, p0

    #@3c8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@3ca
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    #@3cd
    .line 4319
    :goto_10
    move-object/from16 v0, p0

    #@3cf
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3d1
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3d3
    monitor-enter v4

    #@3d4
    .line 4320
    :try_start_1f
    move-object/from16 v0, p0

    #@3d6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3d8
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@3da
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    #@3dd
    monitor-exit v4

    #@3de
    .line 4322
    move-object/from16 v0, p0

    #@3e0
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e2
    monitor-enter v4

    #@3e3
    .line 4323
    :try_start_20
    move-object/from16 v0, p0

    #@3e5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e7
    const/4 v6, 0x1

    #@3e8
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@3eb
    .line 4324
    move-object/from16 v0, p0

    #@3ed
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3ef
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    #@3f2
    monitor-exit v4

    #@3f3
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@3f6
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@3f9
    .line 4328
    const-string/jumbo v3, "BackupManagerService"

    #@3fc
    const-string/jumbo v4, "Full backup pass complete."

    #@3ff
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@402
    .line 4329
    move-object/from16 v0, p0

    #@404
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@406
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@408
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@40b
    goto/16 :goto_c

    #@40d
    .line 4319
    :catchall_6
    move-exception v3

    #@40e
    monitor-exit v4

    #@40f
    throw v3

    #@410
    .line 4322
    :catchall_7
    move-exception v3

    #@411
    monitor-exit v4

    #@412
    throw v3

    #@413
    .line 4319
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v10    # "N":I
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v23    # "i":I
    .restart local v17    # "e":Ljava/lang/Exception;
    :catchall_8
    move-exception v3

    #@414
    monitor-exit v4

    #@415
    throw v3

    #@416
    .line 4322
    :catchall_9
    move-exception v3

    #@417
    monitor-exit v4

    #@418
    throw v3

    #@419
    .line 4319
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catchall_a
    move-exception v3

    #@41a
    monitor-exit v4

    #@41b
    throw v3

    #@41c
    .line 4322
    :catchall_b
    move-exception v3

    #@41d
    monitor-exit v4

    #@41e
    throw v3

    #@41f
    .line 4312
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_c
    move-exception v3

    #@420
    .line 4314
    if-eqz v5, :cond_15

    #@422
    :try_start_21
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@425
    .line 4315
    :cond_15
    move-object/from16 v0, p0

    #@427
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@429
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_4

    #@42c
    .line 4319
    :goto_11
    move-object/from16 v0, p0

    #@42e
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@430
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@432
    monitor-enter v4

    #@433
    .line 4320
    :try_start_22
    move-object/from16 v0, p0

    #@435
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@437
    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@439
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    #@43c
    monitor-exit v4

    #@43d
    .line 4322
    move-object/from16 v0, p0

    #@43f
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@441
    monitor-enter v4

    #@442
    .line 4323
    :try_start_23
    move-object/from16 v0, p0

    #@444
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@446
    const/4 v8, 0x1

    #@447
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@44a
    .line 4324
    move-object/from16 v0, p0

    #@44c
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@44e
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    #@451
    monitor-exit v4

    #@452
    .line 4326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@455
    .line 4327
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@458
    .line 4328
    const-string/jumbo v4, "BackupManagerService"

    #@45b
    const-string/jumbo v6, "Full backup pass complete."

    #@45e
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@461
    .line 4329
    move-object/from16 v0, p0

    #@463
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@465
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@467
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@46a
    .line 4312
    throw v3

    #@46b
    .line 4319
    :catchall_d
    move-exception v3

    #@46c
    monitor-exit v4

    #@46d
    throw v3

    #@46e
    .line 4322
    :catchall_e
    move-exception v3

    #@46f
    monitor-exit v4

    #@470
    throw v3

    #@471
    .line 4316
    :catch_4
    move-exception v16

    #@472
    .local v16, "e":Ljava/io/IOException;
    goto :goto_11

    #@473
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v16

    #@474
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    #@476
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v16

    #@477
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_f

    #@479
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v10    # "N":I
    .restart local v18    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v23    # "i":I
    :catch_7
    move-exception v16

    #@47a
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_10

    #@47c
    .end local v10    # "N":I
    .end local v16    # "e":Ljava/io/IOException;
    .end local v21    # "header":[B
    .end local v23    # "i":I
    .local v5, "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v16

    #@47d
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    #@47f
    .line 4266
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    :catch_9
    move-exception v17

    #@480
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    #@482
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_d

    #@484
    .line 4316
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v16

    #@485
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@487
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_b
    move-exception v16

    #@488
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    #@48a
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v19, v20

    #@48c
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_7
.end method
