.class public Lcom/android/art/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/art/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/art/flags/FeatureFlags;",
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
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/art/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/art/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const-string v8, "com.android.art.flags.virtual_thread_impl_v1"

    const-string v9, ""

    const-string v1, "com.android.art.flags.always_enable_profile_code"

    const-string v2, "com.android.art.flags.art_service_v3"

    const-string v3, "com.android.art.flags.executable_method_file_offsets"

    const-string v4, "com.android.art.flags.executable_method_file_offsets_v2"

    const-string v5, "com.android.art.flags.fast_baseline_compiler"

    const-string v6, "com.android.art.flags.test"

    const-string v7, "com.android.art.flags.use_generational_cmc"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/art/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/art/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist alwaysEnableProfileCode()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.art.flags.always_enable_profile_code"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist artServiceV3()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.art.flags.art_service_v3"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist executableMethodFileOffsets()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.art.flags.executable_method_file_offsets"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist executableMethodFileOffsetsV2()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.art.flags.executable_method_file_offsets_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fastBaselineCompiler()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.art.flags.fast_baseline_compiler"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    const-string v6, "com.android.art.flags.use_generational_cmc"

    const-string v7, "com.android.art.flags.virtual_thread_impl_v1"

    const-string v0, "com.android.art.flags.always_enable_profile_code"

    const-string v1, "com.android.art.flags.art_service_v3"

    const-string v2, "com.android.art.flags.executable_method_file_offsets"

    const-string v3, "com.android.art.flags.executable_method_file_offsets_v2"

    const-string v4, "com.android.art.flags.fast_baseline_compiler"

    const-string v5, "com.android.art.flags.test"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

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
            "Lcom/android/art/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/art/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/art/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/art/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    invoke-direct {p0}, Lcom/android/art/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist test()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.art.flags.test"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useGenerationalCmc()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.art.flags.use_generational_cmc"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist virtualThreadImplV1()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/art/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.art.flags.virtual_thread_impl_v1"

    invoke-virtual {p0, v1, v0}, Lcom/android/art/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
