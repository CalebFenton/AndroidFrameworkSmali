.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.implements Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;,
        Lcom/android/internal/app/ChooserActivity$ChooserHandler;,
        Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;,
        Lcom/android/internal/app/ChooserActivity$FileInfo;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListController;,
        Lcom/android/internal/app/ChooserActivity$FinishAnimation;,
        Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;,
        Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;,
        Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;,
        Lcom/android/internal/app/ChooserActivity$FooterViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ItemViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ViewHolderBase;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$AzInfoComparator;,
        Lcom/android/internal/app/ChooserActivity$ContentPreviewType;,
        Lcom/android/internal/app/ChooserActivity$ShareTargetType;
    }
.end annotation


# static fields
.field public static final blacklist APP_PREDICTION_INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field private static final blacklist APP_PREDICTION_SHARE_TARGET_QUERY_PACKAGE_LIMIT:I = 0x14

.field private static final blacklist APP_PREDICTION_SHARE_UI_SURFACE:Ljava/lang/String; = "share"

.field private static final blacklist CHIP_ICON_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_icon"

.field private static final blacklist CHIP_LABEL_METADATA_KEY:Ljava/lang/String; = "android.service.chooser.chip_label"

.field public static final blacklist CHOOSER_TARGET:Ljava/lang/String; = "chooser_target"

.field protected static final blacklist CONTENT_PREVIEW_FILE:I = 0x2

.field protected static final blacklist CONTENT_PREVIEW_IMAGE:I = 0x1

.field protected static final blacklist CONTENT_PREVIEW_TEXT:I = 0x3

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_IS_NEARBY_SHARE_FIRST_TARGET_IN_RANKED_APP:Z = false

.field private static final blacklist DEFAULT_LIST_VIEW_UPDATE_DELAY_MS:I = 0x0

.field private static final blacklist DEFAULT_SALT_EXPIRATION_DAYS:I = 0x7

.field private static final blacklist DIRECT_SHARE_EXPANSION_RATE:F = 0.78f

.field public static final blacklist EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field public static final blacklist FIRST_IMAGE_PREVIEW_TRANSITION_NAME:Ljava/lang/String; = "screenshot_preview_image"

.field private static final blacklist IMAGE_EDITOR_SHARED_ELEMENT:Ljava/lang/String; = "screenshot_preview_image"

.field public static final blacklist LAUNCH_LOCATION_DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field private static final blacklist MAX_EXTRA_CHOOSER_TARGETS:I = 0x2

.field private static final blacklist MAX_EXTRA_INITIAL_INTENTS:I = 0x2

.field private static final blacklist MAX_LOG_RANK_POSITION:I = 0xc

.field private static final blacklist NO_DIRECT_SHARE_ANIM_IN_MILLIS:I = 0xc8

.field private static final blacklist PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final blacklist PLURALS_COUNT:Ljava/lang/String; = "count"

.field private static final blacklist PLURALS_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final blacklist PREF_NUM_SHEET_EXPANSIONS:Ljava/lang/String; = "pref_num_sheet_expansions"

.field private static final blacklist SCROLL_STATUS_IDLE:I = 0x0

.field private static final blacklist SCROLL_STATUS_SCROLLING_HORIZONTAL:I = 0x2

.field private static final blacklist SCROLL_STATUS_SCROLLING_VERTICAL:I = 0x1

.field public static final blacklist SELECTION_TYPE_APP:I = 0x2

.field public static final blacklist SELECTION_TYPE_COPY:I = 0x4

.field public static final blacklist SELECTION_TYPE_EDIT:I = 0x6

.field public static final blacklist SELECTION_TYPE_NEARBY:I = 0x5

.field public static final blacklist SELECTION_TYPE_SERVICE:I = 0x1

.field public static final blacklist SELECTION_TYPE_STANDARD:I = 0x3

.field private static final blacklist SHARED_TEXT_KEY:Ljava/lang/String; = "shared_text"

.field private static final blacklist SHORTCUT_TARGET:Ljava/lang/String; = "shortcut_target"

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final blacklist TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field public static final blacklist TARGET_TYPE_CHOOSER_TARGET:I = 0x1

.field public static final blacklist TARGET_TYPE_DEFAULT:I = 0x0

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_PREDICTION_SERVICE:I = 0x3

.field public static final blacklist TARGET_TYPE_SHORTCUTS_FROM_SHORTCUT_MANAGER:I = 0x2

.field private static final blacklist URI_PERMISSION_INTENT_FLAGS:I = 0xc3

.field private static final blacklist USE_PREDICTION_MANAGER_FOR_SHARE_ACTIVITIES:Z = true


# instance fields
.field private blacklist mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field protected blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

.field protected blacklist mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

.field private blacklist mChooserShownTime:J

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mContentView:Landroid/view/View;

.field private blacklist mCurrAvailableWidth:I

.field private blacklist mDirectShareAppTargetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDirectShareShortcutInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

