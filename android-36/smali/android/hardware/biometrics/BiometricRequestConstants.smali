.class public Landroid/hardware/biometrics/BiometricRequestConstants;
.super Ljava/lang/Object;
.source "BiometricRequestConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;
    }
.end annotation


# static fields
.field public static final blacklist REASON_AUTH_BP:I = 0x3

.field public static final blacklist REASON_AUTH_KEYGUARD:I = 0x4

.field public static final blacklist REASON_AUTH_OTHER:I = 0x5

.field public static final blacklist REASON_AUTH_SETTINGS:I = 0x6

.field public static final blacklist REASON_ENROLL_ENROLLING:I = 0x2

.field public static final blacklist REASON_ENROLL_FIND_SENSOR:I = 0x1

.field public static final blacklist REASON_UNKNOWN:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
