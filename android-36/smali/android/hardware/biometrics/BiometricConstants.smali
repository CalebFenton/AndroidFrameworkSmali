.class public interface abstract Landroid/hardware/biometrics/BiometricConstants;
.super Ljava/lang/Object;
.source "BiometricConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricConstants$LockoutMode;,
        Landroid/hardware/biometrics/BiometricConstants$Acquired;,
        Landroid/hardware/biometrics/BiometricConstants$Errors;
    }
.end annotation


# static fields
.field public static final whitelist BIOMETRIC_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist BIOMETRIC_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final whitelist BIOMETRIC_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final whitelist BIOMETRIC_ACQUIRED_PARTIAL:I = 0x1

.field public static final whitelist BIOMETRIC_ACQUIRED_TOO_FAST:I = 0x5

.field public static final whitelist BIOMETRIC_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final greylist-max-o BIOMETRIC_ACQUIRED_VENDOR:I = 0x6

.field public static final blacklist BIOMETRIC_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final whitelist BIOMETRIC_ERROR_CANCELED:I = 0x5

.field public static final blacklist BIOMETRIC_ERROR_CONTENT_VIEW_MORE_OPTIONS_BUTTON:I = 0x16

.field public static final whitelist BIOMETRIC_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final whitelist BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist BIOMETRIC_ERROR_IDENTITY_CHECK_NOT_ACTIVE:I = 0x14

.field public static final whitelist BIOMETRIC_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist BIOMETRIC_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final blacklist BIOMETRIC_ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final whitelist BIOMETRIC_ERROR_NOT_ENABLED_FOR_APPS:I = 0x15

.field public static final whitelist BIOMETRIC_ERROR_NO_BIOMETRICS:I = 0xb

.field public static final whitelist BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final whitelist BIOMETRIC_ERROR_NO_SPACE:I = 0x4

.field public static final blacklist BIOMETRIC_ERROR_POWER_PRESSED:I = 0x13

.field public static final blacklist BIOMETRIC_ERROR_RE_ENROLL:I = 0x10

.field public static final whitelist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final blacklist BIOMETRIC_ERROR_SENSOR_PRIVACY_ENABLED:I = 0x12

.field public static final whitelist BIOMETRIC_ERROR_TIMEOUT:I = 0x3

.field public static final whitelist BIOMETRIC_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final greylist-max-o BIOMETRIC_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final whitelist BIOMETRIC_ERROR_USER_CANCELED:I = 0xa

.field public static final whitelist BIOMETRIC_ERROR_VENDOR:I = 0x8

.field public static final greylist-max-r BIOMETRIC_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final blacklist BIOMETRIC_LOCKOUT_NONE:I = 0x0

.field public static final blacklist BIOMETRIC_LOCKOUT_PERMANENT:I = 0x2

.field public static final blacklist BIOMETRIC_LOCKOUT_TIMED:I = 0x1

.field public static final whitelist BIOMETRIC_NO_AUTHENTICATION:J = -0x1L

.field public static final blacklist BIOMETRIC_PAUSED_REJECTED:I = 0x64

.field public static final blacklist BIOMETRIC_SUCCESS:I = 0x0

.field public static final blacklist BIOMETRIC_SYSTEM_EVENT_EARLY_USER_CANCEL:I = 0x1
