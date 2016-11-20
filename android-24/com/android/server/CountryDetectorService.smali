.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "key"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    #@3
    .line 95
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@a
    .line 96
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    #@c
    .line 93
    return-void
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ICountryListener;

    #@0
    .prologue
    .line 131
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v3

    #@3
    .line 132
    :try_start_0
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    #@5
    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 134
    .local v1, "r":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v2

    #@c
    const/4 v4, 0x0

    #@d
    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@10
    .line 135
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@12
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 136
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@1e
    move-result v2

    #@1f
    const/4 v4, 0x1

    #@20
    if-ne v2, v4, :cond_0

    #@22
    .line 137
    const-string/jumbo v2, "CountryDetector"

    #@25
    const-string/jumbo v4, "The first listener is added"

    #@28
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 138
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    #@2d
    invoke-virtual {p0, v2}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :cond_0
    :goto_0
    monitor-exit v3

    #@31
    .line 130
    return-void

    #@32
    .line 140
    :catch_0
    move-exception v0

    #@33
    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "CountryDetector"

    #@36
    const-string/jumbo v4, "linkToDeath failed:"

    #@39
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/CountryDetectorService$Receiver;
    :catchall_0
    move-exception v2

    #@3e
    monitor-exit v3

    #@3f
    throw v2
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    .line 176
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@9
    .line 177
    new-instance v0, Lcom/android/server/CountryDetectorService$1;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$1;-><init>(Lcom/android/server/CountryDetectorService;)V

    #@e
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    #@10
    .line 175
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "key"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 149
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 150
    const/4 v0, 0x0

    #@11
    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    #@14
    .line 151
    const-string/jumbo v0, "CountryDetector"

    #@17
    const-string/jumbo v2, "No listener is left"

    #@1a
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    monitor-exit v1

    #@1e
    .line 146
    return-void

    #@1f
    .line 147
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    new-instance v0, Landroid/os/RemoteException;

    #@6
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@9
    throw v0

    #@a
    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    #@d
    .line 112
    return-void
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 102
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@8
    invoke-virtual {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry()Landroid/location/Country;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    const-string/jumbo v2, "CountryDetector"

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 213
    return-void
.end method

.method isSystemReady()Z
    .locals 1

    #@0
    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    #@2
    return v0
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .locals 6
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 158
    iget-object v4, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v4

    #@3
    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "receiver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 161
    .local v1, "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 162
    :catch_0
    move-exception v0

    #@22
    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "CountryDetector"

    #@25
    const-string/jumbo v5, "notifyReceivers failed:"

    #@28
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    .end local v2    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v4

    #@2e
    throw v3

    #@2f
    .restart local v2    # "receiver$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@30
    .line 157
    return-void
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 125
    new-instance v0, Landroid/os/RemoteException;

    #@6
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    #@9
    throw v0

    #@a
    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    #@11
    .line 123
    return-void
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 189
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    #@7
    .line 190
    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    #@a
    .line 191
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    #@d
    .line 188
    return-void
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/CountryListener;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/CountryDetectorService$2;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 194
    return-void
.end method

.method systemRunning()V
    .locals 1

    #@0
    .prologue
    .line 172
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 170
    return-void
.end method
