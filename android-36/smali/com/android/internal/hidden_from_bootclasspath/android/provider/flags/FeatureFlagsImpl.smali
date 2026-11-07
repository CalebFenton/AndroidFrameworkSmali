.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist deviceConfigWritableNamespacesApi:Z

.field private static blacklist dumpImprovements:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist mmdDeviceConfig:Z

.field private static blacklist newStoragePublicApi:Z

.field private static blacklist newStorageWriterSystemApi:Z

.field private static blacklist stageFlagsForBuild:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 5

    .line 19
    const-string v0, "FeatureFlagsImplExport"

    :try_start_2
    const-string v1, "android.provider.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 20
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v2, "dump_improvements"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    .line 21
    const-string v2, "mmd_device_config"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    .line 22
    const-string v2, "new_storage_public_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    .line 23
    const-string v2, "new_storage_writer_system_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    .line 24
    const-string/jumbo v2, "stage_flags_for_build"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    .line 25
    const-string v2, "device_config_writable_namespaces_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_44
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_3a} :catch_3b

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_4c

    .line 29
    :catch_3b
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 26
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_44
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    nop

    .line 34
    :goto_4d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist deviceConfigWritableNamespacesApi()Z
    .registers 2

    .line 38
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 39
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 41
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z

    return v0
.end method

.method public blacklist dumpImprovements()Z
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 47
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 49
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    return v0
.end method

.method public blacklist mmdDeviceConfig()Z
    .registers 2

    .line 54
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 55
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 57
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    return v0
.end method

.method public blacklist newStoragePublicApi()Z
    .registers 2

    .line 62
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 63
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 65
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    return v0
.end method

.method public blacklist newStorageWriterSystemApi()Z
    .registers 2

    .line 70
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 71
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 73
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    return v0
.end method

.method public blacklist stageFlagsForBuild()Z
    .registers 2

    .line 78
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 79
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 81
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    return v0
.end method
