.class public final Lcom/android/internal/compat/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/compat/flags/FeatureFlags; = null

.field public static final blacklist FLAG_SKIP_OLD_AND_DISABLED_COMPAT_LOGGING:Ljava/lang/String; = "com.android.internal.compat.flags.skip_old_and_disabled_compat_logging"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/internal/compat/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/compat/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/compat/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/compat/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist skipOldAndDisabledCompatLogging()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/compat/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/compat/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/compat/flags/FeatureFlags;->skipOldAndDisabledCompatLogging()Z

    move-result v0

    return v0
.end method
