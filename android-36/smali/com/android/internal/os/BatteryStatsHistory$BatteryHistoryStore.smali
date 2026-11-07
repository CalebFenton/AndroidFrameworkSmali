.class public interface abstract Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryHistoryStore"
.end annotation


# virtual methods
.method public abstract blacklist createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.end method

.method public abstract blacklist getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.end method

.method public abstract blacklist getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.end method

.method public abstract blacklist getMaxHistorySize()I
.end method

.method public abstract blacklist getSize()I
.end method

.method public abstract blacklist hasCompletedFragments()Z
.end method

.method public abstract blacklist isLocked()Z
.end method

.method public abstract blacklist lock()V
.end method

.method public abstract blacklist readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
.end method

.method public abstract blacklist reset()V
.end method

.method public abstract blacklist tryLock()Z
.end method

.method public abstract blacklist unlock()V
.end method

.method public abstract blacklist writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
.end method
