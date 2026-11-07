.class public Landroid/security/keystore2/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/security/keystore2/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/security/keystore2/FeatureFlags;",
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/security/keystore2/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/security/keystore2/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "android.security.keystore2.wal_db_journalmode_v3"

    const-string v7, ""

    const-string v1, "android.security.keystore2.attest_modules"

    const-string v2, "android.security.keystore2.disable_legacy_keystore_get"

    const-string v3, "android.security.keystore2.disable_legacy_keystore_put_v2"

    const-string v4, "android.security.keystore2.import_previously_emulated_keys"

    const-string v5, "android.security.keystore2.use_blob_state_column"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/security/keystore2/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/security/keystore2/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist attestModules()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.security.keystore2.attest_modules"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableLegacyKeystoreGet()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.security.keystore2.disable_legacy_keystore_get"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableLegacyKeystorePutV2()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.security.keystore2.disable_legacy_keystore_put_v2"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    const-string v4, "android.security.keystore2.use_blob_state_column"

    const-string v5, "android.security.keystore2.wal_db_journalmode_v3"

    const-string v0, "android.security.keystore2.attest_modules"

    const-string v1, "android.security.keystore2.disable_legacy_keystore_get"

    const-string v2, "android.security.keystore2.disable_legacy_keystore_put_v2"

    const-string v3, "android.security.keystore2.import_previously_emulated_keys"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
            "Landroid/security/keystore2/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/security/keystore2/FeatureFlags;>;"
    iget-object v0, p0, Landroid/security/keystore2/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist importPreviouslyEmulatedKeys()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.security.keystore2.import_previously_emulated_keys"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Landroid/security/keystore2/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    invoke-direct {p0}, Landroid/security/keystore2/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist useBlobStateColumn()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.security.keystore2.use_blob_state_column"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist walDbJournalmodeV3()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/security/keystore2/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.security.keystore2.wal_db_journalmode_v3"

    invoke-virtual {p0, v1, v0}, Landroid/security/keystore2/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
