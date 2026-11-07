.class public final Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer;
.super Ljava/lang/Object;
.source "BatteryUsageStatsAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsAtomsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidBatteryConsumer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStatsAtomsProto$UidBatteryConsumer$TimeInState;
    }
.end annotation


# static fields
.field public static final blacklist BATTERY_CONSUMER_DATA:J = 0x10b00000002L

.field public static final blacklist TIME_IN_BACKGROUND_MILLIS:J = 0x10300000004L

.field public static final blacklist TIME_IN_FOREGROUND_MILLIS:J = 0x10300000003L

.field public static final blacklist TIME_IN_STATE:J = 0x20b00000005L

.field public static final blacklist UID:J = 0x10500000001L


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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
