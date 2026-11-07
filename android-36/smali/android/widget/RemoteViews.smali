.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$SetIntTagAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$RemoteCollectionCache;,
        Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RemoteCollectionItems;,
        Landroid/widget/RemoteViews$PendingResources;,
        Landroid/widget/RemoteViews$MethodKey;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$ApplicationInfoCache;,
        Landroid/widget/RemoteViews$HierarchyRootData;,
        Landroid/widget/RemoteViews$SetDrawInstructionAction;,
        Landroid/widget/RemoteViews$DrawInstructions;,
        Landroid/widget/RemoteViews$SetOnClickResponse;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$SetRippleDrawableColor;,
        Landroid/widget/RemoteViews$RemoveFromParentAction;,
        Landroid/widget/RemoteViews$ResourceReflectionAction;,
        Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;,
        Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;,
        Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;,
        Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;,
        Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;,
        Landroid/widget/RemoteViews$NightModeReflectionAction;,
        Landroid/widget/RemoteViews$AttributeReflectionAction;,
        Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;,
        Landroid/widget/RemoteViews$RemoteResponse;,
        Landroid/widget/RemoteViews$BaseReflectionAction;,
        Landroid/widget/RemoteViews$InteractionHandler;,
        Landroid/widget/RemoteViews$ActionApplyParams;,
        Landroid/widget/RemoteViews$ColorResources;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$InvalidProtoException;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$RemoteViewOutlineProvider;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$ApplyFlags;,
        Landroid/widget/RemoteViews$ValueType;,
        Landroid/widget/RemoteViews$MarginType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final blacklist ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

.field private static final blacklist ATTRIBUTE_REFLECTION_ACTION_TAG:I = 0x20

.field private static final greylist-max-o BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field private static final blacklist COMPLEX_UNIT_DIMENSION_REFLECTION_ACTION_TAG:I = 0x19

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

.field public static final whitelist EXTRA_CHECKED:Ljava/lang/String; = "android.widget.extra.CHECKED"

.field static final greylist-max-o EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field static final blacklist EXTRA_REMOTEADAPTER_ON_LIGHT_BACKGROUND:Ljava/lang/String; = "remoteAdapterOnLightBackground"

.field public static final whitelist EXTRA_SHARED_ELEMENT_BOUNDS:Ljava/lang/String; = "android.widget.extra.SHARED_ELEMENT_BOUNDS"

.field static final blacklist FLAG_MASK_TO_PROPAGATE:I = 0x6

.field public static final blacklist FLAG_REAPPLY_DISALLOWED:I = 0x1

.field public static final blacklist FLAG_USE_LIGHT_BACKGROUND_LAYOUT:I = 0x4

.field public static final blacklist FLAG_WIDGET_IS_COLLECTION_CHILD:I = 0x2

.field private static final blacklist INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final greylist-max-o LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field public static final whitelist MARGIN_BOTTOM:I = 0x3

.field public static final whitelist MARGIN_END:I = 0x5

.field public static final whitelist MARGIN_LEFT:I = 0x0

.field public static final whitelist MARGIN_RIGHT:I = 0x2

.field public static final whitelist MARGIN_START:I = 0x4

.field public static final whitelist MARGIN_TOP:I = 0x1

.field private static final blacklist MAX_ADAPTER_CONVERSION_WAITING_TIME_MS:I = 0x4e20

.field private static final blacklist MAX_INIT_VIEW_COUNT:I = 0x10

.field private static final greylist-max-o MAX_NESTED_VIEWS:I = 0xa

.field private static final blacklist MAX_SINGLE_PARCEL_SIZE:I = 0xc3500

.field private static final greylist-max-o MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final blacklist MODE_HAS_SIZED_REMOTEVIEWS:I = 0x2

.field private static final greylist-max-o MODE_NORMAL:I = 0x0

.field private static final blacklist NIGHT_MODE_REFLECTION_ACTION_TAG:I = 0x1e

.field private static final greylist-max-o REFLECTION_ACTION_TAG:I = 0x2

.field private static final blacklist REMOVE_FROM_PARENT_ACTION_TAG:I = 0x17

.field private static final blacklist RESOURCE_REFLECTION_ACTION_TAG:I = 0x18

.field private static final blacklist SET_COMPOUND_BUTTON_CHECKED_TAG:I = 0x1a

.field private static final greylist-max-o SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final blacklist SET_DRAW_INSTRUCTION_TAG:I = 0x23

.field private static final greylist-max-o SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final blacklist SET_INT_TAG_TAG:I = 0x16

.field private static final blacklist SET_ON_CHECKED_CHANGE_RESPONSE_TAG:I = 0x1d

.field private static final blacklist SET_ON_CLICK_RESPONSE_TAG:I = 0x1

.field private static final blacklist SET_ON_STYLUS_HANDWRITING_RESPONSE_TAG:I = 0x22

.field private static final greylist-max-o SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final blacklist SET_RADIO_GROUP_CHECKED:I = 0x1b

.field private static final blacklist SET_REMOTE_ADAPTER_TAG:I = 0x21

.field private static final blacklist SET_REMOTE_COLLECTION_ITEMS_ADAPTER_TAG:I = 0x1f

.field private static final greylist-max-o SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final greylist-max-o SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final blacklist SET_RIPPLE_DRAWABLE_COLOR_TAG:I = 0x15

.field private static final blacklist SET_VIEW_OUTLINE_RADIUS_TAG:I = 0x1c

.field private static final greylist-max-o TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final greylist-max-o TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field static final blacklist VALUE_TYPE_ATTRIBUTE:I = 0x4

.field static final blacklist VALUE_TYPE_COMPLEX_UNIT:I = 0x2

.field static final blacklist VALUE_TYPE_RAW:I = 0x1

.field static final blacklist VALUE_TYPE_RESOURCE:I = 0x3

.field private static final greylist-max-o VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final greylist-max-o VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final greylist-max-o VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final greylist-max-o VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final greylist-max-o sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final greylist-max-o sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mApplication:Landroid/content/pm/ApplicationInfo;

.field private blacklist mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field private blacklist mApplyFlags:I

.field private greylist mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private greylist-max-o mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

.field private blacklist mFillInIntent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDrawInstructions:Z

.field private blacklist mIdealSize:Landroid/util/SizeF;

.field private greylist-max-o mIsRoot:Z

.field private greylist-max-o mLandscape:Landroid/widget/RemoteViews;

.field private greylist mLayoutId:I

.field private blacklist mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

.field private blacklist mLightBackgroundLayoutId:I

.field private blacklist mPendingIntentTemplate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mPortrait:Landroid/widget/RemoteViews;

.field private blacklist mProviderInstanceId:J

