.class public final Landroid/database/sqlite/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags; = null

.field public static final blacklist FLAG_CONCURRENT_OPEN_HELPER:Ljava/lang/String; = "android.database.sqlite.concurrent_open_helper"

.field public static final blacklist FLAG_NO_CHECKPOINT_ON_FINALIZE:Ljava/lang/String; = "android.database.sqlite.no_checkpoint_on_finalize"

.field public static final blacklist FLAG_ONEWAY_FINALIZER_CLOSE_FIXED:Ljava/lang/String; = "android.database.sqlite.oneway_finalizer_close_fixed"

.field public static final blacklist FLAG_SQLITE_APIS_35:Ljava/lang/String; = "android.database.sqlite.sqlite_apis_35"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/database/sqlite/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/database/sqlite/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/database/sqlite/Flags;->FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist concurrentOpenHelper()Z
    .registers 1

    .line 20
    sget-object v0, Landroid/database/sqlite/Flags;->FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Landroid/database/sqlite/FeatureFlags;->concurrentOpenHelper()Z

    move-result v0

    return v0
.end method

.method public static greylist noCheckpointOnFinalize()Z
    .registers 1

    .line 27
    sget-object v0, Landroid/database/sqlite/Flags;->FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Landroid/database/sqlite/FeatureFlags;->noCheckpointOnFinalize()Z

    move-result v0

    return v0
.end method

.method public static greylist onewayFinalizerCloseFixed()Z
    .registers 1

    .line 34
    sget-object v0, Landroid/database/sqlite/Flags;->FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Landroid/database/sqlite/FeatureFlags;->onewayFinalizerCloseFixed()Z

    move-result v0

    return v0
.end method

.method public static greylist sqliteApis35()Z
    .registers 1

    .line 41
    sget-object v0, Landroid/database/sqlite/Flags;->FEATURE_FLAGS:Landroid/database/sqlite/FeatureFlags;

    invoke-interface {v0}, Landroid/database/sqlite/FeatureFlags;->sqliteApis35()Z

    move-result v0

    return v0
.end method
