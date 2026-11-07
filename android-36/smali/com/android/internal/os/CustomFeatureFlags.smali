.class public Lcom/android/internal/os/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/os/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/FeatureFlags;",
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
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/os/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    const-string v9, "com.android.internal.os.use_transaction_codes_for_unknown_methods"

    const-string v10, ""

    const-string v1, "com.android.internal.os.application_shared_memory_enabled"

    const-string v2, "com.android.internal.os.debug_store_enabled"

    const-string v3, "com.android.internal.os.enable_apache_http_legacy_preload"

    const-string v4, "com.android.internal.os.enable_media_and_location_preload"

    const-string v5, "com.android.internal.os.ravenwood_flag_ro_1"

    const-string v6, "com.android.internal.os.ravenwood_flag_ro_2"

    const-string v7, "com.android.internal.os.ravenwood_flag_rw_1"

    const-string v8, "com.android.internal.os.ravenwood_flag_rw_2"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist applicationSharedMemoryEnabled()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.internal.os.application_shared_memory_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist debugStoreEnabled()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.internal.os.debug_store_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableApacheHttpLegacyPreload()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.internal.os.enable_apache_http_legacy_preload"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMediaAndLocationPreload()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.internal.os.enable_media_and_location_preload"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    const-string v7, "com.android.internal.os.ravenwood_flag_rw_2"

    const-string v8, "com.android.internal.os.use_transaction_codes_for_unknown_methods"

    const-string v0, "com.android.internal.os.application_shared_memory_enabled"

    const-string v1, "com.android.internal.os.debug_store_enabled"

    const-string v2, "com.android.internal.os.enable_apache_http_legacy_preload"

    const-string v3, "com.android.internal.os.enable_media_and_location_preload"

    const-string v4, "com.android.internal.os.ravenwood_flag_ro_1"

    const-string v5, "com.android.internal.os.ravenwood_flag_ro_2"

    const-string v6, "com.android.internal.os.ravenwood_flag_rw_1"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

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
            "Lcom/android/internal/os/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 96
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/os/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/os/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    invoke-direct {p0}, Lcom/android/internal/os/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ravenwoodFlagRo1()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.internal.os.ravenwood_flag_ro_1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ravenwoodFlagRo2()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.internal.os.ravenwood_flag_ro_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ravenwoodFlagRw1()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.internal.os.ravenwood_flag_rw_1"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ravenwoodFlagRw2()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.internal.os.ravenwood_flag_rw_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useTransactionCodesForUnknownMethods()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/os/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.internal.os.use_transaction_codes_for_unknown_methods"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/os/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
