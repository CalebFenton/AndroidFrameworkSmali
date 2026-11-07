.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_ON_DEVICE_INTELLIGENCE:Ljava/lang/String; = "android.app.ondeviceintelligence.flags.enable_on_device_intelligence"

.field public static final blacklist FLAG_ENABLE_ON_DEVICE_INTELLIGENCE_MODULE:Ljava/lang/String; = "android.app.ondeviceintelligence.flags.enable_on_device_intelligence_module"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableOnDeviceIntelligence()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags;->enableOnDeviceIntelligence()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableOnDeviceIntelligenceModule()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/ondeviceintelligence/flags/FeatureFlags;->enableOnDeviceIntelligenceModule()Z

    move-result v0

    return v0
.end method
