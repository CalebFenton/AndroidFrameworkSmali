.class public Landroid/content/res/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/content/res/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/res/FeatureFlags;",
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
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/res/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/content/res/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v1, Ljava/util/HashSet;

    const-string v17, "android.content.res.use_new_aconfig_storage"

    const-string v18, ""

    const-string v2, "android.content.res.always_false"

    const-string v3, "android.content.res.asset_file_descriptor_frro"

    const-string v4, "android.content.res.default_locale"

    const-string v5, "android.content.res.dimension_frro"

    const-string v6, "android.content.res.font_scale_converter_public"

    const-string v7, "android.content.res.handle_all_config_changes"

    const-string v8, "android.content.res.layout_readwrite_flags"

    const-string v9, "android.content.res.manifest_flagging"

    const-string v10, "android.content.res.nine_patch_frro"

    const-string v11, "android.content.res.register_resource_paths"

    const-string v12, "android.content.res.resources_minor_version_support"

    const-string v13, "android.content.res.rro_constraints"

    const-string v14, "android.content.res.rro_control_for_android_no_overlayable"

    const-string v15, "android.content.res.self_targeting_android_resource_frro"

    const-string v16, "android.content.res.system_context_handle_app_info_changed"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/content/res/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/res/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist alwaysFalse()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.content.res.always_false"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist assetFileDescriptorFrro()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.content.res.asset_file_descriptor_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist defaultLocale()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.content.res.default_locale"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dimensionFrro()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.content.res.dimension_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fontScaleConverterPublic()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.content.res.font_scale_converter_public"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    const-string v15, "android.content.res.system_context_handle_app_info_changed"

    const-string v16, "android.content.res.use_new_aconfig_storage"

    const-string v1, "android.content.res.always_false"

    const-string v2, "android.content.res.asset_file_descriptor_frro"

    const-string v3, "android.content.res.default_locale"

    const-string v4, "android.content.res.dimension_frro"

    const-string v5, "android.content.res.font_scale_converter_public"

    const-string v6, "android.content.res.handle_all_config_changes"

    const-string v7, "android.content.res.layout_readwrite_flags"

    const-string v8, "android.content.res.manifest_flagging"

    const-string v9, "android.content.res.nine_patch_frro"

    const-string v10, "android.content.res.register_resource_paths"

    const-string v11, "android.content.res.resources_minor_version_support"

    const-string v12, "android.content.res.rro_constraints"

    const-string v13, "android.content.res.rro_control_for_android_no_overlayable"

    const-string v14, "android.content.res.self_targeting_android_resource_frro"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

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
            "Landroid/content/res/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 145
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/res/FeatureFlags;>;"
    iget-object v0, p0, Landroid/content/res/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist handleAllConfigChanges()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.content.res.handle_all_config_changes"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Landroid/content/res/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 133
    invoke-direct {p0}, Landroid/content/res/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist layoutReadwriteFlags()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.content.res.layout_readwrite_flags"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist manifestFlagging()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.content.res.manifest_flagging"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ninePatchFrro()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.content.res.nine_patch_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist registerResourcePaths()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.content.res.register_resource_paths"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resourcesMinorVersionSupport()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.content.res.resources_minor_version_support"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rroConstraints()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.content.res.rro_constraints"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rroControlForAndroidNoOverlayable()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.content.res.rro_control_for_android_no_overlayable"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist selfTargetingAndroidResourceFrro()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.content.res.self_targeting_android_resource_frro"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist systemContextHandleAppInfoChanged()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.content.res.system_context_handle_app_info_changed"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useNewAconfigStorage()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/content/res/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.content.res.use_new_aconfig_storage"

    invoke-virtual {p0, v1, v0}, Landroid/content/res/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
