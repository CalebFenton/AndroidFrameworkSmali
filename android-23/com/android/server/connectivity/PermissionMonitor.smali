.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final NETWORK:Z = false

.field private static final SYSTEM:Z = true

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "appUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@a
    .line 71
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@11
    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    #@13
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    #@19
    .line 76
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    #@1f
    .line 77
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    #@21
    .line 78
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    #@26
    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@28
    .line 73
    return-void
.end method

.method private hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, "android.permission.CHANGE_NETWORK_STATE"

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 154
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@7
    array-length v4, v3

    #@8
    move v1, v2

    #@9
    :goto_0
    if-ge v1, v4, :cond_1

    #@b
    aget-object v0, v3, v1

    #@d
    .line 155
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 156
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 160
    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private hasSystemPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 168
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8
    .line 169
    .local v0, "flags":I
    :goto_0
    and-int/lit8 v1, v0, 0x1

    #@a
    if-nez v1, :cond_0

    #@c
    and-int/lit16 v1, v0, 0x80

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 170
    :cond_0
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 168
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    #@13
    .restart local v0    # "flags":I
    goto :goto_0

    #@14
    .line 172
    :cond_2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@17
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 270
    const-string/jumbo v0, "PermissionMonitor"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 268
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    const-string/jumbo v0, "PermissionMonitor"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 274
    return-void
.end method

.method private declared-synchronized onAppAdded(Ljava/lang/String;I)V
    .locals 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    if-gez p2, :cond_1

    #@9
    .line 231
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "Invalid app in onAppAdded: "

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    const-string/jumbo v7, " | "

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 232
    return-void

    #@2d
    .line 236
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2f
    const/16 v7, 0x1000

    #@31
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@34
    move-result-object v0

    #@35
    .line 237
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    #@38
    move-result v3

    #@39
    .line 238
    .local v3, "isNetwork":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    #@3c
    move-result v4

    #@3d
    .line 239
    .local v4, "isSystem":Z
    if-nez v3, :cond_2

    #@3f
    if-eqz v4, :cond_4

    #@41
    .line 240
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v7

    #@47
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Ljava/lang/Boolean;

    #@4d
    .line 243
    .local v5, "permission":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    #@4f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@52
    move-result v6

    #@53
    if-nez v6, :cond_4

    #@55
    .line 244
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5e
    move-result-object v8

    #@5f
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 246
    new-instance v1, Ljava/util/HashMap;

    #@64
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@67
    .line 247
    .local v1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a
    move-result-object v6

    #@6b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6e
    move-result-object v7

    #@6f
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 248
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@74
    const/4 v7, 0x1

    #@75
    invoke-direct {p0, v6, v1, v7}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "isNetwork":Z
    .end local v4    # "isSystem":Z
    .end local v5    # "permission":Ljava/lang/Boolean;
    :cond_4
    :goto_0
    monitor-exit p0

    #@79
    .line 229
    return-void

    #@7a
    .line 251
    :catch_0
    move-exception v2

    #@7b
    .line 252
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v7, "NameNotFoundException in onAppAdded: "

    #@83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    goto :goto_0

    #@93
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    #@94
    monitor-exit p0

    #@95
    throw v6
.end method

.method private declared-synchronized onAppRemoved(I)V
    .locals 3
    .param p1, "appUid"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 257
    if-gez p1, :cond_0

    #@3
    .line 258
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Invalid app in onAppRemoved: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 259
    return-void

    #@1c
    .line 261
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 263
    new-instance v0, Ljava/util/HashMap;

    #@27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2a
    .line 264
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v2

    #@33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 265
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    monitor-exit p0

    #@3d
    .line 256
    return-void

    #@3e
    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit p0

    #@40
    throw v1
.end method

