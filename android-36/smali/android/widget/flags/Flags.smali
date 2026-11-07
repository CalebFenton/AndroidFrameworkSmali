.class public final Landroid/widget/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BIG_PICTURE_STYLE_DISCARD_EMPTY_ICON_BITMAP_DRAWABLES:Ljava/lang/String; = "android.widget.flags.big_picture_style_discard_empty_icon_bitmap_drawables"

.field public static final blacklist FLAG_CALL_STYLE_SET_DATA_ASYNC:Ljava/lang/String; = "android.widget.flags.call_style_set_data_async"

.field public static final blacklist FLAG_CONVERSATION_LAYOUT_USE_MAXIMUM_CHILD_HEIGHT:Ljava/lang/String; = "android.widget.flags.conversation_layout_use_maximum_child_height"

.field public static final blacklist FLAG_CONVERSATION_STYLE_SET_AVATAR_ASYNC:Ljava/lang/String; = "android.widget.flags.conversation_style_set_avatar_async"

.field public static final blacklist FLAG_DROP_NON_EXISTING_MESSAGES:Ljava/lang/String; = "android.widget.flags.drop_non_existing_messages"

.field public static final blacklist FLAG_ENABLE_FADING_VIEW_GROUP:Ljava/lang/String; = "android.widget.flags.enable_fading_view_group"

.field public static final blacklist FLAG_ENABLE_PLATFORM_WIDGET_DIFFERENTIAL_MOTION_FLING:Ljava/lang/String; = "android.widget.flags.enable_platform_widget_differential_motion_fling"

.field public static final blacklist FLAG_FIX_UNBOLDED_TYPEFACE_FOR_NUMBERPICKER:Ljava/lang/String; = "android.widget.flags.fix_unbolded_typeface_for_numberpicker"

.field public static final blacklist FLAG_MESSAGING_CHILD_REQUEST_LAYOUT:Ljava/lang/String; = "android.widget.flags.messaging_child_request_layout"

.field public static final blacklist FLAG_NOTIF_LINEARLAYOUT_OPTIMIZED:Ljava/lang/String; = "android.widget.flags.notif_linearlayout_optimized"

.field public static final blacklist FLAG_TOAST_NO_WEAKREF:Ljava/lang/String; = "android.widget.flags.toast_no_weakref"

.field public static final blacklist FLAG_USE_WEAR_MATERIAL3_UI:Ljava/lang/String; = "android.widget.flags.use_wear_material3_ui"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/widget/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/widget/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist bigPictureStyleDiscardEmptyIconBitmapDrawables()Z
    .registers 1

    .line 36
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->bigPictureStyleDiscardEmptyIconBitmapDrawables()Z

    move-result v0

    return v0
.end method

.method public static greylist callStyleSetDataAsync()Z
    .registers 1

    .line 43
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->callStyleSetDataAsync()Z

    move-result v0

    return v0
.end method

.method public static greylist conversationLayoutUseMaximumChildHeight()Z
    .registers 1

    .line 50
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->conversationLayoutUseMaximumChildHeight()Z

    move-result v0

    return v0
.end method

.method public static greylist conversationStyleSetAvatarAsync()Z
    .registers 1

    .line 57
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    return v0
.end method

.method public static greylist dropNonExistingMessages()Z
    .registers 1

    .line 64
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->dropNonExistingMessages()Z

    move-result v0

    return v0
.end method

.method public static greylist enableFadingViewGroup()Z
    .registers 1

    .line 71
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->enableFadingViewGroup()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePlatformWidgetDifferentialMotionFling()Z
    .registers 1

    .line 78
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->enablePlatformWidgetDifferentialMotionFling()Z

    move-result v0

    return v0
.end method

.method public static greylist fixUnboldedTypefaceForNumberpicker()Z
    .registers 1

    .line 85
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->fixUnboldedTypefaceForNumberpicker()Z

    move-result v0

    return v0
.end method

.method public static greylist messagingChildRequestLayout()Z
    .registers 1

    .line 92
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->messagingChildRequestLayout()Z

    move-result v0

    return v0
.end method

.method public static greylist notifLinearlayoutOptimized()Z
    .registers 1

    .line 99
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->notifLinearlayoutOptimized()Z

    move-result v0

    return v0
.end method

.method public static greylist toastNoWeakref()Z
    .registers 1

    .line 106
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->toastNoWeakref()Z

    move-result v0

    return v0
.end method

.method public static greylist useWearMaterial3Ui()Z
    .registers 1

    .line 113
    sget-object v0, Landroid/widget/flags/Flags;->FEATURE_FLAGS:Landroid/widget/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/widget/flags/FeatureFlags;->useWearMaterial3Ui()Z

    move-result v0

    return v0
.end method
