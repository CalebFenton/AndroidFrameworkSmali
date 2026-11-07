.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static blacklist ENABLE_TABBED_VIEW:Z = false

.field static final blacklist EXTRA_CALLING_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

.field private static final blacklist EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final blacklist EXTRA_IS_AUDIO_CAPTURE_DEVICE:Ljava/lang/String; = "is_audio_capture_device"

.field protected static final blacklist EXTRA_RESTRICT_TO_SINGLE_USER:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

.field protected static final blacklist EXTRA_SELECTED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

.field private static final blacklist EXTRA_SHOW_FRAGMENT_ARGS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final blacklist LAST_SHOWN_TAB_KEY:Ljava/lang/String; = "last_shown_tab_key"

.field protected static final blacklist METRICS_CATEGORY_CHOOSER:Ljava/lang/String; = "intent_chooser"

.field protected static final blacklist METRICS_CATEGORY_RESOLVER:Ljava/lang/String; = "intent_resolver"

.field private static final blacklist OPEN_LINKS_COMPONENT_KEY:Ljava/lang/String; = "app_link_state"

.field protected static final blacklist PROFILE_PERSONAL:I = 0x0

.field protected static final blacklist PROFILE_WORK:I = 0x1

.field private static final blacklist TAB_TAG_PERSONAL:Ljava/lang/String; = "personal"

.field private static final blacklist TAB_TAG_WORK:Ljava/lang/String; = "work"

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private blacklist mAlwaysButton:Landroid/widget/Button;

.field private blacklist mCloneProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mDefaultTitleResId:I

.field private blacklist mFooterSpacer:Landroid/widget/Space;

.field private blacklist mHasSubclassSpecifiedResolutions:Z

.field private blacklist mHeaderCreatorUser:Landroid/os/UserHandle;

.field protected final blacklist mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsIntentPicker:Z

.field private blacklist mLastSelected:I

.field protected final blacklist mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected blacklist mLaunchedFromUid:I

.field private blacklist mLaunchedFromUserHandle:Landroid/os/UserHandle;

.field private blacklist mLayoutId:I

.field protected blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field private blacklist mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

.field private blacklist mOnceButton:Landroid/widget/Button;

.field private blacklist mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected greylist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPrivateProfileUserHandle:Landroid/os/UserHandle;

.field private blacklist mProfileSwitchMessage:Ljava/lang/String;

.field protected blacklist mProfileView:Landroid/view/View;

.field protected blacklist mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

.field private blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mRegistered:Z

.field protected blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private blacklist mResolvingHome:Z

.field private blacklist mRetainInOnStop:Z

.field private blacklist mSafeForwardingMode:Z

.field protected blacklist mSupportsAlwaysUseOption:Z

.field protected blacklist mSystemWindowInsets:Landroid/graphics/Insets;

.field private blacklist mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private blacklist mWorkProfileHasBeenEnabled:Z

