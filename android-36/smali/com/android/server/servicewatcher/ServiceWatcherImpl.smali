.class Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher;
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TBoundServiceInfo:",
        "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;"
    }
.end annotation


# static fields
.field static final blacklist D:Z

.field private static final blacklist DISCONNECTED_COUNT_BEFORE_MARKED_AS_UNSTABLE:I = 0xa

.field static final blacklist RETRY_DELAY_MS:J = 0x3a98L

.field static final blacklist TAG:Ljava/lang/String; = "ServiceWatcher"

.field private static final blacklist UNSTABLE_TIME_PERIOD_MS:J = 0xea60L


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisconnectedCount:I

.field private blacklist mDisconnectedService:Ljava/lang/String;

.field private blacklist mDisconnectedStartTime:J

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mRegistered:Z

.field private blacklist mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcherImpl<",
            "TTBoundServiceInfo;>.MyServiceConnection;"
        }
    .end annotation
.end field

.field final blacklist mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final blacklist mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;"
        }
    .end annotation
.end field

.field final blacklist mTag:Ljava/lang/String;

.field private blacklist mUnstableFallbackEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedService(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedService:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedStartTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnstableFallbackEnabled(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mUnstableFallbackEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedCount(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedService(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedService:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedStartTime(Lcom/android/server/servicewatcher/ServiceWatcherImpl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mDisconnectedStartTime:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    .local p4, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p5, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 88
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 94
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 98
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 99
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "unstableFallbackEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    .local p5, "serviceSupplier":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<TTBoundServiceInfo;>;"
    .local p6, "serviceListener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;, "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<-TTBoundServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 88
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 105
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->serviceWatcherUnstableFallback()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 109
    iput-boolean p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mUnstableFallbackEnabled:Z

    .line 111
    :cond_23
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 112
    iput-object p6, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 113
    return-void
.end method

.method static synthetic blacklist lambda$onServiceChanged$1(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .registers 2
    .param p0, "oldServiceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .param p1, "newServiceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->unbind()V

    .line 173
    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->bind()V

    .line 174
    return-void
.end method

.method static synthetic blacklist lambda$runOnBinder$0(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 2
    .param p0, "serviceConnection"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
    .param p1, "operation"    # Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method


# virtual methods
.method public blacklist checkServiceResolves()Z
    .registers 2

    .line 117
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->hasMatchingService()Z

    move-result v0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 191
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 193
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return-void

    .line 193
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public declared-synchronized blacklist onServiceChanged()V
    .registers 2

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 144
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 145
    monitor-exit p0

    return-void

    .line 143
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method declared-synchronized blacklist onServiceChanged(Z)V
    .registers 7
    .param p1, "forceRebind"    # Z

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 155
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v0

    .local v0, "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    goto :goto_d

    .line 158
    .end local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :cond_c
    const/4 v0, 0x0

    .line 163
    .restart local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    :goto_d
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->isConnected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr p1, v1

    .line 165
    if-nez p1, :cond_24

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 167
    :cond_24
    const-string v1, "ServiceWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] chose new implementation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 169
    .local v1, "oldServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-direct {v2, p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V

    .line 170
    .local v2, "newServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    iput-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 171
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 176
    .end local v1    # "oldServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    .end local v2    # "newServiceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :cond_5b
    monitor-exit p0

    return-void

    .line 154
    .end local v0    # "newBoundServiceInfo":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;, "TTBoundServiceInfo;"
    .end local p1    # "forceRebind":Z
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public declared-synchronized blacklist register()V
    .registers 6

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 122
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 124
    iput-boolean v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 129
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public declared-synchronized blacklist runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .registers 5
    .param p1, "operation"    # Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 150
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 151
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    .end local p1    # "operation":Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 181
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 183
    .local v0, "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 185
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "serviceConnection":Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>.MyServiceConnection;"
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist unregister()V
    .registers 2

    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    monitor-enter p0

    .line 133
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;->unregister()V

    .line 136
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 140
    monitor-exit p0

    return-void

    .line 132
    .end local p0    # "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl<TTBoundServiceInfo;>;"
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method
