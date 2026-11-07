.class public final Landroid/os/BatteryUsageStatsAtomsProto;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsAtomsProto$PowerComponentModel;,
        Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;,
        Landroid/os/BatteryUsageStatsAtomsProto$BatteryConsumerData;
    }
.end annotation


# static fields
.field public static final blacklist COMPONENT_MODELS:J = 0x20b00000008L

.field public static final blacklist DEVICE_BATTERY_CONSUMER:J = 0x10b00000004L

.field public static final blacklist DISCHARGE_DURATION_MILLIS:J = 0x10300000007L

.field public static final blacklist SESSION_DISCHARGE_PERCENTAGE:J = 0x10500000006L

.field public static final blacklist SESSION_DURATION_MILLIS:J = 0x10300000003L

.field public static final blacklist SESSION_END_MILLIS:J = 0x10300000002L

.field public static final blacklist SESSION_START_MILLIS:J = 0x10300000001L

.field public static final blacklist UID_BATTERY_CONSUMERS:J = 0x20b00000005L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
