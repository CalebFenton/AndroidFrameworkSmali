.class public final Lcom/android/org/conscrypt/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/org/conscrypt/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_CHECKSERVERTRUSTED_API:Ljava/lang/String; = "com.android.org.conscrypt.flags.certificate_transparency_checkservertrusted_api"

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_PLATFORM:Ljava/lang/String; = "com.android.org.conscrypt.flags.certificate_transparency_platform"

.field public static final blacklist FLAG_SPAKE2PLUS_API:Ljava/lang/String; = "com.android.org.conscrypt.flags.spake2plus_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/org/conscrypt/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/org/conscrypt/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist certificateTransparencyCheckservertrustedApi()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/org/conscrypt/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/org/conscrypt/flags/FeatureFlags;->certificateTransparencyCheckservertrustedApi()Z

    move-result v0

    return v0
.end method

.method public static greylist certificateTransparencyPlatform()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/org/conscrypt/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/org/conscrypt/flags/FeatureFlags;->certificateTransparencyPlatform()Z

    move-result v0

    return v0
.end method

.method public static greylist spake2plusApi()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/org/conscrypt/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/org/conscrypt/flags/FeatureFlags;->spake2plusApi()Z

    move-result v0

    return v0
.end method
