.class public final Lcom/android/internal/util/GcUtils;
.super Ljava/lang/Object;
.source "GcUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/android/internal/util/GcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/GcUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createFinalizationObserver(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p0, "fence"    # Ljava/util/concurrent/CountDownLatch;

    .line 58
    new-instance v0, Lcom/android/internal/util/GcUtils$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/GcUtils$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 68
    return-void
.end method

.method public static blacklist runGcAndFinalizersSync()V
    .registers 4

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    .local v0, "fence":Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/internal/util/GcUtils;->createFinalizationObserver(Ljava/util/concurrent/CountDownLatch;)V

    .line 43
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 45
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2d} :catch_38

    if-eqz v1, :cond_17

    .line 48
    nop

    .line 49
    sget-object v1, Lcom/android/internal/util/GcUtils;->TAG:Ljava/lang/String;

    const-string v2, "Running gc and finalizers"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 46
    :catch_38
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
