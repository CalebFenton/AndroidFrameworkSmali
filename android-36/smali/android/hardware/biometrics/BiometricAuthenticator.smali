.class public interface abstract Landroid/hardware/biometrics/BiometricAuthenticator;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;,
        Landroid/hardware/biometrics/BiometricAuthenticator$Modality;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_ANY_BIOMETRIC:I = 0xe

.field public static final blacklist TYPE_CREDENTIAL:I = 0x1

.field public static final blacklist TYPE_FACE:I = 0x8

.field public static final blacklist TYPE_FINGERPRINT:I = 0x2

.field public static final blacklist TYPE_IRIS:I = 0x4

.field public static final blacklist TYPE_NONE:I
