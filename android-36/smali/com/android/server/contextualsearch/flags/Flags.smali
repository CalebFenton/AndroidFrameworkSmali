.class public final Lcom/android/server/contextualsearch/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/contextualsearch/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_EXCLUDE_PERSISTENT_UI:Ljava/lang/String; = "com.android.server.contextualsearch.flags.enable_exclude_persistent_ui"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/server/contextualsearch/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/contextualsearch/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/contextualsearch/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableExcludePersistentUi()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/contextualsearch/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/contextualsearch/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/contextualsearch/flags/FeatureFlags;->enableExcludePersistentUi()Z

    move-result v0

    return v0
.end method
