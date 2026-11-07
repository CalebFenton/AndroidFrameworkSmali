.class public final Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsage;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerComponentUsage"
.end annotation


# static fields
.field public static final blacklist COMPONENT:J = 0x10500000001L

.field public static final blacklist DURATION_MILLIS:J = 0x10300000003L

.field public static final blacklist POWER_DECI_COULOMBS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
