.class public final Landroid/app/job/JobProtoEnums;
.super Ljava/lang/Object;
.source "JobProtoEnums.java"


# static fields
.field public static final blacklist INTERNAL_STOP_REASON_ANR:I = 0xc

.field public static final blacklist INTERNAL_STOP_REASON_CANCELLED:I = 0x0

.field public static final blacklist INTERNAL_STOP_REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final blacklist INTERNAL_STOP_REASON_DATA_CLEARED:I = 0x8

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_IDLE:I = 0x4

.field public static final blacklist INTERNAL_STOP_REASON_DEVICE_THERMAL:I = 0x5

.field public static final blacklist INTERNAL_STOP_REASON_PREEMPT:I = 0x2

.field public static final blacklist INTERNAL_STOP_REASON_RESTRICTED_BUCKET:I = 0x6

.field public static final blacklist INTERNAL_STOP_REASON_RTC_UPDATED:I = 0x9

.field public static final blacklist INTERNAL_STOP_REASON_SUCCESSFUL_FINISH:I = 0xa

.field public static final blacklist INTERNAL_STOP_REASON_TIMEOUT:I = 0x3

.field public static final blacklist INTERNAL_STOP_REASON_TIMEOUT_ABANDONED:I = 0xd

.field public static final blacklist INTERNAL_STOP_REASON_UNINSTALL:I = 0x7

.field public static final blacklist INTERNAL_STOP_REASON_UNKNOWN:I = -0x1

.field public static final blacklist INTERNAL_STOP_REASON_USER_UI_STOP:I = 0xb

.field public static final blacklist STOP_REASON_APP_STANDBY:I = 0xc

.field public static final blacklist STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final blacklist STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final blacklist STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final blacklist STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final blacklist STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final blacklist STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final blacklist STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final blacklist STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final blacklist STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED:I = 0xf

.field public static final greylist-max-o STOP_REASON_PREEMPT:I = 0x2

.field public static final blacklist STOP_REASON_QUOTA:I = 0xa

.field public static final blacklist STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final greylist-max-o STOP_REASON_TIMEOUT:I = 0x3

.field public static final blacklist STOP_REASON_TIMEOUT_ABANDONED:I = 0x10

.field public static final blacklist STOP_REASON_UNDEFINED:I = 0x0

.field public static final blacklist STOP_REASON_USER:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
