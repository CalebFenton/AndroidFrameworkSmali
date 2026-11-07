.class public interface abstract Landroid/hardware/biometrics/BiometricManager$Authenticators;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Authenticators"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    }
.end annotation


# static fields
.field public static final whitelist BIOMETRIC_CONVENIENCE:I = 0xfff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BIOMETRIC_MAX_STRENGTH:I = 0x1

.field public static final blacklist BIOMETRIC_MIN_STRENGTH:I = 0x7fff

.field public static final whitelist BIOMETRIC_STRONG:I = 0xf

.field public static final whitelist BIOMETRIC_WEAK:I = 0xff

.field public static final whitelist DEVICE_CREDENTIAL:I = 0x8000

.field public static final whitelist EMPTY_SET:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist IDENTITY_CHECK:I = 0x10000
