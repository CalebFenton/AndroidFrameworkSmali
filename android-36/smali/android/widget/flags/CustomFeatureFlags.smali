.class public Landroid/widget/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/widget/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/widget/flags/FeatureFlags;",
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
            "Landroid/widget/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/widget/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    const-string v12, "android.widget.flags.use_wear_material3_ui"

    const-string v13, ""

    const-string v1, "android.widget.flags.big_picture_style_discard_empty_icon_bitmap_drawables"

    const-string v2, "android.widget.flags.call_style_set_data_async"

    const-string v3, "android.widget.flags.conversation_layout_use_maximum_child_height"

    const-string v4, "android.widget.flags.conversation_style_set_avatar_async"

    const-string v5, "android.widget.flags.drop_non_existing_messages"

    const-string v6, "android.widget.flags.enable_fading_view_group"

    const-string v7, "android.widget.flags.enable_platform_widget_differential_motion_fling"

    const-string v8, "android.widget.flags.fix_unbolded_typeface_for_numberpicker"

    const-string v9, "android.widget.flags.messaging_child_request_layout"

    const-string v10, "android.widget.flags.notif_linearlayout_optimized"

    const-string v11, "android.widget.flags.toast_no_weakref"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Landroid/widget/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

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
.method public greylist bigPictureStyleDiscardEmptyIconBitmapDrawables()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.widget.flags.big_picture_style_discard_empty_icon_bitmap_drawables"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist callStyleSetDataAsync()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.widget.flags.call_style_set_data_async"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist conversationLayoutUseMaximumChildHeight()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.widget.flags.conversation_layout_use_maximum_child_height"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist conversationStyleSetAvatarAsync()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.widget.flags.conversation_style_set_avatar_async"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dropNonExistingMessages()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.widget.flags.drop_non_existing_messages"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableFadingViewGroup()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.widget.flags.enable_fading_view_group"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePlatformWidgetDifferentialMotionFling()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.widget.flags.enable_platform_widget_differential_motion_fling"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixUnboldedTypefaceForNumberpicker()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.widget.flags.fix_unbolded_typeface_for_numberpicker"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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
    const-string v10, "android.widget.flags.toast_no_weakref"

    const-string v11, "android.widget.flags.use_wear_material3_ui"

    const-string v0, "android.widget.flags.big_picture_style_discard_empty_icon_bitmap_drawables"

    const-string v1, "android.widget.flags.call_style_set_data_async"

    const-string v2, "android.widget.flags.conversation_layout_use_maximum_child_height"

    const-string v3, "android.widget.flags.conversation_style_set_avatar_async"

    const-string v4, "android.widget.flags.drop_non_existing_messages"

    const-string v5, "android.widget.flags.enable_fading_view_group"

    const-string v6, "android.widget.flags.enable_platform_widget_differential_motion_fling"

    const-string v7, "android.widget.flags.fix_unbolded_typeface_for_numberpicker"

    const-string v8, "android.widget.flags.messaging_child_request_layout"

    const-string v9, "android.widget.flags.notif_linearlayout_optimized"

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
            "Landroid/widget/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 117
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/widget/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/widget/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Landroid/widget/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    invoke-direct {p0}, Landroid/widget/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

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

.method public greylist messagingChildRequestLayout()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.widget.flags.messaging_child_request_layout"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist notifLinearlayoutOptimized()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.widget.flags.notif_linearlayout_optimized"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toastNoWeakref()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.widget.flags.toast_no_weakref"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useWearMaterial3Ui()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/widget/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.widget.flags.use_wear_material3_ui"

    invoke-virtual {p0, v1, v0}, Landroid/widget/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
