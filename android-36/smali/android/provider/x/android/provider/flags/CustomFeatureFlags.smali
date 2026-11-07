.class public Landroid/provider/x/android/provider/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/provider/x/android/provider/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/provider/x/android/provider/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/provider/x/android/provider/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/provider/x/android/provider/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashSet;

    const-string v10, "android.provider.flags.use_proto_input_stream"

    const-string v11, ""

    const-string v1, "android.provider.flags.device_config_writable_namespaces_api"

    const-string v2, "android.provider.flags.dump_improvements"

    const-string v3, "android.provider.flags.enable_immediate_clear_override_bugfix"

    const-string v4, "android.provider.flags.flag_manager_unit_test_flag"

    const-string v5, "android.provider.flags.mmd_device_config"

    const-string v6, "android.provider.flags.new_storage_public_api"

    const-string v7, "android.provider.flags.new_storage_writer_system_api"

    const-string v8, "android.provider.flags.read_platform_from_platform_api"

    const-string v9, "android.provider.flags.stage_flags_for_build"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist deviceConfigWritableNamespacesApi()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.provider.flags.device_config_writable_namespaces_api"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dumpImprovements()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.provider.flags.dump_improvements"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableImmediateClearOverrideBugfix()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.provider.flags.enable_immediate_clear_override_bugfix"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist flagManagerUnitTestFlag()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.provider.flags.flag_manager_unit_test_flag"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    const-string v8, "android.provider.flags.stage_flags_for_build"

    const-string v9, "android.provider.flags.use_proto_input_stream"

    const-string v0, "android.provider.flags.device_config_writable_namespaces_api"

    const-string v1, "android.provider.flags.dump_improvements"

    const-string v2, "android.provider.flags.enable_immediate_clear_override_bugfix"

    const-string v3, "android.provider.flags.flag_manager_unit_test_flag"

    const-string v4, "android.provider.flags.mmd_device_config"

    const-string v5, "android.provider.flags.new_storage_public_api"

    const-string v6, "android.provider.flags.new_storage_writer_system_api"

    const-string v7, "android.provider.flags.read_platform_from_platform_api"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/provider/x/android/provider/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 103
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/provider/x/android/provider/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    invoke-direct {p0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mmdDeviceConfig()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.provider.flags.mmd_device_config"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist newStoragePublicApi()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.provider.flags.new_storage_public_api"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist newStorageWriterSystemApi()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.provider.flags.new_storage_writer_system_api"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readPlatformFromPlatformApi()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.provider.flags.read_platform_from_platform_api"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stageFlagsForBuild()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.provider.flags.stage_flags_for_build"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useProtoInputStream()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.provider.flags.use_proto_input_stream"

    invoke-virtual {p0, v1, v0}, Landroid/provider/x/android/provider/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
