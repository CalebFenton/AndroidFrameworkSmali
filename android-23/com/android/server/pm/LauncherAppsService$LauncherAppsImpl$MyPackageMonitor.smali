.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    #@3
    return-void
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "listeningUser"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 341
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@4
    move-result v4

    #@5
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@8
    move-result v5

    #@9
    if-ne v4, v5, :cond_0

    #@b
    .line 343
    return v6

    #@c
    .line 345
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 347
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@12
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@19
    move-result v5

    #@1a
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1d
    move-result-object v3

    #@1e
    .line 348
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@20
    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@27
    move-result v5

    #@28
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v2

    #@2c
    .line 349
    .local v2, "listeningUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 357
    :cond_1
    const/4 v4, 0x0

    #@31
    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 357
    return v4

    #@35
    .line 350
    :cond_2
    :try_start_1
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@37
    const/4 v5, -0x1

    #@38
    if-eq v4, v5, :cond_1

    #@3a
    .line 351
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@3c
    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@3e
    if-ne v4, v5, :cond_1

    #@40
    .line 352
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_1

    #@46
    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@49
    .line 363
    return v6

    #@4a
    .line 365
    .end local v2    # "listeningUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@4b
    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 365
    throw v4
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 372
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 373
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 374
    .local v3, "n":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@16
    .line 375
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 376
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/os/UserHandle;

    #@2e
    .line 377
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageAdded"

    #@31
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_0

    #@37
    .line 374
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 379
    :cond_0
    :try_start_0
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_1

    #@3e
    .line 380
    :catch_0
    move-exception v4

    #@3f
    .line 381
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "LauncherAppsService"

    #@42
    const-string/jumbo v7, "Callback failed "

    #@45
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_1

    #@49
    .line 384
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@52
    .line 386
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    #@55
    .line 371
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 411
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 412
    .local v3, "n":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@16
    .line 413
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 414
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/os/UserHandle;

    #@2e
    .line 415
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageModified"

    #@31
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_0

    #@37
    .line 412
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 417
    :cond_0
    :try_start_0
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_1

    #@3e
    .line 418
    :catch_0
    move-exception v4

    #@3f
    .line 419
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "LauncherAppsService"

    #@42
    const-string/jumbo v7, "Callback failed "

    #@45
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_1

    #@49
    .line 422
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@52
    .line 424
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@55
    .line 409
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 391
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 392
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 393
    .local v3, "n":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@16
    .line 394
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 395
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/os/UserHandle;

    #@2e
    .line 396
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackageRemoved"

    #@31
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_0

    #@37
    .line 393
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 398
    :cond_0
    :try_start_0
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    goto :goto_1

    #@3e
    .line 399
    :catch_0
    move-exception v4

    #@3f
    .line 400
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "LauncherAppsService"

    #@42
    const-string/jumbo v7, "Callback failed "

    #@45
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    goto :goto_1

    #@49
    .line 403
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@52
    .line 405
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    #@55
    .line 390
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 429
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 430
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 431
    .local v3, "n":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@16
    .line 432
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 433
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/os/UserHandle;

    #@2e
    .line 434
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackagesAvailable"

    #@31
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_0

    #@37
    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 436
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    #@3d
    move-result v6

    #@3e
    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_1

    #@42
    .line 437
    :catch_0
    move-exception v4

    #@43
    .line 438
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_1

    #@4d
    .line 441
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4f
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@56
    .line 443
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    #@59
    .line 428
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 448
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 449
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 450
    .local v3, "n":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@16
    .line 451
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 452
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Landroid/os/UserHandle;

    #@2e
    .line 453
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string/jumbo v6, "onPackagesUnavailable"

    #@31
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_0

    #@37
    .line 450
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 455
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    #@3d
    move-result v6

    #@3e
    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_1

    #@42
    .line 456
    :catch_0
    move-exception v4

    #@43
    .line 457
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_1

    #@4d
    .line 460
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4f
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@56
    .line 462
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    #@59
    .line 447
    return-void
.end method
