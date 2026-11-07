.class public Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher;
.super Ljava/lang/Object;
.source "LibraryPrefetcher.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LibraryPrefetcher"

.field private static final blacklist sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher;->sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asyncPrefetchLibrariesToMemory()V
    .registers 3

    .line 43
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/SysUtils;->logPageFaultCountToTracing()V

    .line 45
    sget-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher;->sPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 49
    .local v0, "coldStart":Z
    if-eqz v0, :cond_27

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "log-native-library-residency"

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 52
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    return-void

    .line 56
    :cond_27
    new-instance v1, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda1;-><init>(Z)V

    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method static synthetic blacklist lambda$asyncPrefetchLibrariesToMemory$0()V
    .registers 1

    .line 52
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcherJni;->get()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;->periodicallyCollectResidency()V

    return-void
.end method

.method static synthetic blacklist lambda$asyncPrefetchLibrariesToMemory$1(Z)V
    .registers 5
    .param p0, "coldStart"    # Z

    .line 60
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcherJni;->get()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;->percentageOfResidentNativeLibraryCode()I

    move-result v0

    .line 61
    .local v0, "percentage":I
    nop

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v2, "LibraryPrefetcher.asyncPrefetchLibrariesToMemory"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v1

    .line 68
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    if-eqz p0, :cond_1b

    const/16 v2, 0x5a

    if-ge v0, v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 69
    .local v2, "prefetch":Z
    :goto_1c
    if-eqz v2, :cond_32

    :try_start_1e
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcherJni;->get()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;->forkAndPrefetchNativeLibrary()V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_32

    .line 61
    .end local v2    # "prefetch":Z
    :catchall_26
    move-exception v2

    if-eqz v1, :cond_31

    :try_start_29
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v2

    .line 70
    :cond_32
    :goto_32
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 72
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_37
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    const-string v2, "dont_prefetch_libraries"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method
