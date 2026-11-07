.class public final Landroid/service/SensorDeviceProto$SensorProto;
.super Ljava/lang/Object;
.source "SensorDeviceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorDeviceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorProto"
.end annotation


# static fields
.field public static final blacklist ACTIVE_COUNT:J = 0x10500000002L

.field public static final blacklist BATCHING_PERIOD_MS:J = 0x20200000005L

.field public static final blacklist BATCHING_PERIOD_SELECTED:J = 0x10200000006L

.field public static final blacklist HANDLE:J = 0x10500000001L

.field public static final blacklist SAMPLING_PERIOD_MS:J = 0x20200000003L

.field public static final blacklist SAMPLING_PERIOD_SELECTED:J = 0x10200000004L


# direct methods
.method public constructor blacklist <init>(Landroid/service/SensorDeviceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/SensorDeviceProto;
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
