.class public final Lcom/android/tradeinmode/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_TRADE_IN_MODE:Ljava/lang/String; = "com.android.tradeinmode.flags.enable_trade_in_mode"

.field public static final blacklist FLAG_TRADE_IN_MODE_2025Q4:Ljava/lang/String; = "com.android.tradeinmode.flags.trade_in_mode_2025q4"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/tradeinmode/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/tradeinmode/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/tradeinmode/flags/Flags;->FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableTradeInMode()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/tradeinmode/flags/Flags;->FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/tradeinmode/flags/FeatureFlags;->enableTradeInMode()Z

    move-result v0

    return v0
.end method

.method public static greylist tradeInMode2025q4()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/tradeinmode/flags/Flags;->FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/tradeinmode/flags/FeatureFlags;->tradeInMode2025q4()Z

    move-result v0

    return v0
.end method
