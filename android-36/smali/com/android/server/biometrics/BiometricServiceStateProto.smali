.class public final Lcom/android/server/biometrics/BiometricServiceStateProto;
.super Ljava/lang/Object;
.source "BiometricServiceStateProto.java"


# static fields
.field public static final blacklist AUTH_SESSION_STATE:J = 0x10e00000002L

.field public static final blacklist SENSOR_SERVICE_STATES:J = 0x20b00000001L

.field public static final blacklist STATE_AUTHENTICATED_PENDING_SYSUI:I = 0x7

.field public static final blacklist STATE_AUTH_CALLED:I = 0x1

.field public static final blacklist STATE_AUTH_IDLE:I = 0x0

.field public static final blacklist STATE_AUTH_PAUSED:I = 0x4

.field public static final blacklist STATE_AUTH_PAUSED_RESUMING:I = 0x5

.field public static final blacklist STATE_AUTH_PENDING_CONFIRM:I = 0x6

.field public static final blacklist STATE_AUTH_STARTED:I = 0x2

.field public static final blacklist STATE_AUTH_STARTED_UI_SHOWING:I = 0x3

.field public static final blacklist STATE_CLIENT_DIED_CANCELLING:I = 0xa

.field public static final blacklist STATE_ERROR_PENDING_SYSUI:I = 0x8

.field public static final blacklist STATE_SHOWING_DEVICE_CREDENTIAL:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
