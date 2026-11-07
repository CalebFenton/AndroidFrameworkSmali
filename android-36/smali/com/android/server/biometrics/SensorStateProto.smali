.class public final Lcom/android/server/biometrics/SensorStateProto;
.super Ljava/lang/Object;
.source "SensorStateProto.java"


# static fields
.field public static final blacklist CURRENT_STRENGTH:J = 0x10500000003L

.field public static final blacklist FACE:I = 0x2

.field public static final blacklist FINGERPRINT:I = 0x1

.field public static final blacklist FINGERPRINT_UDFPS:I = 0x0

.field public static final blacklist IRIS:I = 0x3

.field public static final blacklist MODALITY:J = 0x10e00000002L

.field public static final blacklist MODALITY_FLAGS:J = 0x20e00000008L

.field public static final blacklist RESET_LOCKOUT_REQUIRES_CHALLENGE:J = 0x10800000007L

.field public static final blacklist RESET_LOCKOUT_REQUIRES_HARDWARE_AUTH_TOKEN:J = 0x10800000006L

.field public static final blacklist SCHEDULER:J = 0x10b00000004L

.field public static final blacklist SENSOR_ID:J = 0x10500000001L

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist USER_STATES:J = 0x20b00000005L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
