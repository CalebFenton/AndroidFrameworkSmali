.class public Lcom/android/wifi/x/android/security/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/wifi/x/android/security/FeatureFlags;


# instance fields
.field private blacklist mFinalizedFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wifi/x/android/security/FeatureFlags;",
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/wifi/x/android/security/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/wifi/x/android/security/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 150
    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.security.aapm_api"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 151
    const-string v4, "android.security.afl_api"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 152
    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.security.asm_restrictions_enabled"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 153
    const-string v5, "android.security.certificate_transparency_configuration"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 154
    const-string v5, "android.security.content_uri_permission_apis"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    .line 155
    const-string v5, "android.security.enable_intent_matching_flags"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v2, v6

    .line 156
    const-string v5, "android.security.enforce_intent_filter_match"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v2, v6

    .line 157
    const-string v5, "android.security.frp_enforcement"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v2, v6

    .line 158
    const-string v5, "android.security.fsverity_api"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v2, v6

    .line 159
    const-string v5, "android.security.keystore_grant_api"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v2, v6

    .line 160
    const-string v5, "android.security.mgf1_digest_setter_v2"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v2, v5

    .line 161
    const-string v4, "android.security.prevent_intent_redirect"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 162
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v2, v3

    .line 149
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .registers 3

    .line 24
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.security.aapm_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aflApi()Z
    .registers 3

    .line 31
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.security.afl_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .registers 3

    .line 38
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.security.asm_restrictions_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .registers 3

    .line 45
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.security.certificate_transparency_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .registers 3

    .line 52
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.security.content_uri_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .registers 3

    .line 59
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.security.enable_intent_matching_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .registers 3

    .line 66
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.security.enforce_intent_filter_match"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .registers 3

    .line 73
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.security.frp_enforcement"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fsverityApi()Z
    .registers 3

    .line 80
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.security.fsverity_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    const-string v12, "android.security.prevent_intent_redirect"

    const-string v13, "android.security.secure_lockdown"

    const-string v0, "android.security.aapm_api"

    const-string v1, "android.security.afl_api"

    const-string v2, "android.security.asm_restrictions_enabled"

    const-string v3, "android.security.certificate_transparency_configuration"

    const-string v4, "android.security.content_uri_permission_apis"

    const-string v5, "android.security.enable_intent_matching_flags"

    const-string v6, "android.security.enforce_intent_filter_match"

    const-string v7, "android.security.frp_enforcement"

    const-string v8, "android.security.fsverity_api"

    const-string v9, "android.security.keyinfo_unlocked_device_required"

    const-string v10, "android.security.keystore_grant_api"

    const-string v11, "android.security.mgf1_digest_setter_v2"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

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
            "Lcom/android/wifi/x/android/security/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 121
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/wifi/x/android/security/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagFinalized(Ljava/lang/String;)Z
    .registers 5
    .param p1, "flagName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 168
    return v1

    .line 170
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .registers 3

    .line 87
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.security.keyinfo_unlocked_device_required"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .registers 3

    .line 94
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.security.keystore_grant_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .registers 3

    .line 101
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.security.mgf1_digest_setter_v2"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .registers 3

    .line 108
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.security.prevent_intent_redirect"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secureLockdown()Z
    .registers 3

    .line 115
    new-instance v0, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.security.secure_lockdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/wifi/x/android/security/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
