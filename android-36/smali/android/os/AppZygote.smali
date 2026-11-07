.class public Landroid/os/AppZygote;
.super Ljava/lang/Object;
.source "AppZygote.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AppZygote"


# instance fields
.field private final blacklist mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mProcessInfo:Landroid/content/pm/ProcessInfo;

.field private blacklist mZygote:Landroid/os/ChildZygoteProcess;

.field private final blacklist mZygoteUid:I

.field private final blacklist mZygoteUidGidMax:I

.field private final blacklist mZygoteUidGidMin:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p3, "zygoteUid"    # I
    .param p4, "uidGidMin"    # I
    .param p5, "uidGidMax"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/AppZygote;->mLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    iput-object p2, p0, Landroid/os/AppZygote;->mProcessInfo:Landroid/content/pm/ProcessInfo;

    .line 73
    iput p3, p0, Landroid/os/AppZygote;->mZygoteUid:I

    .line 74
    iput p4, p0, Landroid/os/AppZygote;->mZygoteUidGidMin:I

    .line 75
    iput p5, p0, Landroid/os/AppZygote;->mZygoteUidGidMax:I

    .line 76
    return-void
.end method

.method private blacklist connectToZygoteIfNeededLocked()V
    .registers 16

    .line 194
    const-string v1, "AppZygote"

    iget-object v0, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_12

    .line 195
    :cond_d
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :goto_12
    move-object v10, v0

    .line 197
    .local v10, "abi":Ljava/lang/String;
    :try_start_13
    iget-object v0, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroid/os/AppZygote;->mProcessInfo:Landroid/content/pm/ProcessInfo;

    invoke-static {v0, v2}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I

    move-result v8

    .line 200
    .local v8, "runtimeFlags":I
    iget-object v0, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 201
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v7

    .line 202
    .local v7, "sharedAppGid":[I
    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const-string v3, "com.android.internal.os.AppZygoteInit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_zygote"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/os/AppZygote;->mZygoteUid:I

    iget v6, p0, Landroid/os/AppZygote;->mZygoteUid:I

    const-string v9, "app_zygote"

    .line 212
    invoke-static {v10}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Landroid/os/AppZygote;->mZygoteUidGidMin:I

    iget v14, p0, Landroid/os/AppZygote;->mZygoteUidGidMax:I

    .line 202
    move-object v11, v10

    invoke-virtual/range {v2 .. v14}, Landroid/os/ZygoteProcess;->startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;

    move-result-object v0

    iput-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    .line 216
    iget-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPrimarySocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 218
    const-string v0, "Starting application preload."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    iget-object v2, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v10}, Landroid/os/ChildZygoteProcess;->preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    .line 220
    const-string v0, "Application preload done."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_75} :catch_77

    .line 224
    nop

    .end local v7    # "sharedAppGid":[I
    .end local v8    # "runtimeFlags":I
    goto :goto_80

    .line 221
    :catch_77
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error connecting to app zygote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    invoke-direct {p0}, Landroid/os/AppZygote;->stopZygoteLocked()V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_80
    return-void
.end method

.method private blacklist stopZygoteLocked()V
    .registers 3

    .line 182
    iget-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_1f

    .line 183
    iget-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->close()V

    .line 185
    iget-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->isDead()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 186
    iget v0, p0, Landroid/os/AppZygote;->mZygoteUid:I

    iget-object v1, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v1}, Landroid/os/ChildZygoteProcess;->getPid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 188
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    .line 190
    :cond_1f
    return-void
.end method


# virtual methods
.method public blacklist getAppInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/os/AppZygote;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public blacklist getProcess()Landroid/os/ChildZygoteProcess;
    .registers 3

    .line 83
    iget-object v0, p0, Landroid/os/AppZygote;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 86
    :cond_b
    invoke-direct {p0}, Landroid/os/AppZygote;->connectToZygoteIfNeededLocked()V

    .line 87
    iget-object v1, p0, Landroid/os/AppZygote;->mZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final blacklist startProcess(Ljava/lang/String;Ljava/lang/String;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 44
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gids"    # [I
    .param p5, "runtimeFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "targetSdkVersion"    # I
    .param p8, "seInfo"    # Ljava/lang/String;
    .param p9, "abi"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "appDataDir"    # Ljava/lang/String;
    .param p12, "packageName"    # Ljava/lang/String;
    .param p13, "isTopApp"    # Z
    .param p14, "disabledCompatChanges"    # [J
    .param p17, "zygoteArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .line 150
    .local p15, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p16, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move/from16 v6, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v16, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move-object/from16 v25, p17

    invoke-virtual/range {v2 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_35} :catch_36

    return-object v0

    .line 158
    :catch_36
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->appZygoteRetryStart()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ChildZygoteProcess;->isDead()Z

    move-result v1

    .line 163
    .local v1, "zygote_dead":Z
    if-eqz v1, :cond_99

    .line 168
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "zygote_dead":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retry starting process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppZygote"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/os/AppZygote;->stopZygote()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move/from16 v6, p3

    move-object/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v16, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move-object/from16 v25, p17

    invoke-virtual/range {v2 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0

    .line 164
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "zygote_dead":Z
    :cond_99
    throw v0

    .line 160
    .end local v1    # "zygote_dead":Z
    :cond_9a
    throw v0
.end method

.method public blacklist stopZygote()V
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/os/AppZygote;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    invoke-direct {p0}, Landroid/os/AppZygote;->stopZygoteLocked()V

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
