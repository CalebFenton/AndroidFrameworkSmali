.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist appinfo:Z

.field private static blacklist hpkePublicApi:Z

.field private static blacklist hpkeVApis:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist madviseApi:Z

.field private static blacklist nativeMetrics:Z

.field private static blacklist openjdk21Stringconcat:Z

.field private static blacklist openjdk21V1Apis:Z

.field private static blacklist openjdk21V2Apis:Z

.field private static blacklist postCleanupApis:Z

.field private static blacklist readOnlyDynamicCodeLoad:Z

.field private static blacklist vApis:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

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

    .line 24
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.libcore"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 25
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "hpke_public_api"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 26
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 27
    const-string v3, "madvise_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 28
    const-string v3, "native_metrics"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 29
    const-string v3, "openjdk21_stringconcat"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 30
    const-string v3, "openjdk_21_v1_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 31
    const-string v3, "openjdk_21_v2_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 32
    const-string/jumbo v3, "post_cleanup_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 33
    const-string/jumbo v3, "read_only_dynamic_code_load"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 34
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    .line 35
    const-string v3, "appinfo"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_62
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_58} :catch_59

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_6a

    .line 39
    :catch_59
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 36
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_62
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6a
    nop

    .line 44
    :goto_6b
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist appinfo()Z
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 51
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    return v0
.end method

.method public blacklist hpkePublicApi()Z
    .registers 2

    .line 56
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 57
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 59
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    return v0
.end method

.method public blacklist hpkeVApis()Z
    .registers 2

    .line 64
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 67
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    return v0
.end method

.method public blacklist madviseApi()Z
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 75
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    return v0
.end method

.method public blacklist nativeMetrics()Z
    .registers 2

    .line 80
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 81
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 83
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    return v0
.end method

.method public blacklist openjdk21Stringconcat()Z
    .registers 2

    .line 88
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 91
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    return v0
.end method

.method public blacklist openjdk21V1Apis()Z
    .registers 2

    .line 96
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 97
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 99
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    return v0
.end method

.method public blacklist openjdk21V2Apis()Z
    .registers 2

    .line 104
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 105
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 107
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    return v0
.end method

.method public blacklist postCleanupApis()Z
    .registers 2

    .line 112
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 115
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    return v0
.end method

.method public blacklist readOnlyDynamicCodeLoad()Z
    .registers 2

    .line 120
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 121
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 123
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    return v0
.end method

.method public blacklist vApis()Z
    .registers 2

    .line 128
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 129
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 131
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    return v0
.end method
