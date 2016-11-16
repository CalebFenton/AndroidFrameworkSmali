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
    .line 4016
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 4020
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@5
    .line 4021
    move-object/from16 v0, p14

    #@7
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    .line 4023
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@b
    .line 4024
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    #@d
    .line 4025
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@f
    .line 4026
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    #@11
    .line 4027
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    #@13
    .line 4028
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@15
    .line 4029
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@17
    .line 4030
    if-nez p13, :cond_1

    #@19
    .line 4031
    new-instance v1, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 4030
    :goto_0
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@20
    .line 4033
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    #@22
    .line 4038
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
    .line 4039
    :cond_0
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    #@2f
    .line 4046
    :goto_1
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@31
    .line 4019
    return-void

    #@32
    .line 4032
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
    .line 4041
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
    .line 4066
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
    .line 4067
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
    .line 4068
    const/16 v22, 0x2710

    #@1d
    .line 4067
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
    .line 4071
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    #@2d
    move/from16 v0, v19

    #@2f
    new-array v13, v0, [B

    #@31
    .line 4072
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
    .line 4073
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
    .line 4076
    .local v9, "checksumSalt":[B
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@4f
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@52
    move-result-object v7

    #@53
    .line 4077
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    #@55
    const-string/jumbo v19, "AES"

    #@58
    move-object/from16 v0, v19

    #@5a
    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@5d
    .line 4078
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    #@5f
    move/from16 v0, v19

    #@61
    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@64
    .line 4079
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@6b
    .line 4082
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string/jumbo v19, "AES-256"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v19

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 4083
    const/16 v19, 0xa

    #@77
    move-object/from16 v0, p1

    #@79
    move/from16 v1, v19

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 4085
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
    .line 4086
    const/16 v19, 0xa

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v19

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    .line 4088
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
    .line 4089
    const/16 v19, 0xa

    #@b1
    move-object/from16 v0, p1

    #@b3
    move/from16 v1, v19

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b8
    .line 4091
    const/16 v19, 0x2710

    #@ba
    move-object/from16 v0, p1

    #@bc
    move/from16 v1, v19

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    .line 4092
    const/16 v19, 0xa

    #@c3
    move-object/from16 v0, p1

    #@c5
    move/from16 v1, v19

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 4095
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    #@cd
    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@d0
    move-result-object v15

    #@d1
    .line 4096
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    #@d3
    move/from16 v0, v19

    #@d5
    move-object/from16 v1, v18

    #@d7
    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@da
    .line 4098
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    #@dd
    move-result-object v5

    #@de
    .line 4099
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
    .line 4100
    const/16 v19, 0xa

    #@f3
    move-object/from16 v0, p1

    #@f5
    move/from16 v1, v19

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fa
    .line 4112
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    #@fd
    move-result-object v5

    #@fe
    .line 4113
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    #@101
    move-result-object v14

    #@102
    .line 4114
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
    .line 4115
    const/16 v22, 0x2710

    #@111
    .line 4114
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
    .line 4117
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
    .line 4118
    array-length v0, v8

    #@128
    move/from16 v20, v0

    #@12a
    .line 4117
    add-int v19, v19, v20

    #@12c
    add-int/lit8 v19, v19, 0x3

    #@12e
    move/from16 v0, v19

    #@130
    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@133
    .line 4119
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13a
    .line 4120
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
    .line 4121
    move-object/from16 v0, v16

    #@146
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    #@149
    .line 4122
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
    .line 4123
    move-object/from16 v0, v16

    #@155
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    #@158
    .line 4124
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
    .line 4125
    move-object/from16 v0, v16

    #@164
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    #@167
    .line 4126
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    #@16a
    .line 4127
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
    .line 4128
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
    .line 4129
    const/16 v19, 0xa

    #@189
    move-object/from16 v0, p1

    #@18b
    move/from16 v1, v19

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@190
    .line 4131
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 4137
    const/16 v2, 0x400

    #@2
    :try_start_0
    new-array v1, v2, [B

    #@4
    .line 4138
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 4134
    .end local v1    # "eof":[B
    :goto_0
    return-void

    #@8
    .line 4139
    :catch_0
    move-exception v0

    #@9
    .line 4140
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
    .line 4050
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
    .line 4051
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    .line 4053
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@18
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 4054
    const/16 v5, 0x40

    #@1e
    .line 4053
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@21
    move-result-object v1

    #@22
    .line 4055
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 4056
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@27
    .line 4057
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
    .line 4049
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 4355
    return-void
.end method

.method public handleTimeout()V
    .locals 4

    #@0
    .prologue
    .line 4366
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@2
    .line 4368
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
    .line 4370
    if-eqz v0, :cond_0

    #@1e
    .line 4371
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@22
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    #@27
    .line 4365
    :cond_0
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    #@0
    .prologue
    .line 4360
    return-void
.end method

.method public run()V
    .locals 31

    #@0
    .prologue
    .line 4146
    const-string/jumbo v3, "BackupManagerService"

    #@3
    const-string/jumbo v4, "--- Performing full-dataset adb backup ---"

    #@6
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 4148
    new-instance v29, Ljava/util/TreeMap;

    #@b
    invoke-direct/range {v29 .. v29}, Ljava/util/TreeMap;-><init>()V

    #@e
    .line 4149
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
    .line 4150
    .local v26, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    #@1c
    .line 4152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    #@1f
    .line 4155
    move-object/from16 v0, p0

    #@21
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 4156
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@29
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    #@2c
    move-result-object v3

    #@2d
    .line 4157
    const/16 v4, 0x40

    #@2f
    .line 4156
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@32
    move-result-object v11

    #@33
    .line 4158
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
    .line 4159
    move/from16 v0, v23

    #@3f
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Landroid/content/pm/PackageInfo;

    #@45
    .line 4161
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    #@47
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    #@49
    if-nez v3, :cond_0

    #@4b
    .line 4162
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4f
    and-int/lit8 v3, v3, 0x1

    #@51
    if-nez v3, :cond_1

    #@53
    .line 4163
    :cond_0
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@55
    move-object/from16 v0, v29

    #@57
    invoke-virtual {v0, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 4158
    :cond_1
    add-int/lit8 v23, v23, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 4170
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
    .line 4173
    const/4 v3, 0x0

    #@64
    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    #@67
    move-result-object v30

    #@68
    .line 4174
    .local v30, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v30, :cond_3

    #@6a
    .line 4185
    move-object/from16 v0, p0

    #@6c
    move-object/from16 v1, v29

    #@6e
    move-object/from16 v2, v30

    #@70
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    #@73
    .line 4192
    .end local v30    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    #@77
    if-eqz v3, :cond_4

    #@79
    .line 4193
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
    .line 4199
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@87
    move-result-object v3

    #@88
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8b
    move-result-object v25

    #@8c
    .line 4200
    .local v25, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_7

    #@92
    .line 4201
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
    .line 4202
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a0
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    #@a3
    move-result v3

    #@a4
    if-eqz v3, :cond_6

    #@a6
    .line 4203
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a8
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    #@ab
    move-result v3

    #@ac
    .line 4202
    if-nez v3, :cond_6

    #@ae
    .line 4204
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    #@b1
    move-result v3

    #@b2
    .line 4202
    if-eqz v3, :cond_5

    #@b4
    .line 4205
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    #@b7
    goto :goto_1

    #@b8
    .line 4211
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
    .line 4212
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
    .line 4213
    .local v28, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    #@d1
    .line 4215
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    #@d2
    .line 4217
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
    .line 4220
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
    .line 4225
    :cond_8
    move-object/from16 v19, v28

    #@f2
    .line 4229
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
    .line 4230
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
    .line 4335
    :try_start_1
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@10d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    #@110
    .line 4339
    :goto_3
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@114
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@116
    monitor-enter v4

    #@117
    .line 4340
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
    .line 4342
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@125
    monitor-enter v4

    #@126
    .line 4343
    :try_start_3
    move-object/from16 v0, p0

    #@128
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@12a
    const/4 v6, 0x1

    #@12b
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@12e
    .line 4344
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
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@139
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@13c
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@13f
    const-string/jumbo v4, "Full backup pass complete."

    #@142
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@145
    .line 4349
    move-object/from16 v0, p0

    #@147
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@149
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@14b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14e
    .line 4231
    return-void

    #@14f
    .line 4217
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_9
    const/16 v18, 0x0

    #@151
    .restart local v18    # "encrypting":Z
    goto :goto_2

    #@152
    .line 4221
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
    .line 4335
    :try_start_5
    move-object/from16 v0, p0

    #@15d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@15f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    #@162
    .line 4339
    :goto_4
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@166
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@168
    monitor-enter v4

    #@169
    .line 4340
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
    .line 4342
    move-object/from16 v0, p0

    #@175
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@177
    monitor-enter v4

    #@178
    .line 4343
    :try_start_7
    move-object/from16 v0, p0

    #@17a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17c
    const/4 v6, 0x1

    #@17d
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@180
    .line 4344
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
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@18b
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@18e
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@191
    const-string/jumbo v4, "Full backup pass complete."

    #@194
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@197
    .line 4349
    move-object/from16 v0, p0

    #@199
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@19b
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@19d
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1a0
    .line 4222
    return-void

    #@1a1
    .line 4339
    :catchall_0
    move-exception v3

    #@1a2
    monitor-exit v4

    #@1a3
    throw v3

    #@1a4
    .line 4342
    :catchall_1
    move-exception v3

    #@1a5
    monitor-exit v4

    #@1a6
    throw v3

    #@1a7
    .line 4339
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    #@1a8
    monitor-exit v4

    #@1a9
    throw v3

    #@1aa
    .line 4342
    :catchall_3
    move-exception v3

    #@1ab
    monitor-exit v4

    #@1ac
    throw v3

    #@1ad
    .line 4259
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
    .line 4261
    .local v22, "headerbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ANDROID BACKUP\n"

    #@1b9
    move-object/from16 v0, v22

    #@1bb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    .line 4262
    const/4 v3, 0x4

    #@1bf
    move-object/from16 v0, v22

    #@1c1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    .line 4263
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
    .line 4267
    if-eqz v18, :cond_f

    #@1d4
    .line 4268
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
    .line 4273
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
    .line 4274
    .local v21, "header":[B
    move-object/from16 v0, v28

    #@1ed
    move-object/from16 v1, v21

    #@1ef
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    #@1f2
    .line 4277
    move-object/from16 v0, p0

    #@1f4
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    #@1f6
    if-eqz v3, :cond_16

    #@1f8
    .line 4278
    new-instance v13, Ljava/util/zip/Deflater;

    #@1fa
    const/16 v3, 0x9

    #@1fc
    invoke-direct {v13, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    #@1ff
    .line 4279
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
    .line 4282
    .end local v13    # "deflater":Ljava/util/zip/Deflater;
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :goto_7
    move-object/from16 v5, v19

    #@20b
    .line 4290
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
    .line 4292
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
    .line 4293
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@224
    .line 4300
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_c
    :goto_8
    :try_start_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@227
    move-result v10

    #@228
    .line 4301
    .local v10, "N":I
    const/16 v23, 0x0

    #@22a
    .restart local v23    # "i":I
    :goto_9
    move/from16 v0, v23

    #@22c
    if-ge v0, v10, :cond_13

    #@22e
    .line 4302
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
    .line 4304
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@23a
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    #@23d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@240
    move-result v24

    #@241
    .line 4306
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
    .line 4307
    if-eqz v24, :cond_11

    #@257
    const-string/jumbo v3, "Shared storage"

    #@25a
    :goto_a
    move-object/from16 v0, p0

    #@25c
    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    #@25f
    .line 4310
    move-object/from16 v0, p0

    #@261
    iput-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    #@263
    .line 4311
    move-object/from16 v0, p0

    #@265
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@267
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage()I

    #@26a
    .line 4315
    move-object/from16 v0, p0

    #@26c
    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    #@26e
    if-eqz v3, :cond_12

    #@270
    .line 4316
    move-object/from16 v0, v26

    #@272
    invoke-virtual {v0, v7, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    #@275
    move-result v27

    #@276
    .line 4317
    .local v27, "obbOkay":Z
    if-nez v27, :cond_12

    #@278
    .line 4318
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
    .line 4325
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
    .line 4326
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
    .line 4331
    if-eqz v5, :cond_d

    #@29e
    .line 4332
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@2a1
    .line 4333
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@2a4
    .line 4335
    :cond_d
    move-object/from16 v0, p0

    #@2a6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@2a8
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    #@2ab
    .line 4339
    :goto_b
    move-object/from16 v0, p0

    #@2ad
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2af
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@2b1
    monitor-enter v4

    #@2b2
    .line 4340
    :try_start_10
    move-object/from16 v0, p0

    #@2b4
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2b6
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@2b8
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    #@2bb
    monitor-exit v4

    #@2bc
    .line 4342
    move-object/from16 v0, p0

    #@2be
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c0
    monitor-enter v4

    #@2c1
    .line 4343
    :try_start_11
    move-object/from16 v0, p0

    #@2c3
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c5
    const/4 v6, 0x1

    #@2c6
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2c9
    .line 4344
    move-object/from16 v0, p0

    #@2cb
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2cd
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    #@2d0
    monitor-exit v4

    #@2d1
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@2d4
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@2d7
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@2da
    const-string/jumbo v4, "Full backup pass complete."

    #@2dd
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e0
    .line 4349
    move-object/from16 v0, p0

    #@2e2
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2e4
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@2e6
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2e9
    .line 4145
    .end local v15    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void

    #@2ea
    .line 4263
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

    #@2ed
    goto/16 :goto_5

    #@2ef
    .line 4270
    :cond_f
    :try_start_13
    const-string/jumbo v3, "none\n"

    #@2f2
    move-object/from16 v0, v22

    #@2f4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    #@2f7
    move-object/from16 v20, v19

    #@2f9
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_6

    #@2fb
    .line 4283
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_1
    move-exception v17

    #@2fc
    .line 4285
    .local v17, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_14
    const-string/jumbo v3, "BackupManagerService"

    #@2ff
    const-string/jumbo v4, "Unable to emit archive header"

    #@302
    move-object/from16 v0, v17

    #@304
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    #@307
    .line 4335
    :try_start_15
    move-object/from16 v0, p0

    #@309
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@30b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    #@30e
    .line 4339
    :goto_e
    move-object/from16 v0, p0

    #@310
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@312
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@314
    monitor-enter v4

    #@315
    .line 4340
    :try_start_16
    move-object/from16 v0, p0

    #@317
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@319
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@31b
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    #@31e
    monitor-exit v4

    #@31f
    .line 4342
    move-object/from16 v0, p0

    #@321
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@323
    monitor-enter v4

    #@324
    .line 4343
    :try_start_17
    move-object/from16 v0, p0

    #@326
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@328
    const/4 v6, 0x1

    #@329
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@32c
    .line 4344
    move-object/from16 v0, p0

    #@32e
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@330
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    #@333
    monitor-exit v4

    #@334
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@337
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@33a
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@33d
    const-string/jumbo v4, "Full backup pass complete."

    #@340
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@343
    .line 4349
    move-object/from16 v0, p0

    #@345
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@347
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@349
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@34c
    .line 4286
    return-void

    #@34d
    .line 4339
    :catchall_4
    move-exception v3

    #@34e
    monitor-exit v4

    #@34f
    throw v3

    #@350
    .line 4342
    :catchall_5
    move-exception v3

    #@351
    monitor-exit v4

    #@352
    throw v3

    #@353
    .line 4294
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v17    # "e":Ljava/lang/Exception;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    :catch_2
    move-exception v14

    #@354
    .line 4295
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_18
    const-string/jumbo v3, "BackupManagerService"

    #@357
    const-string/jumbo v4, "Unable to find shared-storage backup handler"

    #@35a
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    #@35d
    goto/16 :goto_8

    #@35f
    .line 4327
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v21    # "header":[B
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v17

    #@360
    .line 4328
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string/jumbo v3, "BackupManagerService"

    #@363
    const-string/jumbo v4, "Internal exception during full backup"

    #@366
    move-object/from16 v0, v17

    #@368
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    #@36b
    .line 4331
    if-eqz v5, :cond_10

    #@36d
    .line 4332
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@370
    .line 4333
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@373
    .line 4335
    :cond_10
    move-object/from16 v0, p0

    #@375
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@377
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6

    #@37a
    .line 4339
    :goto_f
    move-object/from16 v0, p0

    #@37c
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@37e
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@380
    monitor-enter v4

    #@381
    .line 4340
    :try_start_1b
    move-object/from16 v0, p0

    #@383
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@385
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@387
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    #@38a
    monitor-exit v4

    #@38b
    .line 4342
    move-object/from16 v0, p0

    #@38d
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@38f
    monitor-enter v4

    #@390
    .line 4343
    :try_start_1c
    move-object/from16 v0, p0

    #@392
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@394
    const/4 v6, 0x1

    #@395
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@398
    .line 4344
    move-object/from16 v0, p0

    #@39a
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@39c
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    #@39f
    monitor-exit v4

    #@3a0
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@3a3
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@3a6
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@3a9
    const-string/jumbo v4, "Full backup pass complete."

    #@3ac
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3af
    .line 4349
    move-object/from16 v0, p0

    #@3b1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3b3
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@3b5
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@3b8
    goto/16 :goto_c

    #@3ba
    .line 4307
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

    #@3bc
    goto/16 :goto_a

    #@3be
    .line 4301
    :cond_12
    add-int/lit8 v23, v23, 0x1

    #@3c0
    goto/16 :goto_9

    #@3c2
    .line 4324
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v24    # "isSharedStorage":Z
    :cond_13
    move-object/from16 v0, p0

    #@3c4
    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    #@3c7
    .line 4331
    if-eqz v5, :cond_14

    #@3c9
    .line 4332
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@3cc
    .line 4333
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@3cf
    .line 4335
    :cond_14
    move-object/from16 v0, p0

    #@3d1
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@3d3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    #@3d6
    .line 4339
    :goto_10
    move-object/from16 v0, p0

    #@3d8
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3da
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@3dc
    monitor-enter v4

    #@3dd
    .line 4340
    :try_start_1f
    move-object/from16 v0, p0

    #@3df
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3e1
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@3e3
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    #@3e6
    monitor-exit v4

    #@3e7
    .line 4342
    move-object/from16 v0, p0

    #@3e9
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3eb
    monitor-enter v4

    #@3ec
    .line 4343
    :try_start_20
    move-object/from16 v0, p0

    #@3ee
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3f0
    const/4 v6, 0x1

    #@3f1
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@3f4
    .line 4344
    move-object/from16 v0, p0

    #@3f6
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3f8
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    #@3fb
    monitor-exit v4

    #@3fc
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@3ff
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@402
    .line 4348
    const-string/jumbo v3, "BackupManagerService"

    #@405
    const-string/jumbo v4, "Full backup pass complete."

    #@408
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40b
    .line 4349
    move-object/from16 v0, p0

    #@40d
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@40f
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@411
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@414
    goto/16 :goto_c

    #@416
    .line 4339
    :catchall_6
    move-exception v3

    #@417
    monitor-exit v4

    #@418
    throw v3

    #@419
    .line 4342
    :catchall_7
    move-exception v3

    #@41a
    monitor-exit v4

    #@41b
    throw v3

    #@41c
    .line 4339
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

    #@41d
    monitor-exit v4

    #@41e
    throw v3

    #@41f
    .line 4342
    :catchall_9
    move-exception v3

    #@420
    monitor-exit v4

    #@421
    throw v3

    #@422
    .line 4339
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catchall_a
    move-exception v3

    #@423
    monitor-exit v4

    #@424
    throw v3

    #@425
    .line 4342
    :catchall_b
    move-exception v3

    #@426
    monitor-exit v4

    #@427
    throw v3

    #@428
    .line 4329
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_c
    move-exception v3

    #@429
    .line 4331
    if-eqz v5, :cond_15

    #@42b
    .line 4332
    :try_start_21
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    #@42e
    .line 4333
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    #@431
    .line 4335
    :cond_15
    move-object/from16 v0, p0

    #@433
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    #@435
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_4

    #@438
    .line 4339
    :goto_11
    move-object/from16 v0, p0

    #@43a
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@43c
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    #@43e
    monitor-enter v4

    #@43f
    .line 4340
    :try_start_22
    move-object/from16 v0, p0

    #@441
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@443
    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    #@445
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    #@448
    monitor-exit v4

    #@449
    .line 4342
    move-object/from16 v0, p0

    #@44b
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@44d
    monitor-enter v4

    #@44e
    .line 4343
    :try_start_23
    move-object/from16 v0, p0

    #@450
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@452
    const/4 v8, 0x1

    #@453
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@456
    .line 4344
    move-object/from16 v0, p0

    #@458
    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@45a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    #@45d
    monitor-exit v4

    #@45e
    .line 4346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    #@461
    .line 4347
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    #@464
    .line 4348
    const-string/jumbo v4, "BackupManagerService"

    #@467
    const-string/jumbo v6, "Full backup pass complete."

    #@46a
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46d
    .line 4349
    move-object/from16 v0, p0

    #@46f
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@471
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    #@473
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@476
    .line 4329
    throw v3

    #@477
    .line 4339
    :catchall_d
    move-exception v3

    #@478
    monitor-exit v4

    #@479
    throw v3

    #@47a
    .line 4342
    :catchall_e
    move-exception v3

    #@47b
    monitor-exit v4

    #@47c
    throw v3

    #@47d
    .line 4336
    :catch_4
    move-exception v16

    #@47e
    .local v16, "e":Ljava/io/IOException;
    goto :goto_11

    #@47f
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v15    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v16

    #@480
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_b

    #@482
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v16

    #@483
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_f

    #@485
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

    #@486
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_10

    #@488
    .end local v10    # "N":I
    .end local v16    # "e":Ljava/io/IOException;
    .end local v21    # "header":[B
    .end local v23    # "i":I
    .local v5, "out":Ljava/io/OutputStream;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v17    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v16

    #@489
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_e

    #@48b
    .line 4283
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    :catch_9
    move-exception v17

    #@48c
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    #@48e
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_d

    #@490
    .line 4336
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_a
    move-exception v16

    #@491
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@493
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_b
    move-exception v16

    #@494
    .restart local v16    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    #@496
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "header":[B
    .restart local v22    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v19, v20

    #@498
    .end local v20    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_7
.end method
