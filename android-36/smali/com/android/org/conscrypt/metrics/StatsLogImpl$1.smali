.class Lcom/android/org/conscrypt/metrics/StatsLogImpl$1;
.super Ljava/lang/Object;
.source "StatsLogImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/metrics/StatsLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 56
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ConscryptStatsLog"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Lcom/android/org/conscrypt/metrics/StatsLogImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/metrics/StatsLogImpl$1$1;-><init>(Lcom/android/org/conscrypt/metrics/StatsLogImpl$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 63
    return-object v0
.end method
