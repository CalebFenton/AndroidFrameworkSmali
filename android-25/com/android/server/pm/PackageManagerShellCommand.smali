.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    }
.end annotation


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@3
    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@8
    .line 74
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    #@a
    .line 81
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@c
    .line 80
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "Missing ABI argument"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1115
    :cond_0
    const-string/jumbo v2, "-"

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1116
    return-object p0

    #@19
    .line 1119
    :cond_1
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@1b
    .line 1120
    .local v1, "supportedAbis":[Ljava/lang/String;
    const/4 v2, 0x0

    #@1c
    array-length v3, v1

    #@1d
    :goto_0
    if-ge v2, v3, :cond_3

    #@1f
    aget-object v0, v1, v2

    #@21
    .line 1121
    .local v0, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 1122
    return-object p0

    #@28
    .line 1120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1126
    .end local v0    # "supportedAbi":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "ABI "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, " not supported on this device"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method private doAbandonSession(IZ)I
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 1254
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    #@5
    .line 1256
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    #@7
    .line 1257
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@9
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@10
    move-result-object v3

    #@11
    .line 1256
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1258
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    #@17
    .line 1259
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz p2, :cond_0

    #@19
    .line 1260
    const-string/jumbo v3, "Success"

    #@1c
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    .line 1262
    :cond_0
    const/4 v3, 0x0

    #@20
    .line 1264
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 1262
    return v3

    #@24
    .line 1263
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v3

    #@25
    .line 1264
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@28
    .line 1263
    throw v3

    #@29
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v3

    #@2a
    move-object v1, v2

    #@2b
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private doCommitSession(IZ)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 1227
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    #@5
    .line 1229
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v4, Landroid/content/pm/PackageInstaller$Session;

    #@7
    .line 1230
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@9
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@c
    move-result-object v6

    #@d
    invoke-interface {v6, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@10
    move-result-object v6

    #@11
    .line 1229
    invoke-direct {v4, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 1232
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    #@16
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v6, 0x0

    #@17
    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    #@1a
    .line 1233
    .local v1, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    #@21
    .line 1235
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    #@24
    move-result-object v2

    #@25
    .line 1236
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v6, "android.content.pm.extra.STATUS"

    #@28
    .line 1237
    const/4 v7, 0x1

    #@29
    .line 1236
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2c
    move-result v5

    #@2d
    .line 1238
    .local v5, "status":I
    if-nez v5, :cond_1

    #@2f
    .line 1239
    if-eqz p2, :cond_0

    #@31
    .line 1240
    const-string/jumbo v6, "Success"

    #@34
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 1248
    :cond_0
    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3a
    .line 1246
    return v5

    #@3b
    .line 1243
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "Failure ["

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    .line 1244
    const-string/jumbo v7, "android.content.pm.extra.STATUS_MESSAGE"

    #@4a
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 1243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    .line 1244
    const-string/jumbo v7, "]"

    #@55
    .line 1243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_0

    #@61
    .line 1247
    .end local v1    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v2    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :catchall_0
    move-exception v6

    #@62
    move-object v3, v4

    #@63
    .line 1248
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@66
    .line 1247
    throw v6

    #@67
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v6

    #@68
    goto :goto_1
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1136
    const-string/jumbo v1, "runInstallCreate"

    #@3
    invoke-direct {p0, p3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(ILjava/lang/String;)I

    #@6
    move-result p3

    #@7
    .line 1137
    const/4 v1, -0x1

    #@8
    if-ne p3, v1, :cond_0

    #@a
    .line 1138
    const/4 p3, 0x0

    #@b
    .line 1139
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@d
    or-int/lit8 v1, v1, 0x40

    #@f
    iput v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@11
    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@13
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@16
    move-result-object v1

    #@17
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@1a
    move-result v0

    #@1b
    .line 1144
    .local v0, "sessionId":I
    return v0
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 19
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1271
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v14

    #@4
    .line 1272
    .local v14, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v6

    #@8
    .line 1273
    .local v6, "groupCount":I
    const/4 v8, 0x0

    #@9
    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_12

    #@b
    .line 1274
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v7

    #@11
    check-cast v7, Ljava/lang/String;

    #@13
    .line 1275
    .local v7, "groupName":Ljava/lang/String;
    const-string/jumbo v12, ""

    #@16
    .line 1276
    .local v12, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_2

    #@18
    .line 1277
    if-lez v8, :cond_0

    #@1a
    .line 1278
    const-string/jumbo v16, ""

    #@1d
    move-object/from16 v0, v16

    #@1f
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1280
    :cond_0
    if-eqz v7, :cond_7

    #@24
    .line 1282
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@28
    move-object/from16 v16, v0

    #@2a
    const/16 v17, 0x0

    #@2c
    move-object/from16 v0, v16

    #@2e
    move/from16 v1, v17

    #@30
    invoke-interface {v0, v7, v1}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@33
    move-result-object v10

    #@34
    .line 1283
    .local v10, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_5

    #@36
    .line 1284
    move-object/from16 v0, p0

    #@38
    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@3b
    move-result-object v15

    #@3c
    .line 1285
    .local v15, "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_4

    #@3e
    .line 1286
    new-instance v16, Ljava/lang/StringBuilder;

    #@40
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    #@45
    move/from16 v17, v0

    #@47
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@49
    move-object/from16 v18, v0

    #@4b
    move-object/from16 v0, p0

    #@4d
    move/from16 v1, v17

    #@4f
    move-object/from16 v2, v18

    #@51
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@54
    move-result-object v17

    #@55
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v16

    #@59
    const-string/jumbo v17, ": "

    #@5c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v16

    #@60
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v16

    #@64
    move-object/from16 v0, v16

    #@66
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 1308
    .end local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string/jumbo v12, "  "

    #@6c
    .line 1311
    :cond_2
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@70
    move-object/from16 v17, v0

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v16

    #@78
    check-cast v16, Ljava/lang/String;

    #@7a
    const/16 v18, 0x0

    #@7c
    move-object/from16 v0, v17

    #@7e
    move-object/from16 v1, v16

    #@80
    move/from16 v2, v18

    #@82
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@85
    move-result-object v16

    #@86
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@89
    move-result-object v13

    #@8a
    .line 1312
    .local v13, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@8d
    move-result v4

    #@8e
    .line 1313
    .local v4, "count":I
    const/4 v5, 0x1

    #@8f
    .line 1314
    .local v5, "first":Z
    const/4 v9, 0x0

    #@90
    .local v9, "p":I
    :goto_2
    if-ge v9, v4, :cond_10

    #@92
    .line 1315
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v11

    #@96
    check-cast v11, Landroid/content/pm/PermissionInfo;

    #@98
    .line 1316
    .local v11, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_a

    #@9a
    if-nez v7, :cond_a

    #@9c
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    #@9e
    move-object/from16 v16, v0

    #@a0
    if-eqz v16, :cond_a

    #@a2
    .line 1314
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 1288
    .end local v4    # "count":I
    .end local v5    # "first":Z
    .end local v9    # "p":I
    .end local v11    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@ac
    move-object/from16 v17, v0

    #@ae
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v16

    #@b2
    const-string/jumbo v17, ": "

    #@b5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v16

    #@b9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v16

    #@bd
    move-object/from16 v0, v16

    #@bf
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    goto :goto_1

    #@c3
    .line 1292
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    if-eqz p3, :cond_6

    #@ca
    const-string/jumbo v16, "+ "

    #@cd
    :goto_4
    move-object/from16 v0, v17

    #@cf
    move-object/from16 v1, v16

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v16

    #@d5
    const-string/jumbo v17, "group:"

    #@d8
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v16

    #@dc
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@de
    move-object/from16 v17, v0

    #@e0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v16

    #@e4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v16

    #@e8
    move-object/from16 v0, v16

    #@ea
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ed
    .line 1293
    if-eqz p3, :cond_1

    #@ef
    .line 1294
    new-instance v16, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v17, "  package:"

    #@f7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v16

    #@fb
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    #@fd
    move-object/from16 v17, v0

    #@ff
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v16

    #@103
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v16

    #@107
    move-object/from16 v0, v16

    #@109
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10c
    .line 1295
    move-object/from16 v0, p0

    #@10e
    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@111
    move-result-object v15

    #@112
    .line 1296
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_1

    #@114
    .line 1297
    new-instance v16, Ljava/lang/StringBuilder;

    #@116
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v17, "  label:"

    #@11c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v16

    #@120
    .line 1298
    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    #@122
    move/from16 v17, v0

    #@124
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@126
    move-object/from16 v18, v0

    #@128
    move-object/from16 v0, p0

    #@12a
    move/from16 v1, v17

    #@12c
    move-object/from16 v2, v18

    #@12e
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@131
    move-result-object v17

    #@132
    .line 1297
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v16

    #@136
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v16

    #@13a
    move-object/from16 v0, v16

    #@13c
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13f
    .line 1299
    new-instance v16, Ljava/lang/StringBuilder;

    #@141
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v17, "  description:"

    #@147
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v16

    #@14b
    .line 1300
    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    #@14d
    move/from16 v17, v0

    #@14f
    .line 1301
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@151
    move-object/from16 v18, v0

    #@153
    .line 1300
    move-object/from16 v0, p0

    #@155
    move/from16 v1, v17

    #@157
    move-object/from16 v2, v18

    #@159
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@15c
    move-result-object v17

    #@15d
    .line 1299
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v16

    #@161
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v16

    #@165
    move-object/from16 v0, v16

    #@167
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16a
    goto/16 :goto_1

    #@16c
    .line 1292
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string/jumbo v16, ""

    #@16f
    goto/16 :goto_4

    #@171
    .line 1306
    .end local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    #@173
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    if-eqz p3, :cond_8

    #@178
    if-eqz p4, :cond_9

    #@17a
    :cond_8
    const-string/jumbo v16, ""

    #@17d
    :goto_5
    move-object/from16 v0, v17

    #@17f
    move-object/from16 v1, v16

    #@181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v16

    #@185
    const-string/jumbo v17, "ungrouped:"

    #@188
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v16

    #@18c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    move-object/from16 v0, v16

    #@192
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@195
    goto/16 :goto_1

    #@197
    :cond_9
    const-string/jumbo v16, "+ "

    #@19a
    goto :goto_5

    #@19b
    .line 1319
    .restart local v4    # "count":I
    .restart local v5    # "first":Z
    .restart local v9    # "p":I
    .restart local v11    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_a
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@19d
    move/from16 v16, v0

    #@19f
    and-int/lit8 v3, v16, 0xf

    #@1a1
    .line 1320
    .local v3, "base":I
    move/from16 v0, p5

    #@1a3
    if-lt v3, v0, :cond_3

    #@1a5
    .line 1321
    move/from16 v0, p6

    #@1a7
    if-gt v3, v0, :cond_3

    #@1a9
    .line 1324
    if-eqz p4, :cond_d

    #@1ab
    .line 1325
    if-eqz v5, :cond_b

    #@1ad
    .line 1326
    const/4 v5, 0x0

    #@1ae
    .line 1330
    :goto_6
    move-object/from16 v0, p0

    #@1b0
    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@1b3
    move-result-object v15

    #@1b4
    .line 1331
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_c

    #@1b6
    .line 1332
    iget v0, v11, Landroid/content/pm/PermissionInfo;->labelRes:I

    #@1b8
    move/from16 v16, v0

    #@1ba
    .line 1333
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@1bc
    move-object/from16 v17, v0

    #@1be
    .line 1332
    move-object/from16 v0, p0

    #@1c0
    move/from16 v1, v16

    #@1c2
    move-object/from16 v2, v17

    #@1c4
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@1c7
    move-result-object v16

    #@1c8
    move-object/from16 v0, v16

    #@1ca
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cd
    goto/16 :goto_3

    #@1cf
    .line 1328
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_b
    const-string/jumbo v16, ", "

    #@1d2
    move-object/from16 v0, v16

    #@1d4
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    goto :goto_6

    #@1d8
    .line 1335
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_c
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@1da
    move-object/from16 v16, v0

    #@1dc
    move-object/from16 v0, v16

    #@1de
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e1
    goto/16 :goto_3

    #@1e3
    .line 1338
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_d
    new-instance v16, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    move-object/from16 v0, v16

    #@1ea
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v17

    #@1ee
    if-eqz p3, :cond_f

    #@1f0
    const-string/jumbo v16, "+ "

    #@1f3
    :goto_7
    move-object/from16 v0, v17

    #@1f5
    move-object/from16 v1, v16

    #@1f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v16

    #@1fb
    .line 1339
    const-string/jumbo v17, "permission:"

    #@1fe
    .line 1338
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v16

    #@202
    .line 1339
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@204
    move-object/from16 v17, v0

    #@206
    .line 1338
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v16

    #@20a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20d
    move-result-object v16

    #@20e
    move-object/from16 v0, v16

    #@210
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@213
    .line 1340
    if-eqz p3, :cond_3

    #@215
    .line 1341
    new-instance v16, Ljava/lang/StringBuilder;

    #@217
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@21a
    move-object/from16 v0, v16

    #@21c
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v16

    #@220
    const-string/jumbo v17, "  package:"

    #@223
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v16

    #@227
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@229
    move-object/from16 v17, v0

    #@22b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v16

    #@22f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@232
    move-result-object v16

    #@233
    move-object/from16 v0, v16

    #@235
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    .line 1342
    move-object/from16 v0, p0

    #@23a
    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@23d
    move-result-object v15

    #@23e
    .line 1343
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_e

    #@240
    .line 1344
    new-instance v16, Ljava/lang/StringBuilder;

    #@242
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    move-object/from16 v0, v16

    #@247
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v16

    #@24b
    const-string/jumbo v17, "  label:"

    #@24e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v16

    #@252
    .line 1345
    iget v0, v11, Landroid/content/pm/PermissionInfo;->labelRes:I

    #@254
    move/from16 v17, v0

    #@256
    .line 1346
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@258
    move-object/from16 v18, v0

    #@25a
    .line 1345
    move-object/from16 v0, p0

    #@25c
    move/from16 v1, v17

    #@25e
    move-object/from16 v2, v18

    #@260
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@263
    move-result-object v17

    #@264
    .line 1344
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    move-result-object v16

    #@268
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26b
    move-result-object v16

    #@26c
    move-object/from16 v0, v16

    #@26e
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@271
    .line 1347
    new-instance v16, Ljava/lang/StringBuilder;

    #@273
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    move-object/from16 v0, v16

    #@278
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v16

    #@27c
    const-string/jumbo v17, "  description:"

    #@27f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v16

    #@283
    .line 1348
    iget v0, v11, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@285
    move/from16 v17, v0

    #@287
    .line 1349
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    #@289
    move-object/from16 v18, v0

    #@28b
    .line 1348
    move-object/from16 v0, p0

    #@28d
    move/from16 v1, v17

    #@28f
    move-object/from16 v2, v18

    #@291
    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    #@294
    move-result-object v17

    #@295
    .line 1347
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v16

    #@299
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29c
    move-result-object v16

    #@29d
    move-object/from16 v0, v16

    #@29f
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a2
    .line 1351
    :cond_e
    new-instance v16, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    move-object/from16 v0, v16

    #@2a9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ac
    move-result-object v16

    #@2ad
    const-string/jumbo v17, "  protectionLevel:"

    #@2b0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v16

    #@2b4
    .line 1352
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@2b6
    move/from16 v17, v0

    #@2b8
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@2bb
    move-result-object v17

    #@2bc
    .line 1351
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v16

    #@2c0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c3
    move-result-object v16

    #@2c4
    move-object/from16 v0, v16

    #@2c6
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c9
    goto/16 :goto_3

    #@2cb
    .line 1338
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_f
    const-string/jumbo v16, ""

    #@2ce
    goto/16 :goto_7

    #@2d0
    .line 1357
    .end local v3    # "base":I
    .end local v11    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_10
    if-eqz p4, :cond_11

    #@2d2
    .line 1358
    const-string/jumbo v16, ""

    #@2d5
    move-object/from16 v0, v16

    #@2d7
    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2da
    .line 1273
    :cond_11
    add-int/lit8 v8, v8, 0x1

    #@2dc
    goto/16 :goto_0

    #@2de
    .line 1270
    .end local v4    # "count":I
    .end local v5    # "first":Z
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v9    # "p":I
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_12
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v1

    #@4
    .line 1207
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    #@5
    .line 1209
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    #@7
    .line 1210
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@9
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@10
    move-result-object v4

    #@11
    .line 1209
    invoke-direct {v3, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1211
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    #@17
    .line 1213
    if-eqz p3, :cond_0

    #@19
    .line 1214
    const-string/jumbo v4, "Success"

    #@1c
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    .line 1216
    :cond_0
    const/4 v4, 0x0

    #@20
    .line 1221
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23
    .line 1216
    return v4

    #@24
    .line 1217
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_0
    move-exception v0

    #@25
    .line 1218
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Error: failed to remove split; "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 1219
    const/4 v4, 0x1

    #@41
    .line 1221
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@44
    .line 1219
    return v4

    #@45
    .line 1220
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@46
    .line 1221
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@49
    .line 1220
    throw v4

    #@4a
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v4

    #@4b
    move-object v2, v3

    #@4c
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_1

    #@4d
    .line 1217
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_1
    move-exception v0

    #@4e
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@4f
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 19
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v16

    #@4
    .line 1150
    .local v16, "pw":Ljava/io/PrintWriter;
    const-wide/16 v4, 0x0

    #@6
    cmp-long v3, p3, v4

    #@8
    if-gtz v3, :cond_0

    #@a
    .line 1151
    const-string/jumbo v3, "Error: must specify a APK size"

    #@d
    move-object/from16 v0, v16

    #@f
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 1152
    const/4 v3, 0x1

    #@13
    return v3

    #@14
    .line 1154
    :cond_0
    if-eqz p2, :cond_1

    #@16
    const-string/jumbo v3, "-"

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    .line 1158
    :cond_1
    const/16 p2, 0x0

    #@23
    .line 1160
    .local p2, "inPath":Ljava/lang/String;
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@27
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@2a
    move-result-object v3

    #@2b
    move/from16 v0, p1

    #@2d
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    #@30
    move-result-object v14

    #@31
    .line 1162
    .local v14, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/16 v17, 0x0

    #@33
    .line 1163
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v12, 0x0

    #@34
    .line 1164
    .local v12, "in":Ljava/io/InputStream;
    const/4 v15, 0x0

    #@35
    .line 1166
    .local v15, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    #@37
    .line 1167
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@3b
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@3e
    move-result-object v3

    #@3f
    move/from16 v0, p1

    #@41
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@44
    move-result-object v3

    #@45
    .line 1166
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 1172
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v13, Lcom/android/internal/util/SizedInputStream;

    #@4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    #@4d
    move-result-object v3

    #@4e
    move-wide/from16 v0, p3

    #@50
    invoke-direct {v13, v3, v0, v1}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    .line 1174
    .end local v12    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    #@55
    move-object/from16 v3, p5

    #@57
    move-wide/from16 v6, p3

    #@59
    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    #@5c
    move-result-object v15

    #@5d
    .line 1176
    .local v15, "out":Ljava/io/OutputStream;
    const/16 v18, 0x0

    #@5f
    .line 1177
    .local v18, "total":I
    const/high16 v3, 0x10000

    #@61
    new-array v8, v3, [B

    #@63
    .line 1179
    .local v8, "buffer":[B
    :cond_2
    :goto_0
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    #@66
    move-result v9

    #@67
    .local v9, "c":I
    const/4 v3, -0x1

    #@68
    if-eq v9, v3, :cond_4

    #@6a
    .line 1180
    add-int v18, v18, v9

    #@6c
    .line 1181
    const/4 v3, 0x0

    #@6d
    invoke-virtual {v15, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    #@70
    .line 1183
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@72
    const-wide/16 v6, 0x0

    #@74
    cmp-long v3, v4, v6

    #@76
    if-lez v3, :cond_2

    #@78
    .line 1184
    int-to-float v3, v9

    #@79
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@7b
    long-to-float v4, v4

    #@7c
    div-float v11, v3, v4

    #@7e
    .line 1185
    .local v11, "fraction":F
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@81
    goto :goto_0

    #@82
    .line 1194
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v11    # "fraction":F
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v18    # "total":I
    :catch_0
    move-exception v10

    #@83
    .local v10, "e":Ljava/io/IOException;
    move-object v12, v13

    #@84
    .line 1195
    .end local v13    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v4, "Error: failed to write; "

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    move-object/from16 v0, v16

    #@9e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a1
    .line 1196
    const/4 v3, 0x1

    #@a2
    .line 1198
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a5
    .line 1199
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a8
    .line 1200
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ab
    .line 1196
    return v3

    #@ac
    .line 1155
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local p2, "inPath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "Error: APK content must be streamed"

    #@af
    move-object/from16 v0, v16

    #@b1
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 1156
    const/4 v3, 0x1

    #@b5
    return v3

    #@b6
    .line 1188
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v8    # "buffer":[B
    .restart local v9    # "c":I
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v18    # "total":I
    .local p2, "inPath":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v2, v15}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    #@b9
    .line 1190
    if-eqz p6, :cond_5

    #@bb
    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v4, "Success: streamed "

    #@c3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v3

    #@c7
    move/from16 v0, v18

    #@c9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    const-string/jumbo v4, " bytes"

    #@d0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v3

    #@d8
    move-object/from16 v0, v16

    #@da
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@dd
    .line 1193
    :cond_5
    const/4 v3, 0x0

    #@de
    .line 1198
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e1
    .line 1199
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e4
    .line 1200
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e7
    .line 1193
    return v3

    #@e8
    .line 1197
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v18    # "total":I
    .restart local v12    # "in":Ljava/io/InputStream;
    .local v15, "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v3

    #@e9
    move-object/from16 v2, v17

    #@eb
    .line 1198
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_2
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ee
    .line 1199
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f1
    .line 1200
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f4
    .line 1197
    throw v3

    #@f5
    :catchall_1
    move-exception v3

    #@f6
    goto :goto_2

    #@f7
    .restart local v13    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v3

    #@f8
    move-object v12, v13

    #@f9
    .end local v13    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    goto :goto_2

    #@fa
    .line 1194
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v12, "in":Ljava/io/InputStream;
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_1
    move-exception v10

    #@fb
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v2, v17

    #@fd
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_1

    #@fe
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_2
    move-exception v10

    #@ff
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1381
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    #@4
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/content/res/Resources;

    #@c
    .line 1382
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    #@e
    return-object v2

    #@f
    .line 1384
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@11
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@13
    invoke-interface {v3, v4, v6, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@16
    move-result-object v0

    #@17
    .line 1385
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    #@19
    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    #@1c
    .line 1386
    .local v1, "am":Landroid/content/res/AssetManager;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@21
    .line 1387
    new-instance v2, Landroid/content/res/Resources;

    #@23
    .end local v2    # "res":Landroid/content/res/Resources;
    invoke-direct {v2, v1, v5, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    #@26
    .line 1388
    .restart local v2    # "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    #@28
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v3, v4, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 1389
    return-object v2
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1365
    if-eqz p3, :cond_0

    #@3
    .line 1366
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    return-object v2

    #@8
    .line 1368
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 1369
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    .line 1370
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    #@10
    .line 1372
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 1373
    :catch_0
    move-exception v0

    #@16
    .line 1377
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    return-object v2
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 995
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    #@3
    const/4 v3, 0x1

    #@4
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    #@7
    .line 996
    .local v2, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    #@9
    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)V

    #@c
    .line 997
    .local v1, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iput-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@e
    .line 999
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_14

    #@14
    .line 1000
    const-string/jumbo v3, "-l"

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1002
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1f
    or-int/lit8 v3, v3, 0x1

    #@21
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@23
    goto :goto_0

    #@24
    .line 1000
    :cond_1
    const-string/jumbo v3, "-r"

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 1005
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2f
    or-int/lit8 v3, v3, 0x2

    #@31
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@33
    goto :goto_0

    #@34
    .line 1000
    :cond_2
    const-string/jumbo v3, "-i"

    #@37
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 1008
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    #@43
    .line 1009
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    #@45
    if-nez v3, :cond_0

    #@47
    .line 1010
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v4, "Missing installer package"

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 1000
    :cond_3
    const-string/jumbo v3, "-t"

    #@53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_4

    #@59
    .line 1014
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@5b
    or-int/lit8 v3, v3, 0x4

    #@5d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@5f
    goto :goto_0

    #@60
    .line 1000
    :cond_4
    const-string/jumbo v3, "-s"

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_5

    #@69
    .line 1017
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6b
    or-int/lit8 v3, v3, 0x8

    #@6d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6f
    goto :goto_0

    #@70
    .line 1000
    :cond_5
    const-string/jumbo v3, "-f"

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_6

    #@79
    .line 1020
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7b
    or-int/lit8 v3, v3, 0x10

    #@7d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7f
    goto :goto_0

    #@80
    .line 1000
    :cond_6
    const-string/jumbo v3, "-d"

    #@83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_7

    #@89
    .line 1023
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8b
    or-int/lit16 v3, v3, 0x80

    #@8d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8f
    goto/16 :goto_0

    #@91
    .line 1000
    :cond_7
    const-string/jumbo v3, "-g"

    #@94
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_8

    #@9a
    .line 1026
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@9c
    or-int/lit16 v3, v3, 0x100

    #@9e
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1000
    :cond_8
    const-string/jumbo v3, "--dont-kill"

    #@a5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_9

    #@ab
    .line 1029
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@ad
    or-int/lit16 v3, v3, 0x1000

    #@af
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1000
    :cond_9
    const-string/jumbo v3, "--originating-uri"

    #@b6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_a

    #@bc
    .line 1032
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c3
    move-result-object v3

    #@c4
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1000
    :cond_a
    const-string/jumbo v3, "--referrer"

    #@cb
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_b

    #@d1
    .line 1035
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d8
    move-result-object v3

    #@d9
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@db
    goto/16 :goto_0

    #@dd
    .line 1000
    :cond_b
    const-string/jumbo v3, "-p"

    #@e0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v3

    #@e4
    if-eqz v3, :cond_c

    #@e6
    .line 1038
    const/4 v3, 0x2

    #@e7
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@e9
    .line 1039
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@ef
    .line 1040
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@f1
    if-nez v3, :cond_0

    #@f3
    .line 1041
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f5
    const-string/jumbo v4, "Missing inherit package name"

    #@f8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fb
    throw v3

    #@fc
    .line 1000
    :cond_c
    const-string/jumbo v3, "-S"

    #@ff
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v3

    #@103
    if-eqz v3, :cond_d

    #@105
    .line 1045
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@108
    move-result-object v3

    #@109
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@10c
    move-result-wide v4

    #@10d
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    #@110
    goto/16 :goto_0

    #@112
    .line 1000
    :cond_d
    const-string/jumbo v3, "--abi"

    #@115
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v3

    #@119
    if-eqz v3, :cond_e

    #@11b
    .line 1048
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    #@122
    move-result-object v3

    #@123
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@125
    goto/16 :goto_0

    #@127
    .line 1000
    :cond_e
    const-string/jumbo v3, "--ephemeral"

    #@12a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v3

    #@12e
    if-eqz v3, :cond_f

    #@130
    .line 1051
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@132
    or-int/lit16 v3, v3, 0x800

    #@134
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@136
    goto/16 :goto_0

    #@138
    .line 1000
    :cond_f
    const-string/jumbo v3, "--user"

    #@13b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13e
    move-result v3

    #@13f
    if-eqz v3, :cond_10

    #@141
    .line 1054
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@144
    move-result-object v3

    #@145
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@148
    move-result v3

    #@149
    iput v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    #@14b
    goto/16 :goto_0

    #@14d
    .line 1000
    :cond_10
    const-string/jumbo v3, "--install-location"

    #@150
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v3

    #@154
    if-eqz v3, :cond_11

    #@156
    .line 1057
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@159
    move-result-object v3

    #@15a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15d
    move-result v3

    #@15e
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@160
    goto/16 :goto_0

    #@162
    .line 1000
    :cond_11
    const-string/jumbo v3, "--force-uuid"

    #@165
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@168
    move-result v3

    #@169
    if-eqz v3, :cond_12

    #@16b
    .line 1060
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@16d
    or-int/lit16 v3, v3, 0x200

    #@16f
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@171
    .line 1061
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@177
    .line 1062
    const-string/jumbo v3, "internal"

    #@17a
    iget-object v4, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@17c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v3

    #@180
    if-eqz v3, :cond_0

    #@182
    .line 1063
    iput-object v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@184
    goto/16 :goto_0

    #@186
    .line 1000
    :cond_12
    const-string/jumbo v3, "--force-sdk"

    #@189
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18c
    move-result v3

    #@18d
    if-eqz v3, :cond_13

    #@18f
    .line 1067
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@191
    or-int/lit16 v3, v3, 0x2000

    #@193
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@195
    goto/16 :goto_0

    #@197
    .line 1070
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@199
    new-instance v4, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v5, "Unknown option "

    #@1a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v4

    #@1a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b0
    throw v3

    #@1b1
    .line 1073
    :cond_14
    return-object v1
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 812
    const/4 v0, -0x2

    #@3
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@5
    .line 813
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@7
    .line 814
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@9
    .line 815
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    #@e
    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    #@11
    move-result-object v7

    #@12
    .line 831
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@15
    move-result v0

    #@16
    .line 832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@19
    move-result v1

    #@1a
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@1c
    move v4, v3

    #@1d
    move-object v6, v5

    #@1e
    .line 831
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@24
    .line 833
    return-object v7
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .locals 3
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    #@0
    .prologue
    .line 838
    if-nez p4, :cond_0

    #@2
    if-eqz p5, :cond_5

    #@4
    .line 840
    :cond_0
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 841
    new-instance v0, Landroid/content/ComponentName;

    #@a
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@e
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@12
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 849
    :goto_0
    if-eqz v0, :cond_5

    #@17
    .line 850
    if-nez p5, :cond_1

    #@19
    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "priority="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 852
    const-string/jumbo v2, " preferredOrder="

    #@32
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 852
    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@38
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 853
    const-string/jumbo v2, " match=0x"

    #@3f
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 853
    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    #@45
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 854
    const-string/jumbo v2, " specificIndex="

    #@50
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 854
    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@56
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    .line 855
    const-string/jumbo v2, " isDefault="

    #@5d
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 855
    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@63
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    #@6e
    .line 857
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    #@86
    .line 858
    return-void

    #@87
    .line 842
    :cond_2
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@89
    if-eqz v1, :cond_3

    #@8b
    .line 843
    new-instance v0, Landroid/content/ComponentName;

    #@8d
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@8f
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@91
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@93
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@95
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@98
    .local v0, "comp":Landroid/content/ComponentName;
    goto/16 :goto_0

    #@9a
    .line 844
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_3
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@9c
    if-eqz v1, :cond_4

    #@9e
    .line 845
    new-instance v0, Landroid/content/ComponentName;

    #@a0
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@a2
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@a4
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@a6
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@a8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ab
    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto/16 :goto_0

    #@ad
    .line 847
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_4
    const/4 v0, 0x0

    #@ae
    .local v0, "comp":Landroid/content/ComponentName;
    goto/16 :goto_0

    #@b0
    .line 861
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_5
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@b3
    .line 837
    return-void
.end method

.method private runCompile()I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v16

    #@4
    .line 257
    .local v16, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v20, "dalvik.vm.usejitprofiles"

    #@7
    const/16 v21, 0x0

    #@9
    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result v3

    #@d
    .line 258
    .local v3, "checkProfiles":Z
    const/4 v9, 0x0

    #@e
    .line 259
    .local v9, "forceCompilation":Z
    const/4 v2, 0x0

    #@f
    .line 260
    .local v2, "allPackages":Z
    const/4 v5, 0x0

    #@10
    .line 261
    .local v5, "clearProfileData":Z
    const/4 v7, 0x0

    #@11
    .line 262
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v6, 0x0

    #@12
    .line 263
    .local v6, "compilationReason":Ljava/lang/String;
    const/4 v4, 0x0

    #@13
    .line 266
    .end local v6    # "compilationReason":Ljava/lang/String;
    .end local v7    # "compilerFilter":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@16
    move-result-object v12

    #@17
    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_7

    #@19
    .line 267
    const-string/jumbo v20, "-a"

    #@1c
    move-object/from16 v0, v20

    #@1e
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v20

    #@22
    if-eqz v20, :cond_0

    #@24
    .line 269
    const/4 v2, 0x1

    #@25
    .line 270
    goto :goto_0

    #@26
    .line 267
    :cond_0
    const-string/jumbo v20, "-c"

    #@29
    move-object/from16 v0, v20

    #@2b
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v20

    #@2f
    if-eqz v20, :cond_1

    #@31
    .line 272
    const/4 v5, 0x1

    #@32
    .line 273
    goto :goto_0

    #@33
    .line 267
    :cond_1
    const-string/jumbo v20, "-f"

    #@36
    move-object/from16 v0, v20

    #@38
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v20

    #@3c
    if-eqz v20, :cond_2

    #@3e
    .line 275
    const/4 v9, 0x1

    #@3f
    .line 276
    goto :goto_0

    #@40
    .line 267
    :cond_2
    const-string/jumbo v20, "-m"

    #@43
    move-object/from16 v0, v20

    #@45
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v20

    #@49
    if-eqz v20, :cond_3

    #@4b
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .local v7, "compilerFilter":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 267
    .end local v7    # "compilerFilter":Ljava/lang/String;
    :cond_3
    const-string/jumbo v20, "-r"

    #@53
    move-object/from16 v0, v20

    #@55
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v20

    #@59
    if-eqz v20, :cond_4

    #@5b
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .local v6, "compilationReason":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 267
    .end local v6    # "compilationReason":Ljava/lang/String;
    :cond_4
    const-string/jumbo v20, "--check-prof"

    #@63
    move-object/from16 v0, v20

    #@65
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v20

    #@69
    if-eqz v20, :cond_5

    #@6b
    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    .local v4, "checkProfilesRaw":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 267
    .end local v4    # "checkProfilesRaw":Ljava/lang/String;
    :cond_5
    const-string/jumbo v20, "--reset"

    #@73
    move-object/from16 v0, v20

    #@75
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v20

    #@79
    if-eqz v20, :cond_6

    #@7b
    .line 287
    const/4 v9, 0x1

    #@7c
    .line 288
    const/4 v5, 0x1

    #@7d
    .line 289
    const-string/jumbo v6, "install"

    #@80
    .restart local v6    # "compilationReason":Ljava/lang/String;
    goto :goto_0

    #@81
    .line 292
    .end local v6    # "compilationReason":Ljava/lang/String;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    #@83
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v21, "Error: Unknown option: "

    #@89
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v20

    #@8d
    move-object/from16 v0, v20

    #@8f
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v20

    #@93
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v20

    #@97
    move-object/from16 v0, v16

    #@99
    move-object/from16 v1, v20

    #@9b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9e
    .line 293
    const/16 v20, 0x1

    #@a0
    return v20

    #@a1
    .line 297
    :cond_7
    if-eqz v4, :cond_8

    #@a3
    .line 298
    const-string/jumbo v20, "true"

    #@a6
    move-object/from16 v0, v20

    #@a8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v20

    #@ac
    if-eqz v20, :cond_9

    #@ae
    .line 299
    const/4 v3, 0x1

    #@af
    .line 308
    .end local v3    # "checkProfiles":Z
    :cond_8
    :goto_1
    if-eqz v7, :cond_b

    #@b1
    if-eqz v6, :cond_b

    #@b3
    .line 309
    const-string/jumbo v20, "Cannot use compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    #@b6
    move-object/from16 v0, v16

    #@b8
    move-object/from16 v1, v20

    #@ba
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 311
    const/16 v20, 0x1

    #@bf
    return v20

    #@c0
    .line 300
    .restart local v3    # "checkProfiles":Z
    :cond_9
    const-string/jumbo v20, "false"

    #@c3
    move-object/from16 v0, v20

    #@c5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v20

    #@c9
    if-eqz v20, :cond_a

    #@cb
    .line 301
    const/4 v3, 0x0

    #@cc
    .local v3, "checkProfiles":Z
    goto :goto_1

    #@cd
    .line 303
    .local v3, "checkProfiles":Z
    :cond_a
    const-string/jumbo v20, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    #@d0
    move-object/from16 v0, v16

    #@d2
    move-object/from16 v1, v20

    #@d4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 304
    const/16 v20, 0x1

    #@d9
    return v20

    #@da
    .line 313
    .end local v3    # "checkProfiles":Z
    :cond_b
    if-nez v7, :cond_c

    #@dc
    if-nez v6, :cond_c

    #@de
    .line 314
    const-string/jumbo v20, "Cannot run without any of compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    #@e1
    move-object/from16 v0, v16

    #@e3
    move-object/from16 v1, v20

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 316
    const/16 v20, 0x1

    #@ea
    return v20

    #@eb
    .line 320
    :cond_c
    if-eqz v7, :cond_10

    #@ed
    .line 321
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    #@f0
    move-result v20

    #@f1
    if-nez v20, :cond_d

    #@f3
    .line 322
    new-instance v20, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v21, "Error: \""

    #@fb
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v20

    #@ff
    move-object/from16 v0, v20

    #@101
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v20

    #@105
    .line 323
    const-string/jumbo v21, "\" is not a valid compilation filter."

    #@108
    .line 322
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v20

    #@10c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v20

    #@110
    move-object/from16 v0, v16

    #@112
    move-object/from16 v1, v20

    #@114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@117
    .line 324
    const/16 v20, 0x1

    #@119
    return v20

    #@11a
    .line 326
    :cond_d
    move-object/from16 v19, v7

    #@11c
    .line 345
    .local v19, "targetCompilerFilter":Ljava/lang/String;
    :goto_2
    const/4 v15, 0x0

    #@11d
    .line 346
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_14

    #@11f
    .line 347
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@123
    move-object/from16 v20, v0

    #@125
    invoke-interface/range {v20 .. v20}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    #@128
    move-result-object v15

    #@129
    .line 357
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    #@12b
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@12e
    .line 358
    .local v8, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@131
    move-result-object v14

    #@132
    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@135
    move-result v20

    #@136
    if-eqz v20, :cond_16

    #@138
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13b
    move-result-object v13

    #@13c
    check-cast v13, Ljava/lang/String;

    #@13e
    .line 359
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_f

    #@140
    .line 360
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@144
    move-object/from16 v20, v0

    #@146
    move-object/from16 v0, v20

    #@148
    invoke-interface {v0, v13}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    #@14b
    .line 363
    :cond_f
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@14f
    move-object/from16 v20, v0

    #@151
    move-object/from16 v0, v20

    #@153
    move-object/from16 v1, v19

    #@155
    invoke-interface {v0, v13, v3, v1, v9}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;Z)Z

    #@158
    move-result v18

    #@159
    .line 365
    .local v18, "result":Z
    if-nez v18, :cond_e

    #@15b
    .line 366
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15e
    goto :goto_4

    #@15f
    .line 328
    .end local v8    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v15    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "result":Z
    .end local v19    # "targetCompilerFilter":Ljava/lang/String;
    :cond_10
    const/16 v17, -0x1

    #@161
    .line 329
    .local v17, "reason":I
    const/4 v10, 0x0

    #@162
    .local v10, "i":I
    :goto_5
    sget-object v20, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@164
    move-object/from16 v0, v20

    #@166
    array-length v0, v0

    #@167
    move/from16 v20, v0

    #@169
    move/from16 v0, v20

    #@16b
    if-ge v10, v0, :cond_11

    #@16d
    .line 330
    sget-object v20, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@16f
    aget-object v20, v20, v10

    #@171
    move-object/from16 v0, v20

    #@173
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@176
    move-result v20

    #@177
    if-eqz v20, :cond_12

    #@179
    .line 332
    move/from16 v17, v10

    #@17b
    .line 336
    :cond_11
    const/16 v20, -0x1

    #@17d
    move/from16 v0, v17

    #@17f
    move/from16 v1, v20

    #@181
    if-ne v0, v1, :cond_13

    #@183
    .line 337
    new-instance v20, Ljava/lang/StringBuilder;

    #@185
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v21, "Error: Unknown compilation reason: "

    #@18b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v20

    #@18f
    move-object/from16 v0, v20

    #@191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v20

    #@195
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v20

    #@199
    move-object/from16 v0, v16

    #@19b
    move-object/from16 v1, v20

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a0
    .line 338
    const/16 v20, 0x1

    #@1a2
    return v20

    #@1a3
    .line 329
    :cond_12
    add-int/lit8 v10, v10, 0x1

    #@1a5
    goto :goto_5

    #@1a6
    .line 341
    :cond_13
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    #@1a9
    move-result-object v19

    #@1aa
    .restart local v19    # "targetCompilerFilter":Ljava/lang/String;
    goto/16 :goto_2

    #@1ac
    .line 349
    .end local v10    # "i":I
    .end local v17    # "reason":I
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@1af
    move-result-object v13

    #@1b0
    .line 350
    .restart local v13    # "packageName":Ljava/lang/String;
    if-nez v13, :cond_15

    #@1b2
    .line 351
    const-string/jumbo v20, "Error: package name not specified"

    #@1b5
    move-object/from16 v0, v16

    #@1b7
    move-object/from16 v1, v20

    #@1b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bc
    .line 352
    const/16 v20, 0x1

    #@1be
    return v20

    #@1bf
    .line 354
    :cond_15
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@1c2
    move-result-object v15

    #@1c3
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_3

    #@1c5
    .line 370
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v8    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "packageName$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@1c8
    move-result v20

    #@1c9
    if-eqz v20, :cond_17

    #@1cb
    .line 371
    const-string/jumbo v20, "Success"

    #@1ce
    move-object/from16 v0, v16

    #@1d0
    move-object/from16 v1, v20

    #@1d2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d5
    .line 372
    const/16 v20, 0x0

    #@1d7
    return v20

    #@1d8
    .line 373
    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@1db
    move-result v20

    #@1dc
    const/16 v21, 0x1

    #@1de
    move/from16 v0, v20

    #@1e0
    move/from16 v1, v21

    #@1e2
    if-ne v0, v1, :cond_18

    #@1e4
    .line 374
    new-instance v20, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v21, "Failure: package "

    #@1ec
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v21

    #@1f0
    const/16 v20, 0x0

    #@1f2
    move/from16 v0, v20

    #@1f4
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f7
    move-result-object v20

    #@1f8
    check-cast v20, Ljava/lang/String;

    #@1fa
    move-object/from16 v0, v21

    #@1fc
    move-object/from16 v1, v20

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v20

    #@202
    const-string/jumbo v21, " could not be compiled"

    #@205
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v20

    #@209
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v20

    #@20d
    move-object/from16 v0, v16

    #@20f
    move-object/from16 v1, v20

    #@211
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@214
    .line 375
    const/16 v20, 0x1

    #@216
    return v20

    #@217
    .line 377
    :cond_18
    const-string/jumbo v20, "Failure: the following packages could not be compiled: "

    #@21a
    move-object/from16 v0, v16

    #@21c
    move-object/from16 v1, v20

    #@21e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    .line 378
    const/4 v11, 0x1

    #@222
    .line 379
    .local v11, "is_first":Z
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@225
    move-result-object v14

    #@226
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@229
    move-result v20

    #@22a
    if-eqz v20, :cond_1a

    #@22c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22f
    move-result-object v13

    #@230
    check-cast v13, Ljava/lang/String;

    #@232
    .line 380
    .restart local v13    # "packageName":Ljava/lang/String;
    if-eqz v11, :cond_19

    #@234
    .line 381
    const/4 v11, 0x0

    #@235
    .line 385
    :goto_7
    move-object/from16 v0, v16

    #@237
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    goto :goto_6

    #@23b
    .line 383
    :cond_19
    const-string/jumbo v20, ", "

    #@23e
    move-object/from16 v0, v16

    #@240
    move-object/from16 v1, v20

    #@242
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@245
    goto :goto_7

    #@246
    .line 387
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    #@249
    .line 388
    const/16 v20, 0x1

    #@24b
    return v20
.end method

.method private runDumpProfiles()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 394
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@6
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    #@9
    .line 395
    const/4 v1, 0x0

    #@a
    return v1
.end method

.method private runInstall()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 138
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v10

    #@6
    .line 139
    .local v10, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    #@9
    move-result-object v9

    #@a
    .line 140
    .local v9, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v1, v9, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@c
    .line 141
    iget-object v4, v9, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    #@e
    iget v5, v9, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    #@10
    .line 140
    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@13
    move-result v2

    #@14
    .line 142
    .local v2, "sessionId":I
    const/4 v0, 0x1

    #@15
    .line 144
    .local v0, "abandonSession":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 145
    .local v3, "inPath":Ljava/lang/String;
    if-nez v3, :cond_1

    #@1b
    iget-object v1, v9, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@1d
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@1f
    const-wide/16 v6, 0x0

    #@21
    cmp-long v1, v4, v6

    #@23
    if-nez v1, :cond_1

    #@25
    .line 146
    const-string/jumbo v1, "Error: must either specify a package size or an APK file"

    #@28
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 161
    if-eqz v0, :cond_0

    #@2d
    .line 163
    const/4 v1, 0x0

    #@2e
    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    .line 147
    :cond_0
    :goto_0
    return v12

    #@32
    .line 164
    :catch_0
    move-exception v8

    #@33
    .local v8, "ignore":Ljava/lang/Exception;
    goto :goto_0

    #@34
    .line 149
    .end local v8    # "ignore":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v1, v9, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@36
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@38
    const-string/jumbo v6, "base.apk"

    #@3b
    .line 150
    const/4 v7, 0x0

    #@3c
    move-object v1, p0

    #@3d
    .line 149
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_3

    #@43
    .line 161
    if-eqz v0, :cond_2

    #@45
    .line 163
    const/4 v1, 0x0

    #@46
    :try_start_3
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@49
    .line 151
    :cond_2
    :goto_1
    return v12

    #@4a
    .line 164
    :catch_1
    move-exception v8

    #@4b
    .restart local v8    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    #@4c
    .line 153
    .end local v8    # "ignore":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    #@4d
    :try_start_4
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    .line 161
    if-eqz v0, :cond_4

    #@55
    .line 163
    const/4 v1, 0x0

    #@56
    :try_start_5
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    #@59
    .line 155
    :cond_4
    :goto_2
    return v12

    #@5a
    .line 164
    :catch_2
    move-exception v8

    #@5b
    .restart local v8    # "ignore":Ljava/lang/Exception;
    goto :goto_2

    #@5c
    .line 157
    .end local v8    # "ignore":Ljava/lang/Exception;
    :cond_5
    const/4 v0, 0x0

    #@5d
    .line 158
    :try_start_6
    const-string/jumbo v1, "Success"

    #@60
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@63
    .line 161
    if-eqz v0, :cond_6

    #@65
    .line 163
    const/4 v1, 0x0

    #@66
    :try_start_7
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    #@69
    .line 159
    :cond_6
    :goto_3
    return v11

    #@6a
    .line 164
    :catch_3
    move-exception v8

    #@6b
    .restart local v8    # "ignore":Ljava/lang/Exception;
    goto :goto_3

    #@6c
    .line 160
    .end local v3    # "inPath":Ljava/lang/String;
    .end local v8    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@6d
    .line 161
    if-eqz v0, :cond_7

    #@6f
    .line 163
    const/4 v4, 0x0

    #@70
    :try_start_8
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    #@73
    .line 160
    :cond_7
    :goto_4
    throw v1

    #@74
    .line 164
    :catch_4
    move-exception v8

    #@75
    .restart local v8    # "ignore":Ljava/lang/Exception;
    goto :goto_4
.end method

.method private runInstallAbandon()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 205
    .local v0, "sessionId":I
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private runInstallCommit()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 210
    .local v0, "sessionId":I
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private runInstallCreate()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v1

    #@4
    .line 215
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    #@7
    move-result-object v0

    #@8
    .line 216
    .local v0, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@a
    .line 217
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    #@c
    iget v5, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    #@e
    .line 216
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@11
    move-result v2

    #@12
    .line 220
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Success: created install session ["

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "]"

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 221
    const/4 v3, 0x0

    #@31
    return v3
.end method

.method private runInstallRemove()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 243
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 245
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    .line 247
    .local v1, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 248
    .local v2, "splitName":Ljava/lang/String;
    if-nez v2, :cond_0

    #@13
    .line 249
    const-string/jumbo v3, "Error: split name not specified"

    #@16
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 250
    return v4

    #@1a
    .line 252
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    #@1d
    move-result v3

    #@1e
    return v3
.end method

.method private runInstallWrite()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    const-wide/16 v4, -0x1

    #@2
    .line 228
    .local v4, "sizeBytes":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    .line 229
    const-string/jumbo v1, "-S"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 230
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@18
    move-result-wide v4

    #@19
    goto :goto_0

    #@1a
    .line 232
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "Unknown option: "

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b
    move-result v2

    #@3c
    .line 237
    .local v2, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 238
    .local v6, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 239
    .local v3, "path":Ljava/lang/String;
    const/4 v7, 0x1

    #@45
    move-object v1, p0

    #@46
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    #@49
    move-result v1

    #@4a
    return v1
.end method

.method private runList()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 399
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v0

    #@5
    .line 400
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 401
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    #@b
    .line 402
    const-string/jumbo v2, "Error: didn\'t specify type of data to list"

    #@e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 403
    return v4

    #@12
    .line 405
    :cond_0
    const-string/jumbo v2, "features"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 407
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 405
    :cond_1
    const-string/jumbo v2, "instrumentation"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 409
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 405
    :cond_2
    const-string/jumbo v2, "libraries"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 411
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    #@3a
    move-result v2

    #@3b
    return v2

    #@3c
    .line 405
    :cond_3
    const-string/jumbo v2, "package"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_5

    #@45
    .line 414
    :cond_4
    const/4 v2, 0x0

    #@46
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    #@49
    move-result v2

    #@4a
    return v2

    #@4b
    .line 405
    :cond_5
    const-string/jumbo v2, "packages"

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_4

    #@54
    const-string/jumbo v2, "permission-groups"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_6

    #@5d
    .line 416
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    #@60
    move-result v2

    #@61
    return v2

    #@62
    .line 405
    :cond_6
    const-string/jumbo v2, "permissions"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_7

    #@6b
    .line 418
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    #@6e
    move-result v2

    #@6f
    return v2

    #@70
    .line 420
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v3, "Error: unknown list type \'"

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    const-string/jumbo v3, "\'"

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 421
    return v4
.end method

.method private runListFeatures()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 425
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v4

    #@5
    .line 426
    .local v4, "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    .line 429
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$1;

    #@11
    invoke-direct {v5, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    #@14
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@17
    .line 438
    if-eqz v2, :cond_1

    #@19
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    .line 439
    .local v0, "count":I
    :goto_0
    const/4 v3, 0x0

    #@1e
    .local v3, "p":I
    :goto_1
    if-ge v3, v0, :cond_3

    #@20
    .line 440
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/content/pm/FeatureInfo;

    #@26
    .line 441
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    const-string/jumbo v5, "feature:"

    #@29
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 442
    iget-object v5, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 443
    iget-object v5, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@32
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 444
    iget v5, v1, Landroid/content/pm/FeatureInfo;->version:I

    #@37
    if-lez v5, :cond_0

    #@39
    .line 445
    const-string/jumbo v5, "="

    #@3c
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 446
    iget v5, v1, Landroid/content/pm/FeatureInfo;->version:I

    #@41
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    #@44
    .line 448
    :cond_0
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    #@47
    .line 439
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 438
    .end local v0    # "count":I
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v3    # "p":I
    :cond_1
    const/4 v0, 0x0

    #@4b
    .restart local v0    # "count":I
    goto :goto_0

    #@4c
    .line 450
    .restart local v1    # "fi":Landroid/content/pm/FeatureInfo;
    .restart local v3    # "p":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "reqGlEsVersion=0x"

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 451
    iget v6, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    #@5a
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    goto :goto_2

    #@6a
    .line 454
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_3
    return v7
.end method

.method private runListInstrumentation()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 458
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v7

    #@6
    .line 459
    .local v7, "pw":Ljava/io/PrintWriter;
    const/4 v8, 0x0

    #@7
    .line 460
    .local v8, "showSourceDir":Z
    const/4 v9, 0x0

    #@8
    .line 464
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@e
    .line 465
    const-string/jumbo v10, "-f"

    #@11
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_0

    #@17
    .line 467
    const/4 v8, 0x1

    #@18
    .line 468
    goto :goto_0

    #@19
    .line 470
    :cond_0
    const/4 v10, 0x0

    #@1a
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v10

    #@1e
    const/16 v11, 0x2d

    #@20
    if-eq v10, v11, :cond_1

    #@22
    .line 471
    move-object v9, v5

    #@23
    .local v9, "targetPackage":Ljava/lang/String;
    goto :goto_0

    #@24
    .line 473
    .end local v9    # "targetPackage":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v11, "Error: Unknown option: "

    #@2c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v10

    #@30
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 474
    return v13

    #@3c
    .line 479
    .end local v5    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@3d
    .line 480
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v11, "Error: "

    #@45
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@4c
    move-result-object v11

    #@4d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 481
    return v13

    #@59
    .line 485
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "opt":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@5b
    invoke-interface {v10, v9, v12}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@62
    move-result-object v4

    #@63
    .line 488
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v10, Lcom/android/server/pm/PackageManagerShellCommand$2;

    #@65
    invoke-direct {v10, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    #@68
    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@6b
    .line 494
    if-eqz v4, :cond_4

    #@6d
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@70
    move-result v1

    #@71
    .line 495
    .local v1, "count":I
    :goto_1
    const/4 v6, 0x0

    #@72
    .local v6, "p":I
    :goto_2
    if-ge v6, v1, :cond_5

    #@74
    .line 496
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v3

    #@78
    check-cast v3, Landroid/content/pm/InstrumentationInfo;

    #@7a
    .line 497
    .local v3, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string/jumbo v10, "instrumentation:"

    #@7d
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 498
    if-eqz v8, :cond_3

    #@82
    .line 499
    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@84
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    .line 500
    const-string/jumbo v10, "="

    #@8a
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 502
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    #@8f
    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@91
    iget-object v11, v3, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    #@93
    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@96
    .line 503
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d
    .line 504
    const-string/jumbo v10, " (target="

    #@a0
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    .line 505
    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@a5
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 506
    const-string/jumbo v10, ")"

    #@ab
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 495
    add-int/lit8 v6, v6, 0x1

    #@b0
    goto :goto_2

    #@b1
    .line 494
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v3    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v6    # "p":I
    :cond_4
    const/4 v1, 0x0

    #@b2
    .restart local v1    # "count":I
    goto :goto_1

    #@b3
    .line 508
    .restart local v6    # "p":I
    :cond_5
    return v12
.end method

.method private runListLibraries()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v5

    #@4
    .line 513
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 514
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@b
    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    .line 515
    .local v6, "rawList":[Ljava/lang/String;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v7, v6

    #@11
    if-ge v1, v7, :cond_0

    #@13
    .line 516
    aget-object v7, v6, v1

    #@15
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 515
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 520
    :cond_0
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$3;

    #@1d
    invoke-direct {v7, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    #@20
    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@23
    .line 529
    if-eqz v3, :cond_1

    #@25
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@28
    move-result v0

    #@29
    .line 530
    .local v0, "count":I
    :goto_1
    const/4 v4, 0x0

    #@2a
    .local v4, "p":I
    :goto_2
    if-ge v4, v0, :cond_2

    #@2c
    .line 531
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/lang/String;

    #@32
    .line 532
    .local v2, "lib":Ljava/lang/String;
    const-string/jumbo v7, "library:"

    #@35
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 533
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 530
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 529
    .end local v0    # "count":I
    .end local v2    # "lib":Ljava/lang/String;
    .end local v4    # "p":I
    :cond_1
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "count":I
    goto :goto_1

    #@40
    .line 535
    .restart local v4    # "p":I
    :cond_2
    const/4 v7, 0x0

    #@41
    return v7
.end method

.method private runListPackages(Z)I
    .locals 21
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v16

    #@4
    .line 540
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    #@5
    .line 541
    .local v5, "getFlags":I
    const/4 v8, 0x0

    #@6
    .local v8, "listDisabled":Z
    const/4 v9, 0x0

    #@7
    .line 542
    .local v9, "listEnabled":Z
    const/4 v11, 0x0

    #@8
    .local v11, "listSystem":Z
    const/4 v12, 0x0

    #@9
    .line 543
    .local v12, "listThirdParty":Z
    const/4 v10, 0x0

    #@a
    .line 544
    .local v10, "listInstaller":Z
    const/16 v18, 0x0

    #@c
    .line 547
    .end local p1    # "showSourceDir":Z
    .local v18, "userId":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@f
    move-result-object v13

    #@10
    .local v13, "opt":Ljava/lang/String;
    if-eqz v13, :cond_a

    #@12
    .line 548
    const-string/jumbo v19, "-d"

    #@15
    move-object/from16 v0, v19

    #@17
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v19

    #@1b
    if-eqz v19, :cond_1

    #@1d
    .line 550
    const/4 v8, 0x1

    #@1e
    .line 551
    goto :goto_0

    #@1f
    .line 548
    :cond_1
    const-string/jumbo v19, "-e"

    #@22
    move-object/from16 v0, v19

    #@24
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v19

    #@28
    if-eqz v19, :cond_2

    #@2a
    .line 553
    const/4 v9, 0x1

    #@2b
    .line 554
    goto :goto_0

    #@2c
    .line 548
    :cond_2
    const-string/jumbo v19, "-f"

    #@2f
    move-object/from16 v0, v19

    #@31
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v19

    #@35
    if-eqz v19, :cond_3

    #@37
    .line 556
    const/16 p1, 0x1

    #@39
    .line 557
    .local p1, "showSourceDir":Z
    goto :goto_0

    #@3a
    .line 548
    .end local p1    # "showSourceDir":Z
    :cond_3
    const-string/jumbo v19, "-i"

    #@3d
    move-object/from16 v0, v19

    #@3f
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v19

    #@43
    if-eqz v19, :cond_4

    #@45
    .line 559
    const/4 v10, 0x1

    #@46
    .line 560
    goto :goto_0

    #@47
    .line 548
    :cond_4
    const-string/jumbo v19, "-l"

    #@4a
    move-object/from16 v0, v19

    #@4c
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v19

    #@50
    if-nez v19, :cond_0

    #@52
    const-string/jumbo v19, "-lf"

    #@55
    move-object/from16 v0, v19

    #@57
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v19

    #@5b
    if-eqz v19, :cond_5

    #@5d
    .line 565
    const/16 p1, 0x1

    #@5f
    .line 566
    .restart local p1    # "showSourceDir":Z
    goto :goto_0

    #@60
    .line 548
    .end local p1    # "showSourceDir":Z
    :cond_5
    const-string/jumbo v19, "-s"

    #@63
    move-object/from16 v0, v19

    #@65
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v19

    #@69
    if-eqz v19, :cond_6

    #@6b
    .line 568
    const/4 v11, 0x1

    #@6c
    .line 569
    goto :goto_0

    #@6d
    .line 548
    :cond_6
    const-string/jumbo v19, "-u"

    #@70
    move-object/from16 v0, v19

    #@72
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v19

    #@76
    if-eqz v19, :cond_7

    #@78
    .line 571
    or-int/lit16 v5, v5, 0x2000

    #@7a
    .line 572
    goto :goto_0

    #@7b
    .line 548
    :cond_7
    const-string/jumbo v19, "-3"

    #@7e
    move-object/from16 v0, v19

    #@80
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v19

    #@84
    if-eqz v19, :cond_8

    #@86
    .line 574
    const/4 v12, 0x1

    #@87
    .line 575
    goto :goto_0

    #@88
    .line 548
    :cond_8
    const-string/jumbo v19, "--user"

    #@8b
    move-object/from16 v0, v19

    #@8d
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v19

    #@91
    if-eqz v19, :cond_9

    #@93
    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@96
    move-result-object v19

    #@97
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@9a
    move-result v18

    #@9b
    goto/16 :goto_0

    #@9d
    .line 580
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v20, "Error: Unknown option: "

    #@a5
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v19

    #@a9
    move-object/from16 v0, v19

    #@ab
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v19

    #@af
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v19

    #@b3
    move-object/from16 v0, v16

    #@b5
    move-object/from16 v1, v19

    #@b7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@ba
    .line 581
    const/16 v19, -0x1

    #@bc
    return v19

    #@bd
    .line 584
    .end local v13    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@be
    .line 585
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v19, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v20, "Error: "

    #@c6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v19

    #@ca
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@cd
    move-result-object v20

    #@ce
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v19

    #@d2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v19

    #@d6
    move-object/from16 v0, v16

    #@d8
    move-object/from16 v1, v19

    #@da
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 586
    const/16 v19, -0x1

    #@df
    return v19

    #@e0
    .line 589
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v13    # "opt":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@e3
    move-result-object v4

    #@e4
    .line 593
    .local v4, "filter":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@e8
    move-object/from16 v19, v0

    #@ea
    move-object/from16 v0, v19

    #@ec
    move/from16 v1, v18

    #@ee
    invoke-interface {v0, v5, v1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@f1
    move-result-object v17

    #@f2
    .line 594
    .local v17, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@f5
    move-result-object v15

    #@f6
    .line 596
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@f9
    move-result v2

    #@fa
    .line 597
    .local v2, "count":I
    const/4 v14, 0x0

    #@fb
    .local v14, "p":I
    :goto_1
    if-ge v14, v2, :cond_14

    #@fd
    .line 598
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@100
    move-result-object v6

    #@101
    check-cast v6, Landroid/content/pm/PackageInfo;

    #@103
    .line 599
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_b

    #@105
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@107
    move-object/from16 v19, v0

    #@109
    move-object/from16 v0, v19

    #@10b
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@10e
    move-result v19

    #@10f
    if-eqz v19, :cond_c

    #@111
    .line 603
    :cond_b
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@113
    move-object/from16 v19, v0

    #@115
    move-object/from16 v0, v19

    #@117
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@119
    move/from16 v19, v0

    #@11b
    and-int/lit8 v19, v19, 0x1

    #@11d
    if-eqz v19, :cond_d

    #@11f
    const/4 v7, 0x1

    #@120
    .line 604
    .local v7, "isSystem":Z
    :goto_2
    if-eqz v8, :cond_e

    #@122
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@124
    move-object/from16 v19, v0

    #@126
    move-object/from16 v0, v19

    #@128
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@12a
    move/from16 v19, v0

    #@12c
    if-eqz v19, :cond_e

    #@12e
    .line 597
    .end local v7    # "isSystem":Z
    :cond_c
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@130
    goto :goto_1

    #@131
    .line 603
    :cond_d
    const/4 v7, 0x0

    #@132
    .restart local v7    # "isSystem":Z
    goto :goto_2

    #@133
    .line 605
    :cond_e
    if-eqz v9, :cond_f

    #@135
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@137
    move-object/from16 v19, v0

    #@139
    move-object/from16 v0, v19

    #@13b
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@13d
    move/from16 v19, v0

    #@13f
    .line 604
    if-eqz v19, :cond_c

    #@141
    .line 606
    :cond_f
    if-eqz v11, :cond_10

    #@143
    .line 604
    if-eqz v7, :cond_c

    #@145
    .line 607
    :cond_10
    if-eqz v12, :cond_11

    #@147
    if-nez v7, :cond_c

    #@149
    .line 608
    :cond_11
    const-string/jumbo v19, "package:"

    #@14c
    move-object/from16 v0, v16

    #@14e
    move-object/from16 v1, v19

    #@150
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@153
    .line 609
    if-eqz p1, :cond_12

    #@155
    .line 610
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@157
    move-object/from16 v19, v0

    #@159
    move-object/from16 v0, v19

    #@15b
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@15d
    move-object/from16 v19, v0

    #@15f
    move-object/from16 v0, v16

    #@161
    move-object/from16 v1, v19

    #@163
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@166
    .line 611
    const-string/jumbo v19, "="

    #@169
    move-object/from16 v0, v16

    #@16b
    move-object/from16 v1, v19

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    .line 613
    :cond_12
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@172
    move-object/from16 v19, v0

    #@174
    move-object/from16 v0, v16

    #@176
    move-object/from16 v1, v19

    #@178
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17b
    .line 614
    if-eqz v10, :cond_13

    #@17d
    .line 615
    const-string/jumbo v19, "  installer="

    #@180
    move-object/from16 v0, v16

    #@182
    move-object/from16 v1, v19

    #@184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    .line 616
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@18b
    move-object/from16 v19, v0

    #@18d
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@18f
    move-object/from16 v20, v0

    #@191
    invoke-interface/range {v19 .. v20}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@194
    move-result-object v19

    #@195
    move-object/from16 v0, v16

    #@197
    move-object/from16 v1, v19

    #@199
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    .line 618
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    #@19f
    goto :goto_3

    #@1a0
    .line 621
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "isSystem":Z
    :cond_14
    const/16 v19, 0x0

    #@1a2
    return v19
.end method

.method private runListPermissionGroups()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 625
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@4
    move-result-object v4

    #@5
    .line 626
    .local v4, "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    .line 628
    .local v3, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    .line 629
    .local v0, "count":I
    const/4 v1, 0x0

    #@14
    .local v1, "p":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@16
    .line 630
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/content/pm/PermissionGroupInfo;

    #@1c
    .line 631
    .local v2, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v5, "permission group:"

    #@1f
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 632
    iget-object v5, v2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@24
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27
    .line 629
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 634
    .end local v2    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    return v6
.end method

.method private runListPermissions()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v13

    #@4
    .line 639
    .local v13, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    #@5
    .line 640
    .local v3, "labels":Z
    const/4 v2, 0x0

    #@6
    .line 641
    .local v2, "groups":Z
    const/4 v14, 0x0

    #@7
    .line 642
    .local v14, "userOnly":Z
    const/4 v4, 0x0

    #@8
    .line 643
    .local v4, "summary":Z
    const/4 v8, 0x0

    #@9
    .line 645
    .local v8, "dangerousOnly":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@c
    move-result-object v12

    #@d
    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_5

    #@f
    .line 646
    const-string/jumbo v0, "-d"

    #@12
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 648
    const/4 v8, 0x1

    #@19
    .line 649
    goto :goto_0

    #@1a
    .line 646
    :cond_0
    const-string/jumbo v0, "-f"

    #@1d
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 651
    const/4 v3, 0x1

    #@24
    .line 652
    goto :goto_0

    #@25
    .line 646
    :cond_1
    const-string/jumbo v0, "-g"

    #@28
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 654
    const/4 v2, 0x1

    #@2f
    .line 655
    goto :goto_0

    #@30
    .line 646
    :cond_2
    const-string/jumbo v0, "-s"

    #@33
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 657
    const/4 v2, 0x1

    #@3a
    .line 658
    const/4 v3, 0x1

    #@3b
    .line 659
    const/4 v4, 0x1

    #@3c
    .line 660
    goto :goto_0

    #@3d
    .line 646
    :cond_3
    const-string/jumbo v0, "-u"

    #@40
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4

    #@46
    .line 662
    const/4 v14, 0x1

    #@47
    .line 663
    goto :goto_0

    #@48
    .line 665
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v5, "Error: Unknown option: "

    #@50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 666
    const/4 v0, 0x1

    #@60
    return v0

    #@61
    .line 670
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    #@63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@66
    .line 671
    .local v1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    #@68
    .line 673
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@6a
    const/4 v5, 0x0

    #@6b
    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@72
    move-result-object v11

    #@73
    .line 674
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@76
    move-result v7

    #@77
    .line 675
    .local v7, "count":I
    const/4 v10, 0x0

    #@78
    .local v10, "i":I
    :goto_1
    if-ge v10, v7, :cond_6

    #@7a
    .line 676
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    #@80
    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    #@82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    .line 675
    add-int/lit8 v10, v10, 0x1

    #@87
    goto :goto_1

    #@88
    .line 678
    :cond_6
    const/4 v0, 0x0

    #@89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 684
    .end local v7    # "count":I
    .end local v10    # "i":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_2
    if-eqz v8, :cond_9

    #@8e
    .line 685
    const-string/jumbo v0, "Dangerous Permissions:"

    #@91
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 686
    const-string/jumbo v0, ""

    #@97
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9a
    .line 688
    const/4 v5, 0x1

    #@9b
    .line 689
    const/4 v6, 0x1

    #@9c
    move-object v0, p0

    #@9d
    .line 687
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@a0
    .line 690
    if-eqz v14, :cond_7

    #@a2
    .line 691
    const-string/jumbo v0, "Normal Permissions:"

    #@a5
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a8
    .line 692
    const-string/jumbo v0, ""

    #@ab
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae
    .line 694
    const/4 v5, 0x0

    #@af
    .line 695
    const/4 v6, 0x0

    #@b0
    move-object v0, p0

    #@b1
    .line 693
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@b4
    .line 709
    :cond_7
    :goto_3
    const/4 v0, 0x0

    #@b5
    return v0

    #@b6
    .line 680
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    .line 681
    .local v9, "grp":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@bd
    goto :goto_2

    #@be
    .line 697
    .end local v9    # "grp":Ljava/lang/String;
    :cond_9
    if-eqz v14, :cond_a

    #@c0
    .line 698
    const-string/jumbo v0, "Dangerous and Normal Permissions:"

    #@c3
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 699
    const-string/jumbo v0, ""

    #@c9
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 701
    const/4 v5, 0x0

    #@cd
    .line 702
    const/4 v6, 0x1

    #@ce
    move-object v0, p0

    #@cf
    .line 700
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@d2
    goto :goto_3

    #@d3
    .line 704
    :cond_a
    const-string/jumbo v0, "All Permissions:"

    #@d6
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    .line 705
    const-string/jumbo v0, ""

    #@dc
    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@df
    .line 707
    const/16 v5, -0x2710

    #@e1
    const/16 v6, 0x2710

    #@e3
    move-object v0, p0

    #@e4
    .line 706
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    #@e7
    goto :goto_3
.end method

.method private runQueryIntentActivities()I
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 889
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v9

    #@5
    .line 894
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    .line 895
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@9
    .line 894
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@12
    move-result-object v11

    #@13
    .line 896
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@16
    move-result-object v10

    #@17
    .line 897
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_0

    #@19
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    if-gtz v0, :cond_2

    #@1f
    .line 898
    :cond_0
    const-string/jumbo v0, "No activities found"

    #@22
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 917
    :cond_1
    return v12

    #@26
    .line 890
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    #@27
    .line 891
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@29
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v0

    #@31
    .line 900
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@33
    if-nez v0, :cond_3

    #@35
    .line 901
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3c
    const-string/jumbo v0, " activities found:"

    #@3f
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 902
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@44
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@47
    .line 903
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@48
    .local v8, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@4b
    move-result v0

    #@4c
    if-ge v8, v0, :cond_1

    #@4e
    .line 904
    const-string/jumbo v0, "  Activity #"

    #@51
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    #@57
    const-string/jumbo v0, ":"

    #@5a
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 905
    const-string/jumbo v2, "    "

    #@60
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@66
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@68
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@6a
    move-object v0, p0

    #@6b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    #@6e
    .line 903
    add-int/lit8 v8, v8, 0x1

    #@70
    goto :goto_0

    #@71
    .line 908
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_3
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@73
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@76
    .line 909
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@77
    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@7a
    move-result v0

    #@7b
    if-ge v8, v0, :cond_1

    #@7d
    .line 910
    const-string/jumbo v2, ""

    #@80
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@86
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@88
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@8a
    move-object v0, p0

    #@8b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@8e
    .line 909
    add-int/lit8 v8, v8, 0x1

    #@90
    goto :goto_1

    #@91
    .line 914
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v6

    #@92
    .line 915
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@94
    const-string/jumbo v2, "Failed calling service"

    #@97
    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v0
.end method

.method private runQueryIntentReceivers()I
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 957
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v9

    #@5
    .line 962
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    .line 963
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@9
    .line 962
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@12
    move-result-object v11

    #@13
    .line 964
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@16
    move-result-object v10

    #@17
    .line 965
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_0

    #@19
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    if-gtz v0, :cond_2

    #@1f
    .line 966
    :cond_0
    const-string/jumbo v0, "No receivers found"

    #@22
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 985
    :cond_1
    return v12

    #@26
    .line 958
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    #@27
    .line 959
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@29
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v0

    #@31
    .line 968
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@33
    if-nez v0, :cond_3

    #@35
    .line 969
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3c
    const-string/jumbo v0, " receivers found:"

    #@3f
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 970
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@44
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@47
    .line 971
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@48
    .local v8, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@4b
    move-result v0

    #@4c
    if-ge v8, v0, :cond_1

    #@4e
    .line 972
    const-string/jumbo v0, "  Receiver #"

    #@51
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    #@57
    const-string/jumbo v0, ":"

    #@5a
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 973
    const-string/jumbo v2, "    "

    #@60
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@66
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@68
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@6a
    move-object v0, p0

    #@6b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    #@6e
    .line 971
    add-int/lit8 v8, v8, 0x1

    #@70
    goto :goto_0

    #@71
    .line 976
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_3
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@73
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@76
    .line 977
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@77
    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@7a
    move-result v0

    #@7b
    if-ge v8, v0, :cond_1

    #@7d
    .line 978
    const-string/jumbo v2, ""

    #@80
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@86
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@88
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@8a
    move-object v0, p0

    #@8b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@8e
    .line 977
    add-int/lit8 v8, v8, 0x1

    #@90
    goto :goto_1

    #@91
    .line 982
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v6

    #@92
    .line 983
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@94
    const-string/jumbo v2, "Failed calling service"

    #@97
    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v0
.end method

.method private runQueryIntentServices()I
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 923
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v9

    #@5
    .line 928
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    .line 929
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@9
    .line 928
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@12
    move-result-object v11

    #@13
    .line 930
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@16
    move-result-object v10

    #@17
    .line 931
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_0

    #@19
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    if-gtz v0, :cond_2

    #@1f
    .line 932
    :cond_0
    const-string/jumbo v0, "No services found"

    #@22
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 951
    :cond_1
    return v12

    #@26
    .line 924
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    #@27
    .line 925
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@29
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v0

    #@31
    .line 934
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@33
    if-nez v0, :cond_3

    #@35
    .line 935
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3c
    const-string/jumbo v0, " services found:"

    #@3f
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 936
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@44
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@47
    .line 937
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@48
    .local v8, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@4b
    move-result v0

    #@4c
    if-ge v8, v0, :cond_1

    #@4e
    .line 938
    const-string/jumbo v0, "  Service #"

    #@51
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    #@57
    const-string/jumbo v0, ":"

    #@5a
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5d
    .line 939
    const-string/jumbo v2, "    "

    #@60
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@66
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@68
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@6a
    move-object v0, p0

    #@6b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    #@6e
    .line 937
    add-int/lit8 v8, v8, 0x1

    #@70
    goto :goto_0

    #@71
    .line 942
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_3
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@73
    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@76
    .line 943
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    #@77
    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@7a
    move-result v0

    #@7b
    if-ge v8, v0, :cond_1

    #@7d
    .line 944
    const-string/jumbo v2, ""

    #@80
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@86
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@88
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@8a
    move-object v0, p0

    #@8b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@8e
    .line 943
    add-int/lit8 v8, v8, 0x1

    #@90
    goto :goto_1

    #@91
    .line 948
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v6

    #@92
    .line 949
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@94
    const-string/jumbo v2, "Failed calling service"

    #@97
    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v0
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 782
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v2

    #@6
    .line 783
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    #@8
    const/4 v5, 0x2

    #@9
    invoke-direct {v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    #@c
    .line 784
    .local v4, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@e
    or-int/lit8 v5, v5, 0x2

    #@10
    iput v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@12
    .line 785
    iput-object p1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@14
    .line 787
    const/4 v5, 0x0

    #@15
    const/4 v6, -0x1

    #@16
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@19
    move-result v3

    #@1a
    .line 788
    .local v3, "sessionId":I
    const/4 v0, 0x1

    #@1b
    .line 790
    .local v0, "abandonSession":Z
    const/4 v5, 0x0

    #@1c
    :try_start_0
    invoke-direct {p0, v3, p2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 802
    if-eqz v0, :cond_0

    #@24
    .line 804
    const/4 v5, 0x0

    #@25
    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@28
    .line 792
    :cond_0
    :goto_0
    return v8

    #@29
    .line 805
    :catch_0
    move-exception v1

    #@2a
    .local v1, "ignore":Ljava/lang/Exception;
    goto :goto_0

    #@2b
    .line 794
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    #@2c
    :try_start_2
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 802
    if-eqz v0, :cond_2

    #@34
    .line 804
    const/4 v5, 0x0

    #@35
    :try_start_3
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@38
    .line 796
    :cond_2
    :goto_1
    return v8

    #@39
    .line 805
    :catch_1
    move-exception v1

    #@3a
    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    #@3b
    .line 798
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    #@3c
    .line 799
    :try_start_4
    const-string/jumbo v5, "Success"

    #@3f
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    .line 802
    if-eqz v0, :cond_4

    #@44
    .line 804
    const/4 v5, 0x0

    #@45
    :try_start_5
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    #@48
    .line 800
    :cond_4
    :goto_2
    return v7

    #@49
    .line 805
    :catch_2
    move-exception v1

    #@4a
    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_2

    #@4b
    .line 801
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@4c
    .line 802
    if-eqz v0, :cond_5

    #@4e
    .line 804
    const/4 v6, 0x0

    #@4f
    :try_start_6
    invoke-direct {p0, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@52
    .line 801
    :cond_5
    :goto_3
    throw v5

    #@53
    .line 805
    :catch_3
    move-exception v1

    #@54
    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private runResolveActivity()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v8

    #@5
    .line 872
    .local v8, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@7
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    #@9
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    invoke-interface {v0, v8, v4, v5, v2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@e
    move-result-object v3

    #@f
    .line 873
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@12
    move-result-object v9

    #@13
    .line 874
    .local v9, "pw":Ljava/io/PrintWriter;
    if-nez v3, :cond_0

    #@15
    .line 875
    const-string/jumbo v0, "No activity found"

    #@18
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 883
    :goto_0
    return v10

    #@1c
    .line 868
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v7

    #@1d
    .line 869
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@1f
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v0

    #@27
    .line 877
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@29
    invoke-direct {v1, v9}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@2c
    .line 878
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const-string/jumbo v2, ""

    #@2f
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    #@31
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    #@33
    move-object v0, p0

    #@34
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@37
    goto :goto_0

    #@38
    .line 880
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v6

    #@39
    .line 881
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v2, "Failed calling service"

    #@3e
    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v0
.end method

.method private runSetHomeActivity()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1077
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v4

    #@6
    .line 1078
    .local v4, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    #@7
    .line 1080
    .local v5, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@d
    .line 1081
    const-string/jumbo v6, "--user"

    #@10
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 1083
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@1d
    move-result v5

    #@1e
    goto :goto_0

    #@1f
    .line 1086
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Error: Unknown option: "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 1087
    return v8

    #@37
    .line 1091
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 1093
    .local v0, "component":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@40
    move-result-object v1

    #@41
    .line 1095
    .local v1, "componentName":Landroid/content/ComponentName;
    :cond_2
    if-nez v1, :cond_3

    #@43
    .line 1096
    const-string/jumbo v6, "Error: component name not specified or invalid"

    #@46
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 1097
    return v8

    #@4a
    .line 1101
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@4c
    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    #@4f
    .line 1102
    const-string/jumbo v6, "Success"

    #@52
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 1103
    const/4 v6, 0x0

    #@56
    return v6

    #@57
    .line 1104
    :catch_0
    move-exception v2

    #@58
    .line 1105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 1106
    return v8
.end method

.method private runSuspend(Z)I
    .locals 10
    .param p1, "suspendedState"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 171
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@5
    move-result-object v3

    #@6
    .line 172
    .local v3, "pw":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    #@7
    .line 174
    .local v4, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@d
    .line 175
    const-string/jumbo v5, "--user"

    #@10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@1d
    move-result v4

    #@1e
    goto :goto_0

    #@1f
    .line 180
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Error: Unknown option: "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 181
    return v8

    #@37
    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 186
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2

    #@3d
    .line 187
    const-string/jumbo v5, "Error: package name not specified"

    #@40
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 188
    return v8

    #@44
    .line 192
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@46
    const/4 v6, 0x1

    #@47
    new-array v6, v6, [Ljava/lang/String;

    #@49
    const/4 v7, 0x0

    #@4a
    aput-object v2, v6, v7

    #@4c
    invoke-interface {v5, v6, p1, v4}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    #@4f
    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v6, "Package "

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    const-string/jumbo v6, " new suspended state: "

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 195
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@68
    invoke-interface {v6, v2, v4}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    #@6b
    move-result v6

    #@6c
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 196
    return v9

    #@78
    .line 197
    :catch_0
    move-exception v0

    #@79
    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 199
    return v8
.end method

.method private runUninstall()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v9

    #@4
    .line 714
    .local v9, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    #@5
    .line 715
    .local v3, "flags":I
    const/4 v5, -0x1

    #@6
    .line 718
    .local v5, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_2

    #@c
    .line 719
    const-string/jumbo v0, "-k"

    #@f
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 721
    or-int/lit8 v3, v3, 0x1

    #@17
    .line 722
    goto :goto_0

    #@18
    .line 719
    :cond_0
    const-string/jumbo v0, "--user"

    #@1b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 724
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@28
    move-result v5

    #@29
    goto :goto_0

    #@2a
    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Error: Unknown option: "

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 728
    const/4 v0, 0x1

    #@42
    return v0

    #@43
    .line 732
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 733
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_3

    #@49
    .line 734
    const-string/jumbo v0, "Error: package name not specified"

    #@4c
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 735
    const/4 v0, 0x1

    #@50
    return v0

    #@51
    .line 739
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    #@54
    move-result-object v12

    #@55
    .line 740
    .local v12, "splitName":Ljava/lang/String;
    if-eqz v12, :cond_4

    #@57
    .line 741
    invoke-direct {p0, v1, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    move-result v0

    #@5b
    return v0

    #@5c
    .line 744
    :cond_4
    const-string/jumbo v0, "runUninstall"

    #@5f
    invoke-direct {p0, v5, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(ILjava/lang/String;)I

    #@62
    move-result v5

    #@63
    .line 745
    const/4 v0, -0x1

    #@64
    if-ne v5, v0, :cond_6

    #@66
    .line 746
    const/4 v5, 0x0

    #@67
    .line 747
    or-int/lit8 v3, v3, 0x2

    #@69
    .line 764
    :cond_5
    :goto_1
    new-instance v10, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    #@6b
    const/4 v0, 0x0

    #@6c
    invoke-direct {v10, v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    #@6f
    .line 765
    .local v10, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@71
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@74
    move-result-object v0

    #@75
    .line 766
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    #@78
    move-result-object v4

    #@79
    .line 765
    const/4 v2, 0x0

    #@7a
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    #@7d
    .line 768
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    #@80
    move-result-object v11

    #@81
    .line 769
    .local v11, "result":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    #@84
    .line 770
    const/4 v2, 0x1

    #@85
    .line 769
    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@88
    move-result v13

    #@89
    .line 771
    .local v13, "status":I
    if-nez v13, :cond_9

    #@8b
    .line 772
    const-string/jumbo v0, "Success"

    #@8e
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 773
    const/4 v0, 0x0

    #@92
    return v0

    #@93
    .line 749
    .end local v10    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v11    # "result":Landroid/content/Intent;
    .end local v13    # "status":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    #@95
    const/4 v2, 0x0

    #@96
    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@99
    move-result-object v6

    #@9a
    .line 750
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_7

    #@9c
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "Failure [not installed for "

    #@a4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    const-string/jumbo v2, "]"

    #@af
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ba
    .line 752
    const/4 v0, 0x1

    #@bb
    return v0

    #@bc
    .line 755
    :cond_7
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@be
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@c0
    and-int/lit8 v0, v0, 0x1

    #@c2
    if-eqz v0, :cond_8

    #@c4
    const/4 v7, 0x1

    #@c5
    .line 759
    .local v7, "isSystem":Z
    :goto_2
    if-eqz v7, :cond_5

    #@c7
    .line 760
    or-int/lit8 v3, v3, 0x4

    #@c9
    goto :goto_1

    #@ca
    .line 755
    .end local v7    # "isSystem":Z
    :cond_8
    const/4 v7, 0x0

    #@cb
    goto :goto_2

    #@cc
    .line 775
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .restart local v11    # "result":Landroid/content/Intent;
    .restart local v13    # "status":I
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v2, "Failure ["

    #@d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    .line 776
    const-string/jumbo v2, "android.content.pm.extra.STATUS_MESSAGE"

    #@db
    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    .line 775
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    .line 776
    const-string/jumbo v2, "]"

    #@e6
    .line 775
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 777
    const/4 v0, 0x1

    #@f2
    return v0
.end method

.method private translateUserId(ILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "logContext"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1130
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 1131
    const-string/jumbo v6, "pm command"

    #@c
    move v2, p1

    #@d
    move v4, v3

    #@e
    move-object v5, p2

    #@f
    .line 1130
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    if-nez p1, :cond_0

    #@2
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 92
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "install"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 94
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 92
    :cond_1
    const-string/jumbo v2, "install-abandon"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 92
    :cond_3
    const-string/jumbo v2, "install-destroy"

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_2

    #@30
    const-string/jumbo v2, "install-commit"

    #@33
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 99
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 92
    :cond_4
    const-string/jumbo v2, "install-create"

    #@41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_5

    #@47
    .line 101
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    #@4a
    move-result v2

    #@4b
    return v2

    #@4c
    .line 92
    :cond_5
    const-string/jumbo v2, "install-remove"

    #@4f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_6

    #@55
    .line 103
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    #@58
    move-result v2

    #@59
    return v2

    #@5a
    .line 92
    :cond_6
    const-string/jumbo v2, "install-write"

    #@5d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_7

    #@63
    .line 105
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    #@66
    move-result v2

    #@67
    return v2

    #@68
    .line 92
    :cond_7
    const-string/jumbo v2, "compile"

    #@6b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_8

    #@71
    .line 107
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    #@74
    move-result v2

    #@75
    return v2

    #@76
    .line 92
    :cond_8
    const-string/jumbo v2, "dump-profiles"

    #@79
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_9

    #@7f
    .line 109
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    #@82
    move-result v2

    #@83
    return v2

    #@84
    .line 92
    :cond_9
    const-string/jumbo v2, "list"

    #@87
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_a

    #@8d
    .line 111
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    #@90
    move-result v2

    #@91
    return v2

    #@92
    .line 92
    :cond_a
    const-string/jumbo v2, "uninstall"

    #@95
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_b

    #@9b
    .line 113
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    #@9e
    move-result v2

    #@9f
    return v2

    #@a0
    .line 92
    :cond_b
    const-string/jumbo v2, "resolve-activity"

    #@a3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_c

    #@a9
    .line 115
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    #@ac
    move-result v2

    #@ad
    return v2

    #@ae
    .line 92
    :cond_c
    const-string/jumbo v2, "query-activities"

    #@b1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v2

    #@b5
    if-eqz v2, :cond_d

    #@b7
    .line 117
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    #@ba
    move-result v2

    #@bb
    return v2

    #@bc
    .line 92
    :cond_d
    const-string/jumbo v2, "query-services"

    #@bf
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v2

    #@c3
    if-eqz v2, :cond_e

    #@c5
    .line 119
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    #@c8
    move-result v2

    #@c9
    return v2

    #@ca
    .line 92
    :cond_e
    const-string/jumbo v2, "query-receivers"

    #@cd
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d0
    move-result v2

    #@d1
    if-eqz v2, :cond_f

    #@d3
    .line 121
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    #@d6
    move-result v2

    #@d7
    return v2

    #@d8
    .line 92
    :cond_f
    const-string/jumbo v2, "suspend"

    #@db
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v2

    #@df
    if-eqz v2, :cond_10

    #@e1
    .line 123
    const/4 v2, 0x1

    #@e2
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    #@e5
    move-result v2

    #@e6
    return v2

    #@e7
    .line 92
    :cond_10
    const-string/jumbo v2, "unsuspend"

    #@ea
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v2

    #@ee
    if-eqz v2, :cond_11

    #@f0
    .line 125
    const/4 v2, 0x0

    #@f1
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    #@f4
    move-result v2

    #@f5
    return v2

    #@f6
    .line 92
    :cond_11
    const-string/jumbo v2, "set-home-activity"

    #@f9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result v2

    #@fd
    if-eqz v2, :cond_12

    #@ff
    .line 127
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    #@102
    move-result v2

    #@103
    return v2

    #@104
    .line 129
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@107
    move-result v2

    #@108
    return v2

    #@109
    .line 131
    :catch_0
    move-exception v0

    #@10a
    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v3, "Remote exception: "

    #@112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v2

    #@116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v2

    #@11a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v2

    #@11e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@121
    .line 134
    const/4 v2, -0x1

    #@122
    return v2
.end method

.method public onHelp()V
    .locals 4

    #@0
    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v1

    #@4
    .line 1395
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "Package manager (package) commands:"

    #@7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 1396
    const-string/jumbo v2, "  help"

    #@d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10
    .line 1397
    const-string/jumbo v2, "    Print this help text."

    #@13
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 1398
    const-string/jumbo v2, ""

    #@19
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 1399
    const-string/jumbo v2, "  compile [-m MODE | -r REASON] [-f] [-c]"

    #@1f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1400
    const-string/jumbo v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    #@25
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 1401
    const-string/jumbo v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\"."

    #@2b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 1402
    const-string/jumbo v2, "    Options:"

    #@31
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 1403
    const-string/jumbo v2, "      -a: compile all packages"

    #@37
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 1404
    const-string/jumbo v2, "      -c: clear profile data before compiling"

    #@3d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 1405
    const-string/jumbo v2, "      -f: force compilation even if not needed"

    #@43
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 1406
    const-string/jumbo v2, "      -m: select compilation mode"

    #@49
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 1407
    const-string/jumbo v2, "          MODE is one of the dex2oat compiler filters:"

    #@4f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 1408
    const-string/jumbo v2, "            verify-none"

    #@55
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 1409
    const-string/jumbo v2, "            verify-at-runtime"

    #@5b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e
    .line 1410
    const-string/jumbo v2, "            verify-profile"

    #@61
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 1411
    const-string/jumbo v2, "            interpret-only"

    #@67
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 1412
    const-string/jumbo v2, "            space-profile"

    #@6d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 1413
    const-string/jumbo v2, "            space"

    #@73
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@76
    .line 1414
    const-string/jumbo v2, "            speed-profile"

    #@79
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 1415
    const-string/jumbo v2, "            speed"

    #@7f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 1416
    const-string/jumbo v2, "            everything"

    #@85
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@88
    .line 1417
    const-string/jumbo v2, "      -r: select compilation reason"

    #@8b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 1418
    const-string/jumbo v2, "          REASON is one of:"

    #@91
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 1419
    const/4 v0, 0x0

    #@95
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@97
    array-length v2, v2

    #@98
    if-ge v0, v2, :cond_0

    #@9a
    .line 1420
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v3, "            "

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@a8
    aget-object v3, v3, v0

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 1419
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_0

    #@b8
    .line 1422
    :cond_0
    const-string/jumbo v2, "      --reset: restore package to its post-install state"

    #@bb
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@be
    .line 1423
    const-string/jumbo v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    #@c1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c4
    .line 1424
    const-string/jumbo v2, "  list features"

    #@c7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 1425
    const-string/jumbo v2, "    Prints all features of the system."

    #@cd
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d0
    .line 1426
    const-string/jumbo v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    #@d3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 1427
    const-string/jumbo v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    #@d9
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dc
    .line 1428
    const-string/jumbo v2, "    Options:"

    #@df
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2
    .line 1429
    const-string/jumbo v2, "      -f: dump the name of the .apk file containing the test package"

    #@e5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e8
    .line 1430
    const-string/jumbo v2, "  list libraries"

    #@eb
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 1431
    const-string/jumbo v2, "    Prints all system libraries."

    #@f1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 1432
    const-string/jumbo v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-u] [--user USER_ID] [FILTER]"

    #@f7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fa
    .line 1433
    const-string/jumbo v2, "    Prints all packages; optionally only those whose name contains"

    #@fd
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 1434
    const-string/jumbo v2, "    the text in FILTER."

    #@103
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@106
    .line 1435
    const-string/jumbo v2, "    Options:"

    #@109
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10c
    .line 1436
    const-string/jumbo v2, "      -f: see their associated file"

    #@10f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@112
    .line 1437
    const-string/jumbo v2, "      -d: filter to only show disabled packages"

    #@115
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 1438
    const-string/jumbo v2, "      -e: filter to only show enabled packages"

    #@11b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11e
    .line 1439
    const-string/jumbo v2, "      -s: filter to only show system packages"

    #@121
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@124
    .line 1440
    const-string/jumbo v2, "      -3: filter to only show third party packages"

    #@127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 1441
    const-string/jumbo v2, "      -i: see the installer for the packages"

    #@12d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@130
    .line 1442
    const-string/jumbo v2, "      -u: also include uninstalled packages"

    #@133
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@136
    .line 1443
    const-string/jumbo v2, "  list permission-groups"

    #@139
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13c
    .line 1444
    const-string/jumbo v2, "    Prints all known permission groups."

    #@13f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 1445
    const-string/jumbo v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    #@145
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@148
    .line 1446
    const-string/jumbo v2, "    Prints all known permissions; optionally only those in GROUP."

    #@14b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14e
    .line 1447
    const-string/jumbo v2, "    Options:"

    #@151
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@154
    .line 1448
    const-string/jumbo v2, "      -g: organize by group"

    #@157
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15a
    .line 1449
    const-string/jumbo v2, "      -f: print all information"

    #@15d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@160
    .line 1450
    const-string/jumbo v2, "      -s: short summary"

    #@163
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@166
    .line 1451
    const-string/jumbo v2, "      -d: only list dangerous permissions"

    #@169
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16c
    .line 1452
    const-string/jumbo v2, "      -u: list only the permissions users will see"

    #@16f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@172
    .line 1453
    const-string/jumbo v2, "  dump-profiles TARGET-PACKAGE"

    #@175
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@178
    .line 1454
    const-string/jumbo v2, "    Dumps method/class profile files to"

    #@17b
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17e
    .line 1455
    const-string/jumbo v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    #@181
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@184
    .line 1456
    const-string/jumbo v2, "  resolve-activity [--brief] [--components] [--user USER_ID] INTENT"

    #@187
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18a
    .line 1457
    const-string/jumbo v2, "    Prints the activity that resolves to the given Intent."

    #@18d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@190
    .line 1458
    const-string/jumbo v2, "  query-activities [--brief] [--components] [--user USER_ID] INTENT"

    #@193
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@196
    .line 1459
    const-string/jumbo v2, "    Prints all activities that can handle the given Intent."

    #@199
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19c
    .line 1460
    const-string/jumbo v2, "  query-services [--brief] [--components] [--user USER_ID] INTENT"

    #@19f
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a2
    .line 1461
    const-string/jumbo v2, "    Prints all services that can handle the given Intent."

    #@1a5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a8
    .line 1462
    const-string/jumbo v2, "  query-receivers [--brief] [--components] [--user USER_ID] INTENT"

    #@1ab
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae
    .line 1463
    const-string/jumbo v2, "    Prints all broadcast receivers that can handle the given Intent."

    #@1b1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b4
    .line 1464
    const-string/jumbo v2, "  suspend [--user USER_ID] TARGET-PACKAGE"

    #@1b7
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ba
    .line 1465
    const-string/jumbo v2, "    Suspends the specified package (as user)."

    #@1bd
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c0
    .line 1466
    const-string/jumbo v2, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    #@1c3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c6
    .line 1467
    const-string/jumbo v2, "    Unsuspends the specified package (as user)."

    #@1c9
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc
    .line 1468
    const-string/jumbo v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    #@1cf
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d2
    .line 1469
    const-string/jumbo v2, "    set the default home activity (aka launcher)."

    #@1d5
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d8
    .line 1470
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@1db
    .line 1471
    const-string/jumbo v2, ""

    #@1de
    invoke-static {v1, v2}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1e1
    .line 1393
    return-void
.end method
