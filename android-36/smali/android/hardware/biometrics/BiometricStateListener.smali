.class public abstract Landroid/hardware/biometrics/BiometricStateListener;
.super Landroid/hardware/biometrics/IBiometricStateListener$Stub;
.source "BiometricStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricStateListener$Action;,
        Landroid/hardware/biometrics/BiometricStateListener$State;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SENSOR_TOUCH:I = 0x0

.field public static final blacklist STATE_AUTH_OTHER:I = 0x4

.field public static final blacklist STATE_BP_AUTH:I = 0x3

.field public static final blacklist STATE_ENROLLING:I = 0x1

.field public static final blacklist STATE_IDLE:I = 0x0

.field public static final blacklist STATE_KEYGUARD_AUTH:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBiometricAction(I)V
    .registers 2
    .param p1, "action"    # I

    .line 69
    return-void
.end method

.method public blacklist onEnrollmentsChanged(IIZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .param p3, "hasEnrollments"    # Z

    .line 75
    return-void
.end method

.method public blacklist onStateChanged(I)V
    .registers 2
    .param p1, "newState"    # I

    .line 62
    return-void
.end method
