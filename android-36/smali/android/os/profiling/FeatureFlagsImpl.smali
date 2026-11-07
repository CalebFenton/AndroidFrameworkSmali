.class public final Landroid/os/profiling/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/os/profiling/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist persistQueue:Z

.field private static blacklist redactionEnabled:Z

.field private static blacklist systemTriggeredProfilingNew:Z

.field private static blacklist telemetryApis:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 12
    sput-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 13
    sput-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 14
    sput-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->telemetryApis:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 17
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.os.profiling"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 18
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "persist_queue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 19
    sput-boolean v1, Landroid/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 20
    const-string v3, "system_triggered_profiling_new"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 21
    sput-boolean v1, Landroid/os/profiling/FeatureFlagsImpl;->telemetryApis:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_28
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_1e} :catch_1f

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_30

    .line 25
    :catch_1f
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 22
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_28
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_30
    nop

    .line 30
    :goto_31
    sput-boolean v1, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist persistQueue()Z
    .registers 2

    .line 34
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 35
    invoke-direct {p0}, Landroid/os/profiling/FeatureFlagsImpl;->init()V

    .line 37
    :cond_7
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    return v0
.end method

.method public blacklist redactionEnabled()Z
    .registers 2

    .line 42
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 43
    invoke-direct {p0}, Landroid/os/profiling/FeatureFlagsImpl;->init()V

    .line 45
    :cond_7
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    return v0
.end method

.method public blacklist systemTriggeredProfilingNew()Z
    .registers 2

    .line 50
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 51
    invoke-direct {p0}, Landroid/os/profiling/FeatureFlagsImpl;->init()V

    .line 53
    :cond_7
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    return v0
.end method

.method public blacklist telemetryApis()Z
    .registers 2

    .line 58
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Landroid/os/profiling/FeatureFlagsImpl;->init()V

    .line 61
    :cond_7
    sget-boolean v0, Landroid/os/profiling/FeatureFlagsImpl;->telemetryApis:Z

    return v0
.end method
