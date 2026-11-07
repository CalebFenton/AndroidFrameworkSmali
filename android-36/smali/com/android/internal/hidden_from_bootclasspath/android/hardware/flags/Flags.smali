.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags; = null

.field public static final blacklist FLAG_LUTS_API:Ljava/lang/String; = "android.hardware.flags.luts_api"

.field public static final blacklist FLAG_OVERLAYPROPERTIES_CLASS_API:Ljava/lang/String; = "android.hardware.flags.overlayproperties_class_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist lutsApi()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags;->lutsApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist overlaypropertiesClassApi()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/flags/FeatureFlags;->overlaypropertiesClassApi()Z

    move-result v0

    return v0
.end method