.field private blacklist mSizedRemoteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$NRekdIqmiueP5fwUC0YmWtpR0E8(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createViewGroupActionAddFromProto$5(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hmpt_woduFOUM0BFkF0bVOM0dPI(Landroid/widget/RemoteViews;Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createSetDrawInstructionActionFromProto$6(Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mszp-LmKWdwRqMgeBaQNf3wjxew(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createFromBitmapReflectionActionFromProto$4(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mvda3OcrZ6Sjla5KHLRsNS-C8vg(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createSetRemoteCollectionItemListAdapterActionFromProto$2(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I
    .registers 1

    iget p0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBitmapMemoryUsedByActions(Landroid/widget/RemoteViews;)I
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getBitmapMemoryUsedByActions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParameterType(I)Ljava/lang/Class;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getParameterType(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStableId(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getStableId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhasStableId(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->hasStableId(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetStableId(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->setStableId(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 352
    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    .line 359
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    .line 484
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    .line 488
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 493
    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    .line 792
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    .line 9035
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 6187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6187
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 5
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .line 6026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6027
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6028
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6029
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 6030
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6261
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 6262
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I

    .line 6279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6280
    const/16 v0, 0xa

    if-le p4, v0, :cond_49

    .line 6281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_41

    goto :goto_49

    .line 6282
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6284
    :cond_49
    :goto_49
    add-int/2addr p4, v1

    .line 6286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6288
    .local v0, "mode":I
    if-nez p2, :cond_65

    .line 6290
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6292
    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6293
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    goto :goto_68

    .line 6295
    :cond_65
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6298
    :goto_68
    if-nez v0, :cond_9d

    .line 6299
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_7b

    goto :goto_84

    :cond_7b
    sget-object v1, Landroid/util/SizeF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/SizeF;

    :goto_84
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6305
    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_117

    .line 6306
    :cond_9d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e5

    .line 6307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6308
    .local v1, "numViews":I
    const/16 v2, 0x10

    if-gt v1, v2, :cond_dd

    .line 6312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6313
    .local v2, "remoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ae
    if-ge v3, v1, :cond_c1

    .line 6314
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v5

    invoke-direct {v4, p1, v5, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 6315
    .local v4, "view":Landroid/widget/RemoteViews;
    iget-object p3, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6316
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6313
    .end local v4    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 6318
    .end local v3    # "i":I
    :cond_c1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    .line 6319
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 6320
    .local v3, "smallestView":Landroid/widget/RemoteViews;
    iget-object v4, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6321
    iget v4, v3, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6322
    iget v4, v3, Landroid/widget/RemoteViews;->mViewId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6323
    iget v4, v3, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6324
    .end local v1    # "numViews":I
    .end local v2    # "remoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v3    # "smallestView":Landroid/widget/RemoteViews;
    goto :goto_117

    .line 6309
    .restart local v1    # "numViews":I
    :cond_dd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many views in mapping from size to RemoteViews."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6326
    .end local v1    # "numViews":I
    :cond_e5
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6327
    new-instance v1, Landroid/widget/RemoteViews;

    .line 6328
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p1, v2, v3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6329
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v1, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6330
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6331
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6332
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6334
    :goto_117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 6335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6336
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6339
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_130

    .line 6340
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6342
    :cond_130
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews$DrawInstructions;)V
    .registers 6
    .param p1, "drawInstructions"    # Landroid/widget/RemoteViews$DrawInstructions;

    .line 6272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6274
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6275
    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6276
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "src"    # Landroid/widget/RemoteViews;

    .line 6178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6179
    invoke-direct {p0, p1, v1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6180
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .line 6070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6071
    if-eqz p1, :cond_67

    if-eqz p2, :cond_67

    .line 6074
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 6078
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6079
    iget v0, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6080
    iget v0, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6081
    iget v0, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6083
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6084
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6086
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_57

    .line 6087
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_59

    :cond_57
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_59
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6089
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6090
    return-void

    .line 6075
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6072
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .line 6002
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6003
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I

    .line 6013
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6014
    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6015
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/SizeF;",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 6107
    .local p1, "remoteViews":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/SizeF;Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 398
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 407
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 429
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 436
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 444
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 446
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 459
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6108
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 6111
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_8a

    .line 6114
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_56

    .line 6117
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 6118
    .local v0, "single":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, v0}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6119
    return-void

    .line 6121
    .end local v0    # "single":Landroid/widget/RemoteViews;
    :cond_56
    nop

    .line 6122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 6127
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6121
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6130
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6131
    .local v0, "smallestView":Landroid/widget/RemoteViews;
    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6132
    iget v1, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6133
    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6134
    iget v1, v0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6136
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6137
    return-void

    .line 6112
    .end local v0    # "smallestView":Landroid/widget/RemoteViews;
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many RemoteViews in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6109
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of RemoteViews cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 4
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .line 6547
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v0

    if-nez v0, :cond_17

    .line 6552
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 6553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 6555
    :cond_11
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6556
    return-void

    .line 6548
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate layouts for orientation or size cannot be modified. Instead, fully configure each layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directParent"    # Landroid/view/ViewGroup;
    .param p3, "rootParent"    # Landroid/view/ViewGroup;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8152
    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8153
    .local v2, "rvToApply":Landroid/widget/RemoteViews;
    iget v4, p5, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    iget-object v5, p5, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "directParent":Landroid/view/ViewGroup;
    .local v1, "context":Landroid/content/Context;
    .local v3, "directParent":Landroid/view/ViewGroup;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p1

    .line 8155
    .local p1, "result":Landroid/view/View;
    invoke-direct {v2, p1, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8156
    return-object p1
.end method

.method private static blacklist checkContainsKeys(Landroid/util/LongSparseArray;[J)V
    .registers 7
    .param p1, "requiredFields"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "*>;[J)V"
        }
    .end annotation

    .line 10522
    .local p0, "array":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2c

    aget-wide v2, p1, v1

    .line 10523
    .local v2, "requiredField":J
    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_f

    .line 10522
    .end local v2    # "requiredField":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10524
    .restart local v2    # "requiredField":J
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteViews proto missing field: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10525
    invoke-static {v2, v3}, Landroid/util/proto/ProtoStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10529
    .end local v2    # "requiredField":J
    :cond_2c
    return-void
.end method

.method private static blacklist checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$InvalidProtoException;
        }
    .end annotation

    .line 10516
    if-eqz p0, :cond_3

    .line 10519
    return-void

    .line 10517
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews$InvalidProtoException;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkValidResource(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "id"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10511
    if-eqz p0, :cond_3

    .line 10512
    return-void

    .line 10511
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6458
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 6459
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6460
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6461
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6462
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6463
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6464
    return-void
.end method

.method private blacklist configureDescendantsAsChildren()V
    .registers 4

    .line 6473
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6475
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    .line 6476
    .local v0, "rootData":Landroid/widget/RemoteViews$HierarchyRootData;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 6477
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 6478
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    invoke-direct {v2, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6479
    .end local v2    # "remoteView":Landroid/widget/RemoteViews;
    goto :goto_1a

    :cond_2a
    goto :goto_56

    .line 6480
    :cond_2b
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 6481
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6482
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_56

    .line 6484
    :cond_3c
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_56

    .line 6485
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 6486
    .local v2, "action":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews$Action;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6487
    .end local v2    # "action":Landroid/widget/RemoteViews$Action;
    goto :goto_46

    .line 6490
    :cond_56
    :goto_56
    return-void
.end method

.method private static blacklist createActionFromProto(Landroid/widget/RemoteViews;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 6
    .param p0, "rv"    # Landroid/widget/RemoteViews;
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10450
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    .line 10451
    .local v0, "actionFieldId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 10453
    return-object v2

    .line 10455
    :cond_9
    packed-switch v0, :pswitch_data_9e

    .line 10504
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading Action proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10505
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10499
    :pswitch_29
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v1

    if-nez v1, :cond_30

    .line 10500
    return-object v2

    .line 10502
    :cond_30
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createSetDrawInstructionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10497
    :pswitch_35
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewPaddingAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10495
    :pswitch_3a
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10493
    :pswitch_3f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createViewGroupActionAddFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10491
    :pswitch_44
    invoke-static {p1}, Landroid/widget/RemoteViews$TextViewSizeAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10489
    :pswitch_49
    invoke-static {p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10487
    :pswitch_4e
    invoke-static {p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10485
    :pswitch_53
    invoke-static {p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10483
    :pswitch_58
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createSetRemoteCollectionItemListAdapterActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10481
    :pswitch_5d
    invoke-static {p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10479
    :pswitch_62
    invoke-static {p1}, Landroid/widget/RemoteViews$SetIntTagAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10477
    :pswitch_67
    invoke-static {p1}, Landroid/widget/RemoteViews$SetEmptyView;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10475
    :pswitch_6c
    invoke-static {p1}, Landroid/widget/RemoteViews$SetDrawableTint;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10473
    :pswitch_71
    invoke-static {p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10471
    :pswitch_76
    invoke-static {p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10469
    :pswitch_7b
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10467
    :pswitch_80
    invoke-static {p1}, Landroid/widget/RemoteViews$ReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10465
    :pswitch_85
    invoke-static {p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10463
    :pswitch_8a
    invoke-static {p1}, Landroid/widget/RemoteViews$LayoutParamAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10461
    :pswitch_8f
    invoke-static {p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10459
    :pswitch_94
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createFromBitmapReflectionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    .line 10457
    :pswitch_99
    invoke-static {p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v1

    return-object v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_29
    .end packed-switch
.end method

.method private static blacklist createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10599
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 10600
    .local v0, "token":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 10601
    .local v2, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10602
    return-object v2
.end method

.method private static blacklist createColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;
    .registers 6
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10591
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 10592
    .local v0, "token":J
    invoke-static {p0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 10593
    .local v2, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10594
    return-object v2
.end method

.method private blacklist createFromBitmapReflectionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 8
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2633
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 2635
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2636
    .local v1, "token":J
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_67

    .line 2637
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7a

    .line 2651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2652
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2651
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2647
    :pswitch_39
    nop

    .line 2648
    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2647
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2649
    goto :goto_e

    .line 2643
    :pswitch_4b
    nop

    .line 2644
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 2643
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2645
    goto :goto_e

    .line 2639
    :pswitch_59
    nop

    .line 2640
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 2639
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2641
    goto :goto_e

    .line 2655
    :cond_67
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2657
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_84

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 2660
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_84
    .array-data 8
        0x10900000001L
        0x10900000002L
    .end array-data
.end method

.method private static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 6
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10229
    new-instance v0, Landroid/widget/RemoteViews$3;

    invoke-direct {v0}, Landroid/widget/RemoteViews$3;-><init>()V

    .line 10250
    .local v0, "ref":Landroid/widget/RemoteViews$3;
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_150

    .line 10251
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_15e

    .line 10326
    const-string v1, "RemoteViews"

    goto/16 :goto_134

    .line 10259
    :pswitch_17
    const-wide v1, 0x10500000011L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    .line 10260
    goto :goto_5

    .line 10283
    :pswitch_27
    const-wide v1, 0x20b00000010L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10284
    .local v1, "actionsToken":J
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    invoke-static {v3, p0}, Landroid/widget/RemoteViews;->createActionFromProto(Landroid/widget/RemoteViews;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    .line 10285
    .local v3, "action":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews$Action;>;"
    if-eqz v3, :cond_3d

    .line 10286
    iget-object v4, v0, Landroid/widget/RemoteViews$3;->mActions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10288
    :cond_3d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10289
    goto :goto_5

    .line 10312
    .end local v1    # "actionsToken":J
    .end local v3    # "action":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews$Action;>;"
    :pswitch_41
    const-wide v1, 0x10b0000000fL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10314
    .local v1, "collectionToken":J
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    .line 10315
    invoke-direct {v3, p0}, Landroid/widget/RemoteViews;->populateRemoteCollectionCacheFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    .line 10316
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10317
    goto :goto_5

    .line 10307
    .end local v1    # "collectionToken":J
    :pswitch_56
    const-wide v1, 0x20c0000000eL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 10308
    .local v1, "src":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10309
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, v2}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    .line 10310
    goto :goto_5

    .line 10322
    .end local v1    # "src":[B
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_6d
    const-wide v1, 0x1080000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    .line 10324
    goto :goto_5

    .line 10319
    :pswitch_79
    const-wide v1, 0x1080000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$3;->mIsRoot:Z

    .line 10320
    goto :goto_5

    .line 10296
    :pswitch_85
    const-wide v1, 0x10b0000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10298
    .local v1, "landscapeToken":J
    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10299
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10300
    goto/16 :goto_5

    .line 10302
    .end local v1    # "landscapeToken":J
    :pswitch_99
    const-wide v1, 0x10b0000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10303
    .local v1, "portraitToken":J
    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10304
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10305
    goto/16 :goto_5

    .line 10291
    .end local v1    # "portraitToken":J
    :pswitch_ad
    const-wide v1, 0x20b00000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10292
    .local v1, "sizedToken":J
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10293
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10294
    goto/16 :goto_5

    .line 10280
    .end local v1    # "sizedToken":J
    :pswitch_c4
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    .line 10281
    goto/16 :goto_5

    .line 10277
    :pswitch_d2
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$3;->mApplyFlags:I

    .line 10278
    goto/16 :goto_5

    .line 10262
    :pswitch_df
    const-wide v1, 0x10b00000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10263
    .local v1, "idealSizeToken":J
    invoke-static {p0}, Landroid/widget/RemoteViews;->createSizeFFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/util/SizeF;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mIdealSize:Landroid/util/SizeF;

    .line 10264
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10265
    goto/16 :goto_5

    .line 10274
    .end local v1    # "idealSizeToken":J
    :pswitch_f3
    const-wide v1, 0x10900000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    .line 10275
    goto/16 :goto_5

    .line 10270
    :pswitch_100
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    .line 10272
    goto/16 :goto_5

    .line 10267
    :pswitch_10d
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    .line 10268
    goto/16 :goto_5

    .line 10256
    :pswitch_11a
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    .line 10257
    goto/16 :goto_5

    .line 10253
    :pswitch_127
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$3;->mMode:I

    .line 10254
    goto/16 :goto_5

    .line 10326
    :goto_134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10327
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10326
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14e} :catch_157

    goto/16 :goto_5

    .line 10332
    :cond_150
    nop

    .line 10334
    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;-><init>(Landroid/widget/RemoteViews$3;)V

    return-object v1

    .line 10330
    :catch_157
    move-exception v1

    .line 10331
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_100
        :pswitch_f3
        :pswitch_df
        :pswitch_d2
        :pswitch_c4
        :pswitch_ad
        :pswitch_99
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_56
        :pswitch_41
        :pswitch_27
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist createIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;
    .registers 7
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .param p1, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J)",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10576
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 10577
    .local v0, "token":J
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createIconFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/function/Function;

    move-result-object v2

    .line 10578
    .local v2, "icon":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;>;"
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10579
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Function;)V

    return-object v3
.end method

.method private static blacklist createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3
    .param p0, "src"    # Landroid/widget/RemoteViews;
    .param p1, "hierarchyRoot"    # Landroid/widget/RemoteViews;

    .line 6191
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0}, Landroid/widget/RemoteViews;-><init>()V

    .line 6192
    .local v0, "child":Landroid/widget/RemoteViews;
    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6193
    return-object v0
.end method

.method public static blacklist createPreviewFromProto(Landroid/content/Context;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10221
    invoke-static {p1}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private blacklist createSetDrawInstructionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 7
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5976
    .local v0, "instructions":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v1, 0x10b00000016L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5977
    .local v1, "token":J
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    .line 5978
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_50

    .line 5984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5985
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5984
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5980
    :pswitch_39
    nop

    .line 5981
    const-wide v3, 0x20c00000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    .line 5980
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5982
    goto :goto_e

    .line 5988
    :cond_47
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5990
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda5;-><init>(Landroid/widget/RemoteViews;Ljava/util/List;)V

    return-object v3

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch
.end method

.method private blacklist createSetRemoteCollectionItemListAdapterActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 10
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1421
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1423
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b0000000eL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1425
    .local v1, "token":J
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    .line 1426
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1442
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1441
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1434
    :pswitch_39
    const-wide v3, 0x10b00000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 1436
    .local v5, "itemsToken":J
    nop

    .line 1437
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 1436
    invoke-virtual {v0, v3, v4, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1438
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1439
    goto :goto_e

    .line 1428
    .end local v5    # "itemsToken":J
    :pswitch_4e
    nop

    .line 1429
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 1428
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1432
    goto :goto_e

    .line 1445
    :cond_5c
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1447
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_76

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 1451
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda6;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object v3

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_39
    .end packed-switch

    :array_76
    .array-data 8
        0x10900000001L
        0x10b00000002L
    .end array-data
.end method

.method private static blacklist createSizeFFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/util/SizeF;
    .registers 5
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10548
    const/4 v0, 0x0

    .line 10549
    .local v0, "width":F
    const/4 v1, 0x0

    .line 10550
    .local v1, "height":F
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 10551
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 10559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading SizeF proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10560
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10559
    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10556
    :pswitch_2d
    const-wide v2, 0x10200000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v1

    .line 10557
    goto :goto_2

    .line 10553
    :pswitch_37
    const-wide v2, 0x10200000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 10554
    goto :goto_2

    .line 10564
    :cond_41
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method private blacklist createViewGroupActionAddFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 10
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4273
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 4275
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000013L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 4276
    .local v1, "token":J
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_80

    .line 4277
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_92

    .line 4297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4298
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4297
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4293
    :pswitch_39
    nop

    .line 4294
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4293
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4295
    goto :goto_e

    .line 4289
    :pswitch_4b
    nop

    .line 4290
    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4289
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4291
    goto :goto_e

    .line 4283
    :pswitch_5d
    const-wide v3, 0x10b00000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 4284
    .local v5, "nvToken":J
    nop

    .line 4285
    invoke-static {p1}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 4284
    invoke-virtual {v0, v3, v4, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4286
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4287
    goto :goto_e

    .line 4279
    .end local v5    # "nvToken":J
    :pswitch_72
    nop

    .line 4280
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 4279
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4281
    goto :goto_e

    .line 4301
    :cond_80
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4303
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_9e

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4306
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object v3

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_72
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_9e
    .array-data 8
        0x10900000001L
        0x10b00000002L
    .end array-data
.end method

.method private blacklist finalizeViewRecycling(Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 4003
    invoke-static {p1}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 4004
    .local v0, "nextChild":I
    if-ltz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 4005
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4008
    :cond_14
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4010
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 4011
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4012
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_34

    .line 4013
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 4010
    .end local v2    # "child":Landroid/view/View;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4016
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

.method private blacklist findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 9
    .param p1, "widgetSize"    # Landroid/util/SizeF;

    .line 8032
    const/4 v0, 0x0

    .line 8033
    .local v0, "bestFit":Landroid/widget/RemoteViews;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8034
    .local v1, "bestSqDist":F
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 8035
    .local v3, "layout":Landroid/widget/RemoteViews;
    invoke-direct {v3}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v4

    .line 8036
    .local v4, "layoutSize":Landroid/util/SizeF;
    if-eqz v4, :cond_35

    .line 8040
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 8041
    if-nez v0, :cond_2a

    .line 8042
    move-object v0, v3

    .line 8043
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v1

    goto :goto_34

    .line 8045
    :cond_2a
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v5

    .line 8046
    .local v5, "newSqDist":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_34

    .line 8047
    move-object v0, v3

    .line 8048
    move v1, v5

    .line 8052
    .end local v3    # "layout":Landroid/widget/RemoteViews;
    .end local v4    # "layoutSize":Landroid/util/SizeF;
    .end local v5    # "newSqDist":F
    :cond_34
    :goto_34
    goto :goto_a

    .line 8037
    .restart local v3    # "layout":Landroid/widget/RemoteViews;
    .restart local v4    # "layoutSize":Landroid/util/SizeF;
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Expected RemoteViews to have ideal size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8053
    .end local v3    # "layout":Landroid/widget/RemoteViews;
    .end local v4    # "layoutSize":Landroid/util/SizeF;
    :cond_3d
    if-nez v0, :cond_5c

    .line 8054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find a RemoteViews fitting the current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8055
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    .line 8057
    :cond_5c
    return-object v0
.end method

.method private blacklist findSmallestRemoteView()Landroid/widget/RemoteViews;
    .registers 3

    .line 6058
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private static blacklist fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .registers 8
    .param p0, "sizeLayout"    # Landroid/util/SizeF;
    .param p1, "sizeWidget"    # Landroid/util/SizeF;

    .line 8026
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2c

    .line 8027
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 8026
    :goto_2d
    return v0
.end method

.method private greylist-max-o getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 6355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6356
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_d6

    .line 6416
    :pswitch_7
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6414
    :pswitch_26
    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6412
    :pswitch_2c
    new-instance v1, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6410
    :pswitch_32
    new-instance v1, Landroid/widget/RemoteViews$AttributeReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6408
    :pswitch_38
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6406
    :pswitch_3e
    new-instance v1, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6404
    :pswitch_44
    new-instance v1, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6402
    :pswitch_4a
    new-instance v1, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6400
    :pswitch_50
    new-instance v1, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6398
    :pswitch_56
    new-instance v1, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6396
    :pswitch_5c
    new-instance v1, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6394
    :pswitch_62
    new-instance v1, Landroid/widget/RemoteViews$ResourceReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6392
    :pswitch_68
    new-instance v1, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6390
    :pswitch_6e
    new-instance v1, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6388
    :pswitch_74
    new-instance v1, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6386
    :pswitch_7a
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6384
    :pswitch_80
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6380
    :pswitch_86
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6378
    :pswitch_8c
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6382
    :pswitch_92
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6376
    :pswitch_98
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6374
    :pswitch_9e
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6372
    :pswitch_a4
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6366
    :pswitch_aa
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6370
    :pswitch_b0
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6368
    :pswitch_b6
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 6364
    :pswitch_bc
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V

    return-object v1

    .line 6360
    :pswitch_c4
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6362
    :pswitch_ca
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 6358
    :pswitch_d0
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_ca
        :pswitch_c4
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a4
        :pswitch_7
        :pswitch_9e
        :pswitch_98
        :pswitch_92
        :pswitch_8c
        :pswitch_86
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_80
        :pswitch_7a
        :pswitch_7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_7
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method private static greylist-max-o getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 8996
    if-nez p0, :cond_4

    .line 8997
    const/4 v0, 0x0

    return-object v0

    .line 9001
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 9002
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_4d

    .line 9006
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 9007
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9008
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 9010
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 9012
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_30} :catch_33

    move-object v1, v3

    .line 9015
    .end local v2    # "context":Landroid/content/Context;
    nop

    .line 9018
    :cond_32
    return-object v1

    .line 9013
    :catch_33
    move-exception v2

    .line 9014
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9003
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/LongSparseArray<",
            "*>;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10533
    .local p1, "array":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<*>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10534
    .local v0, "resName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 10535
    .local v1, "id":I
    const-string v2, "Invalid id"

    invoke-static {v1, v2, v0}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10536
    return v1
.end method

.method private static blacklist getAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/SparseArray<",
            "*>;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10541
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10542
    .local v0, "resName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 10543
    .local v1, "id":I
    const-string v2, "Invalid id"

    invoke-static {v1, v2, v0}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10544
    return v1
.end method

.method private blacklist getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9505
    .local p1, "intSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9506
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 9507
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-direct {v1, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    .line 9508
    .end local v1    # "views":Landroid/widget/RemoteViews;
    goto :goto_c

    :cond_1c
    goto :goto_6a

    .line 9509
    :cond_1d
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9510
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    .line 9511
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_6a

    .line 9512
    :cond_2e
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    .line 9513
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    .line 9514
    .local v1, "action":Landroid/widget/RemoteViews$Action;
    instance-of v2, v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v2, :cond_59

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .local v2, "vgaa":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 9516
    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_69

    .line 9517
    .end local v2    # "vgaa":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    :cond_59
    instance-of v2, v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    if-eqz v2, :cond_69

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$BitmapReflectionAction;

    .line 9518
    .local v2, "bitmapAction":Landroid/widget/RemoteViews$BitmapReflectionAction;
    iget v3, v2, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9520
    .end local v1    # "action":Landroid/widget/RemoteViews$Action;
    .end local v2    # "bitmapAction":Landroid/widget/RemoteViews$BitmapReflectionAction;
    :cond_69
    :goto_69
    goto :goto_38

    .line 9523
    :cond_6a
    :goto_6a
    return-object p1
.end method

.method private blacklist getBitmapMemoryUsedByActions()I
    .registers 7

    .line 9491
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 9492
    .local v0, "bitmapIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 9493
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9494
    .local v3, "bitmapId":I
    iget-object v4, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v4, v3}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 9495
    .local v4, "currentBitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_27

    .line 9496
    goto :goto_e

    .line 9498
    :cond_27
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 9499
    .end local v3    # "bitmapId":I
    .end local v4    # "currentBitmap":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 9501
    :cond_2d
    return v1
.end method

.method private blacklist getChildId(Landroid/widget/RemoteViews;)I
    .registers 5
    .param p1, "child"    # Landroid/widget/RemoteViews;

    .line 10062
    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    .line 10063
    return v0

    .line 10065
    :cond_4
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 10066
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 10067
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1e

    .line 10068
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 10066
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 10072
    .end local v1    # "i":I
    :cond_21
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 10073
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_2d

    .line 10074
    const/4 v0, 0x1

    return v0

    .line 10075
    :cond_2d
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_33

    .line 10076
    const/4 v0, 0x2

    return v0

    .line 10080
    :cond_33
    return v0
.end method

.method private blacklist getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 8618
    const-string v0, "RemoteViews"

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_8b

    .line 8619
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_23

    .line 8620
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 8621
    return-object p1

    .line 8624
    :cond_23
    :try_start_23
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_25} :catch_6a

    .line 8628
    .local v1, "sanitizedApplication":Landroid/content/pm/ApplicationInfo;
    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8629
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 8628
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3a} :catch_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_3a} :catch_6a

    move-object v1, v2

    .line 8632
    goto :goto_57

    .line 8630
    :catch_3c
    move-exception v2

    .line 8631
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch appInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8634
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_57
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    .line 8638
    .local v2, "applicationContext":Landroid/content/Context;
    nop

    .line 8639
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 8638
    invoke-virtual {v2, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_69} :catch_6a

    return-object v0

    .line 8640
    .end local v1    # "sanitizedApplication":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "applicationContext":Landroid/content/Context;
    :catch_6a
    move-exception v1

    .line 8641
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8645
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8b
    return-object p1
.end method

.method private blacklist getFillInIntent()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 8658
    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 8659
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    .line 8661
    :cond_b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    return-object v0
.end method

.method private blacklist getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 6

    .line 10122
    new-instance v0, Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    return-object v0
.end method

.method private blacklist getIdealSize()Landroid/util/SizeF;
    .registers 2

    .line 6046
    iget-object v0, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-object v0
.end method

.method private blacklist getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p4, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p5, "size"    # Landroid/util/SizeF;
    .param p6, "result"    # Landroid/view/View;

    .line 8289
    new-instance v0, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object/from16 v10, p5

    invoke-virtual {p0, p1, v10}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    return-object v0
.end method

.method private static greylist-max-o getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2140
    .local p2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2142
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2144
    :try_start_7
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2145
    sget-object v2, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    sget-object v3, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_143

    .line 2147
    .local v2, "result":Landroid/widget/RemoteViews$MethodArgs;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_c1

    .line 2150
    if-nez p2, :cond_23

    .line 2151
    :try_start_1c
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "method":Ljava/lang/reflect/Method;
    goto :goto_2b

    .line 2153
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_23
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p2, v5, v4

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2155
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :goto_2b
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2161
    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    .line 2162
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    .line 2163
    const-class v6, Landroid/view/RemotableViewMethod;

    .line 2164
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/view/RemotableViewMethod;

    invoke-interface {v6}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_51} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_51} :catch_90
    .catchall {:try_start_1c .. :try_end_51} :catchall_143

    .line 2168
    nop

    .line 2170
    :try_start_52
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    .line 2171
    .local v6, "key":Landroid/widget/RemoteViews$MethodKey;
    invoke-virtual {v6, v0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2172
    sget-object v7, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_143

    goto :goto_c1

    .line 2156
    .end local v6    # "key":Landroid/widget/RemoteViews$MethodKey;
    :cond_60
    :try_start_60
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " can\'t use method with RemoteViews: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2158
    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "methodName":Ljava/lang/String;
    .end local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "async":Z
    throw v3
    :try_end_90
    .catch Ljava/lang/NoSuchMethodException; {:try_start_60 .. :try_end_90} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_60 .. :try_end_90} :catch_90
    .catchall {:try_start_60 .. :try_end_90} :catchall_143

    .line 2165
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "methodName":Ljava/lang/String;
    .restart local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "async":Z
    :catch_90
    move-exception v3

    .line 2166
    .local v3, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_91
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2167
    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "methodName":Ljava/lang/String;
    .end local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "async":Z
    throw v4

    .line 2175
    .end local v3    # "ex":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "methodName":Ljava/lang/String;
    .restart local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "async":Z
    :cond_c1
    :goto_c1
    if-nez p3, :cond_c7

    .line 2176
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 2179
    :cond_c7
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2180
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 2183
    :cond_d2
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_13f

    .line 2184
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 2185
    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_e6
    .catchall {:try_start_91 .. :try_end_e6} :catchall_143

    .line 2187
    .local v3, "asyncType":Ljava/lang/invoke/MethodType;
    :try_start_e6
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_f2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e6 .. :try_end_f2} :catch_f3
    .catch Ljava/lang/IllegalAccessException; {:try_start_e6 .. :try_end_f2} :catch_f3
    .catchall {:try_start_e6 .. :try_end_f2} :catchall_143

    .line 2194
    goto :goto_13f

    .line 2189
    :catch_f3
    move-exception v4

    .line 2190
    .local v4, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_f4
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async implementation declared as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not defined for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": public Runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    .line 2193
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "methodName":Ljava/lang/String;
    .end local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "async":Z
    throw v5

    .line 2196
    .end local v3    # "asyncType":Ljava/lang/invoke/MethodType;
    .end local v4    # "ex":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "methodName":Ljava/lang/String;
    .restart local p2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "async":Z
    :cond_13f
    :goto_13f
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 2197
    .end local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    :catchall_143
    move-exception v2

    monitor-exit v1
    :try_end_145
    .catchall {:try_start_f4 .. :try_end_145} :catchall_143

    throw v2
.end method

.method private static blacklist getNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 3
    .param p0, "vg"    # Landroid/view/ViewGroup;

    .line 3984
    const v0, 0x10204b2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3985
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_d

    const/4 v1, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1
.end method

.method private static blacklist getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10117
    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_14

    .line 10118
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 10117
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParameterType(I)Ljava/lang/Class;
    .registers 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2096
    packed-switch p0, :pswitch_data_38

    .line 2132
    const/4 v0, 0x0

    return-object v0

    .line 2130
    :pswitch_5
    const-class v0, Landroid/graphics/BlendMode;

    return-object v0

    .line 2128
    :pswitch_8
    const-class v0, Landroid/graphics/drawable/Icon;

    return-object v0

    .line 2126
    :pswitch_b
    const-class v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 2124
    :pswitch_e
    const-class v0, Landroid/content/Intent;

    return-object v0

    .line 2122
    :pswitch_11
    const-class v0, Landroid/os/Bundle;

    return-object v0

    .line 2120
    :pswitch_14
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 2118
    :pswitch_17
    const-class v0, Landroid/net/Uri;

    return-object v0

    .line 2116
    :pswitch_1a
    const-class v0, Ljava/lang/CharSequence;

    return-object v0

    .line 2114
    :pswitch_1d
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 2112
    :pswitch_20
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2110
    :pswitch_23
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2108
    :pswitch_26
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2106
    :pswitch_29
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2104
    :pswitch_2c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2102
    :pswitch_2f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2100
    :pswitch_32
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 2098
    :pswitch_35
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2201
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_5

    const-string v0, "()"

    return-object v0

    .line 2202
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPendingIntentTemplate()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .line 8650
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 8651
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    .line 8653
    :cond_b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    return-object v0
.end method

.method private greylist-max-o getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 7995
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7996
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7997
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 7998
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    .line 8000
    :cond_16
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    .line 8002
    .end local v0    # "orientation":I
    :cond_19
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 8003
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 8005
    :cond_24
    return-object p0
.end method

.method private blacklist getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "size"    # Landroid/util/SizeF;

    .line 8497
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8507
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 8509
    const v1, 0x10204b3

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 8510
    :cond_18
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 8516
    :cond_1e
    return-object v0

    .line 8511
    :cond_1f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "v"    # Landroid/view/View;

    .line 2081
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2082
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2083
    .local v0, "appScale":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2084
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2086
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2087
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2088
    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2089
    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2090
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2091
    return-object v2
.end method

.method private static blacklist getStableId(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3974
    const v0, 0x10204b4

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3975
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_d

    const/4 v1, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_11
    return v1
.end method

.method private static blacklist getViewLayoutId(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;

    .line 3989
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist hasDrawInstructions()Z
    .registers 2

    .line 7991
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    return v0
.end method

.method private greylist-max-o hasLandscapeAndPortraitLayouts()Z
    .registers 2

    .line 6037
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist hasMultipleLayouts()Z
    .registers 2

    .line 6033
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist hasSizedRemoteViews()Z
    .registers 2

    .line 6041
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist hasStableId(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3969
    const v0, 0x10204b4

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3970
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private blacklist inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "applyThemeResId"    # I
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8162
    :try_start_0
    invoke-direct {p2}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8163
    const-string v0, "RemoteViews#inflateViewWithDrawInstructions"

    goto :goto_b

    .line 8164
    :cond_9
    const-string v0, "RemoteViews#inflateView"

    .line 8162
    :goto_b
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8165
    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateViewInternal(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 8167
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8165
    return-object v0

    .line 8167
    :catchall_16
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8168
    throw v0
.end method

.method private blacklist inflateViewInternal(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "applyThemeResId"    # I
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8177
    nop

    .line 8178
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 8179
    .local v0, "contextForResources":Landroid/content/Context;
    if-eqz p5, :cond_a

    .line 8180
    invoke-virtual {p5, v0}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    .line 8182
    :cond_a
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    invoke-direct {v1, p1, v0}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 8185
    .local v1, "inflationContext":Landroid/content/Context;
    if-eqz p4, :cond_17

    .line 8186
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 8190
    :cond_17
    invoke-direct {p2}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 8191
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;-><init>(Landroid/content/Context;)V

    .line 8192
    .local v2, "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    sget-boolean v4, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v4, :cond_2b

    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDebug(I)V

    .line 8193
    nop

    .line 8194
    .local v2, "v":Landroid/view/View;
    goto :goto_58

    .line 8195
    .end local v2    # "v":Landroid/view/View;
    :cond_31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8199
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8200
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->shouldUseStaticFilter()Z

    move-result v4

    if-eqz v4, :cond_42

    sget-object v4, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    goto :goto_43

    :cond_42
    move-object v4, p0

    :goto_43
    invoke-virtual {v2, v4}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 8201
    iget-object v4, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v4, :cond_4f

    .line 8202
    iget-object v4, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {v2, v4}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 8204
    :cond_4f
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 8206
    .local v2, "v":Landroid/view/View;
    :goto_58
    iget v3, p0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6e

    .line 8207
    iget v3, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 8208
    iget v3, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x10204b3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 8210
    :cond_6e
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x1020018

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 8211
    return-object v2
.end method

.method private blacklist initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "src"    # Landroid/widget/RemoteViews;
    .param p2, "hierarchyRoot"    # Landroid/widget/RemoteViews;

    .line 6197
    if-nez p2, :cond_14

    .line 6198
    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6200
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6201
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    goto :goto_20

    .line 6203
    :cond_14
    iget-object v0, p2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6204
    iget-object v0, p2, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6205
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6207
    :goto_20
    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_28

    goto :goto_2b

    .line 6214
    :cond_28
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    goto :goto_2f

    .line 6210
    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 6211
    move-object p2, p0

    .line 6216
    :goto_2f
    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6217
    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6218
    iget v1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6219
    iget v1, p1, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 6220
    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6221
    iget-object v1, p1, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6222
    iget-wide v1, p1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6223
    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6225
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 6226
    iget-object v1, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6227
    iget-object v1, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6230
    :cond_65
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 6231
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 6232
    iget-object v1, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 6233
    .local v2, "srcView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {v2, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6234
    .end local v2    # "srcView":Landroid/widget/RemoteViews;
    goto :goto_7e

    .line 6237
    :cond_94
    iget-object v1, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_ad

    .line 6238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6239
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    .line 6240
    invoke-direct {p1, v1, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    .line 6241
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6244
    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    .line 6245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6250
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_ad
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_b4

    .line 6251
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 6253
    :cond_b4
    return-void
.end method

.method private blacklist initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/widget/RemoteViews;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6141
    .local p1, "remoteViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/RemoteViews;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6142
    .local v0, "sizedRemoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v1, 0x0

    .line 6143
    .local v1, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 6144
    .local v2, "viewArea":F
    const/4 v3, 0x0

    .line 6145
    .local v3, "smallestView":Landroid/widget/RemoteViews;
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 6146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 6147
    .local v4, "view":Landroid/widget/RemoteViews;
    invoke-direct {v4}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v5

    .line 6148
    .local v5, "size":Landroid/util/SizeF;
    if-eqz v5, :cond_52

    .line 6151
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    .line 6152
    .local v6, "newViewArea":F
    if-eqz v3, :cond_38

    iget-object v7, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_38

    .line 6153
    :cond_30
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "All RemoteViews must share the same package and user"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6156
    :cond_38
    :goto_38
    if-eqz v3, :cond_43

    cmpg-float v7, v6, v2

    if-gez v7, :cond_3f

    goto :goto_43

    .line 6163
    :cond_3f
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 6157
    :cond_43
    :goto_43
    if-eqz v3, :cond_48

    .line 6158
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6160
    :cond_48
    move v2, v6

    .line 6161
    move-object v3, v4

    .line 6165
    :goto_4a
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 6166
    if-nez v1, :cond_51

    .line 6167
    iget-object v1, v4, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6169
    .end local v4    # "view":Landroid/widget/RemoteViews;
    .end local v5    # "size":Landroid/util/SizeF;
    .end local v6    # "newViewArea":F
    :cond_51
    goto :goto_a

    .line 6149
    .restart local v4    # "view":Landroid/widget/RemoteViews;
    .restart local v5    # "size":Landroid/util/SizeF;
    :cond_52
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expected RemoteViews to have ideal size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6170
    .end local v4    # "view":Landroid/widget/RemoteViews;
    .end local v5    # "size":Landroid/util/SizeF;
    :cond_5a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6171
    iput-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 6172
    return-object v1
.end method

.method private synthetic blacklist lambda$createFromBitmapReflectionActionFromProto$4(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 13
    .param p1, "values"    # Landroid/util/LongSparseArray;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2661
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 2663
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    .line 2664
    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p4, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2667
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2666
    const-wide v5, 0x10500000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2665
    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2663
    return-object v1
.end method

.method static synthetic blacklist lambda$createFromProto$9(Landroid/widget/RemoteViews$3;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews;
    .registers 13
    .param p0, "ref"    # Landroid/widget/RemoteViews$3;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10335
    const/16 v0, 0xa

    if-le p4, v0, :cond_19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 10337
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10339
    :cond_19
    :goto_19
    const/4 v0, 0x1

    add-int/2addr p4, v0

    .line 10341
    iget-object v1, p0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    .line 10342
    .local v1, "rv":Landroid/widget/RemoteViews;
    iget v2, p0, Landroid/widget/RemoteViews$3;->mApplyFlags:I

    iput v2, v1, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 10343
    iget-boolean v2, p0, Landroid/widget/RemoteViews$3;->mIsRoot:Z

    iput-boolean v2, v1, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 10344
    iget-boolean v2, p0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    iput-boolean v2, v1, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 10348
    if-nez p3, :cond_3e

    .line 10349
    iget-boolean v2, v1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_36

    if-ne p4, v0, :cond_36

    .line 10353
    invoke-direct {v1}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p3

    goto :goto_41

    .line 10350
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "A nested view did not receive HierarchyRootData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10355
    :cond_3e
    invoke-direct {v1, p3}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 10358
    :goto_41
    const/4 v2, 0x0

    .line 10359
    .local v2, "appContext":Landroid/content/Context;
    const/4 v3, 0x0

    .line 10360
    .local v3, "appResources":Landroid/content/res/Resources;
    iget-boolean v4, p0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    if-nez v4, :cond_b6

    .line 10361
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    const-string v5, "No application info"

    invoke-static {v4, v5}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10362
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    const-string v5, "No uid"

    invoke-static {v4, v5}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10363
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    .line 10364
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 10363
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 10365
    invoke-direct {v1, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 10366
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 10368
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    const-string v5, "No layout id"

    invoke-static {v4, v5}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10369
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 10371
    iget v4, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    const-string v6, "Invalid layout id"

    iget-object v7, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10373
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    if-eqz v4, :cond_a2

    .line 10374
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/widget/RemoteViews;->mViewId:I

    .line 10376
    iget v4, v1, Landroid/widget/RemoteViews;->mViewId:I

    const-string v6, "Invalid view id"

    iget-object v7, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10379
    :cond_a2
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    if-eqz v4, :cond_b6

    .line 10380
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 10383
    .local v4, "lightBackgroundLayoutId":I
    const-string v5, "Invalid light background layout id"

    iget-object v6, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10385
    invoke-virtual {v1, v4}, Landroid/widget/RemoteViews;->setLightBackgroundLayoutId(I)V

    .line 10388
    .end local v4    # "lightBackgroundLayoutId":I
    :cond_b6
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    if-eqz v4, :cond_bf

    .line 10389
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v4, v2, v3, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    .line 10392
    :cond_bf
    iget-wide v4, p0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_cb

    .line 10393
    iget-wide v4, p0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    iput-wide v4, v1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 10395
    :cond_cb
    iget v4, p0, Landroid/widget/RemoteViews$3;->mMode:I

    if-nez v4, :cond_108

    .line 10396
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->mIdealSize:Landroid/util/SizeF;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 10397
    const/4 v0, 0x0

    .line 10398
    .local v0, "hasDrawInstructionAction":Z
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_db
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$PendingResources;

    .line 10399
    .local v5, "pendingAction":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews$Action;>;"
    invoke-interface {v5, v2, v3, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    .line 10400
    .local v6, "action":Landroid/widget/RemoteViews$Action;
    if-eqz v6, :cond_f7

    .line 10401
    instance-of v7, v6, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    if-eqz v7, :cond_f4

    .line 10402
    const/4 v0, 0x1

    .line 10404
    :cond_f4
    invoke-direct {v1, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 10406
    .end local v5    # "pendingAction":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews$Action;>;"
    .end local v6    # "action":Landroid/widget/RemoteViews$Action;
    :cond_f7
    goto :goto_db

    .line 10407
    :cond_f8
    iget-boolean v4, v1, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    if-eqz v4, :cond_107

    if-eqz v0, :cond_ff

    goto :goto_107

    .line 10408
    :cond_ff
    new-instance v4, Landroid/widget/RemoteViews$InvalidProtoException;

    const-string v5, "RemoteViews proto is missing DrawInstructions"

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10411
    :cond_107
    :goto_107
    return-object v1

    .line 10412
    .end local v0    # "hasDrawInstructionAction":Z
    :cond_108
    iget v4, p0, Landroid/widget/RemoteViews$3;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_136

    .line 10413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10415
    .local v0, "sizedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_118
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$PendingResources;

    .line 10416
    .local v5, "pendingViews":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews;>;"
    invoke-interface {v5, v2, v3, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews;

    .line 10418
    .local v6, "views":Landroid/widget/RemoteViews;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10419
    .end local v5    # "pendingViews":Landroid/widget/RemoteViews$PendingResources;, "Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews;>;"
    .end local v6    # "views":Landroid/widget/RemoteViews;
    goto :goto_118

    .line 10420
    :cond_12e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    .line 10421
    return-object v1

    .line 10422
    .end local v0    # "sizedViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    :cond_136
    iget v4, p0, Landroid/widget/RemoteViews$3;->mMode:I

    if-ne v4, v0, :cond_161

    .line 10423
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    const-string v4, "Missing landscape views"

    invoke-static {v0, v4}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10424
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    const-string v4, "Missing portrait views"

    invoke-static {v0, v4}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10425
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10426
    invoke-interface {v4, v2, v3, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10427
    invoke-interface {v5, v2, v3, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 10428
    .local v0, "parentRv":Landroid/widget/RemoteViews;
    invoke-direct {v0, v1, v1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 10429
    return-object v0

    .line 10431
    .end local v0    # "parentRv":Landroid/widget/RemoteViews;
    :cond_161
    new-instance v0, Landroid/widget/RemoteViews$InvalidProtoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/widget/RemoteViews$3;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$createIconFromProto$10(Ljava/util/function/Function;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p0, "icon"    # Ljava/util/function/Function;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10579
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method private synthetic blacklist lambda$createSetDrawInstructionActionFromProto$6(Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 8
    .param p1, "instructions"    # Ljava/util/List;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5990
    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    new-instance v1, Landroid/widget/RemoteViews$DrawInstructions$Builder;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$DrawInstructions$Builder;-><init>(Ljava/util/List;)V

    .line 5991
    invoke-virtual {v1}, Landroid/widget/RemoteViews$DrawInstructions$Builder;->build()Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V

    .line 5990
    return-object v0
.end method

.method private synthetic blacklist lambda$createSetRemoteCollectionItemListAdapterActionFromProto$2(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 10
    .param p1, "values"    # Landroid/util/LongSparseArray;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1452
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 1454
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .line 1455
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$PendingResources;

    .line 1457
    invoke-interface {v2, p2, p3, p4, p5}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v1, p0, v0, v2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1454
    return-object v1
.end method

.method private synthetic blacklist lambda$createViewGroupActionAddFromProto$5(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 15
    .param p1, "values"    # Landroid/util/LongSparseArray;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4307
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v4

    .line 4309
    .local v4, "viewId":I
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    .line 4310
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RemoteViews;

    .line 4312
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4313
    const-wide v7, 0x10500000004L

    invoke-virtual {p1, v7, v8, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4309
    return-object v2
.end method

.method static synthetic blacklist lambda$estimateIconMemoryUsage$8(Ljava/util/concurrent/atomic/AtomicLong;Landroid/graphics/drawable/Icon;)V
    .registers 4
    .param p0, "total"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 6524
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 6525
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 6527
    :cond_1a
    return-void
.end method

.method static synthetic blacklist lambda$new$7(Ljava/util/Map$Entry;)Landroid/widget/RemoteViews;
    .registers 3
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 6124
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 6125
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic blacklist lambda$populateRemoteCollectionCacheFromProto$3(Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$RemoteCollectionCache;
    .registers 11
    .param p0, "entries"    # Ljava/util/ArrayList;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1786
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 1787
    .local v1, "entry":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v2, 0x10300000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1788
    .local v2, "id":I
    const-wide v3, 0x10900000002L

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1790
    .local v3, "uri":Ljava/lang/String;
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$PendingResources;

    .line 1791
    invoke-interface {v4, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1793
    .local v4, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    iget-object v5, p3, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v5, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionCache;->addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1794
    .end local v1    # "entry":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    .end local v2    # "id":I
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    goto :goto_4

    .line 1796
    :cond_41
    iget-object v0, p3, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 360
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 486
    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method private blacklist performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8560
    invoke-virtual {p3}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8561
    iget-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v0, :cond_c

    .line 8562
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 8564
    :cond_c
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    .line 8565
    .local v0, "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 8566
    const/4 v1, -0x2

    goto :goto_24

    :cond_23
    const/4 v1, -0x3

    .line 8565
    :goto_24
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setTheme(I)V

    .line 8568
    .end local v0    # "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    :cond_27
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    .line 8569
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8571
    .local v0, "count":I
    :try_start_31
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 8572
    const-string v1, "RemoteViews#applyActionsWithDrawInstructions"

    goto :goto_3c

    .line 8573
    :cond_3a
    const-string v1, "RemoteViews#applyActions"

    .line 8571
    :goto_3c
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8574
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_50

    .line 8575
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_54

    .line 8574
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 8578
    .end local v1    # "i":I
    :cond_50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8579
    goto :goto_59

    .line 8578
    :catchall_54
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8579
    throw v1

    .line 8581
    .end local v0    # "count":I
    :cond_59
    :goto_59
    return-void
.end method

.method private blacklist populateRemoteCollectionCacheFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 16
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$RemoteCollectionCache;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/LongSparseArray<Ljava/lang/Object;>;>;"
    const-wide v1, 0x10b0000000fL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1738
    .local v1, "token":J
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b3

    .line 1739
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const-string v5, "Unhandled field while reading RemoteViews proto!\n"

    const-string v6, "RemoteViews"

    packed-switch v3, :pswitch_data_bc

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1780
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1779
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1741
    :pswitch_39
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 1743
    .local v3, "entry":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 1745
    .local v7, "entryToken":J
    :goto_47
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v9

    if-eq v9, v4, :cond_a2

    .line 1746
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v9

    packed-switch v9, :pswitch_data_c2

    .line 1765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1766
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1765
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1758
    :pswitch_6d
    const-wide v9, 0x10b00000003L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    .line 1760
    .local v11, "itemsToken":J
    nop

    .line 1761
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v13

    .line 1760
    invoke-virtual {v3, v9, v10, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1762
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1763
    goto :goto_47

    .line 1753
    .end local v11    # "itemsToken":J
    :pswitch_82
    nop

    .line 1754
    const-wide v9, 0x10900000002L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v11

    .line 1753
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1756
    goto :goto_47

    .line 1748
    :pswitch_90
    nop

    .line 1749
    const-wide v9, 0x10300000001L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1748
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1751
    goto :goto_47

    .line 1769
    :cond_a2
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1771
    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_cc

    invoke-static {v3, v4}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 1776
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    goto/16 :goto_e

    .line 1783
    .end local v3    # "entry":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    .end local v7    # "entryToken":J
    :cond_b3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1785
    new-instance v3, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    return-object v3

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_90
        :pswitch_82
        :pswitch_6d
    .end packed-switch

    :array_cc
    .array-data 8
        0x10300000001L
        0x10900000002L
        0x10b00000003L
    .end array-data
.end method

.method private greylist-max-o readActionsFromParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 6345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6346
    .local v0, "count":I
    if-lez v0, :cond_1c

    .line 6347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 6348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1c

    .line 6349
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6348
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6352
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method private blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "rootParent"    # Landroid/view/ViewGroup;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p6, "topLevel"    # Z

    .line 8461
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8462
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {v0, p2, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8465
    if-eqz p6, :cond_13

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 8466
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 8468
    :cond_13
    return-void
.end method

.method private blacklist reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "rootParent"    # Landroid/view/ViewGroup;
    .param p4, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8454
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "v":Landroid/view/View;
    .end local p3    # "rootParent":Landroid/view/ViewGroup;
    .end local p4    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v1, "context":Landroid/content/Context;
    .local v2, "v":Landroid/view/View;
    .local v3, "rootParent":Landroid/view/ViewGroup;
    .local v5, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    .line 8455
    return-void
.end method

.method private blacklist reconstructCaches()V
    .registers 3

    .line 6497
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v0, :cond_5

    return-void

    .line 6498
    :cond_5
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6499
    new-instance v0, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6500
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6501
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6502
    return-void
.end method

.method private blacklist setIdealSize(Landroid/util/SizeF;)V
    .registers 2
    .param p1, "size"    # Landroid/util/SizeF;

    .line 6050
    iput-object p1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6051
    return-void
.end method

.method private static blacklist setNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 5
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "nextChild"    # I
    .param p2, "numChildren"    # I

    .line 3993
    const v0, 0x10204b2

    if-ltz p1, :cond_10

    if-lt p1, p2, :cond_8

    goto :goto_10

    .line 3996
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_18

    .line 3994
    :cond_10
    :goto_10
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 3998
    :goto_18
    return-void
.end method

.method private static blacklist setStableId(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stableId"    # I

    .line 3979
    const v0, 0x10204b4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 3980
    return-void
.end method

.method private static blacklist squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .registers 6
    .param p0, "p1"    # Landroid/util/SizeF;
    .param p1, "p2"    # Landroid/util/SizeF;

    .line 8014
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 8015
    .local v0, "dx":F
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 8016
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static blacklist startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    .line 9473
    .local p2, "options":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Landroid/app/ActivityOptions;>;"
    const-string v1, "RemoteViews"

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v0

    .line 9477
    .local v3, "context":Landroid/content/Context;
    nop

    .line 9478
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    .line 9479
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 9477
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_20} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_23

    .line 9486
    .end local v3    # "context":Landroid/content/Context;
    nop

    .line 9487
    const/4 v0, 0x1

    return v0

    .line 9483
    :catch_23
    move-exception v0

    .line 9484
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9485
    return v2

    .line 9480
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v0

    .line 9481
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v3, "Cannot send pending intent: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9482
    return v2
.end method

.method private blacklist tryAddRemoteResponse(I)V
    .registers 6
    .param p1, "viewId"    # I

    .line 8665
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 8666
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 8667
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 8668
    new-instance v2, Landroid/widget/RemoteViews$SetOnClickResponse;

    .line 8669
    invoke-static {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 8668
    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8672
    :cond_24
    return-void
.end method

.method private static greylist-max-o visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 4
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 985
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 986
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 987
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 989
    :cond_17
    return-void
.end method

.method private blacklist writeActionsToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8981
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 8982
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    goto :goto_c

    .line 8984
    .end local v0    # "count":I
    :cond_b
    const/4 v0, 0x0

    .line 8986
    .restart local v0    # "count":I
    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8987
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_27

    .line 8988
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 8989
    .local v2, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8990
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8987
    .end local v2    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 8992
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method private static blacklist writeColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V
    .registers 6
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p2, "fieldId"    # J

    .line 10584
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 10585
    .local v0, "token":J
    invoke-virtual {p1, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 10586
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10587
    return-void
.end method

.method private static blacklist writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V
    .registers 7
    .param p0, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "appResources"    # Landroid/content/res/Resources;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "fieldId"    # J

    .line 10569
    invoke-virtual {p0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 10570
    .local v0, "token":J
    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViewsSerializers;->writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;)V

    .line 10571
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10572
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 8929
    .local p3, "intentsToIgnore":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/Intent;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 8931
    .local v0, "prevSquashingAllowed":Z
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 8932
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8935
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_1d

    .line 8936
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 8937
    iget-object v3, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 8939
    :cond_1d
    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8940
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-nez v3, :cond_2b

    goto :goto_34

    .line 8943
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8944
    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v1, p1, p2}, Landroid/util/SizeF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 8941
    :cond_34
    :goto_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8946
    :goto_37
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8947
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8948
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8949
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    goto :goto_9d

    .line 8950
    :cond_4a
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 8951
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8952
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_62

    .line 8953
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 8954
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 8956
    :cond_62
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8957
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 8958
    .local v2, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8959
    .end local v2    # "view":Landroid/widget/RemoteViews;
    goto :goto_71

    :cond_81
    goto :goto_9d

    .line 8961
    :cond_82
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8964
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_93

    .line 8965
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 8966
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 8968
    :cond_93
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8970
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8972
    :goto_9d
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8973
    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 8974
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8976
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 8977
    return-void
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 576
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 578
    and-int/lit8 v0, p1, 0x6

    .line 579
    .local v0, "flagsToPropagate":I
    if-eqz v0, :cond_36

    .line 580
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 581
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 582
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 583
    .end local v2    # "remoteView":Landroid/widget/RemoteViews;
    goto :goto_15

    :cond_25
    goto :goto_36

    .line 584
    :cond_26
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 585
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 586
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 589
    :cond_36
    :goto_36
    return-void
.end method

.method public whitelist addStableView(ILandroid/widget/RemoteViews;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;
    .param p3, "stableId"    # I

    .line 6596
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const/4 v4, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "nestedView":Landroid/widget/RemoteViews;
    .end local p3    # "stableId":I
    .local v2, "viewId":I
    .local v3, "nestedView":Landroid/widget/RemoteViews;
    .local v5, "stableId":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6597
    return-void
.end method

.method public whitelist addView(ILandroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .line 6570
    if-nez p2, :cond_8

    .line 6571
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    goto :goto_d

    .line 6572
    :cond_8
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    .line 6570
    :goto_d
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6573
    return-void
.end method

.method public greylist addView(ILandroid/widget/RemoteViews;I)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;
    .param p3, "index"    # I

    .line 6611
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6612
    return-void
.end method

.method public whitelist apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 8113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "size"    # Landroid/util/SizeF;
    .param p4, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8147
    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parent":Landroid/view/ViewGroup;
    .end local p3    # "size":Landroid/util/SizeF;
    .end local p4    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v1, "context":Landroid/content/Context;
    .local v2, "parent":Landroid/view/ViewGroup;
    .local v4, "size":Landroid/util/SizeF;
    .local v5, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 8118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;

    .line 8124
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8125
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8124
    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8139
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8140
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8141
    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8139
    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 8257
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parent":Landroid/view/ViewGroup;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .local v1, "context":Landroid/content/Context;
    .local v2, "parent":Landroid/view/ViewGroup;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 8263
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parent":Landroid/view/ViewGroup;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .end local p5    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v1, "context":Landroid/content/Context;
    .local v2, "parent":Landroid/view/ViewGroup;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .local v5, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;

    .line 8270
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parent":Landroid/view/ViewGroup;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .end local p5    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local p6    # "size":Landroid/util/SizeF;
    .local v1, "context":Landroid/content/Context;
    .local v2, "parent":Landroid/view/ViewGroup;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .local v5, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v6, "size":Landroid/util/SizeF;
    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;
    .param p7, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8279
    move-object/from16 v0, p3

    new-instance v1, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8280
    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v1

    .line 8281
    move-object/from16 v3, p7

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v1

    .line 8282
    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v10

    .line 8283
    .local v10, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    new-instance v4, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object/from16 v1, p6

    invoke-virtual {p0, p1, v1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v8, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v13}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    .line 8284
    invoke-static {v4, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 8283
    return-object v4
.end method

.method public blacklist applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "applyThemeResId"    # I

    .line 8131
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8132
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8133
    invoke-virtual {v0, p4}, Landroid/widget/RemoteViews$ActionApplyParams;->withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8131
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist canRecycleView(Landroid/view/View;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .line 8472
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_37

    .line 8475
    :cond_a
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8476
    .local v1, "previousLayoutId":Ljava/lang/Integer;
    if-nez v1, :cond_16

    .line 8477
    return v0

    .line 8479
    :cond_16
    const v2, 0x10204b3

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8480
    .local v2, "overrideIdTag":Ljava/lang/Integer;
    if-nez v2, :cond_23

    const/4 v3, -0x1

    goto :goto_27

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8485
    .local v3, "overrideId":I
    :goto_27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_36

    iget v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-ne v4, v3, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0

    .line 8473
    .end local v1    # "previousLayoutId":Ljava/lang/Integer;
    .end local v2    # "overrideIdTag":Ljava/lang/Integer;
    .end local v3    # "overrideId":I
    :cond_37
    :goto_37
    return v0
.end method

.method public whitelist clone()Landroid/widget/RemoteViews;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6431
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6434
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist collectAllIntents(ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "bitmapSizeLimit"    # I
    .param p2, "collectionCache"    # Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsNoComplete(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist computeUniqueId(Landroid/widget/RemoteViews;)J
    .registers 9
    .param p1, "parent"    # Landroid/widget/RemoteViews;

    .line 10092
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_12

    .line 10093
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 10094
    .local v4, "viewId":J
    cmp-long v0, v4, v2

    if-eqz v0, :cond_11

    .line 10095
    shl-long/2addr v4, v1

    .line 10097
    :cond_11
    return-wide v4

    .line 10099
    .end local v4    # "viewId":J
    :cond_12
    if-nez p1, :cond_15

    .line 10100
    return-wide v2

    .line 10102
    :cond_15
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 10103
    .restart local v4    # "viewId":J
    cmp-long v0, v4, v2

    if-nez v0, :cond_1e

    .line 10104
    return-wide v2

    .line 10106
    :cond_1e
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;->getChildId(Landroid/widget/RemoteViews;)I

    move-result v0

    .line 10107
    .local v0, "childId":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_26

    .line 10108
    return-wide v2

    .line 10110
    :cond_26
    shl-long v1, v4, v1

    .line 10111
    .end local v4    # "viewId":J
    .local v1, "viewId":J
    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 10112
    return-wide v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 8919
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist estimateIconMemoryUsage()J
    .registers 4

    .line 6522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6523
    .local v0, "total":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 6528
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    return-wide v1
.end method

.method public greylist-max-r estimateMemoryUsage()J
    .registers 3

    .line 6512
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist estimateTotalBitmapMemoryUsage()J
    .registers 5

    .line 6538
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateIconMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;
    .registers 2

    .line 2479
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method public blacklist getDarkTextViews()Landroid/widget/RemoteViews;
    .registers 3

    .line 7978
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7979
    return-object p0

    .line 7983
    :cond_8
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 7984
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 7986
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 7984
    return-object v0

    .line 7986
    :catchall_17
    move-exception v0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 7987
    throw v0
.end method

.method public whitelist getLayoutId()I
    .registers 2

    .line 6449
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v0, :cond_e

    .line 6450
    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    goto :goto_10

    :cond_e
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6449
    :goto_10
    return v0
.end method

.method public blacklist getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 6438
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getProviderInstanceId()J
    .registers 3

    .line 10053
    iget-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-wide v0
.end method

.method public blacklist getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetSize"    # Landroid/util/SizeF;

    .line 8073
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 8077
    :cond_9
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 8075
    :cond_e
    :goto_e
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "oldSize"    # Landroid/util/SizeF;
    .param p2, "newSize"    # Landroid/util/SizeF;

    .line 8088
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8089
    return-object v1

    .line 8091
    :cond_8
    if-nez p1, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8093
    .local v0, "oldBestFit":Landroid/widget/RemoteViews;
    :goto_13
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8094
    .local v2, "newBestFit":Landroid/widget/RemoteViews;
    if-eq v0, v2, :cond_1a

    .line 8095
    return-object v2

    .line 8097
    :cond_1a
    return-object v1
.end method

.method public greylist-max-o getSequenceNumber()I
    .registers 2

    .line 8902
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getViewId()I
    .registers 2

    .line 10031
    iget v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 595
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasLegacyLists()Z
    .registers 6

    .line 957
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    .line 958
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 959
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 960
    .local v2, "action":Landroid/widget/RemoteViews$Action;
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v3, :cond_21

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .local v3, "itemsAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-nez v4, :cond_43

    .end local v3    # "itemsAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    :cond_21
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v3, :cond_2c

    .line 962
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    .local v3, "intentAction":Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_43

    .end local v3    # "intentAction":Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    :cond_2c
    instance-of v3, v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v3, :cond_44

    .line 964
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .local v3, "groupAction":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 966
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 967
    .end local v3    # "groupAction":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    :cond_43
    return v1

    .line 958
    .end local v2    # "action":Landroid/widget/RemoteViews$Action;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 971
    .end local v0    # "i":I
    :cond_47
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_66

    .line 972
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4c
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_66

    .line 973
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 974
    return v1

    .line 972
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 978
    .end local v0    # "i":I
    :cond_66
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 979
    return v1

    .line 981
    :cond_73
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_81

    :cond_80
    const/4 v1, 0x0

    :goto_81
    return v1
.end method

.method public greylist-max-o hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 9027
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public blacklist isLegacyListRemoteViews()Z
    .registers 2

    .line 853
    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-static {v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->-$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-r mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .line 807
    if-nez p1, :cond_3

    return-void

    .line 811
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 813
    .local v0, "copy":Landroid/widget/RemoteViews;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_18

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 818
    :cond_18
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 819
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_33

    .line 820
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    .line 821
    .local v4, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v4}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .end local v4    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 824
    .end local v3    # "i":I
    :cond_33
    iget-object v3, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 825
    .local v3, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-nez v3, :cond_38

    return-void

    .line 826
    :cond_38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 827
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    if-ge v4, v2, :cond_7a

    .line 828
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    .line 829
    .local v5, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v6}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v7

    .line 831
    .local v7, "mergeBehavior":I
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    if-nez v7, :cond_6d

    .line 832
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 833
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_6d
    if-eqz v7, :cond_72

    const/4 v8, 0x1

    if-ne v7, v8, :cond_77

    .line 838
    :cond_72
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v5    # "a":Landroid/widget/RemoteViews$Action;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "mergeBehavior":I
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 843
    .end local v4    # "i":I
    :cond_7a
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 844
    return-void
.end method

.method public whitelist onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8915
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 4

    .line 8590
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 8591
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8592
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_20

    .line 8593
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 8594
    const/4 v2, 0x1

    return v2

    .line 8592
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 8598
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 8431
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8432
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "size"    # Landroid/util/SizeF;
    .param p4, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8449
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "v":Landroid/view/View;
    .end local p3    # "size":Landroid/util/SizeF;
    .end local p4    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    .local v2, "context":Landroid/content/Context;
    .local v3, "v":Landroid/view/View;
    .local v5, "size":Landroid/util/SizeF;
    .local v6, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    .line 8450
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 8436
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8437
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8436
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8438
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8443
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8444
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8443
    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8445
    return-void
.end method

.method public greylist-max-o reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 8534
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "v":Landroid/view/View;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .local v1, "context":Landroid/content/Context;
    .local v2, "v":Landroid/view/View;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 8540
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "v":Landroid/view/View;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .end local p5    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v1, "context":Landroid/content/Context;
    .local v2, "v":Landroid/view/View;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    .local v5, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;
    .param p7, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8547
    move-object/from16 v0, p3

    move-object/from16 v8, p2

    move-object/from16 v11, p6

    invoke-direct {p0, p1, v8, v11}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 8549
    .local v3, "rvToApply":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8550
    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v1

    .line 8551
    move-object/from16 v13, p5

    invoke-virtual {v1, v13}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v1

    .line 8552
    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v7

    .line 8554
    .local v7, "params":Landroid/widget/RemoteViews$ActionApplyParams;
    new-instance v1, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    .line 8556
    invoke-static {v1, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 8554
    return-object v1
.end method

.method public greylist-max-o reduceImageSizes(II)V
    .registers 7
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 534
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 535
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 536
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 537
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 539
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist removeAllViews(I)V
    .registers 3
    .param p1, "viewId"    # I

    .line 6621
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6622
    return-void
.end method

.method public greylist-max-o removeAllViewsExceptId(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "viewIdToKeep"    # I

    .line 6634
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6635
    return-void
.end method

.method public blacklist removeFromParent(I)V
    .registers 3
    .param p1, "viewId"    # I

    .line 6646
    new-instance v0, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6647
    return-void
.end method

.method public blacklist replaceRemoteCollections(I)Z
    .registers 10
    .param p1, "viewId"    # I

    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, "isActionReplaced":Z
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    .line 914
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 915
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 916
    .local v2, "action":Landroid/widget/RemoteViews$Action;
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v3, :cond_3c

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .local v3, "itemsAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    iget v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    if-ne v4, p1, :cond_3c

    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3c

    .line 919
    new-instance v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v5, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    iget-object v6, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 922
    .local v4, "newCollectionAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    iget v5, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iput v5, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 923
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 924
    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 925
    const/4 v0, 0x1

    .line 926
    .end local v4    # "newCollectionAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    goto :goto_6d

    .end local v3    # "itemsAction":Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
    :cond_3c
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v3, :cond_57

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    .local v3, "intentAction":Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    iget v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    if-ne v4, p1, :cond_57

    .line 928
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v6, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    iget-object v7, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 930
    const/4 v0, 0x1

    goto :goto_6d

    .line 931
    .end local v3    # "intentAction":Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
    :cond_57
    instance-of v3, v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v3, :cond_6d

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .local v3, "groupAction":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 933
    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 914
    .end local v2    # "action":Landroid/widget/RemoteViews$Action;
    .end local v3    # "groupAction":Landroid/widget/RemoteViews$ViewGroupActionAdd;
    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 937
    .end local v1    # "i":I
    :cond_70
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v1, :cond_8d

    .line 938
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_75
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 939
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 942
    .end local v1    # "i":I
    :cond_8d
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_98

    .line 943
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 945
    :cond_98
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a3

    .line 946
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 949
    :cond_a3
    return v0
.end method

.method public whitelist setAccessibilityTraversalAfter(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 7930
    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7931
    return-void
.end method

.method public whitelist setAccessibilityTraversalBefore(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 7920
    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7921
    return-void
.end method

.method public whitelist setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .line 7831
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7832
    return-void
.end method

.method public whitelist setBlendMode(ILjava/lang/String;Landroid/graphics/BlendMode;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/BlendMode;

    .line 7843
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x11

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7844
    return-void
.end method

.method public whitelist setBoolean(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 7412
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7413
    return-void
.end method

.method public whitelist setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .line 7854
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xd

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7855
    return-void
.end method

.method public whitelist setByte(ILjava/lang/String;B)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 7423
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7424
    return-void
.end method

.method public whitelist setChar(ILjava/lang/String;C)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 7737
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7738
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "stringResource"    # I

    .line 7777
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "stringResource":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "stringResource":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7780
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .line 7759
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7761
    return-void
.end method

.method public whitelist setCharSequenceAttr(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "stringAttribute"    # I

    .line 7796
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "stringAttribute":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "stringAttribute":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7800
    return-void
.end method

.method public whitelist setChronometer(IJLjava/lang/String;Z)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .line 6851
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6852
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 6853
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6854
    return-void
.end method

.method public whitelist setChronometerCountDown(IZ)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "isCountDown"    # Z

    .line 6865
    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6866
    return-void
.end method

.method public whitelist setColor(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorResource"    # I

    .line 7517
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "colorResource":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "colorResource":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7519
    return-void
.end method

.method public whitelist setColorAttr(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorAttribute"    # I

    .line 7535
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "colorAttribute":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "colorAttribute":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7537
    return-void
.end method

.method public whitelist setColorInt(ILjava/lang/String;II)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # I
    .param p4, "night"    # I

    .line 7554
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 7559
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7560
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x4

    move v1, p1

    move-object v2, p2

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7554
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7561
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorResource"    # I

    .line 7615
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "colorResource":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "colorResource":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7618
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/res/ColorStateList;

    .line 7573
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xf

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7575
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # Landroid/content/res/ColorStateList;
    .param p4, "night"    # Landroid/content/res/ColorStateList;

    .line 7592
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0xf

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "notNight":Landroid/content/res/ColorStateList;
    .end local p4    # "night":Landroid/content/res/ColorStateList;
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v4, "notNight":Landroid/content/res/ColorStateList;
    .local v5, "night":Landroid/content/res/ColorStateList;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7599
    return-void
.end method

.method public whitelist setColorStateListAttr(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorAttr"    # I

    .line 7634
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "colorAttr":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "colorAttr":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7637
    return-void
.end method

.method public whitelist setCompoundButtonChecked(IZ)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 7950
    new-instance v0, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7951
    return-void
.end method

.method public whitelist setContentDescription(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .line 7910
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 7911
    return-void
.end method

.method public whitelist setDisplayedChild(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .line 6682
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6683
    return-void
.end method

.method public whitelist setDouble(ILjava/lang/String;D)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 7726
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7727
    return-void
.end method

.method public greylist-max-o setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "colorFilter"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 7054
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7055
    return-void
.end method

.method public whitelist setEmptyView(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .line 6831
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6832
    return-void
.end method

.method public whitelist setFloat(ILjava/lang/String;F)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 7658
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7659
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;FI)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "unit"    # I

    .line 7694
    new-instance v0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x6

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "value":F
    .end local p4    # "unit":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v4, "value":F
    .local v5, "unit":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7697
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenResource"    # I

    .line 7676
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "dimenResource":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "dimenResource":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7678
    return-void
.end method

.method public whitelist setFloatDimenAttr(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenAttr"    # I

    .line 7714
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "dimenAttr":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "dimenAttr":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7716
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    .line 7876
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7877
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # Landroid/graphics/drawable/Icon;
    .param p4, "night"    # Landroid/graphics/drawable/Icon;

    .line 7894
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0x10

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "notNight":Landroid/graphics/drawable/Icon;
    .end local p4    # "night":Landroid/graphics/drawable/Icon;
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v4, "notNight":Landroid/graphics/drawable/Icon;
    .local v5, "night":Landroid/graphics/drawable/Icon;
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7901
    return-void
.end method

.method public whitelist setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 6811
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6812
    return-void
.end method

.method public whitelist setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 6821
    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 6822
    return-void
.end method

.method public whitelist setImageViewResource(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .line 6791
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6792
    return-void
.end method

.method public whitelist setImageViewUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 6801
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 6802
    return-void
.end method

.method public whitelist setInt(ILjava/lang/String;I)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 7445
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7446
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;FI)V
    .registers 11
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "unit"    # I

    .line 7480
    new-instance v0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x4

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "value":F
    .end local p4    # "unit":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v4, "value":F
    .local v5, "unit":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7482
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenResource"    # I

    .line 7463
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "dimenResource":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "dimenResource":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7465
    return-void
.end method

.method public whitelist setIntDimenAttr(ILjava/lang/String;I)V
    .registers 10
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenAttr"    # I

    .line 7499
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "viewId":I
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "dimenAttr":I
    .local v1, "viewId":I
    .local v2, "methodName":Ljava/lang/String;
    .local v5, "dimenAttr":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7501
    return-void
.end method

.method public blacklist setIntTag(III)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # I

    .line 547
    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 548
    return-void
.end method

.method public whitelist setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .line 7865
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xe

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7866
    return-void
.end method

.method public whitelist setLabelFor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .line 7940
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7941
    return-void
.end method

.method public blacklist setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 2
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 512
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 513
    return-void
.end method

.method public whitelist setLightBackgroundLayoutId(I)V
    .registers 2
    .param p1, "layoutId"    # I

    .line 7969
    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 7970
    return-void
.end method

.method public whitelist setLong(ILjava/lang/String;J)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 7647
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7648
    return-void
.end method

.method public whitelist setOnCheckedChangeResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 6998
    new-instance v0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    .line 7001
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 6998
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7003
    return-void
.end method

.method public whitelist setOnClickFillInIntent(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 6962
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6963
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 6964
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_18

    .line 6966
    :cond_11
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 6968
    :goto_18
    return-void
.end method

.method public whitelist setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 6908
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 6909
    return-void
.end method

.method public whitelist setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 6920
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6921
    return-void
.end method

.method public whitelist setOnStylusHandwritingPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 7029
    new-instance v0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7030
    return-void
.end method

.method public whitelist setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 6936
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6937
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 6938
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_19

    .line 6940
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6942
    :goto_19
    return-void
.end method

.method public greylist-max-o setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 7093
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setProgressBackgroundTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7095
    return-void
.end method

.method public whitelist setProgressBar(IIIZ)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .line 6883
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6884
    if-nez p4, :cond_14

    .line 6885
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6886
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6888
    :cond_14
    return-void
.end method

.method public greylist-max-o setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 7105
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setIndeterminateTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7107
    return-void
.end method

.method public greylist-max-o setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 7081
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setProgressTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7083
    return-void
.end method

.method public blacklist setProviderInstanceId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 10041
    iput-wide p1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 10042
    return-void
.end method

.method public whitelist setRadioGroupChecked(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "checkedId"    # I

    .line 7960
    new-instance v0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7961
    return-void
.end method

.method public whitelist setRelativeScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .line 7236
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7237
    return-void
.end method

.method public whitelist setRemoteAdapter(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7145
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 7146
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/content/Intent;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7160
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7161
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_17

    .line 7163
    :cond_f
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7165
    :goto_17
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 7216
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7217
    return-void
.end method

.method public greylist-max-r setRemoteAdapter(ILjava/util/ArrayList;I)V
    .registers 9
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7193
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 7194
    .local v0, "b":Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 7195
    int-to-long v2, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 7194
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7197
    .end local v1    # "i":I
    :cond_19
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 7198
    return-void
.end method

.method public greylist-max-o setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 499
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method public blacklist setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 7070
    new-instance v0, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(ILandroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7071
    return-void
.end method

.method public whitelist setScrollPosition(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .line 7226
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7227
    return-void
.end method

.method public whitelist setShort(ILjava/lang/String;S)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 7434
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7435
    return-void
.end method

.method public whitelist setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 7748
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7749
    return-void
.end method

.method public whitelist setTextColor(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 7117
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7118
    return-void
.end method

.method public greylist-max-o setTextColor(ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .line 7128
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setTextColor"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7130
    return-void
.end method

.method public whitelist setTextViewCompoundDrawables(IIIII)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 6728
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "viewId":I
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v1, "viewId":I
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6729
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 6762
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "viewId":I
    .end local p2    # "left":Landroid/graphics/drawable/Icon;
    .end local p3    # "top":Landroid/graphics/drawable/Icon;
    .end local p4    # "right":Landroid/graphics/drawable/Icon;
    .end local p5    # "bottom":Landroid/graphics/drawable/Icon;
    .local v1, "viewId":I
    .local v3, "left":Landroid/graphics/drawable/Icon;
    .local v4, "top":Landroid/graphics/drawable/Icon;
    .local v5, "right":Landroid/graphics/drawable/Icon;
    .local v6, "bottom":Landroid/graphics/drawable/Icon;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6763
    return-void
.end method

.method public whitelist setTextViewCompoundDrawablesRelative(IIIII)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .line 6744
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "viewId":I
    .end local p2    # "start":I
    .end local p3    # "top":I
    .end local p4    # "end":I
    .end local p5    # "bottom":I
    .local v1, "viewId":I
    .local v3, "start":I
    .local v4, "top":I
    .local v5, "end":I
    .local v6, "bottom":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6745
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 13
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 6781
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "viewId":I
    .end local p2    # "start":Landroid/graphics/drawable/Icon;
    .end local p3    # "top":Landroid/graphics/drawable/Icon;
    .end local p4    # "end":Landroid/graphics/drawable/Icon;
    .end local p5    # "bottom":Landroid/graphics/drawable/Icon;
    .local v1, "viewId":I
    .local v3, "start":Landroid/graphics/drawable/Icon;
    .local v4, "top":Landroid/graphics/drawable/Icon;
    .local v5, "end":Landroid/graphics/drawable/Icon;
    .local v6, "bottom":Landroid/graphics/drawable/Icon;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6782
    return-void
.end method

.method public whitelist setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 6702
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 6703
    return-void
.end method

.method public whitelist setTextViewTextSize(IIF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .line 6713
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6714
    return-void
.end method

.method public whitelist setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .line 7810
    if-eqz p3, :cond_11

    .line 7812
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 7813
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7814
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 7817
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xb

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7818
    return-void
.end method

.method public blacklist setUsageEventTag(II)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "tag"    # I

    .line 566
    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    const v1, 0x10204ab

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 567
    return-void
.end method

.method public whitelist setViewLayoutHeight(IFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "height"    # F
    .param p3, "units"    # I

    .line 7350
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7351
    return-void
.end method

.method public whitelist setViewLayoutHeightAttr(II)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "heightAttr"    # I

    .line 7371
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7373
    return-void
.end method

.method public whitelist setViewLayoutHeightDimen(II)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "heightDimen"    # I

    .line 7360
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7362
    return-void
.end method

.method public whitelist setViewLayoutMargin(IIFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "value"    # F
    .param p4, "units"    # I

    .line 7294
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7295
    return-void
.end method

.method public whitelist setViewLayoutMarginAttr(III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "attr"    # I

    .line 7276
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7277
    return-void
.end method

.method public whitelist setViewLayoutMarginDimen(III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "dimen"    # I

    .line 7263
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7264
    return-void
.end method

.method public whitelist setViewLayoutWidth(IFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "width"    # F
    .param p3, "units"    # I

    .line 7311
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7312
    return-void
.end method

.method public whitelist setViewLayoutWidthAttr(II)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "widthAttr"    # I

    .line 7332
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7334
    return-void
.end method

.method public whitelist setViewLayoutWidthDimen(II)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "widthDimen"    # I

    .line 7321
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7323
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadius(IFI)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "radius"    # F
    .param p3, "units"    # I

    .line 7385
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7386
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusAttr(II)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "attrId"    # I

    .line 7401
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7402
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusDimen(II)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .line 7393
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7394
    return-void
.end method

.method public whitelist setViewPadding(IIIII)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 7250
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "viewId":I
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v1, "viewId":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7251
    return-void
.end method

.method public whitelist setViewVisibility(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 6692
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6693
    return-void
.end method

.method protected blacklist shouldUseStaticFilter()Z
    .registers 3

    .line 8222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist showNext(I)V
    .registers 4
    .param p1, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6659
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6660
    return-void
.end method

.method public whitelist showPrevious(I)V
    .registers 4
    .param p1, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6672
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6673
    return-void
.end method

.method public blacklist updateAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 8603
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->get(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8604
    .local v0, "existing":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_13

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 8608
    return-void

    .line 8613
    :cond_13
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 8614
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 8615
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 889
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/Icon;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 890
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 891
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitIcons(Ljava/util/function/Consumer;)V

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 894
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 895
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 896
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 899
    .end local v0    # "i":I
    :cond_36
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3f

    .line 900
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 902
    :cond_3f
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_48

    .line 903
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 905
    :cond_48
    return-void
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 866
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 868
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 871
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 872
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 873
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 876
    .end local v0    # "i":I
    :cond_36
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3f

    .line 877
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 879
    :cond_3f
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_48

    .line 880
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 882
    :cond_48
    return-void
.end method

.method public blacklist writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "out"    # Landroid/util/proto/ProtoOutputStream;

    .line 10150
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1c

    .line 10152
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10153
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000011L

    invoke-virtual {p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10155
    :cond_1c
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 10156
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10157
    .local v0, "appResources":Landroid/content/res/Resources;
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    if-eqz v1, :cond_36

    .line 10158
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000003L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10160
    :cond_36
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v1, :cond_48

    .line 10161
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 10162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 10161
    const-wide v2, 0x10900000004L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10164
    :cond_48
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-eqz v1, :cond_5f

    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 10165
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000005L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10167
    :cond_5f
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_6d

    .line 10168
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 10169
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10171
    :cond_6d
    const-wide v1, 0x1080000000cL

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10172
    const-wide v1, 0x10500000007L

    iget v3, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10173
    const-wide v1, 0x1080000000dL

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10174
    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9d

    .line 10175
    const-wide v1, 0x10300000008L

    iget-wide v3, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 10178
    :cond_9d
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const-wide v2, 0x10500000001L

    if-nez v1, :cond_105

    .line 10179
    const/4 v1, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10180
    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-eqz v1, :cond_d8

    .line 10181
    const-wide v1, 0x10b00000006L

    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 10182
    .local v1, "token":J
    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    const-wide v4, 0x10200000001L

    invoke-virtual {p2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 10183
    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    const-wide v4, 0x10200000002L

    invoke-virtual {p2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 10184
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10187
    .end local v1    # "token":J
    :cond_d8
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_158

    .line 10188
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 10189
    .local v2, "action":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->canWriteToProto()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 10190
    const-wide v3, 0x20b00000010L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 10191
    .local v3, "token":J
    invoke-virtual {v2, p2, p1, v0}, Landroid/widget/RemoteViews$Action;->writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 10192
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10194
    .end local v2    # "action":Landroid/widget/RemoteViews$Action;
    .end local v3    # "token":J
    :cond_103
    goto :goto_e2

    :cond_104
    goto :goto_158

    .line 10196
    :cond_105
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_132

    .line 10197
    const/4 v1, 0x2

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10198
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 10199
    .local v2, "view":Landroid/widget/RemoteViews;
    const-wide v3, 0x20b00000009L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 10200
    .local v3, "sizedViewToken":J
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10201
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10202
    .end local v2    # "view":Landroid/widget/RemoteViews;
    .end local v3    # "sizedViewToken":J
    goto :goto_115

    :cond_131
    goto :goto_158

    .line 10204
    :cond_132
    const/4 v1, 0x1

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10205
    const-wide v1, 0x10b0000000bL

    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 10206
    .local v1, "landscapeViewToken":J
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10207
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10208
    const-wide v3, 0x10b0000000aL

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 10209
    .local v3, "portraitViewToken":J
    iget-object v5, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10210
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10212
    .end local v1    # "landscapeViewToken":J
    .end local v3    # "portraitViewToken":J
    :cond_158
    :goto_158
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8924
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 8925
    return-void
.end method
