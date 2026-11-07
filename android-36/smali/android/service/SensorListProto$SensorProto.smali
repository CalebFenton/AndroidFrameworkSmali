.class public final Landroid/service/SensorListProto$SensorProto;
.super Ljava/lang/Object;
.source "SensorListProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorProto"
.end annotation


# static fields
.field public static final blacklist ASHMEM:J = 0x10800000013L

.field public static final blacklist DATA_INJECTION_SUPPORTED:J = 0x1080000000fL

.field public static final blacklist FIFO_MAX_EVENT_COUNT:J = 0x1050000000cL

.field public static final blacklist FIFO_RESERVED_EVENT_COUNT:J = 0x1050000000dL

.field public static final blacklist FLAGS:J = 0x10500000008L

.field public static final blacklist GRALLOC:J = 0x10800000014L

.field public static final blacklist HANDLE:J = 0x10500000001L

.field public static final blacklist HAS_ADDITIONAL_INFO:J = 0x10800000011L

.field public static final blacklist HIGHEST_RATE_LEVEL:J = 0x10500000012L

.field public static final blacklist IS_DYNAMIC:J = 0x10800000010L

.field public static final blacklist IS_WAKEUP:J = 0x1080000000eL

.field public static final blacklist MAX_DELAY_US:J = 0x1050000000aL

.field public static final blacklist MAX_VALUE:J = 0x10200000016L

.field public static final blacklist MIN_DELAY_US:J = 0x1050000000bL

.field public static final blacklist MIN_VALUE:J = 0x10200000015L

.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist POWER_USAGE:J = 0x10200000018L

.field public static final blacklist REPORTING_MODE:J = 0x10e00000009L

.field public static final blacklist REQUIRED_PERMISSION:J = 0x10900000007L

.field public static final blacklist RESOLUTION:J = 0x10200000017L

.field public static final blacklist STRING_TYPE:J = 0x10900000005L

.field public static final blacklist TYPE:J = 0x10500000006L

.field public static final blacklist VENDOR:J = 0x10900000003L

.field public static final blacklist VERSION:J = 0x10500000004L


# direct methods
.method public constructor blacklist <init>(Landroid/service/SensorListProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/SensorListProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
