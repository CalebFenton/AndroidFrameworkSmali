.class public Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field final memStates:[I

.field public processStatePss:[J

.field public processStateSamples:[I

.field public processStateTime:[J

.field public processStateWeight:[D

.field final screenStates:[I

.field public sysMemCachedWeight:D

.field public sysMemFreeWeight:D

.field public sysMemKernelWeight:D

.field public sysMemNativeWeight:D

.field public sysMemSamples:I

.field public sysMemUsage:[J

.field public sysMemZRamWeight:D

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I)V
    .locals 2
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I

    #@0
    .prologue
    const/16 v1, 0xe

    #@2
    .line 3775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3781
    new-array v0, v1, [J

    #@7
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    #@9
    .line 3782
    new-array v0, v1, [D

    #@b
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    #@d
    .line 3783
    new-array v0, v1, [J

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    #@11
    .line 3784
    new-array v0, v1, [I

    #@13
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    #@15
    .line 3785
    const/16 v0, 0x10

    #@17
    new-array v0, v0, [J

    #@19
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    #@1b
    .line 3776
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    #@1d
    .line 3777
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    #@1f
    .line 3775
    return-void
.end method