.method private declared-synchronized onUserAdded(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 206
    if-gez p1, :cond_0

    #@3
    .line 207
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Invalid user in onUserAdded: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 208
    return-void

    #@1c
    .line 210
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    .line 212
    new-instance v0, Ljava/util/HashSet;

    #@27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2a
    .line 213
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    .line 214
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@33
    const/4 v2, 0x1

    #@34
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 205
    return-void

    #@39
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1
.end method

.method private declared-synchronized onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 218
    if-gez p1, :cond_0

    #@3
    .line 219
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Invalid user in onUserRemoved: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 220
    return-void

    #@1c
    .line 222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@25
    .line 224
    new-instance v0, Ljava/util/HashSet;

    #@27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2a
    .line 225
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    .line 226
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@33
    const/4 v2, 0x0

    #@34
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 217
    return-void

    #@39
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    new-array v0, v2, [I

    #@6
    .line 177
    .local v0, "array":[I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/lang/Integer;

    #@13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    aput v2, v0, v1

    #@19
    .line 177
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 180
    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 11
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    .local p1, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 185
    .local v4, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 186
    .local v5, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@d
    move-result-object v8

    #@e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v8

    #@16
    if-eqz v8, :cond_2

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Map$Entry;

    #@1e
    .line 187
    .local v0, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Ljava/lang/Boolean;

    #@24
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_1

    #@2a
    move-object v3, v5

    #@2b
    .line 188
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v7

    #@2f
    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_0

    #@35
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v8

    #@39
    check-cast v8, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v6

    #@3f
    .line 189
    .local v6, "user":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    check-cast v8, Ljava/lang/Integer;

    #@45
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v8

    #@49
    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    #@4c
    move-result v8

    #@4d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v8

    #@51
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_1

    #@55
    .line 187
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "user":I
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    move-object v3, v4

    #@56
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    #@57
    .line 193
    .end local v0    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz p3, :cond_3

    #@59
    .line 194
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    #@5b
    const-string/jumbo v9, "NETWORK"

    #@5e
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    #@61
    move-result-object v10

    #@62
    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    #@65
    .line 195
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    #@67
    const-string/jumbo v9, "SYSTEM"

    #@6a
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    #@6d
    move-result-object v10

    #@6e
    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    #@71
    .line 183
    :goto_2
    return-void

    #@72
    .line 197
    :cond_3
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    #@74
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    #@77
    move-result-object v9

    #@78
    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    #@7b
    .line 198
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    #@7d
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    #@80
    move-result-object v9

    #@81
    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->clearPermission([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    goto :goto_2

    #@85
    .line 200
    :catch_0
    move-exception v2

    #@86
    .line 201
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v9, "Exception when updating permissions: "

    #@8e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-static {v8}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    #@9d
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized startMonitoring()V
    .locals 17

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 103
    :try_start_0
    const-string/jumbo v1, "Monitoring"

    #@4
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    #@7
    .line 105
    new-instance v4, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@c
    .line 106
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@f
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 107
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@15
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    .line 108
    move-object/from16 v0, p0

    #@1a
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@20
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@22
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x0

    #@24
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@27
    .line 110
    new-instance v4, Landroid/content/IntentFilter;

    #@29
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@2c
    .line 111
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@2f
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@32
    .line 112
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@35
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@38
    .line 113
    const-string/jumbo v1, "package"

    #@3b
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@3e
    .line 114
    move-object/from16 v0, p0

    #@40
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@46
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@48
    const/4 v5, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@4d
    .line 116
    move-object/from16 v0, p0

    #@4f
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    #@51
    const/16 v2, 0x1000

    #@53
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    #@56
    move-result-object v9

    #@57
    .line 117
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v9, :cond_0

    #@59
    .line 118
    const-string/jumbo v1, "No apps"

    #@5c
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    monitor-exit p0

    #@60
    .line 119
    return-void

    #@61
    .line 122
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v8

    #@65
    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_5

    #@6b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v7

    #@6f
    check-cast v7, Landroid/content/pm/PackageInfo;

    #@71
    .line 123
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@73
    if-eqz v1, :cond_4

    #@75
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@77
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@79
    .line 124
    .local v13, "uid":I
    :goto_1
    if-ltz v13, :cond_1

    #@7b
    .line 128
    move-object/from16 v0, p0

    #@7d
    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    #@80
    move-result v10

    #@81
    .line 129
    .local v10, "isNetwork":Z
    move-object/from16 v0, p0

    #@83
    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    #@86
    move-result v11

    #@87
    .line 131
    .local v11, "isSystem":Z
    if-nez v10, :cond_2

    #@89
    if-eqz v11, :cond_1

    #@8b
    .line 132
    :cond_2
    move-object/from16 v0, p0

    #@8d
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@8f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v2

    #@93
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    move-result-object v12

    #@97
    check-cast v12, Ljava/lang/Boolean;

    #@99
    .line 135
    .local v12, "permission":Ljava/lang/Boolean;
    if-eqz v12, :cond_3

    #@9b
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    #@9e
    move-result v1

    #@9f
    if-nez v1, :cond_1

    #@a1
    .line 136
    :cond_3
    move-object/from16 v0, p0

    #@a3
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@a5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v2

    #@a9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ac
    move-result-object v3

    #@ad
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b0
    goto :goto_0

    #@b1
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "isNetwork":Z
    .end local v11    # "isSystem":Z
    .end local v12    # "permission":Ljava/lang/Boolean;
    .end local v13    # "uid":I
    :catchall_0
    move-exception v1

    #@b2
    monitor-exit p0

    #@b3
    throw v1

    #@b4
    .line 123
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v7    # "app":Landroid/content/pm/PackageInfo;
    .restart local v8    # "app$iterator":Ljava/util/Iterator;
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    const/4 v13, -0x1

    #@b5
    .restart local v13    # "uid":I
    goto :goto_1

    #@b6
    .line 141
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v13    # "uid":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    #@b8
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    #@ba
    const/4 v2, 0x1

    #@bb
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    #@be
    move-result-object v16

    #@bf
    .line 142
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v16, :cond_6

    #@c1
    .line 143
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c4
    move-result-object v15

    #@c5
    .local v15, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@c8
    move-result v1

    #@c9
    if-eqz v1, :cond_6

    #@cb
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v14

    #@cf
    check-cast v14, Landroid/content/pm/UserInfo;

    #@d1
    .line 144
    .local v14, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@d3
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@d5
    iget v2, v14, Landroid/content/pm/UserInfo;->id:I

    #@d7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@da
    move-result-object v2

    #@db
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@de
    goto :goto_2

    #@df
    .line 148
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "user$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v2, "Users: "

    #@e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@ef
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@f2
    move-result v2

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    const-string/jumbo v2, ", Apps: "

    #@fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@102
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@105
    move-result v2

    #@106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    #@111
    .line 149
    move-object/from16 v0, p0

    #@113
    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    #@115
    move-object/from16 v0, p0

    #@117
    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    #@119
    const/4 v3, 0x1

    #@11a
    move-object/from16 v0, p0

    #@11c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11f
    monitor-exit p0

    #@120
    .line 102
    return-void
.end method
