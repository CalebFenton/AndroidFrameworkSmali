.class Lcom/android/server/am/ProcessStatsService$1;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@7
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 88
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@12
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@14
    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@16
    or-int/lit8 v2, v2, 0x4

    #@18
    iput v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    #@1a
    .line 89
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@1c
    const/4 v2, 0x1

    #@1d
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    #@21
    .line 90
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$1;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@23
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    #@25
    const/4 v2, 0x1

    #@26
    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v1

    #@2a
    .line 85
    return-void

    #@2b
    .line 86
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method
