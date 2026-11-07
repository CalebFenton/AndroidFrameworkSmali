.class public Lcom/android/media/projection/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/media/projection/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/media/projection/flags/FeatureFlags;",
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
            "Lcom/android/media/projection/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/media/projection/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashSet;

    const-string v5, "com.android.media.projection.flags.stop_media_projection_on_call_end"

    const-string v6, ""

    const-string v1, "com.android.media.projection.flags.app_content_sharing"

    const-string v2, "com.android.media.projection.flags.media_projection_connected_display"

    const-string v3, "com.android.media.projection.flags.media_projection_connected_display_no_virtual_device"

    const-string v4, "com.android.media.projection.flags.show_stop_dialog_post_call_end"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/media/projection/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/media/projection/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist appContentSharing()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.media.projection.flags.app_content_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    const-string v0, "com.android.media.projection.flags.show_stop_dialog_post_call_end"

    const-string v1, "com.android.media.projection.flags.stop_media_projection_on_call_end"

    const-string v2, "com.android.media.projection.flags.app_content_sharing"

    const-string v3, "com.android.media.projection.flags.media_projection_connected_display"

    const-string v4, "com.android.media.projection.flags.media_projection_connected_display_no_virtual_device"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

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
            "Lcom/android/media/projection/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 68
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/media/projection/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/media/projection/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/media/projection/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-direct {p0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist mediaProjectionConnectedDisplay()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.media.projection.flags.media_projection_connected_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist mediaProjectionConnectedDisplayNoVirtualDevice()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.media.projection.flags.media_projection_connected_display_no_virtual_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist showStopDialogPostCallEnd()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.media.projection.flags.show_stop_dialog_post_call_end"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stopMediaProjectionOnCallEnd()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/media/projection/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.media.projection.flags.stop_media_projection_on_call_end"

    invoke-virtual {p0, v1, v0}, Lcom/android/media/projection/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
