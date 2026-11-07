.class public final Landroid/net/connectivity/com/android/net/thread/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CHANNEL_MAX_POWERS_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.channel_max_powers_enabled"

.field public static final blacklist FLAG_CONFIGURATION_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.configuration_enabled"

.field public static final blacklist FLAG_EPSKC_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.epskc_enabled"

.field public static final blacklist FLAG_SET_NAT64_CONFIGURATION_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.set_nat64_configuration_enabled"

.field public static final blacklist FLAG_THREAD_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.thread_enabled"

.field public static final blacklist FLAG_THREAD_MOBILE_ENABLED:Ljava/lang/String; = "com.android.net.thread.flags.thread_mobile_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist channelMaxPowersEnabled()Z
    .registers 1

    .line 24
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->channelMaxPowersEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurationEnabled()Z
    .registers 1

    .line 31
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->configurationEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist epskcEnabled()Z
    .registers 1

    .line 38
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->epskcEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist setNat64ConfigurationEnabled()Z
    .registers 1

    .line 45
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->setNat64ConfigurationEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist threadEnabled()Z
    .registers 1

    .line 52
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->threadEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist threadMobileEnabled()Z
    .registers 1

    .line 59
    sget-object v0, Landroid/net/connectivity/com/android/net/thread/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/thread/flags/FeatureFlags;->threadMobileEnabled()Z

    move-result v0

    return v0
.end method
