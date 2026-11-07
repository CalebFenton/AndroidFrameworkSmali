.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_CHECKSERVERTRUSTED_API:Ljava/lang/String; = "com.android.org.conscrypt.flags.certificate_transparency_checkservertrusted_api"

.field public static final blacklist FLAG_SPAKE2PLUS_API:Ljava/lang/String; = "com.android.org.conscrypt.flags.spake2plus_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist certificateTransparencyCheckservertrustedApi()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;->certificateTransparencyCheckservertrustedApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist spake2plusApi()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;->spake2plusApi()Z

    move-result v0

    return v0
.end method
