.class public Landroid/app/sdksandbox/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/sdksandbox/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/sdksandbox/flags/FeatureFlags;",
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
            "Landroid/app/sdksandbox/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/app/sdksandbox/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashSet;

    const-string v10, "android.app.sdksandbox.flags.selinux_sdk_sandbox_audit"

    const-string v11, ""

    const-string v1, "android.app.sdksandbox.flags.first_and_last_sdk_sandbox_uid_public"

    const-string v2, "android.app.sdksandbox.flags.get_effective_target_sdk_version_api"

    const-string v3, "android.app.sdksandbox.flags.sandbox_activity_sdk_based_context"

    const-string v4, "android.app.sdksandbox.flags.sandbox_client_importance_listener"

    const-string v5, "android.app.sdksandbox.flags.sdk_sandbox_dex_verifier"

    const-string v6, "android.app.sdksandbox.flags.sdk_sandbox_instrumentation_info"

    const-string v7, "android.app.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

    const-string v8, "android.app.sdksandbox.flags.sdk_sandbox_verify_sdk_dex_files"

    const-string v9, "android.app.sdksandbox.flags.selinux_input_selector"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public blacklist firstAndLastSdkSandboxUidPublic()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.first_and_last_sdk_sandbox_uid_public"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEffectiveTargetSdkVersionApi()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.get_effective_target_sdk_version_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v8, "android.app.sdksandbox.flags.selinux_input_selector"

    const-string v9, "android.app.sdksandbox.flags.selinux_sdk_sandbox_audit"

    const-string v0, "android.app.sdksandbox.flags.first_and_last_sdk_sandbox_uid_public"

    const-string v1, "android.app.sdksandbox.flags.get_effective_target_sdk_version_api"

    const-string v2, "android.app.sdksandbox.flags.sandbox_activity_sdk_based_context"

    const-string v3, "android.app.sdksandbox.flags.sandbox_client_importance_listener"

    const-string v4, "android.app.sdksandbox.flags.sdk_sandbox_dex_verifier"

    const-string v5, "android.app.sdksandbox.flags.sdk_sandbox_instrumentation_info"

    const-string v6, "android.app.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

    const-string v7, "android.app.sdksandbox.flags.sdk_sandbox_verify_sdk_dex_files"

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
            "Landroid/app/sdksandbox/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 103
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/app/sdksandbox/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    invoke-direct {p0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public blacklist sandboxActivitySdkBasedContext()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sandbox_activity_sdk_based_context"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sandboxClientImportanceListener()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sandbox_client_importance_listener"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkSandboxDexVerifier()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sdk_sandbox_dex_verifier"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkSandboxInstrumentationInfo()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sdk_sandbox_instrumentation_info"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkSandboxUidToAppUidApi()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkSandboxVerifySdkDexFiles()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.sdk_sandbox_verify_sdk_dex_files"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist selinuxInputSelector()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.selinux_input_selector"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist selinuxSdkSandboxAudit()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.sdksandbox.flags.selinux_sdk_sandbox_audit"

    invoke-virtual {p0, v1, v0}, Landroid/app/sdksandbox/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
