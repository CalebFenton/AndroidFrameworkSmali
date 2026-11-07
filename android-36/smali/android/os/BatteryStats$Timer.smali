.class public abstract Landroid/os/BatteryStats$Timer;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist getCountLocked(I)I
.end method

.method public greylist-max-o getCurrentDurationMsLocked(J)J
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 616
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public greylist-max-o getMaxDurationMsLocked(J)J
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 608
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public greylist-max-o getSubTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .line 641
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract greylist-max-o getTimeSinceMarkLocked(J)J
.end method

.method public greylist-max-o getTotalDurationMsLocked(J)J
    .registers 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 631
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract greylist getTotalTimeLocked(JI)J
.end method

.method public greylist-max-o isRunningLocked()Z
    .registers 2

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
.end method
