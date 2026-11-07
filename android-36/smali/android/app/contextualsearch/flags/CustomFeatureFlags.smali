.class public Landroid/app/contextualsearch/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/contextualsearch/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
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
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/app/contextualsearch/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashSet;

    const-string v7, "android.app.contextualsearch.flags.self_invocation"

    const-string v8, ""

    const-string v1, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    const-string v2, "android.app.contextualsearch.flags.enable_service"

    const-string v3, "android.app.contextualsearch.flags.enable_token_refresh"

    const-string v4, "android.app.contextualsearch.flags.include_audio_playing_status"

    const-string v5, "android.app.contextualsearch.flags.multi_window_screen_context"

    const-string v6, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist contextualSearchPreventSelfCapture()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableService()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.enable_service"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTokenRefresh()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.enable_token_refresh"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    const-string v5, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    const-string v6, "android.app.contextualsearch.flags.self_invocation"

    const-string v0, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    const-string v1, "android.app.contextualsearch.flags.enable_service"

    const-string v2, "android.app.contextualsearch.flags.enable_token_refresh"

    const-string v3, "android.app.contextualsearch.flags.include_audio_playing_status"

    const-string v4, "android.app.contextualsearch.flags.multi_window_screen_context"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

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
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/app/contextualsearch/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist includeAudioPlayingStatus()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.include_audio_playing_status"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-direct {p0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist multiWindowScreenContext()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.multi_window_screen_context"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reportSecureSurfacesInAssistStructure()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist selfInvocation()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.self_invocation"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
