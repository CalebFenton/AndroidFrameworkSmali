.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationProviderProxy$1;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    #@4
    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@a
    .line 51
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    #@d
    .line 52
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@10
    .line 53
    new-instance v0, Landroid/os/WorkSource;

    #@12
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    #@17
    .line 96
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    #@1e
    .line 72
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    #@20
    .line 73
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    #@22
    .line 74
    new-instance v0, Lcom/android/server/ServiceWatcher;

    #@24
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "LocationProviderProxy-"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 76
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    #@3c
    move-object v3, p3

    #@3d
    move v4, p4

    #@3e
    move v5, p5

    #@3f
    move v6, p6

    #@40
    move-object/from16 v8, p7

    #@42
    .line 74
    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    #@45
    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@47
    .line 71
    return-void
.end method

.method private bind()Z
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move v6, p5

    #@8
    move-object v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    #@c
    .line 62
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 63
    return-object v0

    #@13
    .line 65
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 6

    #@0
    .prologue
    .line 175
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 176
    const/4 v4, 0x0

    #@4
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v3

    #@7
    .line 178
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@a
    move-result-object v2

    #@b
    .line 179
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@d
    return-void

    #@e
    .line 175
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v4

    #@f
    monitor-exit v3

    #@10
    throw v4

    #@11
    .line 182
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@14
    .line 174
    :goto_0
    return-void

    #@15
    .line 185
    :catch_0
    move-exception v1

    #@16
    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Exception from "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@27
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0

    #@37
    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@38
    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@3b
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 219
    const-string/jumbo v3, "REMOTE SERVICE"

    #@3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@6
    .line 220
    const-string/jumbo v3, " name="

    #@9
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@c
    move-result-object v3

    #@d
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    #@f
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@12
    .line 221
    const-string/jumbo v3, " pkg="

    #@15
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@1b
    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@22
    .line 222
    const-string/jumbo v3, " version="

    #@25
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@28
    move-result-object v3

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, ""

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@37
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestVersion()I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@46
    .line 223
    const/16 v3, 0xa

    #@48
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    #@4b
    .line 225
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@4e
    move-result-object v2

    #@4f
    .line 226
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@51
    .line 227
    const-string/jumbo v3, "service down (null)"

    #@54
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 228
    return-void

    #@58
    .line 230
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@5b
    .line 233
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    #@5e
    move-result-object v3

    #@5f
    invoke-interface {v3, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 218
    :goto_0
    return-void

    #@63
    .line 237
    :catch_0
    move-exception v1

    #@64
    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "service down (Exception)"

    #@67
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 240
    const-string/jumbo v3, "LocationProviderProxy"

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Exception from "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@7b
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    goto :goto_0

    #@8b
    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@8c
    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "service down (RemoteException)"

    #@8f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 236
    const-string/jumbo v3, "LocationProviderProxy"

    #@95
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@98
    goto :goto_0
.end method

.method public enable()V
    .locals 6

    #@0
    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 158
    const/4 v4, 0x1

    #@4
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v3

    #@7
    .line 160
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@a
    move-result-object v2

    #@b
    .line 161
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@d
    return-void

    #@e
    .line 157
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v4

    #@f
    monitor-exit v3

    #@10
    throw v4

    #@11
    .line 164
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@14
    .line 156
    :goto_0
    return-void

    #@15
    .line 167
    :catch_0
    move-exception v1

    #@16
    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Exception from "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@27
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0

    #@37
    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@38
    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@3b
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_0
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 2

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 150
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 246
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@4
    move-result-object v2

    #@5
    .line 247
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@7
    return v6

    #@8
    .line 250
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 253
    :catch_0
    move-exception v1

    #@e
    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Exception from "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@1f
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    #@2f
    .line 251
    :catch_1
    move-exception v0

    #@30
    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@33
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 262
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@5
    move-result-object v2

    #@6
    .line 263
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@8
    return-wide v6

    #@9
    .line 266
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-wide v4

    #@d
    return-wide v4

    #@e
    .line 269
    :catch_0
    move-exception v1

    #@f
    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Exception from "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@20
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v6

    #@30
    .line 267
    :catch_1
    move-exception v0

    #@31
    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@34
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 193
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 278
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@4
    move-result-object v2

    #@5
    .line 279
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@7
    return v6

    #@8
    .line 282
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 285
    :catch_0
    move-exception v1

    #@e
    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Exception from "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@1f
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    #@2f
    .line 283
    :catch_1
    move-exception v0

    #@30
    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@33
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 200
    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 201
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@5
    .line 202
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v4

    #@8
    .line 204
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    #@b
    move-result-object v2

    #@c
    .line 205
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    #@e
    return-void

    #@f
    .line 200
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v3

    #@10
    monitor-exit v4

    #@11
    throw v3

    #@12
    .line 208
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 199
    :goto_0
    return-void

    #@16
    .line 211
    :catch_0
    move-exception v1

    #@17
    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LocationProviderProxy"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Exception from "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    #@28
    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_0

    #@38
    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@39
    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LocationProviderProxy"

    #@3c
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0
.end method
