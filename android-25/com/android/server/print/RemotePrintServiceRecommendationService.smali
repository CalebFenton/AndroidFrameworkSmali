.class Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;,
        Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintServiceRecS"


# instance fields
.field private final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/printservice/recommendation/IRecommendationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callbacks"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    #@a
    .line 135
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    #@c
    .line 136
    new-instance v2, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    #@e
    invoke-direct {v2, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    #@11
    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    #@13
    .line 139
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    #@16
    move-result-object v1

    #@17
    .line 141
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    #@19
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    #@1c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    #@1e
    .line 143
    const v5, 0x4000001

    #@21
    .line 142
    invoke-virtual {v2, v1, v4, v5, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@24
    move-result v2

    #@25
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    #@27
    .line 145
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    #@29
    if-nez v2, :cond_0

    #@2b
    .line 146
    new-instance v2, Ljava/lang/Exception;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Failed to bind to service "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@44
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 141
    :catchall_0
    move-exception v2

    #@46
    :try_start_2
    monitor-exit v3

    #@47
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@48
    .line 149
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@49
    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemotePrintServiceRecS"

    #@4c
    const-string/jumbo v3, "Could not connect to print service recommendation service"

    #@4f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    #@53
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@54
    goto :goto_0
.end method

.method private getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 84
    iget-object v5, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v5

    #@7
    .line 85
    new-instance v6, Landroid/content/Intent;

    #@9
    .line 86
    const-string/jumbo v7, "android.printservice.recommendation.RecommendationService"

    #@c
    .line 85
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 88
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@12
    move-result v7

    #@13
    .line 87
    const v8, 0x10000084

    #@16
    .line 84
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    .line 90
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1d
    move-result v5

    #@1e
    const/4 v6, 0x1

    #@1f
    if-eq v5, v6, :cond_0

    #@21
    .line 91
    new-instance v5, Ljava/lang/Exception;

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2b
    move-result v7

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    const-string/jumbo v7, " instead of exactly one service found"

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3e
    throw v5

    #@3f
    .line 94
    :cond_0
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@45
    .line 96
    .local v1, "installedService":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    #@47
    .line 97
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@49
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@4b
    .line 98
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4d
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@4f
    .line 96
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 100
    .local v4, "serviceName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@57
    move-result-object v5

    #@58
    .line 101
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5a
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@5c
    .line 100
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5f
    move-result-object v0

    #@60
    .line 103
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    #@62
    .line 104
    new-instance v5, Ljava/lang/Exception;

    #@64
    const-string/jumbo v6, "Cannot read appInfo for service"

    #@67
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 107
    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@6d
    and-int/lit8 v5, v5, 0x1

    #@6f
    if-nez v5, :cond_2

    #@71
    .line 108
    new-instance v5, Ljava/lang/Exception;

    #@73
    const-string/jumbo v6, "Service is not part of the system"

    #@76
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@79
    throw v5

    #@7a
    .line 111
    :cond_2
    const-string/jumbo v5, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    #@7d
    .line 112
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7f
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@81
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v5

    #@85
    if-nez v5, :cond_3

    #@87
    .line 113
    new-instance v5, Ljava/lang/Exception;

    #@89
    new-instance v6, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v7, "Service "

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    .line 114
    const-string/jumbo v7, " does not require permission "

    #@a0
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    .line 115
    const-string/jumbo v7, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    #@a7
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@b2
    throw v5

    #@b3
    .line 118
    :cond_3
    new-instance v3, Landroid/content/Intent;

    #@b5
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@b8
    .line 119
    .local v3, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@bb
    .line 121
    return-object v3
.end method


# virtual methods
.method close()V
    .locals 4

    #@0
    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {v1, v3}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 167
    :goto_0
    const/4 v1, 0x0

    #@e
    :try_start_2
    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    #@10
    .line 170
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 171
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    #@16
    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    #@18
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1b
    .line 172
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    :cond_1
    monitor-exit v2

    #@1f
    .line 158
    return-void

    #@20
    .line 163
    :catch_0
    move-exception v0

    #@21
    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "RemotePrintServiceRecS"

    #@24
    const-string/jumbo v3, "Could not unregister callbacks"

    #@27
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 180
    :cond_0
    const-string/jumbo v0, "RemotePrintServiceRecS"

    #@b
    const-string/jumbo v1, "Service still connected on finalize()"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 181
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    #@14
    .line 184
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@17
    .line 178
    return-void
.end method
