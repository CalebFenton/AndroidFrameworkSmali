.class public Lcom/android/libcore/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/libcore/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/libcore/FeatureFlags;",
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
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/libcore/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/libcore/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    const-string v12, "com.android.libcore.v_apis"

    const-string v13, ""

    const-string v1, "com.android.libcore.appinfo"

    const-string v2, "com.android.libcore.hpke_public_api"

    const-string v3, "com.android.libcore.hpke_v_apis"

    const-string v4, "com.android.libcore.madvise_api"

    const-string v5, "com.android.libcore.native_metrics"

    const-string v6, "com.android.libcore.openjdk21_stringconcat"

    const-string v7, "com.android.libcore.openjdk_21_v1_apis"

    const-string v8, "com.android.libcore.openjdk_21_v2_apis"

    const-string v9, "com.android.libcore.post_cleanup_apis"

    const-string v10, "com.android.libcore.read_only_dynamic_code_load"

    const-string v11, "com.android.libcore.schedule_at_fixed_rate_new_behavior"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/libcore/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/libcore/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist appinfo()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.libcore.appinfo"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const-string v10, "com.android.libcore.schedule_at_fixed_rate_new_behavior"

    const-string v11, "com.android.libcore.v_apis"

    const-string v0, "com.android.libcore.appinfo"

    const-string v1, "com.android.libcore.hpke_public_api"

    const-string v2, "com.android.libcore.hpke_v_apis"

    const-string v3, "com.android.libcore.madvise_api"

    const-string v4, "com.android.libcore.native_metrics"

    const-string v5, "com.android.libcore.openjdk21_stringconcat"

    const-string v6, "com.android.libcore.openjdk_21_v1_apis"

    const-string v7, "com.android.libcore.openjdk_21_v2_apis"

    const-string v8, "com.android.libcore.post_cleanup_apis"

    const-string v9, "com.android.libcore.read_only_dynamic_code_load"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

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
            "Lcom/android/libcore/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 117
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/libcore/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/libcore/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hpkePublicApi()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.libcore.hpke_public_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hpkeVApis()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.libcore.hpke_v_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/libcore/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    invoke-direct {p0}, Lcom/android/libcore/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist madviseApi()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.libcore.madvise_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nativeMetrics()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.libcore.native_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist openjdk21Stringconcat()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.libcore.openjdk21_stringconcat"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist openjdk21V1Apis()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.libcore.openjdk_21_v1_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist openjdk21V2Apis()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.libcore.openjdk_21_v2_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist postCleanupApis()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.libcore.post_cleanup_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist readOnlyDynamicCodeLoad()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.libcore.read_only_dynamic_code_load"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scheduleAtFixedRateNewBehavior()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.libcore.schedule_at_fixed_rate_new_behavior"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vApis()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/libcore/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.libcore.v_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/libcore/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
