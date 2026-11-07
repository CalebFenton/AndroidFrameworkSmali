.class public final Landroid/adaptiveauth/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_ADAPTIVE_AUTH:Ljava/lang/String; = "android.adaptiveauth.enable_adaptive_auth"

.field public static final blacklist FLAG_REPORT_BIOMETRIC_AUTH_ATTEMPTS:Ljava/lang/String; = "android.adaptiveauth.report_biometric_auth_attempts"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/adaptiveauth/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/adaptiveauth/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableAdaptiveAuth()Z
    .registers 1

    .line 16
    sget-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    invoke-interface {v0}, Landroid/adaptiveauth/FeatureFlags;->enableAdaptiveAuth()Z

    move-result v0

    return v0
.end method

.method public static greylist reportBiometricAuthAttempts()Z
    .registers 1

    .line 23
    sget-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    invoke-interface {v0}, Landroid/adaptiveauth/FeatureFlags;->reportBiometricAuthAttempts()Z

    move-result v0

    return v0
.end method