.field private blacklist mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$1YyUlz_MU6v02E3m84OJIEJWSyk(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9iDF9m_r741CjZ0AkKqZxCkMC14(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getPersonalTabLabel$12()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G59NfA_q1389VrZNR8GnSIPN8zc(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getForwardToWorkMsg$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$N3UlgB-ajBcAbQXUNIQeOvnHdfQ(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkTabLabel$13()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$PyK26T6dVCDr6FY6jSo1RVTtfYU(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QThobUZ895XpiyB2wrunoAkDn0k(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkProfileNotSupportedMsg$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Sp4LbwuLz-bEoy9_yBTFuomgXKY(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$8(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZI2gmpJQSl4iv6fSMjhwpeY4EVI(Lcom/android/internal/app/ResolverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$createEmptyStateProvider$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$c-CZmH_J9JT7w7md43traf19fGw(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$9(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cjZ7heqDBYW3b4cwaYuSptQxyrc(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->lambda$setupProfileTabs$10(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dFx5BYsRoNWMkq_Y7WZQdQx-beQ(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkTabAccessibilityLabel$15()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kiZasK9n3nx16E6oIBeoLvFJmeE(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$4(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qhGhIj_yMA06bAsS7DwL8XukcQw(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$configureMiniResolverContent$7()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$r-7kggiZyHCweZuGmnseNcgQX1w(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getForwardToPersonalMsg$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vX9rZUhXyhoUqE17YaOZ4J2qi9s(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->lambda$getPersonalTabAccessibilityLabel$14()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetCheckedItem(Lcom/android/internal/app/ResolverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetCheckedItem()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 208
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 193
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 205
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 264
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 150
    return-void
.end method

.method protected constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "isIntentPicker"    # Z

    .line 152
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 193
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    .line 205
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 264
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 153
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    .line 154
    return-void
.end method

.method private blacklist canAppInteractCrossProfiles(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2055
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_2f

    .line 2059
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2060
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-nez v2, :cond_f

    .line 2061
    return v0

    .line 2064
    :cond_f
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2066
    .local v2, "packageUid":I
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 2068
    return v4

    .line 2070
    :cond_1b
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->isPermissionGranted(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    .line 2072
    return v4

    .line 2074
    :cond_24
    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v5, -0x1

    invoke-static {p0, v3, v5, v2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e

    .line 2076
    return v4

    .line 2078
    :cond_2e
    return v0

    .line 2056
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageUid":I
    :catch_2f
    move-exception v1

    .line 2057
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist on current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return v0
.end method

.method private blacklist configureContentView()Z
    .registers 5

    .line 1754
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 1758
    const-string v0, "configureContentView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1761
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1762
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    move v0, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v0, v1

    .line 1763
    .local v0, "rebuildCompleted":Z
    :goto_27
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1764
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildInactiveTab(Z)Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1765
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_44

    :cond_42
    move v3, v2

    goto :goto_45

    :cond_44
    :goto_44
    move v3, v1

    .line 1766
    .local v3, "rebuildInactiveCompleted":Z
    :goto_45
    if-eqz v0, :cond_4a

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    move v0, v1

    .line 1769
    .end local v3    # "rebuildInactiveCompleted":Z
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1770
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V

    .line 1771
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1772
    return v2

    .line 1775
    :cond_59
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1776
    const v1, 0x109012e

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    goto :goto_6b

    .line 1778
    :cond_65
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1780
    :goto_6b
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1781
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const v2, 0x1020492

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setupViewPager(Lcom/android/internal/widget/ViewPager;)V

    .line 1782
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->postRebuildList(Z)Z

    move-result v1

    .line 1783
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1784
    return v1

    .line 1755
    .end local v0    # "rebuildCompleted":Z
    .end local v1    # "result":Z
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMultiProfilePagerAdapter.getCurrentListAdapter() cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist configureMiniResolverContent()V
    .registers 15

    .line 1794
    const v0, 0x10900b4

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    .line 1795
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1798
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1799
    .local v0, "sameProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    goto :goto_22

    :cond_21
    move v3, v1

    .line 1801
    .local v3, "inWorkProfile":Z
    :goto_22
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1802
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v6

    .line 1803
    .local v6, "inactiveAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v2, v6, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1806
    .local v7, "otherProfileResolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const v2, 0x1020006

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 1807
    .local v9, "icon":Landroid/widget/ImageView;
    new-instance v4, Lcom/android/internal/app/ResolverActivity$5;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1815
    invoke-virtual {v4, v1}, Lcom/android/internal/app/ResolverActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1817
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1819
    .local v1, "targetDisplayLabel":Ljava/lang/CharSequence;
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1820
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    .line 1822
    .local v2, "devicePolicyResourcesManager":Landroid/app/admin/DevicePolicyResourcesManager;
    const v4, 0x102044a

    const-string v8, "Core.MINIRESOLVER_OPEN_IN_PERSONAL"

    const v10, 0x10205de

    if-eqz v3, :cond_8d

    .line 1823
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;

    invoke-direct {v11, p0, v1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v12

    .line 1824
    invoke-virtual {v2, v8, v11, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1823
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1829
    invoke-virtual {v2, v8, v11}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v8

    .line 1828
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b7

    .line 1832
    :cond_8d
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0, v1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v12

    .line 1833
    const-string v13, "Core.MINIRESOLVER_OPEN_IN_WORK"

    invoke-virtual {v2, v13, v11, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1832
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1837
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;

    invoke-direct {v11, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1838
    invoke-virtual {v2, v8, v11}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v8

    .line 1837
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    :goto_b7
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1848
    const v4, 0x102025d

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0, v7, v6}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1854
    return-void
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 11
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 659
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 659
    move-object v1, p0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 667
    .local v2, "adapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v4

    .line 668
    .local v4, "quietModeManager":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 671
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v3

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 668
    return-object v0
.end method

.method private blacklist createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
    .registers 17
    .param p1, "initialIntents"    # [Landroid/content/Intent;
    .param p3, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)",
            "Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;"
        }
    .end annotation

    .line 690
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCurrentProfile()I

    move-result v1

    .line 691
    .local v1, "selectedProfile":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getIntentUser()Landroid/os/UserHandle;

    move-result-object v9

    .line 692
    .local v9, "intentUser":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 694
    const/4 v1, 0x0

    move v7, v1

    goto :goto_37

    .line 695
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 696
    const/4 v1, 0x1

    move v7, v1

    goto :goto_37

    .line 699
    :cond_2c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getSelectedProfileExtra()I

    move-result v2

    .line 700
    .local v2, "selectedProfileExtra":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_36

    .line 701
    move v1, v2

    move v7, v1

    goto :goto_37

    .line 707
    .end local v2    # "selectedProfileExtra":I
    :cond_36
    move v7, v1

    .end local v1    # "selectedProfile":I
    .local v7, "selectedProfile":I
    :goto_37
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 710
    const/4 v8, 0x0

    if-nez v7, :cond_3e

    move-object v3, p1

    goto :goto_3f

    :cond_3e
    move-object v3, v8

    :goto_3f
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p3, :cond_53

    .line 712
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v1, v4, :cond_53

    move v5, v11

    goto :goto_54

    :cond_53
    move v5, v10

    .line 714
    :goto_54
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 707
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v12

    .line 715
    .local v12, "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 716
    .local v6, "workProfileUserHandle":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 719
    if-ne v7, v11, :cond_69

    move-object v3, p1

    goto :goto_6a

    :cond_69
    move-object v3, v8

    :goto_6a
    if-eqz p3, :cond_78

    .line 721
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 722
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v1, v4, :cond_78

    move v5, v11

    goto :goto_79

    :cond_78
    move v5, v10

    .line 716
    :goto_79
    move-object v1, p0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 724
    move-object v10, v6

    .end local v6    # "workProfileUserHandle":Landroid/os/UserHandle;
    .local v3, "workAdapter":Lcom/android/internal/app/ResolverListAdapter;
    .local v10, "workProfileUserHandle":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v5

    .line 725
    .local v5, "quietModeManager":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v4

    .line 732
    move v6, v7

    .end local v7    # "selectedProfile":I
    .local v6, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    move-object v0, v1

    move-object v2, v12

    move-object v1, p0

    .end local v12    # "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    .local v2, "personalAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;-><init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 725
    return-object v0
.end method

.method private blacklist createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 2442
    new-instance v0, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v0
.end method

.method private blacklist fetchTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;
    .registers 3

    .line 838
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 839
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0

    .line 840
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 841
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v0

    .line 843
    :cond_24
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private static blacklist getAttrColor(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 2210
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2211
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2212
    .local v1, "colorAccent":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2213
    return v1
.end method

.method private blacklist getForwardToPersonalMsg()Ljava/lang/String;
    .registers 4

    .line 1067
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMsg()Ljava/lang/String;
    .registers 4

    .line 1073
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIntentUser()Landroid/os/UserHandle;
    .registers 4

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_1d

    .line 680
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 678
    :goto_1d
    return-object v0
.end method

.method public static blacklist getLabelRes(Ljava/lang/String;)I
    .registers 2
    .param p0, "action"    # Ljava/lang/String;

    .line 279
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private blacklist getLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .registers 2

    .line 267
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabAccessibilityLabel()Ljava/lang/String;
    .registers 4

    .line 2198
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPersonalTabLabel()Ljava/lang/String;
    .registers 4

    .line 2158
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_PERSONAL_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1383
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Core.RESOLVER_WORK_PROFILE_NOT_SUPPORTED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabAccessibilityLabel()Ljava/lang/String;
    .registers 4

    .line 2204
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB_ACCESSIBILITY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getWorkTabLabel()Ljava/lang/String;
    .registers 4

    .line 2163
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    const-string v2, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasCloneProfile()Z
    .registers 2

    .line 851
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist hasManagedProfile()Z
    .registers 7

    .line 1252
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1253
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1254
    return v1

    .line 1258
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1259
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1260
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2b} :catch_32

    if-eqz v5, :cond_2f

    .line 1261
    const/4 v1, 0x1

    return v1

    .line 1263
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2f
    goto :goto_19

    .line 1266
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_30
    nop

    .line 1267
    return v1

    .line 1264
    :catch_32
    move-exception v2

    .line 1265
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private blacklist hasWorkProfile()Z
    .registers 2

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist inactiveListAdapterHasItems()Z
    .registers 3

    .line 2435
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2436
    return v1

    .line 2438
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private blacklist isAutolaunching()Z
    .registers 2

    .line 2082
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isPermissionGranted(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1934
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method static final blacklist isSpecificUriMatch(I)Z
    .registers 2
    .param p0, "match"    # I

    .line 2599
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2600
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_d

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist isWorkProfileEnabled()Z
    .registers 4

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1159
    .local v0, "workUserHandle":Landroid/os/UserHandle;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1161
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1162
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 1161
    :goto_1b
    return v2
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$4(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "targetDisplayLabel"    # Ljava/lang/CharSequence;

    .line 1825
    const v0, 0x104066d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$5()Ljava/lang/String;
    .registers 2

    .line 1830
    const v0, 0x1040676

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "targetDisplayLabel"    # Ljava/lang/CharSequence;

    .line 1834
    const v0, 0x104066e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$7()Ljava/lang/String;
    .registers 2

    .line 1839
    const v0, 0x1040675

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$8(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/view/View;)V
    .registers 3
    .param p1, "sameProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1845
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1846
    return-void
.end method

.method private synthetic blacklist lambda$configureMiniResolverContent$9(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View;)V
    .registers 6
    .param p1, "otherProfileResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "inactiveAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "v"    # Landroid/view/View;

    .line 1849
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1850
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1851
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1850
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1852
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1853
    return-void
.end method

.method private synthetic blacklist lambda$createEmptyStateProvider$0()V
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;->onSwitchOnWorkSelected()V

    .line 637
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$getForwardToPersonalMsg$1()Ljava/lang/String;
    .registers 2

    .line 1069
    const v0, 0x1040469

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getForwardToWorkMsg$2()Ljava/lang/String;
    .registers 2

    .line 1075
    const v0, 0x104046a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getPersonalTabAccessibilityLabel$14()Ljava/lang/String;
    .registers 2

    .line 2200
    const v0, 0x1040923

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getPersonalTabLabel$12()Ljava/lang/String;
    .registers 2

    .line 2159
    const v0, 0x1040922

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkProfileNotSupportedMsg$3(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "launcherName"    # Ljava/lang/String;

    .line 1385
    const v0, 0x104012f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTabAccessibilityLabel$15()Ljava/lang/String;
    .registers 2

    .line 2206
    const v0, 0x1040927

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTabLabel$13()Ljava/lang/String;
    .registers 2

    .line 2164
    const v0, 0x1040926

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$setupProfileTabs$10(Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V
    .registers 6
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "viewPager"    # Lcom/android/internal/widget/ViewPager;
    .param p3, "tabId"    # Ljava/lang/String;

    .line 2117
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2118
    const-string v0, "personal"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2119
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_14

    .line 2121
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2123
    :goto_14
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 2124
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->maybeLogProfileChange()V

    .line 2125
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onProfileTabSelected()V

    .line 2126
    nop

    .line 2127
    const/16 v0, 0x9c

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2128
    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2129
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2130
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2131
    return-void
.end method

.method static synthetic blacklist lambda$setupProfileTabs$11(Landroid/widget/TabHost;)V
    .registers 3
    .param p0, "tabHost"    # Landroid/widget/TabHost;

    .line 2150
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2151
    .local v0, "workTab":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2152
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2153
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2154
    return-void
.end method

.method private blacklist makeMyIntent()Landroid/content/Intent;
    .registers 4

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 367
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_29

    .line 378
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    :cond_29
    return-object v0
.end method

.method private blacklist makeResolverComparator(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractResolverComparator;
    .registers 12
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1720
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mHasSubclassSpecifiedResolutions:Z

    if-eqz v0, :cond_12

    .line 1721
    new-instance v0, Lcom/android/internal/app/NoOpResolverComparator;

    .line 1722
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/app/NoOpResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 1721
    return-object v0

    .line 1724
    :cond_12
    new-instance v3, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 1726
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1727
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1730
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    .line 1724
    return-object v3
.end method

.method private blacklist maybeAutolaunchActivity()Z
    .registers 4

    .line 1942
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItemCount()I

    move-result v0

    .line 1943
    .local v0, "numberOfProfiles":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfSingleTarget()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1944
    return v1

    .line 1945
    :cond_10
    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1946
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1947
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1948
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfNoAppsOnInactiveTab()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1949
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchIfCrossProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1950
    :cond_37
    return v1

    .line 1952
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist maybeAutolaunchIfCrossProfileSupported()Z
    .registers 11

    .line 2001
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2002
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v1

    .line 2003
    .local v1, "count":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    .line 2004
    return v2

    .line 2006
    :cond_f
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2007
    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 2008
    .local v4, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v5

    if-eq v5, v3, :cond_1c

    .line 2009
    return v2

    .line 2011
    :cond_1c
    nop

    .line 2012
    invoke-virtual {v0, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v5

    .line 2013
    .local v5, "activeProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {v4, v2, v2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v6

    .line 2014
    .local v6, "inactiveProfileTarget":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 2015
    invoke-interface {v6}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 2014
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 2016
    return v2

    .line 2018
    :cond_34
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 2019
    return v2

    .line 2021
    :cond_3b
    invoke-interface {v5}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2022
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->canAppInteractCrossProfiles(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 2023
    return v2

    .line 2026
    :cond_4a
    nop

    .line 2027
    const/16 v2, 0xa1

    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 2028
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2028
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 2030
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 2031
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2032
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2033
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2034
    return v3
.end method

.method private blacklist maybeAutolaunchIfNoAppsOnInactiveTab()Z
    .registers 6

    .line 1977
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1978
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 1979
    return v1

    .line 1981
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1982
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1983
    .local v3, "inactiveListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 1984
    return v1

    .line 1986
    :cond_1c
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    .line 1987
    invoke-virtual {v4, v1, v1}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 1988
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1989
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1990
    return v2
.end method

.method private blacklist maybeAutolaunchIfSingleTarget()Z
    .registers 6

    .line 1956
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1957
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 1958
    return v1

    .line 1961
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1962
    return v1

    .line 1966
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1967
    invoke-virtual {v3, v1, v1}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 1968
    .local v3, "target":Lcom/android/internal/app/chooser/TargetInfo;
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1969
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1970
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1971
    return v2

    .line 1973
    :cond_33
    return v1
.end method

.method private blacklist maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2262
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_11

    .line 2263
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2264
    return-void

    .line 2266
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    const v1, 0x1020016

    if-nez v0, :cond_33

    .line 2267
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 2268
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2269
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_33

    .line 2270
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2274
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_33
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3a

    .line 2275
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    goto :goto_44

    .line 2276
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_44
    nop

    .line 2278
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 2279
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2280
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_56

    .line 2281
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2283
    :cond_56
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2286
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_59
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2287
    .local v1, "iconView":Landroid/widget/ImageView;
    if-eqz v1, :cond_67

    .line 2288
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V

    .line 2290
    :cond_67
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mHeaderCreatorUser:Landroid/os/UserHandle;

    .line 2291
    return-void
.end method

.method private blacklist maybeHideDivider()V
    .registers 3

    .line 2170
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_5

    .line 2171
    return-void

    .line 2173
    :cond_5
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2174
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_f

    .line 2175
    return-void

    .line 2177
    :cond_f
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2178
    return-void
.end method

.method private blacklist maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "currentUserHandle"    # Landroid/os/UserHandle;

    .line 1672
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3d

    .line 1675
    :cond_11
    nop

    .line 1676
    const/16 v0, 0x9b

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1677
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1678
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v1

    .line 1679
    instance-of v2, p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-eqz v2, :cond_2f

    const-string v2, "direct_share"

    goto :goto_31

    :cond_2f
    const-string v2, "other_target"

    :goto_31
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1678
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1680
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1681
    return-void

    .line 1673
    :cond_3d
    :goto_3d
    return-void
.end method

.method private blacklist privateSpaceEnabled()Z
    .registers 2

    .line 2685
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2686
    invoke-static {}, Landroid/multiuser/Flags;->allowResolverSheetForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2687
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2685
    :goto_19
    return v0
.end method

.method private blacklist registerWorkProfileStateReceiver()V
    .registers 8

    .line 1166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 1167
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1169
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1170
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1171
    return-void
.end method

.method private blacklist resetAlwaysOrOnceButtonBar()V
    .registers 6

    .line 2350
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2351
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2353
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 2354
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v2

    .line 2355
    .local v2, "filteredPosition":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    if-eq v2, v1, :cond_2b

    .line 2356
    invoke-direct {p0, v4, v2, v0}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2357
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2359
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 2360
    return-void

    .line 2364
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2365
    .local v0, "currentAdapterView":Landroid/widget/ListView;
    if-eqz v0, :cond_47

    .line 2366
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    if-eq v3, v1, :cond_47

    .line 2367
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 2368
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2370
    :cond_47
    return-void
.end method

.method private blacklist resetCheckedItem()V
    .registers 4

    .line 2187
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-nez v0, :cond_5

    .line 2188
    return-void

    .line 2190
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 2191
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2192
    .local v0, "inactiveListView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1e

    .line 2193
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2195
    :cond_1e
    return-void
.end method

.method private blacklist setAlwaysButtonEnabled(ZIZ)V
    .registers 11
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .line 1282
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 1284
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1285
    return-void

    .line 1290
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1291
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1292
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1293
    return-void

    .line 1295
    :cond_31
    const/4 v0, 0x0

    .line 1296
    .local v0, "enabled":Z
    const/4 v2, 0x0

    .line 1297
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_65

    .line 1298
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1299
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1300
    const-string v3, "ResolverActivity"

    if-nez v2, :cond_49

    .line 1301
    const-string v1, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void

    .line 1303
    :cond_49
    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_54

    .line 1304
    const-string v1, "Attempted to set selection to resolve info for another user"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void

    .line 1307
    :cond_54
    const/4 v0, 0x1

    .line 1310
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1311
    const v5, 0x104012d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1310
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    :cond_65
    if-eqz v2, :cond_88

    .line 1315
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1317
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1318
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_77

    const/4 v4, 0x1

    goto :goto_78

    :cond_77
    move v4, v1

    .line 1322
    .local v4, "hasRecordPermission":Z
    :goto_78
    if-nez v4, :cond_88

    .line 1324
    nop

    .line 1325
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_audio_capture_device"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1327
    .local v1, "hasAudioCapture":Z
    xor-int/lit8 v5, v1, 0x1

    move v0, v5

    .line 1330
    .end local v1    # "hasAudioCapture":Z
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "hasRecordPermission":Z
    :cond_88
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1331
    return-void
.end method

.method private blacklist setButtonBarIgnoreOffset(Z)V
    .registers 4
    .param p1, "ignoreOffset"    # Z

    .line 2339
    const v0, 0x102025b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2340
    .local v0, "buttonBarContainer":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 2341
    nop

    .line 2342
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 2343
    .local v1, "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iput-boolean p1, v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 2344
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2346
    .end local v1    # "layoutParams":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_15
    return-void
.end method

.method private blacklist setProfileSwitchMessage(I)V
    .registers 7
    .param p1, "contentUserHint"    # I

    .line 1051
    const/4 v0, -0x2

    if-eq p1, v0, :cond_38

    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_38

    .line 1053
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1054
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1055
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    goto :goto_1e

    .line 1056
    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    nop

    .line 1057
    .local v2, "originIsManaged":Z
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    .line 1058
    .local v3, "targetIsManaged":Z
    if-eqz v2, :cond_2e

    if-nez v3, :cond_2e

    .line 1059
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToPersonalMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    goto :goto_38

    .line 1060
    :cond_2e
    if-nez v2, :cond_38

    if-eqz v3, :cond_38

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getForwardToWorkMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    .line 1064
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "originIsManaged":Z
    .end local v3    # "targetIsManaged":Z
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V
    .registers 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listener"    # Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    .line 2250
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2251
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2253
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v0, :cond_e

    .line 2254
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2256
    :cond_e
    return-void
.end method

.method private blacklist setupProfileTabs()V
    .registers 10

    .line 2086
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeHideDivider()V

    .line 2087
    const v0, 0x1020493

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 2088
    .local v0, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 2089
    const v1, 0x1020492

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    .line 2090
    .local v2, "viewPager":Lcom/android/internal/widget/ViewPager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setSaveEnabled(Z)V

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2093
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 2092
    const v6, 0x109012f

    invoke-virtual {v4, v6, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2094
    .local v4, "personalButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2097
    const-string v5, "personal"

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2098
    invoke-virtual {v5, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2099
    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2100
    .local v5, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2102
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2103
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    .line 2102
    invoke-virtual {v7, v6, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 2104
    .local v6, "workButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkTabAccessibilityLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2107
    const-string/jumbo v7, "work"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 2108
    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2109
    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 2110
    .end local v5    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2112
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 2113
    .local v5, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v5, v3}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 2114
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->updateActiveTabStyle(Landroid/widget/TabHost;)V

    .line 2116
    new-instance v7, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2133
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setVisibility(I)V

    .line 2134
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2135
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    new-instance v7, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v7, p0, v0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->setOnProfileSelectedListener(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;)V

    .line 2149
    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda17;-><init>(Landroid/widget/TabHost;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    .line 2155
    return-void
.end method

.method private blacklist setupViewVisibilities()V
    .registers 3

    .line 2225
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2226
    .local v0, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2227
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 2229
    :cond_11
    return-void
.end method

.method private blacklist shouldUseMiniResolver()Z
    .registers 9

    .line 1863
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1864
    return v1

    .line 1866
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1867
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_92

    .line 1870
    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1871
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1872
    .local v0, "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1873
    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 1875
    .local v2, "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "ResolverActivity"

    if-eqz v3, :cond_36

    .line 1876
    const-string v3, "No targets in the current profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return v1

    .line 1880
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5e

    .line 1881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " resolvers in the other profile"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return v1

    .line 1885
    :cond_5e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_72

    .line 1886
    const-string v3, "Other profile is a web browser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return v1

    .line 1890
    :cond_72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1891
    .local v6, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v7, :cond_90

    .line 1892
    const-string v3, "Non-browser found in this profile"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return v1

    .line 1895
    .end local v6    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_90
    goto :goto_76

    .line 1897
    :cond_91
    return v5

    .line 1868
    .end local v0    # "sameProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v2    # "otherProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_92
    :goto_92
    return v1
.end method

.method private blacklist supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1272
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1274
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 1275
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_15
    move-exception v1

    .line 1276
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private blacklist updateActiveTabStyle(Landroid/widget/TabHost;)V
    .registers 6
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .line 2217
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2218
    .local v0, "currentTab":I
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2219
    .local v1, "selected":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2220
    .local v2, "unselected":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2221
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2222
    return-void
.end method

.method private blacklist updateIntentPickerPaddings()V
    .registers 8

    .line 963
    const v0, 0x102059e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 964
    .local v0, "titleCont":Landroid/view/View;
    nop

    .line 965
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050336

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 964
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 969
    const v1, 0x102025a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 970
    .local v1, "buttonBar":Landroid/view/View;
    nop

    .line 971
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 972
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 973
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 970
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 975
    return-void
.end method


# virtual methods
.method public blacklist addUseDifferentAppLabelIfNecessary(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2236
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 2237
    .local v0, "useHeader":Z
    if-eqz v0, :cond_2f

    .line 2238
    const v1, 0x1020556

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2239
    .local v1, "stub":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2240
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109012a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2242
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2243
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2245
    :cond_2c
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2247
    .end local v1    # "stub":Landroid/widget/FrameLayout;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2f
    return-void
.end method

.method protected blacklist appliedThemeResId()I
    .registers 2

    .line 737
    const v0, 0x1030415

    return v0
.end method

.method protected blacklist applyFooterView(I)V
    .registers 6
    .param p1, "height"    # I

    .line 910
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    if-nez v0, :cond_10

    .line 911
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    goto :goto_1d

    .line 913
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 914
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 916
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 919
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFooterSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 920
    return-void
.end method

.method protected blacklist createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .registers 11

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 593
    .local v0, "shouldShowNoCrossProfileIntentsEmptyState":Z
    if-nez v0, :cond_14

    .line 595
    new-instance v1, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-object v1

    .line 599
    :cond_14
    new-instance v2, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    const/16 v8, 0x9e

    const-string v9, "intent_resolver"

    const-string v4, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const v5, 0x104091f

    const-string v6, "Core.RESOLVER_CANT_ACCESS_PERSONAL"

    const v7, 0x104091b

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    move-object v1, v2

    .line 609
    .local v1, "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    new-instance v2, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;

    const/16 v8, 0x9f

    const-string v9, "intent_resolver"

    const-string v4, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    const-string v6, "Core.RESOLVER_CANT_ACCESS_WORK"

    const v7, 0x104091c

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    move-object v6, v2

    .line 619
    .local v6, "noPersonalToWorkEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    new-instance v3, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    move-result-object v7

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v8

    move-object v5, v1

    .end local v1    # "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .local v5, "noWorkToPersonalEmptyState":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;-><init>(Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;Landroid/os/UserHandle;)V

    .line 619
    return-object v3
.end method

.method protected blacklist createCrossProfileIntentsChecker()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;
    .registers 3

    .line 555
    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CrossProfileIntentsChecker;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method protected blacklist createEmptyStateProvider(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .registers 15
    .param p1, "workProfileUserHandle"    # Landroid/os/UserHandle;

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    move-result-object v0

    .line 631
    .local v0, "blockerEmptyStateProvider":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    new-instance v1, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "workProfileUserHandle":Landroid/os/UserHandle;
    .local v3, "workProfileUserHandle":Landroid/os/UserHandle;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;Ljava/lang/String;)V

    .line 640
    .local v1, "workProfileOffEmptyStateProvider":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    new-instance v7, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMetricsCategory()Ljava/lang/String;

    move-result-object v11

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v12

    move-object v8, p0

    move-object v9, v3

    .end local v3    # "workProfileUserHandle":Landroid/os/UserHandle;
    .local v9, "workProfileUserHandle":Landroid/os/UserHandle;
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 649
    .end local v9    # "workProfileUserHandle":Landroid/os/UserHandle;
    .restart local v3    # "workProfileUserHandle":Landroid/os/UserHandle;
    .local v7, "noAppsEmptyStateProvider":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    new-instance p1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v7, v2, v4

    invoke-direct {p1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$CompositeEmptyStateProvider;-><init>([Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;)V

    return-object p1
.end method

.method protected blacklist createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .registers 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v8

    .line 1737
    .local v8, "queryIntentsUser":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->makeResolverComparator(Landroid/os/UserHandle;)Lcom/android/internal/app/AbstractResolverComparator;

    move-result-object v7

    .line 1738
    .local v7, "resolverComparator":Lcom/android/internal/app/AbstractResolverComparator;
    new-instance v0, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1742
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v6, p1

    .end local p1    # "userHandle":Landroid/os/UserHandle;
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    .line 1738
    return-object v0
.end method

.method protected blacklist createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .registers 6
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

    .line 536
    .local p2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 537
    .local v0, "resolverMultiProfilePagerAdapter":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 538
    nop

    .line 539
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForTwoProfiles([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    goto :goto_11

    .line 542
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->createResolverMultiProfilePagerAdapterForOneProfile([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    move-result-object v0

    .line 545
    :goto_11
    return-object v0
.end method

.method protected blacklist createMyUserIdProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
    .registers 2

    .line 550
    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;

    invoke-direct {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;-><init>()V

    return-object v0
.end method

.method protected blacklist createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
    .registers 3
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 349
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v0
.end method

.method protected blacklist createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .registers 3

    .line 560
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 561
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/os/UserManager;)V

    return-object v1
.end method

.method protected blacklist createResolverListAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLandroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
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
            "Lcom/android/internal/app/ResolverListAdapter;"
        }
    .end annotation

    .line 1708
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p6

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1709
    .local v1, "startIntent":Landroid/content/Intent;
    nop

    .line 1710
    const-string v2, "is_audio_capture_device"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 1712
    .local v12, "isAudioCaptureDevice":Z
    nop

    .line 1711
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsCloneProfile()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1712
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1713
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    move-object v13, v2

    goto :goto_26

    :cond_25
    move-object v13, v0

    .line 1714
    .local v13, "initialIntentsUserSpace":Landroid/os/UserHandle;
    :goto_26
    new-instance v4, Lcom/android/internal/app/ResolverListAdapter;

    .line 1715
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v10

    move-object v11, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v13}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V

    .line 1714
    return-object v4
.end method

.method blacklist dismiss()V
    .registers 2

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1115
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1117
    :cond_9
    return-void
.end method

.method protected blacklist fetchCloneProfileUserHandle()Landroid/os/UserHandle;
    .registers 5

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    .line 812
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 814
    .local v0, "userManager":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 815
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 816
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    .line 818
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_31
    goto :goto_19

    .line 819
    :cond_32
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected blacklist fetchPersonalProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 794
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist fetchPrivateProfileUserHandle()Landroid/os/UserHandle;
    .registers 5

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    .line 824
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 826
    .local v0, "userManager":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 827
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 828
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    .line 829
    goto :goto_33

    .line 831
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_32
    goto :goto_19

    .line 832
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected blacklist fetchWorkProfileUserProfile()Landroid/os/UserHandle;
    .registers 5

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 800
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 801
    .local v0, "userManager":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    .line 802
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 801
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 803
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 804
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 806
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_31
    goto :goto_19

    .line 807
    :cond_32
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v1
.end method

.method protected blacklist getCloneProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 777
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist getCurrentProfile()I
    .registers 3

    .line 760
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 761
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    .line 760
    :goto_11
    return v0
.end method

.method public blacklist getLayoutResource()I
    .registers 2

    .line 1027
    const v0, 0x109012c

    return v0
.end method

.method protected blacklist getMetricsCategory()Ljava/lang/String;
    .registers 2

    .line 2405
    const-string v0, "intent_resolver"

    return-object v0
.end method

.method protected blacklist getPersonalProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 767
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedInSingleUserMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 770
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected blacklist getPrivateProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected final blacklist getQueryIntentsUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 2653
    move-object v0, p1

    .line 2654
    .local v0, "queryIntentsUser":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2655
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2657
    :cond_15
    return-object v0
.end method

.method protected blacklist getReferrerPackageName()Ljava/lang/String;
    .registers 4

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 1020
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_17

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1021
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1023
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 1396
    return-object p2
.end method

.method public final blacklist getResolverRankerServiceUserHandleList(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 2666
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getResolverRankerServiceUserHandleListInternal(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getResolverRankerServiceUserHandleListInternal(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 2672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2673
    .local v0, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2678
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 2679
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2681
    :cond_1f
    return-object v0
.end method

.method blacklist getSelectedProfileExtra()I
    .registers 5

    .line 747
    const/4 v0, -0x1

    .line 748
    .local v0, "selectedProfile":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 750
    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 751
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE has invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Must be either ResolverActivity.PROFILE_PERSONAL or ResolverActivity.PROFILE_WORK."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_3b
    :goto_3b
    return v0
.end method

.method protected blacklist getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;
    .registers 2

    .line 781
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getTargetIntent()Landroid/content/Intent;
    .registers 3

    .line 1015
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_13
    return-object v0
.end method

.method protected blacklist getTitleForAction(Landroid/content/Intent;I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "defaultTitleRes"    # I

    .line 1095
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v0, :cond_7

    .line 1096
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    goto :goto_f

    .line 1097
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    :goto_f
    nop

    .line 1101
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1102
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 1103
    .local v1, "named":Z
    :goto_1f
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v2, :cond_2a

    if-eqz p2, :cond_2a

    .line 1104
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1106
    :cond_2a
    if-eqz v1, :cond_45

    .line 1107
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1108
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1107
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 1109
    :cond_45
    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    :goto_4b
    return-object v2
.end method

.method protected blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected final blacklist isLaunchedAsCloneProfile()Z
    .registers 3

    .line 855
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 855
    :goto_17
    return v0
.end method

.method protected final blacklist isLaunchedAsPrivateProfile()Z
    .registers 3

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 861
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 860
    :goto_17
    return v0
.end method

.method protected final blacklist isLaunchedInSingleUserMode()Z
    .registers 4

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedAsPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 867
    const/4 v0, 0x1

    return v0

    .line 869
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 870
    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 869
    return v0
.end method

.method protected blacklist maybeLogProfileChange()V
    .registers 1

    .line 2641
    return-void
.end method

.method public blacklist onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 2
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1686
    return-void
.end method

.method protected blacklist onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 923
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    .line 925
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 930
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 931
    const v0, 0x102025b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 932
    .local v0, "buttonContainer":Landroid/view/View;
    if-eqz v0, :cond_3d

    .line 933
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 933
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 940
    .end local v0    # "buttonContainer":Landroid/view/View;
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 941
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->applyFooterView(I)V

    .line 944
    :cond_4a
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onButtonClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 1334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1335
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1336
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    .line 1337
    .local v2, "currentListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1338
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredPosition()I

    move-result v3

    goto :goto_21

    .line 1339
    :cond_1d
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    :goto_21
    nop

    .line 1340
    .local v3, "which":I
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 1341
    .local v4, "hasIndexBeenFiltered":Z
    const v6, 0x1020259

    if-ne v0, v6, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1342
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 949
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 950
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 951
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    if-nez v0, :cond_25

    .line 952
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->shouldUseMiniResolver()Z

    move-result v0

    if-nez v0, :cond_25

    .line 953
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->updateIntentPickerPaddings()V

    .line 956
    :cond_25
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_3b

    .line 957
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setPadding(IIII)V

    .line 960
    :cond_3b
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 395
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 396
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 397
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    if-eqz v8, :cond_27

    .line 399
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_27

    .line 400
    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 402
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 405
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 407
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    .local v1, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 408
    return-void
.end method

.method protected blacklist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 425
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->appliedThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 428
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mHasSubclassSpecifiedResolutions:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessage(I)V

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    .line 437
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUserHandle:Landroid/os/UserHandle;

    .line 438
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_199

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_199

    .line 444
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    .line 449
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 451
    iput p4, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    .line 453
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->fetchPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->fetchWorkProfileUserProfile()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->fetchCloneProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mCloneProfileUserHandle:Landroid/os/UserHandle;

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->fetchPrivateProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateProfileUserHandle:Landroid/os/UserHandle;

    .line 458
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->fetchTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    .line 468
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasCloneProfile()Z

    move-result v2

    if-nez v2, :cond_8e

    move v2, v0

    goto :goto_8f

    :cond_8e
    move v2, v1

    .line 470
    .local v2, "filterLastUsed":Z
    :goto_8f
    invoke-virtual {p0, p5, p6, v2}, Lcom/android/internal/app/ResolverActivity;->createMultiProfilePagerAdapter([Landroid/content/Intent;Ljava/util/List;Z)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 471
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->configureContentView()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 472
    return-void

    .line 475
    :cond_9c
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 476
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 475
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 477
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 477
    invoke-virtual {v3, p0, v4, v5, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 480
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 481
    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 480
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 482
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 485
    :cond_d4
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 487
    const v0, 0x1020295

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 488
    .local v0, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v0, :cond_132

    .line 489
    new-instance v3, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 497
    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 499
    .local v3, "hasTouchScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v4

    if-nez v4, :cond_fb

    if-nez v3, :cond_fe

    .line 500
    :cond_fb
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 503
    :cond_fe
    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setSystemUiVisibility(I)V

    .line 505
    new-instance v1, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 507
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 509
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCount()I

    move-result v4

    .local v4, "size":I
    :goto_114
    if-ge v1, v4, :cond_132

    .line 510
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v6, 0x10204c2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 512
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_12f

    .line 513
    new-instance v6, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 509
    .end local v5    # "view":Landroid/view/View;
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    .line 518
    .end local v1    # "i":I
    .end local v3    # "hasTouchScreen":Z
    .end local v4    # "size":I
    :cond_132
    const v1, 0x1020491

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 519
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v1, :cond_14c

    .line 520
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 524
    :cond_14c
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 525
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 526
    const/16 v3, 0x1c3

    goto :goto_161

    .line 527
    :cond_15f
    const/16 v3, 0x1c5

    :goto_161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 529
    if-eqz v1, :cond_18b

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_18d

    :cond_18b
    const-string v5, ""

    :goto_18d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-static {p0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 530
    return-void

    .line 440
    .end local v0    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v1    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "filterLastUsed":Z
    :cond_199
    :goto_199
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 441
    return-void
.end method

.method protected greylist onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "supportsAlwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 418
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "title":Ljava/lang/CharSequence;
    .end local p4    # "initialIntents":[Landroid/content/Intent;
    .end local p5    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local p6    # "supportsAlwaysUseOption":Z
    .local v1, "savedInstanceState":Landroid/os/Bundle;
    .local v2, "intent":Landroid/content/Intent;
    .local v3, "title":Ljava/lang/CharSequence;
    .local v5, "initialIntents":[Landroid/content/Intent;
    .local v6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v7, "supportsAlwaysUseOption":Z
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 420
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1211
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_12

    .line 1213
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 1215
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    if-eqz v0, :cond_32

    .line 1216
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1217
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1218
    .local v0, "activeAdapter":Lcom/android/internal/app/ResolverListAdapter;
    if-eqz v0, :cond_21

    .line 1219
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    .line 1221
    :cond_21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->fixResolverMemoryLeak()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1222
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1223
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1224
    .local v1, "inactiveAdapter":Lcom/android/internal/app/ResolverListAdapter;
    if-eqz v1, :cond_32

    .line 1225
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->onDestroy()V

    .line 1229
    .end local v0    # "activeAdapter":Lcom/android/internal/app/ResolverListAdapter;
    .end local v1    # "inactiveAdapter":Lcom/android/internal/app/ResolverListAdapter;
    :cond_32
    return-void
.end method

.method public blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 5
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 2410
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_41

    .line 2411
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 2412
    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2417
    return-void

    .line 2419
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    move-result v0

    .line 2420
    .local v0, "listRebuilt":Z
    if-eqz v0, :cond_40

    .line 2421
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2422
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2423
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 2424
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_40

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->inactiveListAdapterHasItems()Z

    move-result v2

    if-nez v2, :cond_40

    .line 2426
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2429
    .end local v0    # "listRebuilt":Z
    .end local v1    # "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    :cond_40
    goto :goto_46

    .line 2430
    :cond_41
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2432
    :goto_46
    return-void
.end method

.method blacklist onHorizontalSwipeStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 2167
    return-void
.end method

.method protected blacklist onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .registers 7
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "rebuildCompleted"    # Z

    .line 1430
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1431
    .local v0, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->setupAdapterListView(Landroid/widget/ListView;Lcom/android/internal/app/ResolverActivity$ItemClickListener;)V

    .line 1432
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v1, :cond_3d

    .line 1433
    const v1, 0x1020295

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1434
    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v1, :cond_3d

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1437
    const v3, 0x1050330

    goto :goto_36

    .line 1438
    :cond_33
    const v3, 0x1050331

    .line 1436
    :goto_36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1435
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    .line 1441
    .end local v1    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_3d
    return-void
.end method

.method public final blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
    .registers 6
    .param p1, "listAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "doPostProcessing"    # Z
    .param p3, "rebuildCompleted"    # Z

    .line 1402
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1403
    return-void

    .line 1405
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isAutolaunching()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1406
    return-void

    .line 1408
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsIntentPicker:Z

    if-eqz v0, :cond_1d

    .line 1409
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    check-cast v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;

    .line 1410
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setUseLayoutWithDefault(Z)V

    .line 1412
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1413
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyResolverListEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_30

    .line 1415
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showListView(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1419
    :goto_30
    if-eqz p3, :cond_39

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1420
    return-void

    .line 1422
    :cond_39
    if-eqz p2, :cond_44

    .line 1423
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->maybeCreateHeader(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 1425
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/ResolverActivity;->onListRebuilt(Lcom/android/internal/app/ResolverListAdapter;Z)V

    .line 1427
    :cond_44
    return-void
.end method

.method protected blacklist onProfileClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 882
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 883
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 884
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v0, :cond_d

    .line 885
    return-void

    .line 889
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    .line 891
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 893
    return-void
.end method

.method protected blacklist onProfileTabSelected()V
    .registers 1

    .line 2184
    return-void
.end method

.method protected whitelist onRestart()V
    .registers 5

    .line 1121
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_3b

    .line 1123
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1123
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1126
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-nez v0, :cond_2b

    .line 1127
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1128
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1127
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1130
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1130
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1133
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1135
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isWaitingToEnableWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1136
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1137
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->markWorkProfileEnabledBroadcastReceived()V

    .line 1140
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 1142
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1242
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1243
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 1244
    const v0, 0x1020492

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1245
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_1a

    .line 1246
    const-string v1, "last_shown_tab_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 1248
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 1249
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1233
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1234
    const v0, 0x1020492

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .line 1235
    .local v0, "viewPager":Lcom/android/internal/widget/ViewPager;
    if-eqz v0, :cond_17

    .line 1236
    const-string v1, "last_shown_tab_key"

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    :cond_17
    return-void
.end method

.method protected whitelist onStart()V
    .registers 3

    .line 1146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1150
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerWorkProfileStateReceiver()V

    .line 1153
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isWorkProfileEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileHasBeenEnabled:Z

    .line 1155
    :cond_21
    return-void
.end method

.method protected whitelist onStop()V
    .registers 6

    .line 1175
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1178
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1179
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1180
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1182
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v2, :cond_2b

    .line 1183
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1184
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v2, :cond_28

    .line 1185
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1187
    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1189
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1190
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v3, :cond_4f

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    if-nez v3, :cond_4f

    .line 1199
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1200
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1203
    :cond_4f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v3, :cond_5b

    .line 1204
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkProfileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1205
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1207
    :cond_5b
    return-void
.end method

.method protected blacklist onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z
    .registers 24
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "always"    # Z

    .line 1444
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1445
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move-object v4, v0

    .line 1447
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_23b

    iget-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1448
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_26

    :cond_22
    const/16 v17, 0x1

    goto/16 :goto_23d

    :cond_26
    :goto_26
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1449
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_238

    .line 1451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 1454
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1455
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    move-object v8, v0

    .local v0, "filterIntent":Landroid/content/Intent;
    goto :goto_46

    .line 1457
    .end local v0    # "filterIntent":Landroid/content/Intent;
    :cond_44
    move-object v0, v4

    move-object v8, v0

    .line 1460
    .local v8, "filterIntent":Landroid/content/Intent;
    :goto_46
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1461
    .local v9, "action":Ljava/lang/String;
    if-eqz v9, :cond_4f

    .line 1462
    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    :cond_4f
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    .line 1465
    .local v10, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_69

    .line 1466
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1467
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1468
    .end local v11    # "cat":Ljava/lang/String;
    goto :goto_59

    .line 1470
    :cond_69
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1472
    iget v0, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v11, 0xfff0000

    and-int/2addr v11, v0

    .line 1473
    .local v11, "cat":I
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1474
    .local v12, "data":Landroid/net/Uri;
    const-string v13, "ResolverActivity"

    const/high16 v14, 0x600000

    if-ne v11, v14, :cond_8c

    .line 1475
    invoke-virtual {v8, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1476
    .local v15, "mimeType":Ljava/lang/String;
    if-eqz v15, :cond_8c

    .line 1478
    :try_start_83
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_86
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_83 .. :try_end_86} :catch_87

    .line 1482
    goto :goto_8c

    .line 1479
    :catch_87
    move-exception v0

    .line 1480
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    const/4 v7, 0x0

    .line 1485
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v15    # "mimeType":Ljava/lang/String;
    :cond_8c
    :goto_8c
    if-eqz v12, :cond_152

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_152

    .line 1489
    if-ne v11, v14, :cond_b7

    .line 1490
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v14, "file"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1491
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v14, "content"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto :goto_b7

    :cond_af
    const/16 v17, 0x1

    goto/16 :goto_154

    .line 1490
    :cond_b3
    const/16 v17, 0x1

    goto/16 :goto_154

    .line 1492
    :cond_b7
    :goto_b7
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1496
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1497
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v0, :cond_f2

    .line 1498
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 1499
    .local v14, "ssp":Ljava/lang/String;
    :goto_ca
    if-eqz v14, :cond_ef

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ef

    .line 1500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 1501
    .local v15, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v15, v14}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_ec

    .line 1502
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x1

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v6

    invoke-virtual {v7, v3, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1503
    goto :goto_f4

    .line 1501
    :cond_ec
    const/16 v17, 0x1

    .line 1505
    .end local v15    # "p":Landroid/os/PatternMatcher;
    goto :goto_ca

    .line 1499
    :cond_ef
    const/16 v17, 0x1

    goto :goto_f4

    .line 1497
    .end local v14    # "ssp":Ljava/lang/String;
    :cond_f2
    const/16 v17, 0x1

    .line 1507
    :goto_f4
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1508
    .local v3, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v3, :cond_125

    .line 1509
    :goto_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_125

    .line 1510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1511
    .local v6, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v14

    if-ltz v14, :cond_124

    .line 1512
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v14

    .line 1513
    .local v14, "port":I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 1514
    if-ltz v14, :cond_11f

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_120

    :cond_11f
    const/4 v5, 0x0

    .line 1513
    :goto_120
    invoke-virtual {v7, v15, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    goto :goto_125

    .line 1517
    .end local v6    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v14    # "port":I
    :cond_124
    goto :goto_fc

    .line 1519
    :cond_125
    :goto_125
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1520
    if-eqz v0, :cond_154

    .line 1521
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1522
    .local v5, "path":Ljava/lang/String;
    :goto_131
    if-eqz v5, :cond_154

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_154

    .line 1523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PatternMatcher;

    .line 1524
    .local v6, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v6, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_151

    .line 1525
    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1526
    goto :goto_154

    .line 1528
    .end local v6    # "p":Landroid/os/PatternMatcher;
    :cond_151
    goto :goto_131

    .line 1485
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v3    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v5    # "path":Ljava/lang/String;
    :cond_152
    const/16 v17, 0x1

    .line 1533
    :cond_154
    :goto_154
    if-eqz v7, :cond_235

    .line 1534
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1540
    .local v3, "N":I
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1541
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_173

    move/from16 v0, v17

    goto :goto_174

    :cond_173
    const/4 v0, 0x0

    :goto_174
    move v5, v0

    .line 1542
    .local v5, "needToAddBackProfileForwardingComponent":Z
    if-nez v5, :cond_17b

    .line 1543
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object v6, v0

    .local v0, "set":[Landroid/content/ComponentName;
    goto :goto_180

    .line 1545
    .end local v0    # "set":[Landroid/content/ComponentName;
    :cond_17b
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object v6, v0

    .line 1548
    .local v6, "set":[Landroid/content/ComponentName;
    :goto_180
    const/4 v0, 0x0

    .line 1549
    .local v0, "bestMatch":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_182
    if-ge v14, v3, :cond_1bd

    .line 1550
    iget-object v15, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v15}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v15

    .line 1551
    invoke-virtual {v15}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredResolveList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "N":I
    .local v16, "N":I
    invoke-virtual {v15, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 1552
    .local v15, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move/from16 v19, v5

    .end local v5    # "needToAddBackProfileForwardingComponent":Z
    .local v19, "needToAddBackProfileForwardingComponent":Z
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v8

    .end local v8    # "filterIntent":Landroid/content/Intent;
    .local v20, "filterIntent":Landroid/content/Intent;
    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v6, v14

    .line 1554
    iget v3, v15, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v0, :cond_1b4

    iget v0, v15, Landroid/content/pm/ResolveInfo;->match:I

    .line 1549
    .end local v15    # "r":Landroid/content/pm/ResolveInfo;
    :cond_1b4
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move/from16 v5, v19

    move-object/from16 v8, v20

    goto :goto_182

    .end local v16    # "N":I
    .end local v19    # "needToAddBackProfileForwardingComponent":Z
    .end local v20    # "filterIntent":Landroid/content/Intent;
    .restart local v3    # "N":I
    .restart local v5    # "needToAddBackProfileForwardingComponent":Z
    .restart local v8    # "filterIntent":Landroid/content/Intent;
    :cond_1bd
    move/from16 v16, v3

    move/from16 v19, v5

    move-object/from16 v20, v8

    .line 1557
    .end local v3    # "N":I
    .end local v5    # "needToAddBackProfileForwardingComponent":Z
    .end local v8    # "filterIntent":Landroid/content/Intent;
    .end local v14    # "i":I
    .restart local v16    # "N":I
    .restart local v19    # "needToAddBackProfileForwardingComponent":Z
    .restart local v20    # "filterIntent":Landroid/content/Intent;
    if-eqz v19, :cond_1e9

    .line 1558
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1559
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v6, v16

    .line 1560
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    .line 1561
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 1562
    .local v3, "otherProfileMatch":I
    if-le v3, v0, :cond_1e9

    move v0, v3

    goto :goto_1ea

    .line 1565
    .end local v3    # "otherProfileMatch":I
    :cond_1e9
    move v3, v0

    .end local v0    # "bestMatch":I
    .local v3, "bestMatch":I
    :goto_1ea
    if-eqz p2, :cond_211

    .line 1566
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v0

    .line 1567
    .local v0, "userId":I
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1570
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v7, v3, v6, v8}, Landroid/content/pm/PackageManager;->addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1572
    iget-boolean v8, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v8, :cond_210

    .line 1574
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v8

    .line 1575
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_210

    .line 1576
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v13, v0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 1579
    .end local v0    # "userId":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_210
    goto :goto_23d

    .line 1581
    :cond_211
    :try_start_211
    iget-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 1582
    invoke-virtual {v0, v4, v7, v3}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_21c
    .catch Landroid/os/RemoteException; {:try_start_211 .. :try_end_21c} :catch_21d

    .line 1585
    goto :goto_23d

    .line 1583
    :catch_21d
    move-exception v0

    .line 1584
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    .line 1533
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v3    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v16    # "N":I
    .end local v19    # "needToAddBackProfileForwardingComponent":Z
    .end local v20    # "filterIntent":Landroid/content/Intent;
    .local v8, "filterIntent":Landroid/content/Intent;
    :cond_235
    move-object/from16 v20, v8

    .end local v8    # "filterIntent":Landroid/content/Intent;
    .restart local v20    # "filterIntent":Landroid/content/Intent;
    goto :goto_23d

    .line 1449
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "cat":I
    .end local v12    # "data":Landroid/net/Uri;
    .end local v20    # "filterIntent":Landroid/content/Intent;
    :cond_238
    const/16 v17, 0x1

    goto :goto_23d

    .line 1447
    :cond_23b
    const/16 v17, 0x1

    .line 1590
    :goto_23d
    if-eqz p1, :cond_24b

    .line 1591
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1595
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 1596
    const/16 v18, 0x0

    return v18

    .line 1600
    :cond_24b
    return v17
.end method

.method blacklist optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 5
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "index"    # I

    .line 1002
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected blacklist postRebuildList(Z)Z
    .registers 3
    .param p1, "rebuildCompleted"    # Z

    .line 1907
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->postRebuildListInternal(Z)Z

    move-result v0

    return v0
.end method

.method final blacklist postRebuildListInternal(Z)Z
    .registers 4
    .param p1, "rebuildCompleted"    # Z

    .line 1916
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 1920
    .local v0, "count":I
    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->maybeAutolaunchActivity()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1921
    const/4 v1, 0x1

    return v1

    .line 1924
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupViewVisibilities()V

    .line 1926
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1927
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V

    .line 1930
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist resetButtonBar()V
    .registers 11

    .line 2294
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-nez v0, :cond_5

    .line 2295
    return-void

    .line 2297
    :cond_5
    const v0, 0x102025a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2298
    .local v0, "buttonLayout":Landroid/view/ViewGroup;
    if-nez v0, :cond_18

    .line 2299
    const-string v1, "ResolverActivity"

    const-string v2, "Layout unexpectedly does not have a button bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    return-void

    .line 2302
    :cond_18
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2303
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2304
    .local v1, "activeListAdapter":Lcom/android/internal/app/ResolverListAdapter;
    const v2, 0x10204ba

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2305
    .local v2, "buttonBarDivider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_51

    .line 2306
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSystemWindowInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_36

    :cond_35
    move v3, v4

    .line 2307
    .local v3, "inset":I
    :goto_36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 2308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050325

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 2307
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2311
    .end local v3    # "inset":I
    :cond_51
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2312
    invoke-virtual {v3, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->shouldShowEmptyStateScreen(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2313
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_72

    .line 2314
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2315
    if-eqz v2, :cond_6e

    .line 2316
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    :cond_6e
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2319
    return-void

    .line 2321
    :cond_72
    if-eqz v2, :cond_77

    .line 2322
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2324
    :cond_77
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2325
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setButtonBarIgnoreOffset(Z)V

    .line 2327
    const v3, 0x102025c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 2328
    const v3, 0x1020259

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 2330
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 2331
    return-void
.end method

.method public blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 2395
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_7

    goto :goto_3c

    :cond_7
    move v0, v1

    goto :goto_3c

    .line 2396
    :cond_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_14

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_12

    goto :goto_3c

    :cond_12
    move v0, v1

    goto :goto_3c

    .line 2401
    :cond_14
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2397
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2398
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 2401
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v1

    .line 2395
    :goto_3c
    return v0
.end method

.method public final blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 4
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1608
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1609
    .local v0, "activityUserHandle":Landroid/os/UserHandle;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 1610
    return-void
.end method

.method public final blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 1619
    return-void
.end method

.method protected final blacklist safelyStartActivityAsUser(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1625
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 1627
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    .line 1629
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1630
    nop

    .line 1631
    return-void

    .line 1629
    :catchall_b
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 1630
    throw v0
.end method

.method protected blacklist safelyStartActivityInternal(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "cti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1638
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_1f

    .line 1639
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_13

    .line 1640
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPersonalPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1642
    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_1c

    .line 1643
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mWorkPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1645
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1649
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1650
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessage:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1652
    :cond_2d
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v0, :cond_3e

    .line 1653
    invoke-interface {p1, p0, p3, p2}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1654
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1655
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V

    .line 1657
    :cond_3d
    return-void

    .line 1660
    :cond_3e
    :try_start_3e
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {p1, p0, p3, v0}, Lcom/android/internal/app/chooser/TargetInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1661
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1662
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->maybeLogCrossProfileTargetLaunch(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/UserHandle;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_4e} :catch_4f

    .line 1668
    :cond_4e
    goto :goto_86

    .line 1664
    :catch_4f
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch as uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1666
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while running in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1667
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1665
    const-string v2, "ResolverActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_86
    return-void
.end method

.method public blacklist sendVoiceChoicesIfNeeded()V
    .registers 7

    .line 979
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_7

    .line 981
    return-void

    .line 984
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    .line 985
    .local v0, "count":I
    new-array v1, v0, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 986
    .local v1, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_15
    if-ge v2, v3, :cond_2d

    .line 987
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    .line 988
    .local v4, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v4, :cond_24

    .line 991
    return-void

    .line 993
    :cond_24
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/chooser/TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v5

    aput-object v5, v1, v2

    .line 986
    .end local v4    # "target":Lcom/android/internal/app/chooser/TargetInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 996
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_2d
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v3, Landroid/app/VoiceInteractor$Prompt;

    .line 997
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 998
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 999
    return-void
.end method

.method protected final blacklist setAdditionalTargets([Landroid/content/Intent;)V
    .registers 6
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1006
    if-eqz p1, :cond_10

    .line 1007
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 1008
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1011
    :cond_10
    return-void
.end method

.method protected blacklist setRetainInOnStop(Z)V
    .registers 2
    .param p1, "retainInOnStop"    # Z

    .line 2387
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    .line 2388
    return-void
.end method

.method public blacklist setSafeForwardingMode(Z)V
    .registers 2
    .param p1, "safeForwarding"    # Z

    .line 1091
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 1092
    return-void
.end method

.method protected blacklist shouldAddFooterView()Z
    .registers 5

    .line 901
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 903
    :cond_8
    const v0, 0x102025a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    goto :goto_1c

    .line 906
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 904
    :cond_1c
    :goto_1c
    return v1
.end method

.method public blacklist shouldAutoLaunchSingleChoice(Lcom/android/internal/app/chooser/TargetInfo;)Z
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 1694
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist shouldGetActivityMetadata()Z
    .registers 2

    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist shouldShowTabs()Z
    .registers 3

    .line 875
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->privateSpaceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isLaunchedInSingleUserMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 876
    return v1

    .line 878
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method blacklist showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1698
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1699
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1700
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1701
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1702
    return-void
.end method

.method public blacklist startSelected(IZZ)V
    .registers 7
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1346
    return-void

    .line 1348
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 1349
    invoke-virtual {v0, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1350
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_3c

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1351
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1353
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileNotSupportedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1354
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1355
    return-void

    .line 1358
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 1359
    invoke-virtual {v1, p1, p3}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    .line 1360
    .local v1, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v1, :cond_49

    .line 1361
    return-void

    .line 1363
    :cond_49
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1364
    if-eqz p2, :cond_5b

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_5b

    .line 1365
    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_6a

    .line 1367
    :cond_5b
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v2, :cond_65

    .line 1368
    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_6a

    .line 1371
    :cond_65
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1374
    :goto_6a
    nop

    .line 1375
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1376
    const/16 v2, 0x1c4

    goto :goto_7c

    .line 1377
    :cond_7a
    const/16 v2, 0x1c6

    .line 1374
    :goto_7c
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1380
    :cond_82
    return-void
.end method

.method protected blacklist super_onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 390
    return-void
.end method

.method public blacklist updateProfileViewButton()V
    .registers 5

    .line 1032
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1033
    return-void

    .line 1036
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 1037
    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 1038
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowTabs()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1039
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v2, 0x1020491

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1041
    .local v1, "text":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_33

    .line 1042
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1044
    :cond_33
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    .end local v1    # "text":Landroid/view/View;
    goto :goto_45

    .line 1046
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :goto_45
    return-void
.end method

.method public blacklist useLayoutWithDefault()Z
    .registers 3

    .line 2376
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2378
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTabOwnerUserHandleForLaunch()Landroid/os/UserHandle;

    move-result-object v1

    .line 2377
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    .line 2378
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 2379
    .local v0, "adapterForCurrentUserHasFilteredItem":Z
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportsAlwaysUseOption:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method
