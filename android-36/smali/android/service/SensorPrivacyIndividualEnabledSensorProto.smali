.class public final Landroid/service/SensorPrivacyIndividualEnabledSensorProto;
.super Ljava/lang/Object;
.source "SensorPrivacyIndividualEnabledSensorProto.java"


# static fields
.field public static final blacklist CAMERA:I = 0x2

.field public static final blacklist DISABLED:I = 0x2

.field public static final blacklist ENABLED:I = 0x1

.field public static final blacklist ENABLED_EXCEPT_ALLOWLISTED_APPS:I = 0x3

.field public static final blacklist HARDWARE:I = 0x2

.field public static final blacklist IS_ENABLED:J = 0x10800000002L

.field public static final blacklist LAST_CHANGE:J = 0x10300000003L

.field public static final blacklist MICROPHONE:I = 0x1

.field public static final blacklist SENSOR:J = 0x10e00000001L

.field public static final blacklist SOFTWARE:I = 0x1

.field public static final blacklist STATE_TYPE:J = 0x10e00000005L

.field public static final blacklist TOGGLE_TYPE:J = 0x10e00000004L

.field public static final blacklist UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
