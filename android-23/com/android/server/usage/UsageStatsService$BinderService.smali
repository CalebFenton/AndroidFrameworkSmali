.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@3
    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1147
    .local v0, "callingUid":I
    const/16 v4, 0x3e8

    #@8
    if-ne v0, v4, :cond_0

    #@a
    .line 1148
    return v2

    #@b
    .line 1150
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@d
    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    #@f
    const/16 v5, 0x2b

    #@11
    invoke-virtual {v4, v5, v0, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    #@14
    move-result v1

    #@15
    .line 1152
    .local v1, "mode":I
    const/4 v4, 0x3

    #@16
    if-ne v1, v4, :cond_2

    #@18
    .line 1155
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1a
    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, "android.permission.PACKAGE_USAGE_STATS"

    #@21
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_1

    #@27
    :goto_0
    return v2

    #@28
    :cond_1
    move v2, v3

    #@29
    goto :goto_0

    #@2a
    .line 1158
    :cond_2
    if-nez v1, :cond_3

    #@2c
    :goto_1
    return v2

    #@2d
    :cond_3
    move v2, v3

    #@2e
    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Permission Denial: can\'t dump UsageStats from pid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1274
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1274
    const-string/jumbo v1, ", uid="

    #@26
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 1275
    const-string/jumbo v1, " without permission "

    #@35
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 1275
    const-string/jumbo v1, "android.permission.DUMP"

    #@3c
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 1276
    return-void

    #@48
    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4a
    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@4d
    .line 1270
    return-void
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1222
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v0

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8
    move-result v1

    #@9
    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v2

    #@d
    const-string/jumbo v6, "isAppInactive"

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x1

    #@12
    const/4 v7, 0x0

    #@13
    move v3, p2

    #@14
    .line 1222
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result p2

    #@18
    .line 1227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v10

    #@1c
    .line 1229
    .local v10, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1e
    const-wide/16 v2, -0x1

    #@20
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result v0

    #@24
    .line 1231
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1229
    return v0

    #@28
    .line 1224
    .end local v10    # "token":J
    :catch_0
    move-exception v8

    #@29
    .line 1225
    .local v8, "re":Landroid/os/RemoteException;
    return v9

    #@2a
    .line 1230
    .end local v8    # "re":Landroid/os/RemoteException;
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    #@2b
    .line 1231
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 1230
    throw v0
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1185
    move-object/from16 v0, p6

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1186
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 1189
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@d
    move-result v4

    #@e
    .line 1190
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v10

    #@12
    .line 1193
    .local v10, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@14
    move v5, p1

    #@15
    move-wide v6, p2

    #@16
    move-wide/from16 v8, p4

    #@18
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    .line 1195
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v2, :cond_1

    #@1e
    .line 1196
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@20
    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1199
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1196
    return-object v3

    #@27
    .line 1199
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 1201
    const/4 v3, 0x0

    #@2b
    return-object v3

    #@2c
    .line 1198
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :catchall_0
    move-exception v3

    #@2d
    .line 1199
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1198
    throw v3
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 9
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1206
    invoke-direct {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1207
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1210
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v1

    #@c
    .line 1211
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v6

    #@10
    .line 1213
    .local v6, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@12
    move-wide v2, p1

    #@13
    move-wide v4, p3

    #@14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v0

    #@18
    .line 1215
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1213
    return-object v0

    #@1c
    .line 1214
    :catchall_0
    move-exception v0

    #@1d
    .line 1215
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1214
    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1164
    move-object/from16 v0, p6

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1165
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 1168
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@d
    move-result v4

    #@e
    .line 1169
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v10

    #@12
    .line 1171
    .local v10, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@14
    move v5, p1

    #@15
    move-wide v6, p2

    #@16
    move-wide/from16 v8, p4

    #@18
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJ)Ljava/util/List;

    #@1b
    move-result-object v2

    #@1c
    .line 1173
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v2, :cond_1

    #@1e
    .line 1174
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@20
    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1177
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1174
    return-object v3

    #@27
    .line 1177
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 1179
    const/4 v3, 0x0

    #@2b
    return-object v3

    #@2c
    .line 1176
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :catchall_0
    move-exception v3

    #@2d
    .line 1177
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1176
    throw v3
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1239
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@b
    move-result v1

    #@c
    .line 1241
    const-string/jumbo v6, "setAppIdle"

    #@f
    .line 1240
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x1

    #@11
    .line 1241
    const/4 v7, 0x0

    #@12
    move v3, p3

    #@13
    .line 1239
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result p3

    #@17
    .line 1245
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@19
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "android.permission.CHANGE_APP_IDLE_STATE"

    #@20
    .line 1246
    const-string/jumbo v3, "No permission to change app idle state"

    #@23
    .line 1245
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 1247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@29
    move-result-wide v10

    #@2a
    .line 1249
    .local v10, "token":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d
    move-result-object v0

    #@2e
    .line 1250
    const/4 v1, 0x0

    #@2f
    .line 1249
    invoke-interface {v0, p1, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result-object v8

    #@33
    .line 1251
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_0

    #@35
    .line 1255
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1251
    return-void

    #@39
    .line 1242
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v10    # "token":J
    :catch_0
    move-exception v9

    #@3a
    .line 1243
    .local v9, "re":Landroid/os/RemoteException;
    return-void

    #@3b
    .line 1252
    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "token":J
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@3d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->setAppIdle(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 1255
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 1236
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    #@44
    .line 1253
    :catch_1
    move-exception v9

    #@45
    .line 1255
    .restart local v9    # "re":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    goto :goto_0

    #@49
    .line 1254
    .end local v9    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@4a
    .line 1255
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1254
    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1262
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x20

    #@4
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1263
    .local v6, "reason":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "from:"

    #@a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v0

    #@11
    invoke-static {v6, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@14
    .line 1265
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@16
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@18
    .line 1266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    move-object v1, p1

    #@1d
    move-wide v2, p2

    #@1e
    move v4, p4

    #@1f
    .line 1265
    invoke-interface/range {v0 .. v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    #@22
    .line 1261
    return-void
.end method