.field private blacklist mFilteredComponentNames:[Landroid/content/ComponentName;

.field private blacklist mIsAppPredictorComponentAvailable:Z

.field private blacklist mIsNearbyShareFirstTargetInRankedApp:Z

.field protected blacklist mIsSuccessfullySelected:Z

.field private blacklist mLastAppliedInsets:Landroid/graphics/Insets;

.field private blacklist mLastNumberOfChildren:I

.field blacklist mListViewUpdateDelayMs:I

.field private blacklist mMaxHashSaltDays:I

.field private blacklist mMaxTargetsPerRow:I

.field protected blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private blacklist mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

.field private blacklist mQueriedSharingShortcutsTimeMs:J

.field private blacklist mReferrerFillInIntent:Landroid/content/Intent;

.field private blacklist mRefinementIntentSender:Landroid/content/IntentSender;

.field private blacklist mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private blacklist mRemoveSharedElements:Z

.field private blacklist mReplacementExtras:Landroid/os/Bundle;

.field private blacklist mScrollStatus:I

.field private blacklist mShouldDisplayLandscape:Z

.field private blacklist mWorkAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1kEGsI1UKJP6HRX5lc0mZCAAYWw(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/app/ChooserActivity;->handleLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6R2P5B8i7h3HGOKYKMHcN5dIh4E(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->lambda$handleLayoutChange$5(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8UEGoYTjtmnL1cHlEpDZsSmdkVw(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;IIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/ChooserActivity;->handleScroll(Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9qVzHZEiHVKgopgSlu4YEKnoPJQ(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCopyButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J8sl3y5UFkHYV3cZsPiRy2X79Ps(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->lambda$queryDirectShareTargets$3(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JPX80vopyyL5X7hb40qB07gkFcg(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createEditButton$2(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K5__6j_cvqANWkSxkRo_oSNS55I(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createNearbyButton$1(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W6QMpKm7UQkw1l-NVRprZSQF_cQ(Landroid/net/Uri;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lMHhBWOaf1aF1o2xkBOVl9aCyG8(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->lambda$createAppPredictorCallback$0(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincrementNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->incrementNumSheetExpansions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logDirectShareTargetReceived(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->setHorizontalScrollingEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result p0

    return p0
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 192
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 273
    const-string v0, "hash_salt_max_days"

    const/4 v1, 0x7

    const-string/jumbo v2, "systemui"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 278
    nop

    .line 279
    const-string v0, "is_nearby_share_first_target_in_ranked_app"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    .line 290
    nop

    .line 291
    const-string/jumbo v0, "sharesheet_list_view_update_delay"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mListViewUpdateDelayMs:I

    .line 309
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    .line 311
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 312
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 337
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 341
    new-instance v2, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    .line 344
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mRemoveSharedElements:Z

    .line 346
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    .line 493
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    .line 193
    return-void
.end method

.method private blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "b"    # Landroid/widget/Button;

    .line 1345
    if-nez p2, :cond_3

    return-void

    .line 1346
    :cond_3
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1350
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1351
    .local v1, "gap":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1352
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    return-void
.end method

.method private blacklist adjustPreviewWidth(ILandroid/view/View;)V
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "parent"    # Landroid/view/View;

    .line 1111
    const/4 v0, -0x1

    .line 1112
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    if-eqz v1, :cond_10

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1116
    :cond_10
    if-nez p2, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, p2

    .line 1118
    .end local p2    # "parent":Landroid/view/View;
    .local v1, "parent":Landroid/view/View;
    :goto_1c
    const p2, 0x10202a3

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1119
    const p2, 0x10202a6

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1120
    const p2, 0x1020299

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/app/ChooserActivity;->updateLayoutWidth(IILandroid/view/View;)V

    .line 1121
    return-void
.end method

.method private blacklist calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I
    .registers 21
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "gridAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 2690
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 2691
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_f

    :cond_e
    move v2, v3

    .line 2692
    .local v2, "bottomInset":I
    :goto_f
    move v4, v2

    .line 2693
    .local v4, "offset":I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v5

    .line 2694
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2695
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2696
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 2700
    .local v5, "rowsToShow":I
    if-nez v5, :cond_29

    .line 2701
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowCount()I

    move-result v5

    .line 2706
    :cond_29
    if-nez v5, :cond_3e

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2707
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10500cd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 2709
    return v4

    .line 2712
    :cond_3e
    const v6, 0x1020296

    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2713
    .local v6, "stickyContentPreview":Landroid/view/View;
    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2714
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2717
    :cond_56
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2718
    const v7, 0x1020013

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2721
    :cond_68
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f6

    .line 2722
    const/4 v7, 0x0

    .line 2723
    .local v7, "directShareHeight":I
    const/4 v8, 0x4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2724
    invoke-direct {v0, v5}, Lcom/android/internal/app/ChooserActivity;->shouldShowExtraRow(I)Z

    move-result v8

    .line 2725
    .local v8, "shouldShowExtraRow":Z
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v9

    iput v9, v0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2726
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v10

    .line 2727
    .local v10, "childCount":I
    :goto_83
    const/4 v11, 0x1

    if-ge v9, v10, :cond_b7

    if-lez v5, :cond_b7

    .line 2728
    invoke-virtual {v1, v9}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2729
    .local v12, "child":Landroid/view/View;
    nop

    .line 2730
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v13}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v13

    if-eqz v13, :cond_9c

    .line 2731
    move-object/from16 v15, p4

    goto :goto_b4

    .line 2733
    :cond_9c
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2734
    .local v13, "height":I
    add-int/2addr v4, v13

    .line 2735
    if-eqz v8, :cond_a4

    .line 2736
    add-int/2addr v4, v13

    .line 2739
    :cond_a4
    nop

    .line 2740
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    .line 2739
    move-object/from16 v15, p4

    invoke-virtual {v15, v14}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getTargetType(I)I

    move-result v14

    if-ne v14, v11, :cond_b2

    .line 2742
    move v7, v13

    .line 2744
    :cond_b2
    add-int/lit8 v5, v5, -0x1

    .line 2727
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "height":I
    :goto_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    :cond_b7
    move-object/from16 v15, p4

    .line 2747
    .end local v9    # "i":I
    .end local v10    # "childCount":I
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_cc

    .line 2748
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_cc

    goto :goto_cd

    :cond_cc
    move v11, v3

    .line 2749
    .local v11, "isExpandable":Z
    :goto_cd
    if-eqz v7, :cond_f5

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v9

    if-eqz v9, :cond_f5

    if-eqz v11, :cond_f5

    .line 2752
    int-to-float v9, v7

    const v10, 0x3f47ae14    # 0.78f

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 2754
    .local v9, "requiredExpansionHeight":I
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v10, :cond_e5

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    .line 2755
    .local v3, "topInset":I
    :cond_e5
    sub-int v10, p2, p1

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->getAlwaysShowHeight()I

    move-result v12

    sub-int/2addr v10, v12

    sub-int/2addr v10, v9

    sub-int/2addr v10, v3

    sub-int/2addr v10, v2

    .line 2758
    .local v10, "minHeight":I
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2760
    .end local v3    # "topInset":I
    .end local v7    # "directShareHeight":I
    .end local v8    # "shouldShowExtraRow":Z
    .end local v9    # "requiredExpansionHeight":I
    .end local v10    # "minHeight":I
    .end local v11    # "isExpandable":Z
    :cond_f5
    goto :goto_107

    .line 2761
    :cond_f6
    move-object/from16 v15, p4

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2762
    .local v3, "currentEmptyStateView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_107

    .line 2763
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 2767
    .end local v3    # "currentEmptyStateView":Landroid/view/ViewGroup;
    :cond_107
    :goto_107
    sub-int v3, p2, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method private blacklist createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "r"    # Landroid/view/View$OnClickListener;

    .line 1263
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1264
    .local v0, "b":Landroid/widget/Button;
    if-eqz p1, :cond_22

    .line 1265
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1266
    const v3, 0x10500c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1267
    .local v1, "size":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1268
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1270
    .end local v1    # "size":I
    :cond_22
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    return-object v0
.end method

.method private blacklist createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2341
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    if-nez v0, :cond_6

    .line 2342
    const/4 v0, 0x0

    return-object v0

    .line 2345
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2346
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1e

    .line 2347
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0

    .line 2350
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1e

    .line 2351
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0

    .line 2357
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2358
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2359
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2360
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "intent_filter"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2361
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->populateTextContent(Landroid/os/Bundle;)V

    .line 2362
    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 2363
    const-string/jumbo v4, "share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2364
    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2365
    invoke-virtual {v3, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 2366
    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    .line 2367
    .local v3, "appPredictionContext":Landroid/app/prediction/AppPredictionContext;
    const-class v4, Landroid/app/prediction/AppPredictionManager;

    .line 2369
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppPredictionManager;

    .line 2370
    .local v4, "appPredictionManager":Landroid/app/prediction/AppPredictionManager;
    invoke-virtual {v4, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v5

    .line 2372
    .local v5, "appPredictionSession":Landroid/app/prediction/AppPredictor;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 2373
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_69

    .line 2375
    :cond_67
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 2377
    :goto_69
    return-object v5
.end method

.method private blacklist createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ResolverAppPredictorCallback;
    .registers 4
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 802
    new-instance v0, Lcom/android/internal/app/ResolverAppPredictorCallback;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverAppPredictorCallback;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 12
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 907
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 907
    move-object v1, p0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    .line 914
    .local v2, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 917
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;I)V

    .line 914
    return-object v0
.end method

.method private blacklist createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;
    .registers 14
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 928
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result v7

    .line 929
    .local v7, "selectedProfile":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 932
    const/4 v8, 0x0

    if-nez v7, :cond_b

    move-object v3, p1

    goto :goto_c

    :cond_b
    move-object v3, v8

    .line 935
    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 929
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v9

    .line 936
    .local v9, "personalAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mIntents:Ljava/util/ArrayList;

    .line 939
    const/4 v1, 0x1

    if-ne v7, v1, :cond_1f

    move-object v3, p1

    goto :goto_20

    :cond_1f
    move-object v3, v8

    .line 942
    :goto_20
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 936
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity;->createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v3

    .line 943
    .local v3, "workAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    new-instance v1, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 950
    move v6, v7

    .end local v7    # "selectedProfile":I
    .local v6, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    move-object v2, v9

    .end local v9    # "personalAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .local v2, "personalAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    iget v9, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;I)V

    .line 943
    return-object v0
.end method

.method private blacklist createCopyButton()Landroid/widget/Button;
    .registers 4

    .line 1276
    nop

    .line 1277
    const v0, 0x108054a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1278
    const v1, 0x1040001

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    .line 1276
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    .line 1279
    .local v0, "b":Landroid/widget/Button;
    const v1, 0x1020276

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 1280
    return-object v0
.end method

.method private blacklist createEditButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 6
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1307
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1308
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1310
    :cond_8
    nop

    .line 1311
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1312
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1310
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1334
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x1020277

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1335
    return-object v1
.end method

.method private blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .registers 6
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 1285
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1287
    :cond_8
    nop

    .line 1288
    invoke-interface {v0, p0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1289
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1287
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->createActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    .line 1302
    .local v1, "b":Landroid/widget/Button;
    const v2, 0x1020279

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1303
    return-object v1
.end method

.method private blacklist displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 8
    .param p1, "previewType"    # I
    .param p2, "targetIntent"    # Landroid/content/Intent;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 1357
    const/4 v0, 0x0

    .line 1359
    .local v0, "layout":Landroid/view/ViewGroup;
    packed-switch p1, :pswitch_data_44

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected content preview type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1361
    :pswitch_1d
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1362
    goto :goto_2c

    .line 1367
    :pswitch_22
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1368
    goto :goto_2c

    .line 1364
    :pswitch_27
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ChooserActivity;->displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1365
    nop

    .line 1373
    :goto_2c
    if-eqz v0, :cond_3b

    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1376
    :cond_3b
    const/4 v1, 0x1

    if-eq p1, v1, :cond_43

    .line 1377
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 1380
    :cond_43
    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_27
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist displayFileContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 20
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x1090063

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1567
    .local v2, "contentPreviewLayout":Landroid/view/ViewGroup;
    nop

    .line 1568
    const v6, 0x1020275

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1570
    .local v6, "actionRow":Landroid/view/ViewGroup;
    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1571
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1574
    :cond_29
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1575
    .local v7, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.extra.STREAM"

    const/16 v10, 0x8

    if-eqz v8, :cond_50

    .line 1576
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1577
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 1578
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1579
    return-object v2

    .line 1581
    :cond_4b
    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    .line 1582
    .end local v3    # "uri":Landroid/net/Uri;
    goto/16 :goto_e6

    .line 1583
    :cond_50
    const-class v8, Landroid/net/Uri;

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1584
    .local v8, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v11, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 1585
    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 1586
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/util/List;

    .line 1587
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1589
    .local v9, "uriCount":I
    if-nez v9, :cond_7f

    .line 1590
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1591
    const-string v3, "ChooserActivity"

    const-string v10, "Appears to be no uris available in EXTRA_STREAM, removing preview area"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return-object v2

    .line 1595
    :cond_7f
    const/4 v11, 0x1

    if-ne v9, v11, :cond_8c

    .line 1596
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v0, v3, v2}, Lcom/android/internal/app/ChooserActivity;->loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V

    goto :goto_e6

    .line 1598
    :cond_8c
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v11

    .line 1599
    .local v11, "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    add-int/lit8 v12, v9, -0x1

    .line 1600
    .local v12, "remUriCount":I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1601
    .local v13, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "count"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string v14, "file_name"

    iget-object v15, v11, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    nop

    .line 1604
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1603
    const v15, 0x1040423

    invoke-static {v14, v13, v15}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v14

    .line 1608
    .local v14, "fileName":Ljava/lang/String;
    const v15, 0x102029b

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1610
    .local v15, "fileNameView":Landroid/widget/TextView;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    const v3, 0x102029a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1614
    .local v3, "thumbnailView":Landroid/view/View;
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    const v10, 0x1020298

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1618
    .local v10, "fileIconView":Landroid/widget/ImageView;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1619
    const v0, 0x108043b

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1623
    .end local v3    # "thumbnailView":Landroid/view/View;
    .end local v8    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v9    # "uriCount":I
    .end local v10    # "fileIconView":Landroid/widget/ImageView;
    .end local v11    # "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    .end local v12    # "remUriCount":I
    .end local v13    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "fileNameView":Landroid/widget/TextView;
    :goto_e6
    return-object v2
.end method

.method private blacklist displayImageContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 21
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x1090064

    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1439
    .local v2, "contentPreviewLayout":Landroid/view/ViewGroup;
    const v6, 0x10202a0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1441
    .local v6, "imagePreview":Landroid/view/ViewGroup;
    nop

    .line 1442
    const v7, 0x1020275

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1444
    .local v7, "actionRow":Landroid/view/ViewGroup;
    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 1445
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1447
    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->createEditButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1449
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v8, v0, v2, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v8, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1451
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1452
    .local v8, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x8

    const-string/jumbo v11, "screenshot_preview_image"

    const-string v12, "android.intent.extra.STREAM"

    const v13, 0x102029c

    if-eqz v9, :cond_76

    .line 1453
    const-class v9, Landroid/net/Uri;

    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1454
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v12

    if-nez v12, :cond_68

    .line 1455
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1456
    return-object v2

    .line 1458
    :cond_68
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1459
    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1460
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v10, v13, v9, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1461
    .end local v9    # "uri":Landroid/net/Uri;
    goto/16 :goto_117

    .line 1462
    :cond_76
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1464
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-class v14, Landroid/net/Uri;

    invoke-virtual {v1, v12, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1465
    .local v12, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    .local v14, "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_89
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_af

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/net/Uri;

    .line 1467
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v16

    if-eqz v16, :cond_aa

    invoke-virtual {v9, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 1468
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_aa
    const/4 v3, 0x0

    const v13, 0x102029c

    goto :goto_89

    .line 1472
    :cond_af
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c0

    .line 1473
    const-string v3, "ChooserActivity"

    const-string v11, "Attempted to display image preview area with zero available images detected in EXTRA_STREAM list"

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1476
    return-object v2

    .line 1479
    :cond_c0
    const v3, 0x102029c

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1480
    invoke-virtual {v10, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1481
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    const/4 v11, 0x0

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-static {v10, v3, v13, v11}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1483
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v3, v11, :cond_ee

    .line 1484
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1485
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1484
    const v11, 0x102029d

    const/4 v13, 0x0

    invoke-static {v3, v11, v10, v13}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_117

    .line 1486
    :cond_ee
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_117

    .line 1487
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1488
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1487
    const v13, 0x102029e

    const/4 v15, 0x0

    invoke-static {v3, v13, v10, v15}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1489
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1490
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    .line 1489
    const v13, 0x102029f

    invoke-static {v3, v13, v10, v11}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1494
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v14    # "imageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_117
    :goto_117
    return-object v2
.end method

.method private blacklist displayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 16
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1385
    const v0, 0x1090065

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1388
    .local v0, "contentPreviewLayout":Landroid/view/ViewGroup;
    nop

    .line 1389
    const v2, 0x1020275

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1390
    .local v2, "actionRow":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->createCopyButton()Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1391
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeIncludedAsActionButton()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ChooserActivity;->addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 1395
    :cond_28
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1396
    .local v3, "sharingText":Ljava/lang/CharSequence;
    const/16 v4, 0x8

    if-nez v3, :cond_3d

    .line 1397
    const v5, 0x10202a3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 1400
    :cond_3d
    const v5, 0x10202a1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1401
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    .end local v5    # "textView":Landroid/widget/TextView;
    :goto_49
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1405
    .local v5, "previewTitle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 1406
    const v1, 0x10202a6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a0

    .line 1409
    :cond_60
    const v6, 0x10202a5

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1411
    .local v6, "previewTitleView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    .line 1414
    .local v7, "previewData":Landroid/content/ClipData;
    const/4 v8, 0x0

    .line 1415
    .local v8, "previewThumbnail":Landroid/net/Uri;
    if-eqz v7, :cond_81

    .line 1416
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_81

    .line 1417
    invoke-virtual {v7, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    .line 1418
    .local v9, "previewDataItem":Landroid/content/ClipData$Item;
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1422
    .end local v9    # "previewDataItem":Landroid/content/ClipData$Item;
    :cond_81
    const v9, 0x10202a4

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1424
    .local v10, "previewThumbnailView":Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->validForContentPreview(Landroid/net/Uri;)Z

    move-result v11

    if-nez v11, :cond_94

    .line 1425
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a0

    .line 1427
    :cond_94
    new-instance v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1428
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v9, v8, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    .line 1432
    .end local v6    # "previewTitleView":Landroid/widget/TextView;
    .end local v7    # "previewData":Landroid/content/ClipData;
    .end local v8    # "previewThumbnail":Landroid/net/Uri;
    .end local v10    # "previewThumbnailView":Landroid/widget/ImageView;
    :goto_a0
    return-object v0
.end method

.method private blacklist extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1520
    .local v1, "hasThumbnail":Z
    const/4 v2, -0x1

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity;->queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_54

    .line 1521
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4e

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4e

    .line 1522
    const-string v4, "_display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1523
    .local v4, "nameIndex":I
    const-string/jumbo v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1524
    .local v5, "titleIndex":I
    const-string v6, "flags"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1526
    .local v6, "flagsIndex":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1527
    if-eq v4, v2, :cond_2d

    .line 1528
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_34

    .line 1529
    :cond_2d
    if-eq v5, v2, :cond_34

    .line 1530
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1533
    :cond_34
    :goto_34
    if-eq v6, v2, :cond_4e

    .line 1534
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_42

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v8, 0x0

    :goto_40
    move v1, v8

    .end local v1    # "hasThumbnail":Z
    .local v8, "hasThumbnail":Z
    goto :goto_4e

    .line 1520
    .end local v4    # "nameIndex":I
    .end local v5    # "titleIndex":I
    .end local v6    # "flagsIndex":I
    .end local v8    # "hasThumbnail":Z
    .restart local v1    # "hasThumbnail":Z
    :catchall_42
    move-exception v4

    if-eqz v3, :cond_4d

    :try_start_45
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v5

    :try_start_4a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "hasThumbnail":Z
    .end local p0    # "this":Lcom/android/internal/app/ChooserActivity;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_4d
    :goto_4d
    throw v4

    .line 1538
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "hasThumbnail":Z
    .restart local p0    # "this":Lcom/android/internal/app/ChooserActivity;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "resolver":Landroid/content/ContentResolver;
    :cond_4e
    :goto_4e
    if-eqz v3, :cond_53

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_53} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_53} :catch_54

    .line 1540
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_53
    goto :goto_58

    .line 1538
    :catch_54
    move-exception v3

    .line 1539
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 1542
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1543
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1544
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1545
    .local v3, "index":I
    if-eq v3, v2, :cond_70

    .line 1546
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1550
    .end local v3    # "index":I
    :cond_70
    new-instance v2, Lcom/android/internal/app/ChooserActivity$FileInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ChooserActivity$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private blacklist filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7
    .param p2, "requiredTarget"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2150
    .local p1, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2151
    .local v0, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 2152
    .local v2, "shortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2153
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2155
    .end local v2    # "shortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    :cond_22
    goto :goto_9

    .line 2156
    :cond_23
    return-object v0
.end method

.method private blacklist findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I
    .registers 9
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1686
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_1b

    .line 1688
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1689
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v2

    return v2

    .line 1690
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1b
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_4f

    .line 1691
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1692
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_4e

    .line 1696
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1699
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, v3, p2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    .line 1700
    return v5

    .line 1702
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4b
    goto :goto_37

    .line 1704
    :cond_4c
    const/4 v2, 0x1

    return v2

    .line 1693
    :cond_4e
    :goto_4e
    return v3

    .line 1707
    .end local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4f
    return v3
.end method

.method private blacklist findPreferredContentPreview(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 1670
    if-nez p1, :cond_4

    .line 1671
    const/4 v0, 0x3

    return v0

    .line 1674
    :cond_4
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x2

    :goto_11
    return v1
.end method

.method private blacklist findRootView()Landroid/view/View;
    .registers 2

    .line 3065
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 3066
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    .line 3068
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private blacklist findSelectedProfile()I
    .registers 3

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getSelectedProfileExtra()I

    move-result v0

    .line 957
    .local v0, "selectedProfile":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v0

    .line 960
    :cond_f
    return v0
.end method

.method private blacklist getActiveEmptyStateView()Landroid/view/ViewGroup;
    .registers 3

    .line 2796
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    .line 2797
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter$ChooserProfileDescriptor;->getEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2394
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2393
    :goto_c
    return-object v0
.end method

.method private blacklist getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2405
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2406
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createAppPredictor(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2405
    :goto_c
    return-object v0
.end method

.method private blacklist getFirstVisibleImgPreviewView()Landroid/view/View;
    .registers 3

    .line 1340
    const v0, 0x102029c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1341
    .local v0, "firstImage":Landroid/view/View;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method private blacklist getNumSheetExpansions()I
    .registers 4

    .line 1711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static blacklist getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 845
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 850
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getProfileForUser(Landroid/os/UserHandle;)I
    .registers 3
    .param p1, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 2787
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2788
    const/4 v0, 0x1

    return v0

    .line 2792
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I
    .registers 7
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1983
    nop

    .line 1984
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1985
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1986
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    .line 1987
    .local v1, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v2, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1990
    .local v2, "maxRankedResults":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_3c

    .line 1991
    iget-object v4, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1992
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1993
    return v3

    .line 1990
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1996
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, -0x1

    return v3
.end method

.method private blacklist getTargetIntentFilter()Landroid/content/IntentFilter;
    .registers 11

    .line 2016
    const-string v0, "ChooserActivity"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2017
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 2018
    .local v3, "dataString":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    .line 2019
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 2020
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 2022
    :cond_21
    const-string v4, "Failed to get target intent filter: intent data and type are null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    return-object v1

    .line 2025
    :cond_27
    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2027
    .local v5, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_88

    const-string v7, "android.intent.extra.STREAM"

    if-eqz v6, :cond_55

    .line 2028
    :try_start_47
    const-class v6, Landroid/net/Uri;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 2029
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_54

    .line 2030
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2032
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_54
    goto :goto_60

    .line 2033
    :cond_55
    const-class v6, Landroid/net/Uri;

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2034
    .local v6, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v6, :cond_60

    .line 2035
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2038
    .end local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_60
    :goto_60
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 2039
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_86} :catch_88

    .line 2042
    .end local v7    # "uri":Landroid/net/Uri;
    goto :goto_64

    .line 2043
    :cond_87
    return-object v4

    .line 2044
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "dataString":Ljava/lang/String;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_88
    move-exception v2

    .line 2045
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to get target intent filter"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    return-object v1
.end method

.method private blacklist getUriGrantsManager()Landroid/app/IUriGrantsManager;
    .registers 2

    .line 4322
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 23
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 2629
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-nez v0, :cond_5

    .line 2630
    return-void

    .line 2632
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v6

    .line 2633
    .local v6, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v3

    .line 2636
    .local v3, "gridAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    if-eqz v3, :cond_9e

    if-eqz v6, :cond_9e

    .line 2637
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_9e

    .line 2641
    :cond_1d
    sub-int v0, p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2642
    .local v0, "availableWidth":I
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->consumeLayoutRequest()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_43

    .line 2643
    invoke-virtual {v3, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->calculateChooserTargetWidth(I)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2644
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_43

    iget v1, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    if-eq v0, v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    move v1, v2

    :goto_44
    move v7, v1

    .line 2647
    .local v7, "isLayoutUpdated":Z
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    move v8, v1

    .line 2649
    .local v8, "insetsChanged":Z
    if-nez v7, :cond_5b

    if-nez v8, :cond_5b

    iget v1, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    .line 2651
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_9d

    .line 2652
    :cond_5b
    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mCurrAvailableWidth:I

    .line 2653
    if-eqz v7, :cond_70

    .line 2657
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2658
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GridLayoutManager;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2661
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 2664
    :cond_70
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    .line 2665
    .local v9, "currentUserHandle":Landroid/os/UserHandle;
    invoke-direct {p0, v9}, Lcom/android/internal/app/ChooserActivity;->getProfileForUser(Landroid/os/UserHandle;)I

    move-result v10

    .line 2666
    .local v10, "currentProfile":I
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findSelectedProfile()I

    move-result v11

    .line 2667
    .local v11, "initialProfile":I
    if-eq v10, v11, :cond_81

    .line 2668
    return-void

    .line 2671
    :cond_81
    iget v1, p0, Lcom/android/internal/app/ChooserActivity;->mLastNumberOfChildren:I

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_8c

    if-nez v8, :cond_8c

    .line 2672
    return-void

    .line 2675
    :cond_8c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v12

    new-instance v1, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;

    move-object v2, p0

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2685
    .end local v9    # "currentUserHandle":Landroid/os/UserHandle;
    .end local v10    # "currentProfile":I
    .end local v11    # "initialProfile":I
    :cond_9d
    return-void

    .line 2638
    .end local v0    # "availableWidth":I
    .end local v7    # "isLayoutUpdated":Z
    .end local v8    # "insetsChanged":Z
    :cond_9e
    :goto_9e
    return-void
.end method

.method private blacklist handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 4
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1015
    invoke-static {p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 1016
    if-nez p1, :cond_24

    .line 1017
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    .line 1019
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->handlePackagesChanged()V

    goto :goto_27

    .line 1022
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1024
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 1025
    return-void
.end method

.method private blacklist handleScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .line 2617
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2618
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p5}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->handleScroll(Landroid/view/View;II)V

    .line 2620
    :cond_11
    return-void
.end method

.method private blacklist hasValidIcon(Landroid/service/chooser/ChooserTarget;)Z
    .registers 11
    .param p1, "target"    # Landroid/service/chooser/ChooserTarget;

    .line 4299
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 4300
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x1

    if-nez v1, :cond_8

    .line 4301
    return v0

    .line 4303
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_16

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_33

    .line 4304
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 4306
    .local v2, "uri":Landroid/net/Uri;
    :try_start_1a
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getUriGrantsManager()Landroid/app/IUriGrantsManager;

    move-result-object v3

    .line 4307
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getLaunchedFromUid()I

    move-result v4

    .line 4308
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4309
    invoke-static {v2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 4311
    invoke-static {v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    .line 4306
    const/4 v7, 0x1

    invoke-interface/range {v3 .. v8}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_32} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_34

    .line 4316
    nop

    .line 4318
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_33
    return v0

    .line 4313
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_34
    move-exception v0

    .line 4314
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get URI permission for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChooserActivity"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4315
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist hideStickyContentPreview()V
    .registers 3

    .line 3031
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3032
    return-void

    .line 3034
    :cond_7
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3035
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3036
    return-void
.end method

.method private blacklist incrementNumSheetExpansions()V
    .registers 4

    .line 1715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1716
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getNumSheetExpansions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1715
    const-string v2, "pref_num_sheet_expansions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1717
    return-void
.end method

.method private blacklist isAppPredictionServiceAvailable()Z
    .registers 2

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2171
    return v1

    .line 2175
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_21

    .line 2178
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2180
    if-eqz v0, :cond_20

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_20

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_20

    .line 2182
    const/4 v1, 0x1

    return v1

    .line 2184
    :cond_20
    return v1

    .line 2176
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_21
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private blacklist isStickyContentPreviewShowing()Z
    .registers 3

    .line 3026
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3027
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method static synthetic blacklist lambda$convertToChooserTarget$4(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .registers 4
    .param p0, "a"    # Landroid/service/chooser/ChooserTarget;
    .param p1, "b"    # Landroid/service/chooser/ChooserTarget;

    .line 2251
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private synthetic blacklist lambda$createAppPredictorCallback$0(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .registers 12
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "resultList"    # Ljava/util/List;

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_83

    .line 806
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_15

    .line 807
    return-void

    .line 809
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 810
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 813
    return-void

    .line 815
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v0, "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v1, "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 820
    .local v3, "appTarget":Landroid/app/prediction/AppTarget;
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 821
    goto :goto_38

    .line 823
    :cond_4b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_38

    .line 825
    :cond_4f
    move-object p2, v1

    .line 826
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    .line 827
    .restart local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    new-instance v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 828
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    .line 830
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 827
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    .end local v3    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_54

    .line 832
    :cond_7a
    nop

    .line 833
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 832
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 834
    return-void

    .line 804
    .end local v0    # "shareShortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v1    # "shortcutResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    :cond_83
    :goto_83
    return-void
.end method

.method private synthetic blacklist lambda$createEditButton$2(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 8
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, ""

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1320
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getFirstVisibleImgPreviewView()Landroid/view/View;

    move-result-object v0

    .line 1322
    .local v0, "firstImgView":Landroid/view/View;
    if-nez v0, :cond_1d

    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1324
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_33

    .line 1326
    :cond_1d
    const-string/jumbo v1, "screenshot_preview_image"

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1328
    .local v1, "options":Landroid/app/ActivityOptions;
    nop

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 1328
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 1330
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->startFinishAnimation()V

    .line 1332
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :goto_33
    return-void
.end method

.method private synthetic blacklist lambda$createNearbyButton$1(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .registers 8
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "unused"    # Landroid/view/View;

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, ""

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1300
    return-void
.end method

.method private synthetic blacklist lambda$handleLayoutChange$5(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;IILcom/android/internal/widget/RecyclerView;)V
    .registers 7
    .param p1, "gridAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 2676
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_7

    goto :goto_1a

    .line 2679
    :cond_7
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/internal/app/ChooserActivity;->calculateDrawerOffset(IILcom/android/internal/widget/RecyclerView;Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)I

    move-result v0

    .line 2680
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    .line 2681
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markOffsetCalculated()V

    .line 2682
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mLastAppliedInsets:Landroid/graphics/Insets;

    .line 2683
    return-void

    .line 2677
    .end local v0    # "offset":I
    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$queryDirectShareTargets$3(Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2070
    .local v0, "selectedProfileContext":Landroid/content/Context;
    nop

    .line 2071
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 2072
    .local v1, "sm":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v2

    .line 2073
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v2, p3, v3, p1}, Lcom/android/internal/app/ChooserActivity;->sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2074
    return-void
.end method

.method private blacklist loadFileUriIntoView(Landroid/net/Uri;Landroid/view/View;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "parent"    # Landroid/view/View;

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->extractFileInfo(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/android/internal/app/ChooserActivity$FileInfo;

    move-result-object v0

    .line 1629
    .local v0, "fileInfo":Lcom/android/internal/app/ChooserActivity$FileInfo;
    const v1, 0x102029b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1630
    .local v1, "fileNameView":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    iget-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    const v3, 0x102029a

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    .line 1633
    new-instance v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {v2, p0, p2, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 1634
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V

    goto :goto_46

    .line 1636
    :cond_2b
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1637
    .local v2, "thumbnailView":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1639
    const v3, 0x1020298

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1640
    .local v3, "fileIconView":Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1641
    const v4, 0x10802dc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1643
    .end local v2    # "thumbnailView":Landroid/view/View;
    .end local v3    # "fileIconView":Landroid/widget/ImageView;
    :goto_46
    return-void
.end method

.method private blacklist logActionShareWithPreview()V
    .registers 6

    .line 3039
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3040
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 3041
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x674

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3042
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 3041
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3043
    return-void
.end method

.method private blacklist logContentPreviewWarning(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") thumbnail/name for preview. If desired, consider using Intent#createChooser to launch the ChooserActivity, and set your Intent\'s clipData and flags in accordance with that method\'s documentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return-void
.end method

.method private blacklist logDirectShareTargetReceived(I)V
    .registers 6
    .param p1, "logCategory"    # I

    .line 2257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2258
    .local v0, "apiLatency":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2259
    return-void
.end method

.method private blacklist maybeCancelFinishAnimation()Z
    .registers 5

    .line 3053
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findRootView()Landroid/view/View;

    move-result-object v0

    .line 3054
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 3055
    .local v1, "animation":Landroid/view/animation/Animation;
    :goto_c
    instance-of v2, v1, Lcom/android/internal/app/ChooserActivity$FinishAnimation;

    if-eqz v2, :cond_1d

    .line 3056
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    .line 3057
    .local v2, "hasEnded":Z
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 3058
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3059
    xor-int/lit8 v3, v2, 0x1

    return v3

    .line 3061
    .end local v2    # "hasEnded":Z
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 4
    .param p1, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2866
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2867
    return-void

    .line 2871
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->shouldQueryShortcutManager(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2872
    return-void

    .line 2877
    :cond_12
    const-string v0, "ChooserActivity"

    const-string/jumbo v1, "querying direct share targets from ShortcutManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity;->queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V

    .line 2882
    return-void
.end method

.method private blacklist modifyTargetIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "in"    # Landroid/content/Intent;

    .line 1824
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1825
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1828
    :cond_b
    return-void
.end method

.method private blacklist onCopyButtonClicked(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .line 1028
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1029
    .local v0, "targetIntent":Landroid/content/Intent;
    if-nez v0, :cond_b

    .line 1030
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto/16 :goto_b0

    .line 1032
    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1035
    .local v2, "clipData":Landroid/content/ClipData;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ChooserActivity"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    if-eqz v3, :cond_44

    .line 1036
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "extraText":Ljava/lang/String;
    const-class v8, Landroid/net/Uri;

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1039
    .local v6, "extraStream":Landroid/net/Uri;
    if-eqz v3, :cond_33

    .line 1040
    invoke-static {v7, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_3d

    .line 1041
    :cond_33
    if-eqz v6, :cond_3e

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1047
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v6    # "extraStream":Landroid/net/Uri;
    :goto_3d
    goto :goto_7d

    .line 1044
    .restart local v3    # "extraText":Ljava/lang/String;
    .restart local v6    # "extraStream":Landroid/net/Uri;
    :cond_3e
    const-string v4, "No data available to copy to clipboard"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1047
    .end local v3    # "extraText":Ljava/lang/String;
    .end local v6    # "extraStream":Landroid/net/Uri;
    :cond_44
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 1048
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1050
    .local v3, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 1051
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7c

    .line 1052
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v7, v8}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 1051
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 1054
    .end local v3    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5    # "i":I
    :cond_7c
    nop

    .line 1061
    :goto_7d
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 1063
    .local v3, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ClipboardManager;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1066
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x6d5

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1067
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1068
    .local v5, "targetLogMaker":Landroid/metrics/LogMaker;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, ""

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1075
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ChooserActivity;->setResult(I)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1078
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "clipData":Landroid/content/ClipData;
    .end local v3    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v5    # "targetLogMaker":Landroid/metrics/LogMaker;
    :goto_b0
    return-void

    .line 1057
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "clipData":Landroid/content/ClipData;
    :cond_b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not supported for copying to clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void
.end method

.method private blacklist populateTextContent(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2381
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2383
    .local v1, "sharedText":Ljava/lang/String;
    const-string/jumbo v2, "shared_text"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    return-void
.end method

.method private static blacklist removeIcon(Landroid/service/chooser/ChooserTarget;)Landroid/service/chooser/ChooserTarget;
    .registers 8
    .param p0, "target"    # Landroid/service/chooser/ChooserTarget;

    .line 4326
    if-nez p0, :cond_4

    .line 4327
    const/4 v0, 0x0

    return-object v0

    .line 4329
    :cond_4
    new-instance v1, Landroid/service/chooser/ChooserTarget;

    .line 4330
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4332
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v4

    .line 4333
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 4334
    invoke-virtual {p0}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4329
    return-object v1
.end method

.method private blacklist sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 7
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2317
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2318
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2317
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2319
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_d

    .line 2320
    return-void

    .line 2322
    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v1, :cond_12

    .line 2323
    return-void

    .line 2325
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 2326
    .local v1, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    const/4 v2, 0x0

    .line 2327
    .local v2, "appTarget":Landroid/app/prediction/AppTarget;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v3, :cond_27

    .line 2328
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 2331
    :cond_27
    if-eqz v2, :cond_3c

    .line 2332
    new-instance v3, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 2334
    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v3

    .line 2335
    invoke-virtual {v3}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v3

    .line 2332
    invoke-virtual {v0, v3}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 2337
    :cond_3c
    return-void
.end method

.method private blacklist sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 14
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 2292
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2293
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2292
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 2294
    .local v0, "directShareAppPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_d

    .line 2295
    return-void

    .line 2298
    :cond_d
    instance-of v1, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v1, :cond_12

    .line 2299
    return-void

    .line 2301
    :cond_12
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v1

    .line 2302
    .local v1, "surfacedTargetInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/ChooserTargetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .local v2, "targetIds":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTargetId;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 2304
    .local v4, "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {v4}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v5

    .line 2305
    .local v5, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 2306
    .local v6, "componentName":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 2307
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 2308
    .local v7, "shortcutId":Ljava/lang/String;
    new-instance v8, Landroid/app/prediction/AppTargetId;

    .line 2309
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "shortcut_target"

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%s/%s/%s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 2308
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    .end local v4    # "chooserTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    .end local v5    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "shortcutId":Ljava/lang/String;
    :cond_60
    goto :goto_1f

    .line 2313
    :cond_61
    const-string v3, "direct_share"

    invoke-virtual {v0, v3, v2}, Landroid/app/prediction/AppPredictor;->notifyLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V

    .line 2314
    return-void
.end method

.method private blacklist sendShareShortcutInfoList(Ljava/util/List;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 14
    .param p2, "chooserListAdapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Lcom/android/internal/app/ChooserListAdapter;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 2104
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    if-eqz p3, :cond_39

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_39

    .line 2105
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2107
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    :cond_39
    :goto_39
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ChooserActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 2110
    .local v1, "selectedProfileContext":Landroid/content/Context;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_44
    if-ltz v2, :cond_65

    .line 2111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2112
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 2113
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2114
    if-eqz p3, :cond_62

    .line 2115
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2110
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_62
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    .line 2121
    .end local v2    # "i":I
    :cond_65
    if-nez p3, :cond_69

    const/4 v2, 0x2

    goto :goto_6a

    .line 2122
    :cond_69
    const/4 v2, 0x3

    :goto_6a
    nop

    .line 2127
    .local v2, "shortcutType":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    .local v3, "resultRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v5

    if-ge v4, v5, :cond_9a

    .line 2129
    invoke-virtual {p2, v4}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    .line 2130
    .local v5, "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    nop

    .line 2132
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 2131
    invoke-direct {p0, p1, v6}, Lcom/android/internal/app/ChooserActivity;->filterShortcutsByTargetComponentName(Ljava/util/List;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .line 2133
    .local v6, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 2134
    goto :goto_97

    .line 2136
    :cond_8b
    invoke-virtual {p0, v6, p1, p3, v2}, Lcom/android/internal/app/ChooserActivity;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 2139
    .local v7, "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    invoke-direct {v8, v5, v7, p4}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 2141
    .local v8, "resultRecord":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2128
    .end local v5    # "displayResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v7    # "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .end local v8    # "resultRecord":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 2144
    .end local v4    # "i":I
    :cond_9a
    new-array v0, v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2145
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2144
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/app/ChooserActivity;->sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V

    .line 2146
    return-void
.end method

.method private blacklist setHorizontalScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3164
    const v0, 0x1020492

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverViewPager;

    .line 3165
    .local v0, "viewPager":Lcom/android/internal/app/ResolverViewPager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverViewPager;->setSwipingEnabled(Z)V

    .line 3166
    return-void
.end method

.method private blacklist setVerticalScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3169
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3170
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 3171
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserGridLayoutManager;

    .line 3172
    .local v0, "layoutManager":Lcom/android/internal/app/ChooserGridLayoutManager;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->setVerticalScrollEnabled(Z)V

    .line 3173
    return-void
.end method

.method private blacklist setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 791
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    .line 792
    .local v0, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-nez v0, :cond_8

    .line 793
    const/4 v1, 0x0

    return-object v1

    .line 795
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 797
    return-object v0
.end method

.method private blacklist setupScrollListener()V
    .registers 7

    .line 2903
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v0, :cond_5

    .line 2904
    return-void

    .line 2906
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x1020013

    goto :goto_12

    :cond_f
    const v0, 0x1020278

    .line 2907
    .local v0, "elevatedViewResId":I
    :goto_12
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2908
    .local v1, "elevatedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v2

    .line 2909
    .local v2, "defaultElevation":F
    nop

    .line 2910
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 2911
    .local v3, "chooserHeaderScrollElevation":F
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v4

    new-instance v5, Lcom/android/internal/app/ChooserActivity$4;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/android/internal/app/ChooserActivity$4;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 2939
    return-void
.end method

.method private blacklist shouldDisplayLandscape(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .line 1107
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist shouldNearbyShareBeFirstInRankedRow()Z
    .registers 2

    .line 4291
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsNearbyShareFirstTargetInRankedApp:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist shouldNearbyShareBeIncludedAsActionButton()Z
    .registers 2

    .line 4295
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist shouldQueryShortcutManager(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2082
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2083
    return v1

    .line 2085
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2086
    return v1

    .line 2088
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 2089
    return v2

    .line 2091
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2092
    return v2

    .line 2094
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2095
    return v2

    .line 2097
    :cond_29
    return v1
.end method

.method private blacklist shouldShowExtraRow(I)Z
    .registers 5
    .param p1, "rowsToShow"    # I

    .line 2776
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2779
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 2778
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2776
    :goto_19
    return v0
.end method

.method private blacklist shouldShowStickyContentPreview()Z
    .registers 3

    .line 2965
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2966
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 2965
    :goto_16
    return v0
.end method

.method private blacklist shouldShowStickyContentPreviewNoOrientationCheck()Z
    .registers 6

    .line 2970
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2971
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2970
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2972
    .local v0, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    move v3, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v2

    .line 2973
    .local v3, "isEmpty":Z
    :goto_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewWhenEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2974
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v4

    if-eqz v4, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    nop

    .line 2973
    :goto_33
    return v1
.end method

.method private blacklist showStickyContentPreview()V
    .registers 3

    .line 3018
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->isStickyContentPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3019
    return-void

    .line 3021
    :cond_7
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3022
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3023
    return-void
.end method

.method private blacklist startFinishAnimation()V
    .registers 3

    .line 3046
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->findRootView()Landroid/view/View;

    move-result-object v0

    .line 3047
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 3048
    new-instance v1, Lcom/android/internal/app/ChooserActivity$FinishAnimation;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3050
    :cond_e
    return-void
.end method

.method private blacklist updateLayoutWidth(IILandroid/view/View;)V
    .registers 6
    .param p1, "layoutResourceId"    # I
    .param p2, "width"    # I
    .param p3, "parent"    # Landroid/view/View;

    .line 1138
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1140
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1141
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1142
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    return-void
.end method

.method private blacklist updateStickyContentPreview()V
    .registers 3

    .line 2999
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreviewNoOrientationCheck()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3004
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3005
    .local v0, "contentPreviewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1c

    .line 3006
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 3007
    .local v1, "contentPreviewView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3010
    .end local v0    # "contentPreviewContainer":Landroid/view/ViewGroup;
    .end local v1    # "contentPreviewView":Landroid/view/ViewGroup;
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3011
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->showStickyContentPreview()V

    goto :goto_29

    .line 3013
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->hideStickyContentPreview()V

    .line 3015
    :goto_29
    return-void
.end method

.method private blacklist updateTabPadding()V
    .registers 7

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1125
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1126
    .local v0, "tabs":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1129
    .local v1, "iconSize":F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1132
    .local v2, "padding":F
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050333

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 1133
    float-to-int v3, v2

    float-to-int v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1135
    .end local v0    # "tabs":Landroid/view/View;
    .end local v1    # "iconSize":F
    .end local v2    # "padding":F
    :cond_3b
    return-void
.end method

.method private static blacklist validForContentPreview(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1652
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1653
    return v0

    .line 1655
    :cond_4
    const/4 v1, -0x2

    invoke-static {p0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 1656
    .local v2, "userId":I
    if-eq v2, v1, :cond_2a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v2, v1, :cond_2a

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropped invalid content URI belonging to user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChooserActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return v0

    .line 1660
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1792
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v0, v0

    if-lez v0, :cond_1a

    .line 1793
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    .line 1795
    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1793
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 1799
    :cond_1a
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .registers 2

    .line 786
    const v0, 0x1030404

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .registers 5
    .param p1, "height"    # I

    .line 2007
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 2009
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 2010
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setFooterHeight(I)V

    .line 2009
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2012
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method blacklist checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z
    .registers 8
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2439
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    .line 2440
    .local v0, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_9
    if-ge v1, v2, :cond_1c

    .line 2441
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2442
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2443
    const/4 v4, 0x1

    return v4

    .line 2440
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2446
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 23
    .param p4, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .line 2206
    .local p1, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p2, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p3, "allAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .local v4, "scoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3c

    .line 2208
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 2209
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    .line 2210
    .local v6, "shortcutRank":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 2211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2208
    .end local v6    # "shortcutRank":I
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2214
    .end local v5    # "i":I
    :cond_39
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2217
    :cond_3c
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2218
    .local v5, "chooserTargetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_cf

    .line 2219
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2220
    .local v7, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 2223
    .local v8, "indexInAllShortcuts":I
    const/4 v10, 0x3

    const/4 v11, 0x0

    const v12, 0x3c23d70a    # 0.01f

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_72

    .line 2225
    int-to-float v10, v8

    mul-float/2addr v10, v12

    sub-float/2addr v13, v10

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v15, v10

    .local v10, "score":F
    goto :goto_86

    .line 2228
    .end local v10    # "score":F
    :cond_72
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 2229
    .local v10, "rankIndex":I
    int-to-float v14, v10

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v15, v11

    .line 2232
    .end local v10    # "rankIndex":I
    .local v15, "score":F
    :goto_86
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v10, v17

    .line 2233
    .local v10, "extras":Landroid/os/Bundle;
    const-string v11, "android.intent.extra.shortcut.ID"

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    new-instance v12, Landroid/service/chooser/ChooserTarget;

    .line 2236
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    .line 2238
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v11}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v16

    const/4 v14, 0x0

    .end local v10    # "extras":Landroid/os/Bundle;
    .local v17, "extras":Landroid/os/Bundle;
    invoke-direct/range {v12 .. v17}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2240
    .local v12, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    if-eqz v10, :cond_c2

    if-eqz v2, :cond_c2

    .line 2242
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareAppTargetCache:Ljava/util/Map;

    .line 2243
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/prediction/AppTarget;

    .line 2242
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    :cond_c2
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    if-eqz v10, :cond_cb

    .line 2246
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    invoke-interface {v10, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    .end local v7    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "indexInAllShortcuts":I
    .end local v12    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    .end local v15    # "score":F
    .end local v17    # "extras":Landroid/os/Bundle;
    :cond_cb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_46

    :cond_cf
    move-object/from16 v9, p2

    .line 2250
    .end local v6    # "i":I
    new-instance v6, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda6;-><init>()V

    .line 2252
    .local v6, "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2253
    return-object v5
.end method

.method protected blacklist createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .registers 11

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    .line 872
    .local v0, "isSendAction":Z
    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    .line 878
    if-eqz v0, :cond_f

    const-string v3, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    goto :goto_11

    :cond_f
    const-string v3, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    :goto_11
    move-object v5, v3

    .line 880
    if-eqz v0, :cond_19

    const v3, 0x104091d

    move v6, v3

    goto :goto_1d

    .line 881
    :cond_19
    const v3, 0x104091b

    move v6, v3

    :goto_1d
    const/16 v7, 0x9e

    const-string v8, "intent_chooser"

    const-string v3, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v4, 0x104091f

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    .line 885
    .local v9, "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    new-instance v1, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    .line 891
    if-eqz v0, :cond_32

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    goto :goto_34

    :cond_32
    const-string v2, "Core.RESOLVER_CANT_ACCESS_WORK"

    :goto_34
    move-object v5, v2

    .line 893
    if-eqz v0, :cond_3c

    const v2, 0x104091e

    move v6, v2

    goto :goto_40

    .line 894
    :cond_3c
    const v2, 0x104091c

    move v6, v2

    :goto_40
    const/16 v7, 0x9f

    const-string v8, "intent_chooser"

    const-string v3, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v4, 0x104091f

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    move-object v5, v1

    .line 898
    .local v5, "noPersonalToWorkEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    new-instance v2, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v7

    move-object v4, v9

    .end local v9    # "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .local v4, "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;-><init>(Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;Landroid/os/UserHandle;)V

    .line 898
    return-object v2
.end method

.method public blacklist createChooserGridAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;"
        }
    .end annotation

    .line 2527
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/app/ChooserActivity;->createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 2529
    move-object v1, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2530
    .end local p1    # "context":Landroid/content/Context;
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .local v1, "userHandle":Landroid/os/UserHandle;
    .local p2, "context":Landroid/content/Context;
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "initialIntents":[Landroid/content/Intent;
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p6, "filterLastUsed":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createAppPredictorCallback(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ResolverAppPredictorCallback;

    move-result-object v2

    .line 2531
    .local v2, "appPredictorCallbackWrapper":Lcom/android/internal/app/ResolverAppPredictorCallback;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverAppPredictorCallback;->asCallback()Landroid/app/prediction/AppPredictor$Callback;

    move-result-object v3

    .line 2532
    .local v3, "appPredictorCallback":Landroid/app/prediction/AppPredictor$Callback;
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->setupAppPredictorForUser(Landroid/os/UserHandle;Landroid/app/prediction/AppPredictor$Callback;)Landroid/app/prediction/AppPredictor;

    move-result-object v4

    .line 2533
    .local v4, "appPredictor":Landroid/app/prediction/AppPredictor;
    invoke-virtual {v0, v4}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 2534
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;Lcom/android/internal/app/ResolverAppPredictorCallback;)V

    .line 2536
    new-instance v5, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    return-object v5
.end method

.method public blacklist createChooserListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/internal/app/ChooserListAdapter;"
        }
    .end annotation

    .line 2547
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p6

    .line 2546
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isLaunchedAsCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2547
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2548
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v0

    :goto_18
    move-object v13, v1

    .line 2549
    .local v13, "initialIntentsUserSpace":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/internal/app/ChooserListAdapter;

    .line 2550
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    .line 2551
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2552
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v12

    move-object v10, p0

    move-object v9, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/app/ChooserListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V

    .line 2549
    return-object v2
.end method

.method protected blacklist createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1153
    .local v0, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v1

    .line 1154
    .local v1, "previewType":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity;->displayContentPreview(ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 14
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2557
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForShareActivitiesIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v4

    .line 2559
    .local v4, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v4, :cond_1c

    .line 2560
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2561
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V

    move-object v10, v4

    .end local v4    # "appPredictor":Landroid/app/prediction/AppPredictor;
    .local v10, "appPredictor":Landroid/app/prediction/AppPredictor;
    move-object v8, v0

    .local v0, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    goto :goto_35

    .line 2563
    .end local v0    # "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    .end local v10    # "appPredictor":Landroid/app/prediction/AppPredictor;
    .restart local v4    # "appPredictor":Landroid/app/prediction/AppPredictor;
    :cond_1c
    move-object v10, v4

    .end local v4    # "appPredictor":Landroid/app/prediction/AppPredictor;
    .restart local v10    # "appPredictor":Landroid/app/prediction/AppPredictor;
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 2566
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2567
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2569
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v5

    .line 2570
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    move-object v8, v0

    .line 2573
    .local v8, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    :goto_35
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity;->getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v11

    .line 2574
    .local v11, "queryIntentsUser":Landroid/os/UserHandle;
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserListController;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 2577
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2578
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivity;->mLaunchedFromUid:I

    .line 2582
    if-nez v11, :cond_4b

    move-object v9, p1

    goto :goto_4c

    :cond_4b
    move-object v9, v11

    :goto_4c
    move-object v2, p0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    .line 2574
    return-object v0
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 5
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 858
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 859
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    goto :goto_13

    .line 862
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity;->createChooserMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 865
    :goto_13
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 993
    new-instance v0, Lcom/android/internal/app/ChooserActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$3;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .registers 2

    .line 2479
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    if-nez v0, :cond_b

    .line 2480
    new-instance v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 2482
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method protected blacklist getEditSharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1173
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "editorPackage":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_19

    .line 1177
    :cond_14
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 1175
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist getEditSharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 11
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getEditSharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1184
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v1

    .line 1188
    .local v7, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0xc3

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1189
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1190
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1192
    .local v1, "originalAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ChooserActivity"

    if-eqz v2, :cond_94

    .line 1193
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_48

    .line 1194
    const-string v2, "android.intent.extra.STREAM"

    const-class v5, Landroid/net/Uri;

    invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1195
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_47

    .line 1196
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1197
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_47
    nop

    .line 1204
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v2, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1206
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_77

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_59

    goto :goto_77

    .line 1212
    :cond_59
    move-object v4, v2

    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1213
    const v3, 0x1040988

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "originalIntent":Landroid/content/Intent;
    .local v3, "originalIntent":Landroid/content/Intent;
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    move-object v3, v2

    move-object v2, v4

    .line 1214
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v3, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .restart local p1    # "originalIntent":Landroid/content/Intent;
    const v4, 0x10805c7

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    return-object v3

    .line 1207
    .end local v3    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_77
    :goto_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device-specified image edit component ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") not available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-object v3

    .line 1201
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not supported."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-object v3
.end method

.method public blacklist getLayoutResource()I
    .registers 2

    .line 1803
    const v0, 0x1090062

    return v0
.end method

.method public blacklist getMaxRankedTargets()I
    .registers 2

    .line 2826
    iget v0, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 3130
    const-string v0, "intent_chooser"

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 2472
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 2473
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2475
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method protected blacklist getNearbySharingComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1159
    nop

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1159
    const-string v1, "nearby_sharing_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "nearbyComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1163
    const v1, 0x1040246

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1165
    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1166
    const/4 v1, 0x0

    return-object v1

    .line 1168
    :cond_20
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 13
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1221
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    if-nez v1, :cond_8

    return-object v0

    .line 1223
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v2

    .line 1224
    .local v8, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1225
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v8, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1227
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_79

    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_23

    move-object v4, p1

    goto :goto_7a

    .line 1235
    :cond_23
    const/4 v2, 0x0

    .line 1236
    .local v2, "name":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1237
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1238
    .local v10, "metaData":Landroid/os/Bundle;
    if-eqz v10, :cond_4e

    .line 1240
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1241
    .local v0, "pkgRes":Landroid/content/res/Resources;
    const-string v4, "android.service.chooser.chip_label"

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1242
    .local v4, "nameResId":I
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1243
    const-string v6, "android.service.chooser.chip_icon"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1244
    .local v6, "resId":I
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_48} :catch_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_48} :catch_4a

    move-object v3, v7

    .end local v0    # "pkgRes":Landroid/content/res/Resources;
    .end local v4    # "nameResId":I
    .end local v6    # "resId":I
    goto :goto_4d

    .line 1246
    :catch_4a
    move-exception v0

    goto :goto_4e

    .line 1245
    :catch_4c
    move-exception v0

    .line 1247
    :goto_4d
    nop

    .line 1249
    :cond_4e
    :goto_4e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v6, v2

    goto :goto_5f

    .line 1249
    :cond_5e
    move-object v6, v2

    .line 1252
    .end local v2    # "name":Ljava/lang/CharSequence;
    .local v6, "name":Ljava/lang/CharSequence;
    :goto_5f
    if-nez v3, :cond_6b

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_6c

    .line 1252
    :cond_6b
    move-object v0, v3

    .line 1256
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_6c
    new-instance v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const-string v7, ""

    const/4 v9, 0x0

    move-object v4, p1

    .end local p1    # "originalIntent":Landroid/content/Intent;
    .local v4, "originalIntent":Landroid/content/Intent;
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1258
    .local v3, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    return-object v3

    .line 1227
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v4    # "originalIntent":Landroid/content/Intent;
    .end local v6    # "name":Ljava/lang/CharSequence;
    .end local v10    # "metaData":Landroid/os/Bundle;
    .restart local p1    # "originalIntent":Landroid/content/Intent;
    :cond_79
    move-object v4, p1

    .line 1228
    .end local p1    # "originalIntent":Landroid/content/Intent;
    .restart local v4    # "originalIntent":Landroid/content/Intent;
    :goto_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device-specified nearby sharing component ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") not available"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ChooserActivity"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-object v0
.end method

.method public blacklist getReferrerFillInIntent()Landroid/content/Intent;
    .registers 2

    .line 2821
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1753
    move-object v0, p2

    .line 1754
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_18

    .line 1755
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1756
    .local v1, "replExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_18

    .line 1757
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    .line 1758
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1761
    .end local v1    # "replExtras":Landroid/os/Bundle;
    :cond_18
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 1762
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1763
    :cond_2c
    nop

    .line 1764
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1763
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1769
    const-string v1, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1771
    :cond_41
    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .registers 2

    .line 1005
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1006
    return-void
.end method

.method protected blacklist isImageType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1665
    if-eqz p1, :cond_c

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2898
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2899
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public blacklist isSendAction(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 2943
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2944
    return v0

    .line 2947
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2948
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 2949
    return v0

    .line 2952
    :cond_b
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1d

    .line 2956
    :cond_1c
    return v0

    .line 2953
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist isUserRunning(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2886
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2887
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isUserUnlocked(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2892
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2893
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method protected blacklist isWorkProfile()Z
    .registers 3

    .line 987
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 988
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 987
    return v0
.end method

.method protected blacklist loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/util/Size;

    .line 2587
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-nez p2, :cond_6

    goto :goto_14

    .line 2592
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 2593
    :catch_f
    move-exception v1

    .line 2594
    .local v1, "ex":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->logContentPreviewWarning(Landroid/net/Uri;)V

    .line 2596
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 2588
    :cond_14
    :goto_14
    return-object v0
.end method

.method public blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2816
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist maybeLogProfileChange()V
    .registers 2

    .line 4287
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logShareheetProfileChanged()V

    .line 4288
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 11
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1776
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_38

    .line 1777
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1778
    .local v1, "target":Landroid/content/ComponentName;
    if-eqz v1, :cond_38

    .line 1779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 1781
    .local v6, "fillIn":Landroid/content/Intent;
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, -0x1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 1785
    goto :goto_38

    .line 1782
    :catch_1f
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooserActivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v1    # "target":Landroid/content/ComponentName;
    .end local v6    # "fillIn":Landroid/content/Intent;
    :cond_38
    :goto_38
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 3149
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3150
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3151
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setEmptyStateBottomOffset(I)V

    .line 3152
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3153
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getActiveEmptyStateView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x10204bd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3152
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupContainerPadding(Landroid/view/View;)V

    .line 3156
    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3157
    .local v0, "result":Landroid/view/WindowInsets;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_2c

    .line 3158
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 3160
    :cond_2c
    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 3119
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1089
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1090
    const v0, 0x1020492

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1091
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1092
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1095
    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 1097
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setMaxTargetsPerRow(I)V

    .line 1098
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->adjustPreviewWidth(ILandroid/view/View;)V

    .line 1099
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 1100
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateTabPadding()V

    .line 1101
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 555
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getUserId()I

    move-result v2

    .line 555
    const-string/jumbo v3, "secure_frp_mode"

    const/4 v9, 0x0

    invoke-static {v0, v3, v9, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v10, "ChooserActivity"

    const/4 v11, 0x1

    if-ne v0, v11, :cond_23

    .line 558
    const-string v0, "Sharing disabled due to active FRP lock."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 560
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 561
    return-void

    .line 563
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 564
    .local v12, "intentReceivedTime":J
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 566
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetTriggered()V

    .line 568
    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity;->isAppPredictionServiceAvailable()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/app/ChooserActivity;->mIsAppPredictorComponentAvailable:Z

    .line 570
    iput-boolean v9, v1, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 571
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 572
    .local v14, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 573
    .local v2, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v2, Landroid/net/Uri;

    if-eqz v0, :cond_56

    .line 575
    :try_start_4b
    invoke-interface {v2}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_53
    .catch Ljava/net/URISyntaxException; {:try_start_4b .. :try_end_53} :catch_55

    move-object v2, v0

    .line 579
    goto :goto_57

    .line 577
    :catch_55
    move-exception v0

    .line 582
    :cond_56
    move-object v0, v2

    .end local v2    # "targetParcelable":Landroid/os/Parcelable;
    .local v0, "targetParcelable":Landroid/os/Parcelable;
    :goto_57
    instance-of v2, v0, Landroid/content/Intent;

    const/4 v3, 0x0

    if-nez v2, :cond_79

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target is not an intent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 585
    invoke-super {v1, v3}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 586
    return-void

    .line 588
    :cond_79
    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 589
    .local v2, "target":Landroid/content/Intent;
    if-eqz v2, :cond_81

    .line 590
    invoke-direct {v1, v2}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 592
    :cond_81
    nop

    .line 593
    const-string v4, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    .line 594
    .local v15, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v15, :cond_e6

    .line 595
    if-nez v2, :cond_8e

    move v4, v11

    goto :goto_8f

    :cond_8e
    move v4, v9

    .line 597
    .local v4, "offset":Z
    :goto_8f
    array-length v5, v15

    if-eqz v4, :cond_93

    sub-int/2addr v5, v11

    :cond_93
    new-array v5, v5, [Landroid/content/Intent;

    .line 598
    .local v5, "additionalTargets":[Landroid/content/Intent;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_96
    array-length v7, v15

    if-ge v6, v7, :cond_e3

    .line 599
    aget-object v7, v15, v6

    instance-of v7, v7, Landroid/content/Intent;

    if-nez v7, :cond_c8

    .line 600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not an Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v15, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 603
    invoke-super {v1, v3}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 604
    return-void

    .line 606
    :cond_c8
    aget-object v7, v15, v6

    check-cast v7, Landroid/content/Intent;

    .line 607
    .local v7, "additionalTarget":Landroid/content/Intent;
    if-nez v6, :cond_d5

    if-nez v2, :cond_d5

    .line 608
    move-object v2, v7

    .line 609
    invoke-direct {v1, v2}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_e0

    .line 611
    :cond_d5
    if-eqz v4, :cond_da

    add-int/lit8 v8, v6, -0x1

    goto :goto_db

    :cond_da
    move v8, v6

    :goto_db
    aput-object v7, v5, v8

    .line 612
    invoke-direct {v1, v7}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 598
    .end local v7    # "additionalTarget":Landroid/content/Intent;
    :goto_e0
    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    .line 615
    .end local v6    # "i":I
    :cond_e3
    invoke-virtual {v1, v5}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 618
    .end local v4    # "offset":Z
    .end local v5    # "additionalTargets":[Landroid/content/Intent;
    :cond_e6
    const-string v4, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 621
    const/4 v4, 0x0

    .line 622
    .local v4, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_103

    .line 623
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_fe

    .line 624
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v14, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_103

    .line 626
    :cond_fe
    const-string v5, "Ignoring intent\'s EXTRA_TITLE, deprecated in P. You may wish to set a preview title by using EXTRA_TITLE property of the wrapped EXTRA_INTENT."

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_103
    :goto_103
    const/4 v5, 0x0

    .line 633
    .local v5, "defaultTitleRes":I
    if-nez v4, :cond_109

    .line 634
    const v5, 0x10401e7

    .line 637
    :cond_109
    const-string v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v14, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 638
    .local v6, "pa":[Landroid/os/Parcelable;
    const/4 v7, 0x0

    .line 639
    .local v7, "initialIntents":[Landroid/content/Intent;
    const/4 v8, 0x2

    if-eqz v6, :cond_15f

    .line 640
    move/from16 v16, v9

    array-length v9, v6

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 641
    .local v9, "count":I
    new-array v7, v9, [Landroid/content/Intent;

    .line 642
    const/16 v17, 0x0

    move/from16 v8, v17

    .local v8, "i":I
    :goto_120
    if-ge v8, v9, :cond_161

    .line 643
    aget-object v11, v6, v8

    instance-of v11, v11, Landroid/content/Intent;

    if-nez v11, :cond_152

    .line 644
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial intent #"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " not an Intent: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v11, v6, v8

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 646
    const/4 v3, 0x0

    invoke-super {v1, v3}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 647
    return-void

    .line 649
    :cond_152
    aget-object v11, v6, v8

    check-cast v11, Landroid/content/Intent;

    .line 650
    .local v11, "in":Landroid/content/Intent;
    invoke-direct {v1, v11}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 651
    aput-object v11, v7, v8

    .line 642
    .end local v11    # "in":Landroid/content/Intent;
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    goto :goto_120

    .line 639
    .end local v8    # "i":I
    .end local v9    # "count":I
    :cond_15f
    move/from16 v16, v9

    .line 655
    :cond_161
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.REFERRER"

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    .line 657
    const-string v3, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    const-class v8, Landroid/content/IntentSender;

    invoke-virtual {v14, v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v1, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 659
    const-string v3, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    const-class v8, Landroid/content/IntentSender;

    invoke-virtual {v14, v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    iput-object v3, v1, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 661
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 663
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 665
    const-string v3, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 669
    .end local v6    # "pa":[Landroid/os/Parcelable;
    .local v3, "pa":[Landroid/os/Parcelable;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 670
    .local v9, "nearbySharingComponent":Landroid/content/ComponentName;
    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity;->shouldNearbyShareBeFirstInRankedRow()Z

    move-result v6

    if-nez v6, :cond_1a8

    if-eqz v9, :cond_1a8

    const/4 v6, 0x1

    goto :goto_1aa

    :cond_1a8
    move/from16 v6, v16

    :goto_1aa
    move v11, v6

    .line 673
    .local v11, "shouldFilterNearby":Z
    if-eqz v3, :cond_205

    .line 674
    array-length v6, v3

    if-eqz v11, :cond_1b2

    const/4 v8, 0x1

    goto :goto_1b4

    :cond_1b2
    move/from16 v8, v16

    :goto_1b4
    add-int/2addr v6, v8

    new-array v6, v6, [Landroid/content/ComponentName;

    .line 675
    .local v6, "names":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1b8
    move-object/from16 v19, v0

    .end local v0    # "targetParcelable":Landroid/os/Parcelable;
    .local v19, "targetParcelable":Landroid/os/Parcelable;
    array-length v0, v3

    if-ge v8, v0, :cond_1f6

    .line 676
    aget-object v0, v3, v8

    instance-of v0, v0, Landroid/content/ComponentName;

    if-nez v0, :cond_1e9

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "target":Landroid/content/Intent;
    .local v20, "target":Landroid/content/Intent;
    const-string v2, "Filtered component #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not a ComponentName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v6, 0x0

    .line 679
    goto :goto_1f8

    .line 681
    .end local v20    # "target":Landroid/content/Intent;
    .restart local v2    # "target":Landroid/content/Intent;
    :cond_1e9
    move-object/from16 v20, v2

    .end local v2    # "target":Landroid/content/Intent;
    .restart local v20    # "target":Landroid/content/Intent;
    aget-object v0, v3, v8

    check-cast v0, Landroid/content/ComponentName;

    aput-object v0, v6, v8

    .line 675
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v19

    goto :goto_1b8

    .end local v20    # "target":Landroid/content/Intent;
    .restart local v2    # "target":Landroid/content/Intent;
    :cond_1f6
    move-object/from16 v20, v2

    .line 683
    .end local v2    # "target":Landroid/content/Intent;
    .end local v8    # "i":I
    .restart local v20    # "target":Landroid/content/Intent;
    :goto_1f8
    if-eqz v11, :cond_201

    .line 684
    array-length v0, v6

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    aput-object v9, v6, v0

    .line 687
    :cond_201
    iput-object v6, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .line 688
    .end local v6    # "names":[Landroid/content/ComponentName;
    const/4 v2, 0x1

    goto :goto_216

    .end local v19    # "targetParcelable":Landroid/os/Parcelable;
    .end local v20    # "target":Landroid/content/Intent;
    .restart local v0    # "targetParcelable":Landroid/os/Parcelable;
    .restart local v2    # "target":Landroid/content/Intent;
    :cond_205
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .end local v0    # "targetParcelable":Landroid/os/Parcelable;
    .end local v2    # "target":Landroid/content/Intent;
    .restart local v19    # "targetParcelable":Landroid/os/Parcelable;
    .restart local v20    # "target":Landroid/content/Intent;
    if-eqz v11, :cond_215

    .line 689
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/content/ComponentName;

    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    .line 690
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    aput-object v9, v0, v16

    goto :goto_216

    .line 688
    :cond_215
    const/4 v2, 0x1

    .line 693
    :goto_216
    const-string v0, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 694
    .end local v3    # "pa":[Landroid/os/Parcelable;
    .local v0, "pa":[Landroid/os/Parcelable;
    if-eqz v0, :cond_275

    .line 695
    array-length v3, v0

    const/4 v6, 0x2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 696
    .local v3, "count":I
    new-array v8, v3, [Landroid/service/chooser/ChooserTarget;

    .line 697
    .local v8, "targets":[Landroid/service/chooser/ChooserTarget;
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "i":I
    :goto_22a
    if-ge v2, v3, :cond_270

    .line 698
    aget-object v6, v0, v2

    instance-of v6, v6, Landroid/service/chooser/ChooserTarget;

    if-nez v6, :cond_258

    .line 699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "pa":[Landroid/os/Parcelable;
    .local v21, "pa":[Landroid/os/Parcelable;
    const-string v0, "Chooser target #"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " not a ChooserTarget: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v6, v21, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v8, 0x0

    .line 701
    goto :goto_272

    .line 703
    .end local v21    # "pa":[Landroid/os/Parcelable;
    .restart local v0    # "pa":[Landroid/os/Parcelable;
    :cond_258
    move-object/from16 v21, v0

    .end local v0    # "pa":[Landroid/os/Parcelable;
    .restart local v21    # "pa":[Landroid/os/Parcelable;
    aget-object v0, v21, v2

    check-cast v0, Landroid/service/chooser/ChooserTarget;

    .line 704
    .local v0, "chooserTarget":Landroid/service/chooser/ChooserTarget;
    invoke-direct {v1, v0}, Lcom/android/internal/app/ChooserActivity;->hasValidIcon(Landroid/service/chooser/ChooserTarget;)Z

    move-result v6

    if-nez v6, :cond_268

    .line 705
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->removeIcon(Landroid/service/chooser/ChooserTarget;)Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    .line 707
    :cond_268
    aput-object v0, v8, v2

    .line 697
    .end local v0    # "chooserTarget":Landroid/service/chooser/ChooserTarget;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    const/4 v6, 0x2

    goto :goto_22a

    .end local v21    # "pa":[Landroid/os/Parcelable;
    .local v0, "pa":[Landroid/os/Parcelable;
    :cond_270
    move-object/from16 v21, v0

    .line 709
    .end local v0    # "pa":[Landroid/os/Parcelable;
    .end local v2    # "i":I
    .restart local v21    # "pa":[Landroid/os/Parcelable;
    :goto_272
    iput-object v8, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    goto :goto_277

    .line 694
    .end local v3    # "count":I
    .end local v8    # "targets":[Landroid/service/chooser/ChooserTarget;
    .end local v21    # "pa":[Landroid/os/Parcelable;
    .restart local v0    # "pa":[Landroid/os/Parcelable;
    :cond_275
    move-object/from16 v21, v0

    .line 712
    .end local v0    # "pa":[Landroid/os/Parcelable;
    .restart local v21    # "pa":[Landroid/os/Parcelable;
    :goto_277
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/app/ChooserActivity;->mMaxTargetsPerRow:I

    .line 713
    nop

    .line 714
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v1, v0}, Lcom/android/internal/app/ChooserActivity;->shouldDisplayLandscape(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/app/ChooserActivity;->mShouldDisplayLandscape:Z

    .line 715
    const-string v0, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    move/from16 v2, v16

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->setRetainInOnStop(Z)V

    .line 716
    move-object v6, v7

    .end local v7    # "initialIntents":[Landroid/content/Intent;
    .local v6, "initialIntents":[Landroid/content/Intent;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v20

    const/16 v17, 0x2

    const/16 v18, 0x1

    move-object/from16 v2, p1

    .end local v20    # "target":Landroid/content/Intent;
    .local v3, "target":Landroid/content/Intent;
    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    .line 720
    iget-wide v7, v1, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v7, v12

    .line 722
    .local v7, "systemCost":J
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v2, Landroid/metrics/LogMaker;

    move-object/from16 v20, v4

    .end local v4    # "title":Ljava/lang/CharSequence;
    .local v20, "title":Ljava/lang/CharSequence;
    const/16 v4, 0xd6

    invoke-direct {v2, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 723
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v4

    if-eqz v4, :cond_2cd

    move/from16 v4, v17

    goto :goto_2cf

    .line 724
    :cond_2cd
    move/from16 v4, v18

    .line 723
    :goto_2cf
    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 725
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v5

    .end local v5    # "defaultTitleRes":I
    .local v17, "defaultTitleRes":I
    const/16 v5, 0x671

    invoke-virtual {v2, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 726
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x675

    invoke-virtual {v2, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 722
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 728
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_314

    .line 729
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 732
    invoke-virtual {v1, v3}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 733
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 736
    :cond_30a
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v2, v1}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V

    .line 755
    :cond_314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Time Cost is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v22

    .line 760
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v24

    .line 761
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v25

    .line 762
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-nez v0, :cond_33d

    move/from16 v26, v16

    goto :goto_342

    :cond_33d
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v2, v0

    move/from16 v26, v2

    .line 763
    :goto_342
    if-nez v6, :cond_347

    move/from16 v27, v16

    goto :goto_34a

    :cond_347
    array-length v0, v6

    move/from16 v27, v0

    .line 764
    :goto_34a
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isWorkProfile()Z

    move-result v28

    .line 765
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/app/ChooserActivity;->findPreferredContentPreview(Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v29

    .line 766
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    .line 758
    const/16 v23, 0x103

    invoke-interface/range {v22 .. v30}, Lcom/android/internal/app/ChooserActivityLogger;->logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V

    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mDirectShareShortcutInfoCache:Ljava/util/Map;

    .line 770
    new-instance v0, Lcom/android/internal/app/ChooserActivity$2;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$2;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 781
    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity;->mEnterTransitionAnimationDelegate:Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->postponeTransition()V

    .line 782
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1729
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 1731
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1732
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 1735
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1736
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1737
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1739
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->-$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V

    .line 1741
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPreviewCoord:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mcancelLoads(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 1743
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1744
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1745
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->destroyAppPredictor()V

    .line 1747
    :cond_44
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mPersonalAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 1748
    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mWorkAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 1749
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2810
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2811
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2812
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 3177
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f

    .line 3178
    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-nez v2, :cond_1a

    .line 3179
    iput v1, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3180
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    goto :goto_1a

    .line 3182
    :cond_f
    if-nez p1, :cond_1a

    .line 3183
    iget v3, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    if-ne v3, v1, :cond_1a

    .line 3184
    iput v0, p0, Lcom/android/internal/app/ChooserActivity;->mScrollStatus:I

    .line 3185
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3188
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .registers 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "rebuildComplete"    # Z

    .line 2839
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V

    .line 2841
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter;

    .line 2842
    .local v0, "chooserListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2843
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2844
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2845
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 2846
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2847
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->setupListAdapter(I)V

    .line 2850
    :cond_30
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v1, :cond_41

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    .line 2851
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_41

    .line 2854
    :cond_3d
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V

    goto :goto_44

    .line 2852
    :cond_41
    :goto_41
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 2857
    :goto_44
    if-eqz p2, :cond_57

    .line 2858
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppLoadComplete()V

    .line 2859
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->maybeQueryAdditionalPostProcessingTargets(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2860
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 2862
    :cond_57
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .registers 3

    .line 3135
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 3136
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 3137
    .local v0, "currentRootAdapter":Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->updateDirectShareExpansion()V

    .line 3141
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->setVerticalScrollEnabled(Z)V

    .line 3142
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v1, :cond_16

    .line 3143
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 3145
    :cond_16
    return-void
.end method

.method blacklist onRefinementCanceled()V
    .registers 2

    .line 2431
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_c

    .line 2432
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2435
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2436
    return-void
.end method

.method blacklist onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V
    .registers 6
    .param p1, "selectedTarget"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .line 2410
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_c

    .line 2411
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 2412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 2414
    :cond_c
    const-string v0, "ChooserActivity"

    if-nez p1, :cond_16

    .line 2415
    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2416
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2420
    :cond_3d
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/chooser/TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 2421
    .local v1, "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-super {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2422
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 2424
    return-void

    .line 2427
    .end local v1    # "clonedTarget":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 2428
    return-void
.end method

.method protected whitelist onResume()V
    .registers 3

    .line 1082
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onResume()V

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->maybeCancelFinishAnimation()Z

    .line 1085
    return-void
.end method

.method protected whitelist onStop()V
    .registers 2

    .line 1721
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onStop()V

    .line 1722
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->maybeCancelFinishAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1723
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 1725
    :cond_c
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 11
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .line 1832
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_71

    .line 1833
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v4, v0

    .line 1834
    .local v4, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    .line 1835
    .local v7, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 1836
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1837
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_47

    .line 1838
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    .line 1839
    .local v1, "alts":[Landroid/content/Intent;
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "N":I
    :goto_33
    if-ge v2, v3, :cond_42

    .line 1840
    add-int/lit8 v5, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    aput-object v6, v1, v5

    .line 1839
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1842
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_42
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1844
    .end local v1    # "alts":[Landroid/content/Intent;
    :cond_47
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v1, :cond_50

    .line 1845
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 1847
    :cond_50
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 1848
    const-string v1, "android.intent.extra.RESULT_RECEIVER"

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1851
    :try_start_5f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_68
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5f .. :try_end_68} :catch_69

    .line 1852
    return v0

    .line 1853
    :catch_69
    move-exception v0

    .line 1854
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "ChooserActivity"

    const-string v2, "Refinement IntentSender failed to send"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1858
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v4    # "fillIn":Landroid/content/Intent;
    .end local v7    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_71
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1859
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .registers 3
    .param p1, "rebuildCompleted"    # Z

    .line 965
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->updateStickyContentPreview()V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowStickyContentPreview()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 968
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    if-eqz v0, :cond_18

    .line 969
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->logActionShareWithPreview()V

    .line 971
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method protected blacklist queryDirectShareTargets(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserListAdapter;
    .param p2, "skipAppPredictionService"    # Z

    .line 2053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ChooserActivity;->mQueriedSharingShortcutsTimeMs:J

    .line 2054
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2055
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-nez p2, :cond_16

    .line 2056
    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserActivity;->getAppPredictorForDirectShareIfEnabled(Landroid/os/UserHandle;)Landroid/app/prediction/AppPredictor;

    move-result-object v1

    .line 2057
    .local v1, "appPredictor":Landroid/app/prediction/AppPredictor;
    if-eqz v1, :cond_16

    .line 2058
    invoke-virtual {v1}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 2059
    return-void

    .line 2063
    .end local v1    # "appPredictor":Landroid/app/prediction/AppPredictor;
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2064
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_1d

    .line 2065
    return-void

    .line 2068
    :cond_1d
    new-instance v2, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/os/UserHandle;Landroid/content/IntentFilter;Lcom/android/internal/app/ChooserListAdapter;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2075
    return-void
.end method

.method public blacklist queryResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1513
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist resetButtonBar()V
    .registers 1

    .line 3126
    return-void
.end method

.method public blacklist sendListViewUpdateMessage(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2831
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2832
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2833
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2834
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity;->mListViewUpdateDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2835
    return-void
.end method

.method protected blacklist sendShortcutManagerShareTargetResults(I[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;)V
    .registers 5
    .param p1, "shortcutType"    # I
    .param p2, "results"    # [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 2162
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2163
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2164
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2165
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2166
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2167
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .registers 2

    .line 2002
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1816
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1817
    const/4 v0, 0x0

    return v0

    .line 1820
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .registers 2

    .line 1808
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldShowContentPreview()Z
    .registers 2

    .line 2990
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldShowServiceTargets()Z
    .registers 2

    .line 2995
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->shouldShowContentPreview()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected blacklist shouldShowStickyContentPreviewWhenEmpty()Z
    .registers 2

    .line 2985
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startSelected(IZZ)V
    .registers 22
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .line 1864
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1865
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 1866
    .local v2, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    nop

    .line 1867
    move/from16 v3, p3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    .line 1868
    .local v4, "targetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v4, :cond_18

    instance-of v5, v4, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    if-eqz v5, :cond_18

    .line 1869
    return-void

    .line 1872
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v5, v7

    .line 1874
    .local v5, "selectionCost":J
    instance-of v7, v4, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v7, :cond_5c

    .line 1875
    move-object v7, v4

    check-cast v7, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 1876
    .local v7, "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v8

    if-nez v8, :cond_5c

    .line 1877
    new-instance v8, Lcom/android/internal/app/ChooserStackedAppDialogFragment;

    invoke-direct {v8}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;-><init>()V

    .line 1878
    .local v8, "f":Lcom/android/internal/app/ChooserStackedAppDialogFragment;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1880
    .local v9, "b":Landroid/os/Bundle;
    nop

    .line 1881
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1880
    const-string/jumbo v11, "user_handle"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1882
    const-string v10, "multi_dri_key"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1884
    const-string/jumbo v10, "which_key"

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    invoke-virtual {v8, v9}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1887
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string/jumbo v11, "targetDetailsFragment"

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1888
    return-void

    .line 1892
    .end local v7    # "mti":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    .end local v8    # "f":Lcom/android/internal/app/ChooserStackedAppDialogFragment;
    .end local v9    # "b":Landroid/os/Bundle;
    :cond_5c
    invoke-super/range {p0 .. p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1894
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_18a

    .line 1897
    const/4 v7, 0x0

    .line 1898
    .local v7, "cat":I
    move/from16 v8, p1

    .line 1899
    .local v8, "value":I
    const/4 v9, -0x1

    .line 1900
    .local v9, "directTargetAlsoRanked":I
    const/4 v10, 0x0

    .line 1901
    .local v10, "numCallerProvided":I
    const/4 v11, 0x0

    .line 1902
    .local v11, "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v12

    const-string v13, "ChooserActivity"

    packed-switch v12, :pswitch_data_18e

    move-object/from16 v17, v2

    .end local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .local v17, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    goto/16 :goto_10e

    .line 1942
    .end local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    :pswitch_78
    const/4 v8, -0x1

    .line 1943
    const/16 v7, 0xd9

    .line 1944
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v12

    .line 1946
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1944
    const/4 v15, 0x3

    const/4 v1, 0x0

    invoke-interface {v12, v15, v14, v8, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    move-object/from16 v17, v2

    goto/16 :goto_10e

    .line 1904
    :pswitch_90
    const/16 v7, 0xd8

    .line 1907
    invoke-virtual {v2, v8}, Lcom/android/internal/app/ChooserListAdapter;->getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 1908
    .local v1, "target":Landroid/service/chooser/ChooserTarget;
    invoke-static {}, Landroid/util/HashedStringCache;->getInstance()Landroid/util/HashedStringCache;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1911
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1912
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/internal/app/ChooserActivity;->mMaxHashSaltDays:I

    .line 1908
    invoke-virtual {v12, v0, v13, v14, v15}, Landroid/util/HashedStringCache;->hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;

    move-result-object v11

    .line 1914
    move-object v12, v4

    check-cast v12, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1915
    .local v12, "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserActivity;->getRankedPosition(Lcom/android/internal/app/chooser/SelectableTargetInfo;)I

    move-result v9

    .line 1917
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v14, :cond_cf

    .line 1918
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v10, v14

    .line 1920
    :cond_cf
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v14

    .line 1922
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1924
    move-object/from16 v16, v1

    .end local v1    # "target":Landroid/service/chooser/ChooserTarget;
    .local v16, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v12}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isPinned()Z

    move-result v1

    .line 1920
    move-object/from16 v17, v2

    .end local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    const/4 v2, 0x1

    invoke-interface {v14, v2, v15, v8, v1}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1926
    goto :goto_10e

    .line 1929
    .end local v12    # "selectableTargetInfo":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v16    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    :pswitch_e8
    move-object/from16 v17, v2

    .end local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    const/16 v7, 0xd7

    .line 1930
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ChooserListAdapter;->getSurfacedTargetInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v8, v1

    .line 1931
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v10

    .line 1932
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v1

    .line 1934
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1936
    invoke-interface {v4}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v12

    .line 1932
    const/4 v14, 0x2

    invoke-interface {v1, v14, v2, v8, v12}, Lcom/android/internal/app/ChooserActivityLogger;->logShareTargetSelected(ILjava/lang/String;IZ)V

    .line 1938
    nop

    .line 1953
    :goto_10e
    if-eqz v7, :cond_148

    .line 1954
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1955
    .local v1, "targetLogMaker":Landroid/metrics/LogMaker;
    if-eqz v11, :cond_137

    .line 1956
    const/16 v2, 0x6a8

    iget-object v12, v11, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    invoke-virtual {v1, v2, v12}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1958
    iget v2, v11, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    .line 1960
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1958
    const/16 v12, 0x6a9

    invoke-virtual {v1, v12, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1961
    nop

    .line 1962
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1961
    const/16 v12, 0x43f

    invoke-virtual {v1, v12, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1964
    :cond_137
    nop

    .line 1965
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1964
    const/16 v12, 0x43e

    invoke-virtual {v1, v12, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1966
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1969
    .end local v1    # "targetLogMaker":Landroid/metrics/LogMaker;
    :cond_148
    iget-boolean v1, v0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz v1, :cond_18c

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Selection Time Cost is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position of selected app/service/caller is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1973
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1972
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string/jumbo v1, "user_selection_cost_for_smart_sharing"

    long-to-int v2, v5

    const/4 v12, 0x0

    invoke-static {v12, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1977
    const-string v1, "app_position_for_smart_sharing"

    invoke-static {v12, v1, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_18c

    .line 1894
    .end local v7    # "cat":I
    .end local v8    # "value":I
    .end local v9    # "directTargetAlsoRanked":I
    .end local v10    # "numCallerProvided":I
    .end local v11    # "directTargetHashed":Landroid/util/HashedStringCache$HashResult;
    .end local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    :cond_18a
    move-object/from16 v17, v2

    .line 1980
    .end local v2    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    .restart local v17    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    :cond_18c
    :goto_18c
    return-void

    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_90
        :pswitch_e8
        :pswitch_78
    .end packed-switch
.end method

.method blacklist updateModelAndChooserCounts(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 9
    .param p1, "info"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 2262
    if-eqz p1, :cond_d

    instance-of v0, p1, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v0, :cond_d

    .line 2263
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    .line 2265
    :cond_d
    if-eqz p1, :cond_79

    .line 2266
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity;->sendClickToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2267
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2268
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2269
    .local v1, "targetIntent":Landroid/content/Intent;
    const-string v2, "ChooserActivity"

    if-eqz v0, :cond_74

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_74

    if-eqz v1, :cond_74

    .line 2270
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 2271
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    .line 2272
    .local v3, "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    if-eqz v3, :cond_3f

    .line 2273
    invoke-direct {p0, p1, v3}, Lcom/android/internal/app/ChooserActivity;->sendImpressionToAppPredictor(Lcom/android/internal/app/chooser/TargetInfo;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 2274
    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2275
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2277
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 2275
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ChooserListAdapter;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2281
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResolveInfo Package is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action to be updated is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    .end local v3    # "currentListAdapter":Lcom/android/internal/app/ChooserListAdapter;
    goto :goto_79

    .line 2285
    :cond_74
    const-string v3, "Can not log Chooser Counts of null ResovleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "targetIntent":Landroid/content/Intent;
    :cond_79
    :goto_79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    .line 2289
    return-void
.end method
