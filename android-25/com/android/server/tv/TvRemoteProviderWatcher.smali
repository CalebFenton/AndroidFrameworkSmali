.class final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderWatcher$1;,
        Lcom/android/server/tv/TvRemoteProviderWatcher$2;,
        Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvWatcher"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

.field private final mProviderProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUnbundledServicePackage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->scanPackages()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "TvRemoteProvWatcher"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    #@a
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@a
    .line 199
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    #@f
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 209
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    #@16
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@18
    .line 58
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    #@1a
    .line 59
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    #@1c
    .line 60
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    #@1e
    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    #@24
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2a
    .line 64
    const v0, 0x1040071

    #@2d
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    #@33
    .line 57
    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 191
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@11
    .line 192
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 193
    return v1

    #@18
    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 196
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_1
    const/4 v3, -0x1

    #@1c
    return v3
.end method

.method private hasNecessaryPermissions(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 181
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3
    const-string/jumbo v1, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 183
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 185
    :cond_0
    return v2
.end method

.method private scanPackages()V
    .locals 14

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 103
    iget-boolean v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    #@3
    if-nez v10, :cond_0

    #@5
    .line 104
    return-void

    #@6
    .line 107
    :cond_0
    sget-boolean v10, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    #@8
    if-eqz v10, :cond_1

    #@a
    const-string/jumbo v10, "TvRemoteProvWatcher"

    #@d
    const-string/jumbo v11, "scanPackages()"

    #@10
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 110
    :cond_1
    const/4 v8, 0x0

    #@14
    .line 111
    .local v8, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    #@16
    const-string/jumbo v10, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    #@19
    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1c
    .line 112
    .local v1, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1e
    .line 113
    iget v11, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    #@20
    .line 112
    invoke-virtual {v10, v1, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@23
    move-result-object v10

    #@24
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v5

    #@28
    .local v5, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v10

    #@2c
    if-eqz v10, :cond_4

    #@2e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@34
    .line 114
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@36
    .line 115
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_2

    #@38
    invoke-direct {p0, v6}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    #@3b
    move-result v10

    #@3c
    if-eqz v10, :cond_2

    #@3e
    .line 116
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@40
    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@42
    invoke-direct {p0, v10, v11}, Lcom/android/server/tv/TvRemoteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    move-result v7

    #@46
    .line 117
    .local v7, "sourceIndex":I
    if-gez v7, :cond_3

    #@48
    .line 119
    new-instance v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@4a
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    #@4c
    .line 120
    new-instance v11, Landroid/content/ComponentName;

    #@4e
    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@50
    iget-object v13, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@52
    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 121
    iget v12, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    #@57
    iget-object v13, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@59
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5b
    .line 119
    invoke-direct {v3, v10, v11, v12, v13}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    #@5e
    .line 122
    .local v3, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    #@61
    .line 123
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@63
    add-int/lit8 v9, v8, 0x1

    #@65
    .end local v8    # "targetIndex":I
    .local v9, "targetIndex":I
    invoke-virtual {v10, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@68
    .line 124
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    #@6a
    invoke-interface {v10, v3}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    #@6d
    move v8, v9

    #@6e
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_0

    #@6f
    .line 125
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_3
    if-lt v7, v8, :cond_2

    #@71
    .line 126
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@73
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@79
    .line 127
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    #@7c
    .line 128
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->rebindIfDisconnected()V

    #@7f
    .line 129
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@81
    add-int/lit8 v9, v8, 0x1

    #@83
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    invoke-static {v10, v7, v8}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@86
    move v8, v9

    #@87
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_0

    #@88
    .line 133
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "sourceIndex":I
    :cond_4
    sget-boolean v10, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    #@8a
    if-eqz v10, :cond_5

    #@8c
    const-string/jumbo v10, "TvRemoteProvWatcher"

    #@8f
    new-instance v11, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v12, "scanPackages() targetIndex "

    #@97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v11

    #@9b
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v11

    #@9f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v11

    #@a3
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 135
    :cond_5
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@a8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@ab
    move-result v10

    #@ac
    if-ge v8, v10, :cond_6

    #@ae
    .line 136
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@b0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@b3
    move-result v10

    #@b4
    add-int/lit8 v0, v10, -0x1

    #@b6
    .local v0, "i":I
    :goto_1
    if-lt v0, v8, :cond_6

    #@b8
    .line 137
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@ba
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v3

    #@be
    check-cast v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@c0
    .line 138
    .restart local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    #@c2
    invoke-interface {v10, v3}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    #@c5
    .line 139
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@c7
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@ca
    .line 140
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    #@cd
    .line 136
    add-int/lit8 v0, v0, -0x1

    #@cf
    goto :goto_1

    #@d0
    .line 102
    .end local v0    # "i":I
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_6
    return-void
.end method

.method private verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 146
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@7
    .line 147
    const-string/jumbo v1, "android.permission.BIND_TV_REMOTE_SERVICE"

    #@a
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 159
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 160
    const-string/jumbo v0, "TvRemoteProvWatcher"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 162
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2b
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 162
    const-string/jumbo v2, "/"

    #@32
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 162
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@38
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 163
    return v3

    #@44
    .line 152
    :cond_0
    const-string/jumbo v0, "TvRemoteProvWatcher"

    #@47
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 154
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@55
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 154
    const-string/jumbo v2, "/"

    #@5c
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 154
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@62
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 155
    return v3

    #@6e
    .line 166
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@70
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->hasNecessaryPermissions(Ljava/lang/String;)Z

    #@73
    move-result v0

    #@74
    if-nez v0, :cond_2

    #@76
    .line 169
    const-string/jumbo v0, "TvRemoteProvWatcher"

    #@79
    new-instance v1, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v2, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    .line 170
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@87
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 171
    return v3

    #@93
    .line 175
    :cond_2
    const/4 v0, 0x1

    #@94
    return v0
.end method


# virtual methods
.method public start()V
    .locals 6

    #@0
    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "TvRemoteProvWatcher"

    #@7
    const-string/jumbo v1, "start()"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 70
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    #@14
    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    #@16
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@19
    .line 73
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@1c
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 74
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@22
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 75
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@28
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2b
    .line 76
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    #@2e
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@31
    .line 77
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    #@34
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@37
    .line 78
    const-string/jumbo v0, "package"

    #@3a
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@3d
    .line 79
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    #@3f
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@41
    .line 80
    new-instance v2, Landroid/os/UserHandle;

    #@43
    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    #@45
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@48
    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    #@4a
    const/4 v4, 0x0

    #@4b
    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@4e
    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    #@50
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@55
    .line 67
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 90
    iput-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    #@7
    .line 92
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    #@9
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@e
    .line 93
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    #@10
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@15
    .line 96
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v1

    #@1b
    add-int/lit8 v0, v1, -0x1

    #@1d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1f
    .line 97
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    #@27
    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    #@2a
    .line 96
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 88
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
