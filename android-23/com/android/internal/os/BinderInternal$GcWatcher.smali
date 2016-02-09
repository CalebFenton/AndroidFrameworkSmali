.class final Lcom/android/internal/os/BinderInternal$GcWatcher;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->handleGc()V

    #@3
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v2

    #@7
    sput-wide v2, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    #@9
    .line 45
    sget-object v2, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    #@b
    monitor-enter v2

    #@c
    .line 46
    :try_start_0
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    #@e
    sget-object v3, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    #@10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Ljava/lang/Runnable;

    #@16
    sput-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 48
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    #@1c
    array-length v1, v1

    #@1d
    if-ge v0, v1, :cond_1

    #@1f
    .line 49
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    #@21
    aget-object v1, v1, v0

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 50
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    #@27
    aget-object v1, v1, v0

    #@29
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@2c
    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 45
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1

    #@32
    .line 53
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@34
    new-instance v2, Lcom/android/internal/os/BinderInternal$GcWatcher;

    #@36
    invoke-direct {v2}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    #@39
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@3c
    sput-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    #@3e
    .line 42
    return-void
.end method
