.class public final Landroid/os/BatteryStats$DailyItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyItem"
.end annotation


# instance fields
.field public greylist-max-o mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

.field public greylist-max-o mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

.field public greylist-max-o mEndTime:J

.field public greylist-max-o mPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mStartTime:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
