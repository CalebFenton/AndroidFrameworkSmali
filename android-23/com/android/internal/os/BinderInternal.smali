.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$GcWatcher;
    }
.end annotation


# static fields
.field static sGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/os/BinderInternal$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static sGcWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sLastGcTime:J

.field static sTmpWatchers:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    new-instance v1, Lcom/android/internal/os/BinderInternal$GcWatcher;

    #@4
    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    #@7
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@a
    .line 34
    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    #@c
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    #@13
    .line 37
    const/4 v0, 0x1

    #@14
    new-array v0, v0, [Ljava/lang/Runnable;

    #@16
    sput-object v0, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    #@18
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addGcWatcher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "watcher"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 58
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 59
    :try_start_0
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 57
    return-void

    #@a
    .line 58
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static final native disableBackgroundScheduling(Z)V
.end method

.method static forceBinderGc()V
    .locals 1

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "Binder"

    #@3
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    #@6
    .line 104
    return-void
.end method

.method public static forceGc(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    const/16 v0, 0xab5

    #@2
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    #@5
    .line 101
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    #@c
    .line 99
    return-void
.end method

.method public static final native getContextObject()Landroid/os/IBinder;
.end method

.method public static getLastGcTime()J
    .locals 2

    #@0
    .prologue
    .line 80
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    #@2
    return-wide v0
.end method

.method static final native handleGc()V
.end method

.method public static final native joinThreadPool()V
.end method
