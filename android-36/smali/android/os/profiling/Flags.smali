.class public final Landroid/os/profiling/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/os/profiling/FeatureFlags; = null

.field public static final blacklist FLAG_PERSIST_QUEUE:Ljava/lang/String; = "android.os.profiling.persist_queue"

.field public static final blacklist FLAG_REDACTION_ENABLED:Ljava/lang/String; = "android.os.profiling.redaction_enabled"

.field public static final blacklist FLAG_SYSTEM_TRIGGERED_PROFILING_NEW:Ljava/lang/String; = "android.os.profiling.system_triggered_profiling_new"

.field public static final blacklist FLAG_TELEMETRY_APIS:Ljava/lang/String; = "android.os.profiling.telemetry_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/os/profiling/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/os/profiling/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/os/profiling/Flags;->FEATURE_FLAGS:Landroid/os/profiling/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist persistQueue()Z
    .registers 1

    .line 16
    sget-object v0, Landroid/os/profiling/Flags;->FEATURE_FLAGS:Landroid/os/profiling/FeatureFlags;

    invoke-interface {v0}, Landroid/os/profiling/FeatureFlags;->persistQueue()Z

    move-result v0

    return v0
.end method

.method public static blacklist redactionEnabled()Z
    .registers 1

    .line 20
    nop

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist systemTriggeredProfilingNew()Z
    .registers 1

    .line 27
    sget-object v0, Landroid/os/profiling/Flags;->FEATURE_FLAGS:Landroid/os/profiling/FeatureFlags;

    invoke-interface {v0}, Landroid/os/profiling/FeatureFlags;->systemTriggeredProfilingNew()Z

    move-result v0

    return v0
.end method

.method public static blacklist telemetryApis()Z
    .registers 1

    .line 31
    nop

    .line 32
    const/4 v0, 0x1

    return v0
.end method
