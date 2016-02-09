.class Lcom/android/internal/os/BatteryStatsImpl$Uid$3;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    #@0
    .prologue
    .line 4436
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    #@5
    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5

    #@0
    .prologue
    .line 4438
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@6
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@a
    const/16 v3, 0xe

    #@c
    const/4 v4, 0x0

    #@d
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@10
    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4437
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;->instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
