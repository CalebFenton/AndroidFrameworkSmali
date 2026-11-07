.class public abstract Landroid/os/BatteryStats$ControllerActivityCounter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerActivityCounter"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract blacklist getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract greylist-max-o getPowerCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract greylist-max-o getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract greylist-max-o getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract greylist-max-o getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
.end method

.method public abstract greylist-max-o getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
.end method
