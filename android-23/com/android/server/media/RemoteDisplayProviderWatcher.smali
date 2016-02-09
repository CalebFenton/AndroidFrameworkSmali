.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;,
        Lcom/android/server/media/RemoteDisplayProviderWatcher$1;,
        Lcom/android/server/media/RemoteDisplayProviderWatcher$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field private final mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUserId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->scanPackages()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    #@a
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 54
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@a
    .line 198
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    #@f
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 208
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    #@16
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@18
    .line 60
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    #@1a
    .line 61
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    #@1c
    .line 62
    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    #@1e
    .line 63
    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    #@20
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@26
    .line 59
    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 189
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 190
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@11
    .line 191
    .local v2, "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 192
    return v1

    #@18
    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 195
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_1
    const/4 v3, -0x1

    #@1c
    return v3
.end method

.method private hasCaptureVideoPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 176
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@4
    const-string/jumbo v1, "android.permission.CAPTURE_VIDEO_OUTPUT"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 178
    return v3

    #@e
    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@10
    const-string/jumbo v1, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 182
    return v3

    #@1a
    .line 184
    :cond_1
    return v2
.end method

.method private scanPackages()V
    .locals 13

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 109
    iget-boolean v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 110
    return-void

    #@6
    .line 115
    :cond_0
    const/4 v7, 0x0

    #@7
    .line 116
    .local v7, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    #@9
    const-string/jumbo v9, "com.android.media.remotedisplay.RemoteDisplayProvider"

    #@c
    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 117
    .local v1, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    #@11
    .line 118
    iget v10, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    #@13
    .line 117
    invoke-virtual {v9, v1, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@16
    move-result-object v9

    #@17
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_3

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@27
    .line 119
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@29
    .line 120
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1

    #@2b
    invoke-direct {p0, v5}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    #@2e
    move-result v9

    #@2f
    if-eqz v9, :cond_1

    #@31
    .line 121
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@33
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@35
    invoke-direct {p0, v9, v10}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    move-result v6

    #@39
    .line 122
    .local v6, "sourceIndex":I
    if-gez v6, :cond_2

    #@3b
    .line 124
    new-instance v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@3d
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    #@3f
    .line 125
    new-instance v10, Landroid/content/ComponentName;

    #@41
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@43
    iget-object v12, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@45
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 126
    iget v11, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    #@4a
    .line 124
    invoke-direct {v2, v9, v10, v11}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    #@4d
    .line 127
    .local v2, "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    #@50
    .line 128
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@52
    add-int/lit8 v8, v7, 0x1

    #@54
    .end local v7    # "targetIndex":I
    .local v8, "targetIndex":I
    invoke-virtual {v9, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@57
    .line 129
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    #@59
    invoke-interface {v9, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    #@5c
    move v7, v8

    #@5d
    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_0

    #@5e
    .line 130
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_2
    if-lt v6, v7, :cond_1

    #@60
    .line 131
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@65
    move-result-object v2

    #@66
    check-cast v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@68
    .line 132
    .restart local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    #@6b
    .line 133
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->rebindIfDisconnected()V

    #@6e
    .line 134
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@70
    add-int/lit8 v8, v7, 0x1

    #@72
    .end local v7    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v9, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    #@75
    move v7, v8

    #@76
    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_0

    #@77
    .line 140
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "sourceIndex":I
    :cond_3
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v9

    #@7d
    if-ge v7, v9, :cond_4

    #@7f
    .line 141
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v9

    #@85
    add-int/lit8 v0, v9, -0x1

    #@87
    .local v0, "i":I
    :goto_1
    if-lt v0, v7, :cond_4

    #@89
    .line 142
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@91
    .line 143
    .restart local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    #@93
    invoke-interface {v9, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    #@96
    .line 144
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9b
    .line 145
    invoke-virtual {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    #@9e
    .line 141
    add-int/lit8 v0, v0, -0x1

    #@a0
    goto :goto_1

    #@a1
    .line 108
    .end local v0    # "i":I
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_4
    return-void
.end method

.method private verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@7
    .line 152
    const-string/jumbo v1, "android.permission.BIND_REMOTE_DISPLAY"

    #@a
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 162
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@12
    invoke-direct {p0, v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->hasCaptureVideoPermission(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 166
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Ignoring remote display provider service because it does not have the CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission: "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 168
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@29
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 168
    const-string/jumbo v2, "/"

    #@30
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 168
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@36
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 169
    return v3

    #@42
    .line 157
    :cond_0
    const-string/jumbo v0, "RemoteDisplayProvider"

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 159
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@53
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 159
    const-string/jumbo v2, "/"

    #@5a
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 159
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@60
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 160
    return v3

    #@6c
    .line 172
    :cond_1
    const/4 v0, 0x1

    #@6d
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Watcher"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, "  mUserId="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "  mRunning="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    const-string/jumbo v1, "  mProviders.size()="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v1

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 67
    return-void
.end method

.method public start()V
    .locals 6

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 76
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@7
    .line 78
    new-instance v3, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@c
    .line 79
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 80
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@15
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@18
    .line 81
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    #@1b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 82
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    #@21
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@24
    .line 83
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    #@27
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2a
    .line 84
    const-string/jumbo v0, "package"

    #@2d
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@30
    .line 85
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    #@32
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@34
    .line 86
    new-instance v2, Landroid/os/UserHandle;

    #@36
    iget v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    #@38
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@3b
    iget-object v5, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    #@3d
    const/4 v4, 0x0

    #@3e
    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@41
    .line 90
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    #@43
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@48
    .line 74
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 96
    iput-boolean v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    #@7
    .line 98
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    #@9
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@e
    .line 99
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    #@10
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    #@12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@15
    .line 102
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

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
    .line 103
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@27
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    #@2a
    .line 102
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 94
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
