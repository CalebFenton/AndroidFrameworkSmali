.class public Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field public blacklist hasSwappedOutPss:Z

.field final blacklist memStates:[I

.field public blacklist processStatePss:[J

.field public blacklist processStateSamples:[I

.field public blacklist processStateTime:[J

.field public blacklist processStateWeight:[D

.field final blacklist screenStates:[I

.field public blacklist sysMemCachedWeight:D

.field public blacklist sysMemFreeWeight:D

.field public blacklist sysMemKernelWeight:D

.field public blacklist sysMemNativeWeight:D

.field public blacklist sysMemSamples:I

.field public blacklist sysMemUsage:[J

.field public blacklist sysMemZRamWeight:D

.field public blacklist totalTime:J


# direct methods
.method public constructor blacklist <init>([I[I)V
    .registers 5
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I

    .line 2737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2743
    const/16 v0, 0x10

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 2744
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 2745
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 2746
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 2747
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 2738
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 2739
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    .line 2740
    return-void
.end method
