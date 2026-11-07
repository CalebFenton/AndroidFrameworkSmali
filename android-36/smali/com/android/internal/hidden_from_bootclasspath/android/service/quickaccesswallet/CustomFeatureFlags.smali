.class public Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;",
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "android.service.quickaccesswallet.launch_wallet_via_sysui_callbacks"

    const-string v2, ""

    const-string v3, "android.service.quickaccesswallet.launch_selected_card_from_qs_tile"

    const-string v4, "android.service.quickaccesswallet.launch_wallet_option_on_power_double_tap"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getFlagNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    const-string v0, "android.service.quickaccesswallet.launch_wallet_option_on_power_double_tap"

    const-string v1, "android.service.quickaccesswallet.launch_wallet_via_sysui_callbacks"

    const-string v2, "android.service.quickaccesswallet.launch_selected_card_from_qs_tile"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 54
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist launchSelectedCardFromQsTile()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.quickaccesswallet.launch_selected_card_from_qs_tile"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist launchWalletOptionOnPowerDoubleTap()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.quickaccesswallet.launch_wallet_option_on_power_double_tap"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist launchWalletViaSysuiCallbacks()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.quickaccesswallet.launch_wallet_via_sysui_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
