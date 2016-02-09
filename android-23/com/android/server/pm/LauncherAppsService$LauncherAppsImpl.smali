.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList",
            "<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/LauncherAppsService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->this$0:Lcom/android/server/pm/LauncherAppsService;

    #@2
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    #@5
    .line 76
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    #@a
    .line 75
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@c
    .line 78
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V

    #@12
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@14
    .line 81
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@16
    .line 82
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@1e
    .line 83
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@20
    const-string/jumbo v1, "user"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/os/UserManager;

    #@29
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@2b
    .line 80
    return-void
.end method

.method private ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 8
    .param p1, "userToCheck"    # Landroid/os/UserHandle;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 158
    .local v0, "callingUserId":I
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@7
    move-result v4

    #@8
    .line 160
    .local v4, "targetUserId":I
    if-ne v4, v0, :cond_0

    #@a
    return-void

    #@b
    .line 162
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v2

    #@f
    .line 164
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@11
    invoke-virtual {v6, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@14
    move-result-object v1

    #@15
    .line 165
    .local v1, "callingUserInfo":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@17
    invoke-virtual {v6, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@1a
    move-result-object v5

    #@1b
    .line 166
    .local v5, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_1

    #@1d
    .line 167
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@1f
    const/4 v7, -0x1

    #@20
    if-ne v6, v7, :cond_2

    #@22
    .line 169
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    #@24
    invoke-direct {v6, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 171
    .end local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    #@29
    .line 172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 171
    throw v6

    #@2d
    .line 168
    .restart local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2f
    iget v7, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    if-ne v6, v7, :cond_1

    #@33
    .line 172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 156
    return-void
.end method

.method private isUserEnabled(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 182
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@6
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@9
    move-result v4

    #@a
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v2

    #@e
    .line 183
    .local v2, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@10
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v3

    #@14
    .line 185
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 183
    return v3

    #@18
    :cond_0
    const/4 v3, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 184
    .end local v2    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@1b
    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 184
    throw v3
.end method

.method private startWatchingPackageBroadcasts()V
    .locals 5

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@4
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x1

    #@8
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@b
    .line 128
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    #@5
    .line 135
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    #@e
    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@13
    .line 103
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 91
    return-void

    #@1e
    .line 92
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method checkCallbackCount()V
    .locals 2

    #@0
    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 148
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 142
    return-void

    #@10
    .line 143
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
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
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "Cannot retrieve activities for unrelated profile "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 193
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 194
    new-instance v4, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@22
    return-object v4

    #@23
    .line 197
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@25
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@28
    const/4 v5, 0x0

    #@29
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@2c
    .line 198
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    #@2f
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@32
    .line 199
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@35
    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@38
    move-result-wide v2

    #@39
    .line 202
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@3b
    .line 203
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3e
    move-result v5

    #@3f
    .line 202
    const/4 v6, 0x0

    #@40
    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    move-result-object v0

    #@44
    .line 206
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 204
    return-object v0

    #@48
    .line 205
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v4

    #@49
    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 205
    throw v4
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "Cannot check component for unrelated profile "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@18
    .line 249
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 250
    return v4

    #@1f
    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 255
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 256
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    const/4 v6, 0x0

    #@2c
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v2

    #@30
    .line 257
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    #@32
    const/4 v4, 0x1

    #@33
    .line 259
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 257
    return v4

    #@37
    .line 258
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@38
    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 258
    throw v4
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "Cannot check package for unrelated profile "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@18
    .line 231
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 232
    return v4

    #@1f
    .line 235
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 237
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 238
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    const/4 v6, 0x0

    #@2c
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@2f
    move-result-object v2

    #@30
    .line 239
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    #@32
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@34
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 241
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 239
    return v4

    #@3a
    .line 240
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@3b
    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 240
    throw v4
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@8
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@a
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 120
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 113
    return-void

    #@15
    .line 114
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "Cannot resolve activity for unrelated profile "

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 214
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 215
    const/4 v1, 0x0

    #@1e
    return-object v1

    #@1f
    .line 218
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v2

    #@23
    .line 220
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@25
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@28
    move-result v4

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-virtual {v1, p1, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result-object v0

    #@2e
    .line 223
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 221
    return-object v0

    #@32
    .line 222
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v1

    #@33
    .line 223
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    .line 222
    throw v1
.end method

.method public showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "Cannot show app details for unrelated profile "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {p0, p4, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 315
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 316
    new-instance v4, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Cannot show app details for disabled profile "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 320
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v0

    #@3b
    .line 322
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 323
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@41
    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@44
    .line 324
    const-string/jumbo v5, "package"

    #@47
    const/4 v6, 0x0

    #@48
    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@4b
    move-result-object v5

    #@4c
    .line 323
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@4f
    .line 325
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x10808000

    #@52
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@55
    .line 327
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@58
    .line 328
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 313
    return-void

    #@61
    .line 329
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@62
    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 329
    throw v4
.end method

.method public startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v12, "Cannot start activity for unrelated profile "

    #@8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v11

    #@c
    move-object/from16 v0, p4

    #@e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v11

    #@12
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v11

    #@16
    move-object/from16 v0, p4

    #@18
    invoke-direct {p0, v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@1b
    .line 267
    move-object/from16 v0, p4

    #@1d
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@20
    move-result v11

    #@21
    if-nez v11, :cond_0

    #@23
    .line 268
    new-instance v11, Ljava/lang/IllegalStateException;

    #@25
    new-instance v12, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v13, "Cannot start activity for disabled profile "

    #@2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v12

    #@31
    move-object/from16 v0, p4

    #@33
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v12

    #@3b
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v11

    #@3f
    .line 271
    :cond_0
    new-instance v8, Landroid/content/Intent;

    #@41
    const-string/jumbo v11, "android.intent.action.MAIN"

    #@44
    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@47
    .line 272
    .local v8, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    #@4a
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@4d
    .line 273
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@52
    .line 274
    const/high16 v11, 0x10200000

    #@54
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@57
    .line 276
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@61
    move-result-wide v6

    #@62
    .line 280
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@65
    move-result-object v9

    #@66
    .line 281
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@69
    move-result v11

    #@6a
    const/4 v12, 0x0

    #@6b
    invoke-interface {v9, p1, v12, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@6e
    move-result-object v5

    #@6f
    .line 282
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-boolean v11, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@71
    if-nez v11, :cond_1

    #@73
    .line 283
    new-instance v11, Ljava/lang/SecurityException;

    #@75
    new-instance v12, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v13, "Cannot launch non-exported components "

    #@7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v12

    #@85
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8d
    .line 306
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v11

    #@8e
    .line 307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@91
    .line 306
    throw v11

    #@92
    .line 290
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@94
    .line 291
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@97
    move-result v12

    #@98
    const/4 v13, 0x0

    #@99
    .line 290
    invoke-virtual {v11, v8, v13, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@9c
    move-result-object v3

    #@9d
    .line 292
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a0
    move-result v10

    #@a1
    .line 293
    .local v10, "size":I
    const/4 v4, 0x0

    #@a2
    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_3

    #@a4
    .line 294
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v11

    #@a8
    check-cast v11, Landroid/content/pm/ResolveInfo;

    #@aa
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@ac
    .line 295
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@ae
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v11

    #@b6
    if-eqz v11, :cond_2

    #@b8
    .line 296
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@ba
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v11

    #@c2
    .line 295
    if-eqz v11, :cond_2

    #@c4
    .line 299
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@c7
    .line 300
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@c9
    move-object/from16 v0, p3

    #@cb
    move-object/from16 v1, p4

    #@cd
    invoke-virtual {v11, v8, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d0
    .line 307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d3
    .line 301
    return-void

    #@d4
    .line 293
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@d6
    goto :goto_0

    #@d7
    .line 304
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/SecurityException;

    #@d9
    new-instance v12, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v13, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    #@e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v12

    #@e5
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v12

    #@ed
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
