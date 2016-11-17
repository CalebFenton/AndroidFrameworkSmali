.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$chargeUAh:I

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "val$plugType"    # I
    .param p3, "val$status"    # I
    .param p4, "val$health"    # I
    .param p5, "val$level"    # I
    .param p6, "val$temp"    # I
    .param p7, "val$volt"    # I
    .param p8, "val$chargeUAh"    # I

    #@0
    .prologue
    .line 985
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
    iput p8, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@2
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@4
    monitor-enter v9

    #@5
    .line 989
    :try_start_0
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v8, 0x1

    #@a
    .line 990
    .local v8, "onBattery":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@c
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    #@11
    move-result v0

    #@12
    if-ne v0, v8, :cond_1

    #@14
    .line 993
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
    .line 994
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    #@26
    .line 993
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v9

    #@2a
    .line 995
    return-void

    #@2b
    .line 989
    .end local v8    # "onBattery":Z
    :cond_0
    const/4 v8, 0x0

    #@2c
    .restart local v8    # "onBattery":Z
    goto :goto_0

    #@2d
    :cond_1
    monitor-exit v9

    #@2e
    .line 1001
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@30
    const-string/jumbo v1, "battery-state"

    #@33
    const/16 v2, 0xf

    #@35
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    #@38
    .line 1002
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@3a
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@3c
    monitor-enter v9

    #@3d
    .line 1003
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #@3f
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    #@41
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    #@43
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    #@45
    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    #@47
    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    #@49
    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    #@4b
    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    #@4d
    .line 1004
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    #@4f
    .line 1003
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@52
    monitor-exit v9

    #@53
    .line 987
    return-void

    #@54
    .line 988
    .end local v8    # "onBattery":Z
    :catchall_0
    move-exception v0

    #@55
    monitor-exit v9

    #@56
    throw v0

    #@57
    .line 1002
    .restart local v8    # "onBattery":Z
    :catchall_1
    move-exception v0

    #@58
    monitor-exit v9

    #@59
    throw v0
.end method
