.class public final Landroid/crashrecovery/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_RESCUE_PARTY_FLAG_RESETS:Ljava/lang/String; = "android.crashrecovery.flags.allow_rescue_party_flag_resets"

.field public static final blacklist FLAG_DEPRECATE_FLAGS_AND_SETTINGS_RESETS:Ljava/lang/String; = "android.crashrecovery.flags.deprecate_flags_and_settings_resets"

.field public static final blacklist FLAG_ENABLE_CRASHRECOVERY:Ljava/lang/String; = "android.crashrecovery.flags.enable_crashrecovery"

.field public static final blacklist FLAG_RECOVERABILITY_DETECTION:Ljava/lang/String; = "android.crashrecovery.flags.recoverability_detection"

.field public static final blacklist FLAG_REFACTOR_CRASHRECOVERY:Ljava/lang/String; = "android.crashrecovery.flags.refactor_crashrecovery"

.field public static final blacklist FLAG_SYNCHRONOUS_REBOOT_IN_RESCUE_PARTY:Ljava/lang/String; = "android.crashrecovery.flags.synchronous_reboot_in_rescue_party"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/crashrecovery/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/crashrecovery/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist allowRescuePartyFlagResets()Z
    .registers 1

    .line 24
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->allowRescuePartyFlagResets()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateFlagsAndSettingsResets()Z
    .registers 1

    .line 31
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->deprecateFlagsAndSettingsResets()Z

    move-result v0

    return v0
.end method

.method public static greylist enableCrashrecovery()Z
    .registers 1

    .line 38
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->enableCrashrecovery()Z

    move-result v0

    return v0
.end method

.method public static greylist recoverabilityDetection()Z
    .registers 1

    .line 45
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->recoverabilityDetection()Z

    move-result v0

    return v0
.end method

.method public static greylist refactorCrashrecovery()Z
    .registers 1

    .line 52
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->refactorCrashrecovery()Z

    move-result v0

    return v0
.end method

.method public static greylist synchronousRebootInRescueParty()Z
    .registers 1

    .line 59
    sget-object v0, Landroid/crashrecovery/flags/Flags;->FEATURE_FLAGS:Landroid/crashrecovery/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/crashrecovery/flags/FeatureFlags;->synchronousRebootInRescueParty()Z

    move-result v0

    return v0
.end method
