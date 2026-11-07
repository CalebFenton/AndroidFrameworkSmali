.class public interface abstract Landroid/hardware/biometrics/BiometricFingerprintConstants;
.super Ljava/lang/Object;
.source "BiometricFingerprintConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintAcquired;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintError;
    }
.end annotation


# static fields
.field public static final blacklist BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final blacklist BIOMETRIC_ERROR_POWER_PRESSED:I = 0x13

.field public static final blacklist BIOMETRIC_ERROR_RE_ENROLL:I = 0x10

.field public static final blacklist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final whitelist FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final blacklist FINGERPRINT_ACQUIRED_IMMOBILE:I = 0x9

.field public static final whitelist FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final whitelist FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final blacklist FINGERPRINT_ACQUIRED_POWER_PRESSED:I = 0xb

.field public static final blacklist FINGERPRINT_ACQUIRED_RE_ENROLL_FORCED:I = 0xd

.field public static final blacklist FINGERPRINT_ACQUIRED_RE_ENROLL_OPTIONAL:I = 0xc

.field public static final blacklist FINGERPRINT_ACQUIRED_START:I = 0x7

.field public static final blacklist FINGERPRINT_ACQUIRED_TOO_BRIGHT:I = 0xa

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final blacklist FINGERPRINT_ACQUIRED_UNKNOWN:I = 0x8

.field public static final greylist-max-o FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final greylist-max-o FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final blacklist FINGERPRINT_ERROR_BAD_CALIBRATION:I = 0x12

.field public static final whitelist FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final whitelist FINGERPRINT_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final whitelist FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final blacklist FINGERPRINT_ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final whitelist FINGERPRINT_ERROR_NO_FINGERPRINTS:I = 0xb

.field public static final whitelist FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final whitelist FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final whitelist FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final greylist-max-o FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final blacklist FINGERPRINT_ERROR_UNKNOWN:I = 0x11

.field public static final whitelist FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field public static final whitelist FINGERPRINT_ERROR_VENDOR:I = 0x8

.field public static final greylist-max-r FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8


# direct methods
.method public static blacklist reasonToMetric(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 367
    packed-switch p0, :pswitch_data_c

    .line 375
    const/4 v0, 0x0

    return v0

    .line 373
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 371
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 369
    :pswitch_9
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist shouldDisableUdfpsDisplayMode(I)Z
    .registers 2
    .param p0, "acquiredInfo"    # I

    .line 339
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_8

    .line 358
    :pswitch_4
    return v0

    .line 342
    :pswitch_5
    return v0

    .line 354
    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
