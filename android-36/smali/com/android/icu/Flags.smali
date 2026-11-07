.class public final Lcom/android/icu/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/icu/FeatureFlags; = null

.field public static final blacklist FLAG_ICU_25Q2_API:Ljava/lang/String; = "com.android.icu.icu_25q2_api"

.field public static final blacklist FLAG_ICU_V_API:Ljava/lang/String; = "com.android.icu.icu_v_api"

.field public static final blacklist FLAG_TELEPHONY_LOOKUP_MCC_EXTENSION:Ljava/lang/String; = "com.android.icu.telephony_lookup_mcc_extension"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/icu/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/icu/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/icu/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist icu25q2Api()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/icu/FeatureFlags;->icu25q2Api()Z

    move-result v0

    return v0
.end method

.method public static greylist icuVApi()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/icu/FeatureFlags;->icuVApi()Z

    move-result v0

    return v0
.end method

.method public static greylist telephonyLookupMccExtension()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/icu/FeatureFlags;->telephonyLookupMccExtension()Z

    move-result v0

    return v0
.end method
