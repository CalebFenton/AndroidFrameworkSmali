.class public final Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryConsumerData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsageSlice;,
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData$PowerComponentUsage;
    }
.end annotation


# static fields
.field public static final blacklist POWER_COMPONENTS:J = 0x20b00000002L

.field public static final blacklist SLICES:J = 0x20b00000003L

.field public static final blacklist TOTAL_CONSUMED_POWER_DECI_COULOMBS:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryUsageStatsAtomsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/BatteryUsageStatsAtomsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
