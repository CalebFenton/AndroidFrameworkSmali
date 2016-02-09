.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "val$plugType"    # I
    .param p3, "val$status"    # I
    .param p4, "val$health"    # I
    .param p5, "val$level"    # I
    .param p6, "val$temp"    # I
    .param p7, "val$volt"    # I

    #@0
    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@4
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    #@6
    iput p4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    #@8
    iput p5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    #@a
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    #@c
    iput p7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    monitor-enter v8

    #@5
    .line 874
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v7, 0x1

    #@a
    .line 875
    .local v7, "onBattery":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@c
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@11
    move-result v0

    #@12
    if-ne v0, v7, :cond_1

    #@14
    .line 878
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@16
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@18
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    #@1a
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    #@1c
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@1e
    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    #@20
    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    #@22
    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    #@24
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v8

    #@28
    .line 879
    return-void

    #@29
    .line 874
    .end local v7    # "onBattery":Z
    :cond_0
    const/4 v7, 0x0

    #@2a
    .restart local v7    # "onBattery":Z
    goto :goto_0

    #@2b
    :cond_1
    monitor-exit v8

    #@2c
    .line 885
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2e
    const-string/jumbo v1, "battery-state"

    #@31
    const/16 v2, 0xf

    #@33
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    #@36
    .line 886
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@38
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@3a
    monitor-enter v8

    #@3b
    .line 887
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@3d
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@3f
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    #@41
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    #@43
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@45
    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    #@47
    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    #@49
    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    #@4b
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4e
    monitor-exit v8

    #@4f
    .line 872
    return-void

    #@50
    .line 873
    .end local v7    # "onBattery":Z
    :catchall_0
    move-exception v0

    #@51
    monitor-exit v8

    #@52
    throw v0

    #@53
    .line 886
    .restart local v7    # "onBattery":Z
    :catchall_1
    move-exception v0

    #@54
    monitor-exit v8

    #@55
    throw v0
.end method
