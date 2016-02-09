.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@0
    .prologue
    .line 3117
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@3
    return-void
.end method

.method private isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v2

    #@5
    .line 3202
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@7
    invoke-static {v3, p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    #@a
    move-result v1

    #@b
    .line 3203
    .local v1, "packageUid":I
    if-gez v1, :cond_0

    #@d
    .line 3204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "No package "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 3205
    const-string/jumbo v5, " for user "

    #@22
    .line 3204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 3207
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@34
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    monitor-enter v4

    #@39
    .line 3208
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@3b
    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap3(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@3e
    .line 3210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v3

    #@42
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@45
    move-result-object v0

    #@46
    .line 3211
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@48
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get6(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_1

    #@52
    .line 3212
    const/4 v3, 0x1

    #@53
    monitor-exit v4

    #@54
    return v3

    #@55
    :cond_1
    monitor-exit v4

    #@56
    .line 3216
    return v5

    #@57
    .line 3207
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@58
    monitor-exit v4

    #@59
    throw v3
.end method

.method private isParentOrProfile(II)Z
    .locals 2
    .param p1, "parentId"    # I
    .param p2, "profileId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3245
    if-ne p1, p2, :cond_0

    #@3
    .line 3246
    return v0

    #@4
    .line 3248
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    #@7
    move-result v1

    #@8
    if-ne v1, p1, :cond_1

    #@a
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isProfileEnabled(I)Z
    .locals 4
    .param p1, "profileId"    # I

    #@0
    .prologue
    .line 3316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3318
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@6
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v2

    #@e
    .line 3319
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@10
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 3325
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 3320
    :cond_0
    const/4 v3, 0x0

    #@1c
    .line 3323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 3320
    return v3

    #@20
    .line 3322
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@21
    .line 3323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 3322
    throw v3
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 3220
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 3222
    return v3

    #@b
    .line 3224
    :cond_0
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@d
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 3226
    return v3

    #@14
    .line 3228
    :cond_1
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@16
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@18
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 3230
    return v3

    #@1f
    .line 3232
    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@22
    move-result v0

    #@23
    .line 3233
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@25
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@28
    move-result v1

    #@29
    if-eq v1, v0, :cond_3

    #@2b
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2d
    if-eqz v1, :cond_4

    #@2f
    .line 3234
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@31
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@34
    move-result v1

    #@35
    if-ne v1, v0, :cond_4

    #@37
    .line 3235
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@39
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "android.permission.BIND_APPWIDGET"

    #@40
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_4

    #@46
    .line 3239
    return v3

    #@47
    .line 3241
    :cond_4
    return v4
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get1(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    #@5
    move-result-object v0

    #@6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@d
    .line 3184
    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 3180
    const-string/jumbo v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    #@9
    .line 3181
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "hasBindAppWidgetPermission packageName="

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 3179
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 3178
    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3160
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@6
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    #@9
    move-result-object v4

    #@a
    .line 3161
    const/16 v5, 0x1000

    #@c
    .line 3160
    invoke-interface {v4, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@f
    move-result-object v3

    #@10
    .line 3162
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_0

    #@12
    .line 3163
    new-instance v4, Ljava/lang/SecurityException;

    #@14
    new-instance v5, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v6, "Service "

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 3164
    const-string/jumbo v6, " not installed for user "

    #@27
    .line 3163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 3171
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    #@38
    .line 3174
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 3157
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@3c
    .line 3166
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "android.permission.BIND_REMOTEVIEWS"

    #@3f
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_1

    #@47
    .line 3167
    new-instance v4, Ljava/lang/SecurityException;

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v6, "Service "

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    .line 3168
    const-string/jumbo v6, " in user "

    #@5c
    .line 3167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 3168
    const-string/jumbo v6, "does not require "

    #@67
    .line 3167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 3169
    const-string/jumbo v6, "android.permission.BIND_REMOTEVIEWS"

    #@6e
    .line 3167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 3173
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v4

    #@7b
    .line 3174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7e
    .line 3173
    throw v4

    #@7f
    .line 3174
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@82
    goto :goto_0
.end method

.method public getEnabledGroupProfileIds(I)[I
    .locals 11
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3125
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    #@3
    move-result v3

    #@4
    .line 3128
    .local v3, "parentId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v4

    #@8
    .line 3130
    .local v4, "identity":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@a
    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    #@d
    move-result-object v10

    #@e
    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v9

    #@12
    .line 3132
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 3135
    const/4 v0, 0x0

    #@16
    .line 3136
    .local v0, "enabledProfileCount":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@19
    move-result v7

    #@1a
    .line 3137
    .local v7, "profileCount":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    #@1d
    .line 3138
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v10

    #@21
    check-cast v10, Landroid/content/pm/UserInfo;

    #@23
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@26
    move-result v10

    #@27
    if-eqz v10, :cond_0

    #@29
    .line 3139
    add-int/lit8 v0, v0, 0x1

    #@2b
    .line 3137
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 3131
    .end local v0    # "enabledProfileCount":I
    .end local v2    # "i":I
    .end local v7    # "profileCount":I
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    #@2f
    .line 3132
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3131
    throw v10

    #@33
    .line 3143
    .restart local v0    # "enabledProfileCount":I
    .restart local v2    # "i":I
    .restart local v7    # "profileCount":I
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v1, 0x0

    #@34
    .line 3144
    .local v1, "enabledProfileIndex":I
    new-array v8, v0, [I

    #@36
    .line 3145
    .local v8, "profileIds":[I
    const/4 v2, 0x0

    #@37
    :goto_1
    if-ge v2, v7, :cond_3

    #@39
    .line 3146
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    check-cast v6, Landroid/content/pm/UserInfo;

    #@3f
    .line 3147
    .local v6, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_2

    #@45
    .line 3148
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    #@4c
    move-result v10

    #@4d
    aput v10, v8, v1

    #@4f
    .line 3149
    add-int/lit8 v1, v1, 0x1

    #@51
    .line 3145
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_1

    #@54
    .line 3153
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v8
.end method

.method public getGroupParent(I)I
    .locals 2
    .param p1, "profileId"    # I

    #@0
    .prologue
    .line 3293
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    #@9
    move-result v0

    #@a
    .line 3294
    .local v0, "parentId":I
    const/16 v1, -0xa

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .end local v0    # "parentId":I
    :goto_0
    return v0

    #@f
    .restart local v0    # "parentId":I
    :cond_0
    move v0, p1

    #@10
    goto :goto_0
.end method

.method public getProfileParent(I)I
    .locals 4
    .param p1, "profileId"    # I

    #@0
    .prologue
    .line 3280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3282
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@6
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v2

    #@e
    .line 3283
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@10
    .line 3284
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    .line 3287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 3284
    return v3

    #@1c
    .line 3287
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 3289
    const/16 v3, -0xa

    #@21
    return v3

    #@22
    .line 3286
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@23
    .line 3287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 3286
    throw v3
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 3191
    const-string/jumbo v2, "android.permission.BIND_APPWIDGET"

    #@9
    const/4 v3, 0x0

    #@a
    .line 3190
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3197
    :cond_0
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 3192
    :catch_0
    move-exception v0

    #@10
    .line 3193
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 3194
    const/4 v1, 0x0

    #@17
    return v1
.end method

.method public isEnabledGroupProfile(I)Z
    .locals 2
    .param p1, "profileId"    # I

    #@0
    .prologue
    .line 3120
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 3121
    .local v0, "parentId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3311
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@4
    if-ne v0, p3, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 3312
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@a
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 3311
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3298
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@4
    if-ne v0, p2, :cond_0

    #@6
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    #@0
    .prologue
    .line 3253
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 3254
    .local v0, "callerId":I
    if-ne p2, v0, :cond_0

    #@6
    .line 3255
    const/4 v2, 0x1

    #@7
    return v2

    #@8
    .line 3257
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    #@b
    move-result v1

    #@c
    .line 3258
    .local v1, "parentId":I
    if-eq v1, v0, :cond_1

    #@e
    .line 3259
    const/4 v2, 0x0

    #@f
    return v2

    #@10
    .line 3261
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    #@13
    move-result v2

    #@14
    return v2
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3304
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@4
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    #@6
    if-ne v0, p2, :cond_0

    #@8
    .line 3305
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@a
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 3304
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public isProviderWhiteListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    #@0
    .prologue
    .line 3266
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2
    .line 3265
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@8
    .line 3269
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v1, :cond_0

    #@a
    .line 3270
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 3273
    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    .line 3276
    .local v0, "crossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    return v2
.end method
