.class Lcom/android/internal/os/BatteryStatsImpl$Uid$1;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "$anonymous0"    # I

    #@0
    .prologue
    .line 5287
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    #@5
    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .locals 3

    #@0
    .prologue
    .line 5289
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@4
    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    #@6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 5288
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
