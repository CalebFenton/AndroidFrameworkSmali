.class public Landroid/os/BatteryStats$Uid$Pid;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pid"
.end annotation


# instance fields
.field public greylist-max-o mWakeNesting:I

.field public greylist-max-o mWakeStartMs:J

.field public greylist-max-o mWakeSumMs:J


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryStats$Uid;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/BatteryStats$Uid;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
