.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags; = null

.field public static final blacklist FLAG_LAUNCH_SELECTED_CARD_FROM_QS_TILE:Ljava/lang/String; = "android.service.quickaccesswallet.launch_selected_card_from_qs_tile"

.field public static final blacklist FLAG_LAUNCH_WALLET_OPTION_ON_POWER_DOUBLE_TAP:Ljava/lang/String; = "android.service.quickaccesswallet.launch_wallet_option_on_power_double_tap"

.field public static final blacklist FLAG_LAUNCH_WALLET_VIA_SYSUI_CALLBACKS:Ljava/lang/String; = "android.service.quickaccesswallet.launch_wallet_via_sysui_callbacks"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist launchSelectedCardFromQsTile()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;->launchSelectedCardFromQsTile()Z

    move-result v0

    return v0
.end method

.method public static blacklist launchWalletOptionOnPowerDoubleTap()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;->launchWalletOptionOnPowerDoubleTap()Z

    move-result v0

    return v0
.end method

.method public static blacklist launchWalletViaSysuiCallbacks()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;->launchWalletViaSysuiCallbacks()Z

    move-result v0

    return v0
.end method
