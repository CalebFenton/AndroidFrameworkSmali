.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    #@0
    .prologue
    .line 2999
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@2
    .line 3000
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    #@5
    .line 3001
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    #@7
    .line 3002
    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    #@9
    .line 2999
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    #@0
    .prologue
    .line 3081
    const/16 v0, 0x14

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@5
    .line 3080
    return-void
.end method

.method public handleExecute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3007
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@4
    invoke-static {v13}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;)V

    #@7
    .line 3008
    move-object/from16 v0, p0

    #@9
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@b
    invoke-static {v13}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;)V

    #@e
    .line 3010
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    #@11
    move-result-object v11

    #@12
    .line 3012
    .local v11, "obbInfo":Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    #@14
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@16
    iget-object v14, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget v15, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    #@1c
    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->-wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    #@1f
    move-result v13

    #@20
    if-nez v13, :cond_0

    #@22
    .line 3013
    const-string/jumbo v13, "MountService"

    #@25
    new-instance v14, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v15, "Denied attempt to mount OBB "

    #@2d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v14

    #@31
    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    #@33
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v14

    #@37
    .line 3014
    const-string/jumbo v15, " which is owned by "

    #@3a
    .line 3013
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v14

    #@3e
    .line 3014
    iget-object v15, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    #@40
    .line 3013
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v14

    #@44
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v14

    #@48
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 3015
    const/16 v13, 0x19

    #@4d
    move-object/from16 v0, p0

    #@4f
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@52
    .line 3016
    return-void

    #@53
    .line 3020
    :cond_0
    move-object/from16 v0, p0

    #@55
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@57
    invoke-static {v13}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Ljava/util/Map;

    #@5a
    move-result-object v14

    #@5b
    monitor-enter v14

    #@5c
    .line 3021
    :try_start_0
    move-object/from16 v0, p0

    #@5e
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@60
    invoke-static {v13}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    #@63
    move-result-object v13

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@68
    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@6a
    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    move-result v8

    #@6e
    .local v8, "isMounted":Z
    monitor-exit v14

    #@6f
    .line 3023
    if-eqz v8, :cond_1

    #@71
    .line 3024
    const-string/jumbo v13, "MountService"

    #@74
    new-instance v14, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v15, "Attempt to mount OBB which is already mounted: "

    #@7c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v14

    #@80
    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    #@82
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v14

    #@86
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v14

    #@8a
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 3025
    const/16 v13, 0x18

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@94
    .line 3026
    return-void

    #@95
    .line 3020
    .end local v8    # "isMounted":Z
    :catchall_0
    move-exception v13

    #@96
    monitor-exit v14

    #@97
    throw v13

    #@98
    .line 3030
    .restart local v8    # "isMounted":Z
    :cond_1
    move-object/from16 v0, p0

    #@9a
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    #@9c
    if-nez v13, :cond_3

    #@9e
    .line 3031
    const-string/jumbo v7, "none"

    #@a1
    .line 3052
    .local v7, "hashedKey":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    #@a2
    .line 3054
    .local v12, "rc":I
    :try_start_1
    move-object/from16 v0, p0

    #@a4
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@a6
    invoke-static {v13}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    #@a9
    move-result-object v13

    #@aa
    const-string/jumbo v14, "obb"

    #@ad
    const/4 v15, 0x4

    #@ae
    new-array v15, v15, [Ljava/lang/Object;

    #@b0
    const-string/jumbo v16, "mount"

    #@b3
    const/16 v17, 0x0

    #@b5
    aput-object v16, v15, v17

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@bb
    move-object/from16 v16, v0

    #@bd
    move-object/from16 v0, v16

    #@bf
    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    #@c1
    move-object/from16 v16, v0

    #@c3
    const/16 v17, 0x1

    #@c5
    aput-object v16, v15, v17

    #@c7
    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@c9
    move-object/from16 v0, v16

    #@cb
    invoke-direct {v0, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@ce
    const/16 v17, 0x2

    #@d0
    aput-object v16, v15, v17

    #@d2
    .line 3055
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@d6
    move-object/from16 v16, v0

    #@d8
    move-object/from16 v0, v16

    #@da
    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@dc
    move/from16 v16, v0

    #@de
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e1
    move-result-object v16

    #@e2
    const/16 v17, 0x3

    #@e4
    aput-object v16, v15, v17

    #@e6
    .line 3054
    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    #@e9
    .line 3063
    :cond_2
    :goto_1
    if-nez v12, :cond_4

    #@eb
    .line 3067
    move-object/from16 v0, p0

    #@ed
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@ef
    invoke-static {v13}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Ljava/util/Map;

    #@f2
    move-result-object v14

    #@f3
    monitor-enter v14

    #@f4
    .line 3068
    :try_start_2
    move-object/from16 v0, p0

    #@f6
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@fc
    invoke-static {v13, v15}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ff
    monitor-exit v14

    #@100
    .line 3071
    const/4 v13, 0x1

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@106
    .line 3006
    :goto_2
    return-void

    #@107
    .line 3034
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v12    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v13, "PBKDF2WithHmacSHA1"

    #@10a
    invoke-static {v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@10d
    move-result-object v6

    #@10e
    .line 3036
    .local v6, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    #@114
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    #@117
    move-result-object v13

    #@118
    iget-object v14, v11, Landroid/content/res/ObbInfo;->salt:[B

    #@11a
    .line 3037
    const/16 v15, 0x400

    #@11c
    const/16 v16, 0x80

    #@11e
    .line 3036
    move/from16 v0, v16

    #@120
    invoke-direct {v10, v13, v14, v15, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    #@123
    .line 3038
    .local v10, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@126
    move-result-object v9

    #@127
    .line 3039
    .local v9, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    #@129
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@12c
    move-result-object v13

    #@12d
    invoke-direct {v1, v13}, Ljava/math/BigInteger;-><init>([B)V

    #@130
    .line 3040
    .local v1, "bi":Ljava/math/BigInteger;
    const/16 v13, 0x10

    #@132
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_0

    #@135
    move-result-object v7

    #@136
    .restart local v7    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_0

    #@138
    .line 3045
    .end local v1    # "bi":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    .end local v10    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v5

    #@139
    .line 3046
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v13, "MountService"

    #@13c
    const-string/jumbo v14, "Invalid key spec when loading PBKDF2 algorithm"

    #@13f
    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@142
    .line 3047
    const/16 v13, 0x14

    #@144
    move-object/from16 v0, p0

    #@146
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@149
    .line 3048
    return-void

    #@14a
    .line 3041
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v4

    #@14b
    .line 3042
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v13, "MountService"

    #@14e
    const-string/jumbo v14, "Could not load PBKDF2 algorithm"

    #@151
    invoke-static {v13, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@154
    .line 3043
    const/16 v13, 0x14

    #@156
    move-object/from16 v0, p0

    #@158
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@15b
    .line 3044
    return-void

    #@15c
    .line 3056
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "hashedKey":Ljava/lang/String;
    .restart local v12    # "rc":I
    :catch_2
    move-exception v3

    #@15d
    .line 3057
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@160
    move-result v2

    #@161
    .line 3058
    .local v2, "code":I
    const/16 v13, 0x195

    #@163
    if-eq v2, v13, :cond_2

    #@165
    .line 3059
    const/4 v12, -0x1

    #@166
    goto :goto_1

    #@167
    .line 3067
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v13

    #@168
    monitor-exit v14

    #@169
    throw v13

    #@16a
    .line 3073
    :cond_4
    const-string/jumbo v13, "MountService"

    #@16d
    new-instance v14, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v15, "Couldn\'t mount OBB file: "

    #@175
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v14

    #@179
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v14

    #@17d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v14

    #@181
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@184
    .line 3075
    const/16 v13, 0x15

    #@186
    move-object/from16 v0, p0

    #@188
    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    #@18b
    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3087
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MountObbAction{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 3088
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 3089
    const/16 v1, 0x7d

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 3090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method
