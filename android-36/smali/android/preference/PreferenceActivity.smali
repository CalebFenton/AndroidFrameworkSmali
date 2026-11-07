.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final greylist-max-o CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final whitelist EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final greylist-max-o EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final greylist-max-o EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final greylist-max-o EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final greylist-max-o EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final whitelist EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final whitelist EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final whitelist EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final whitelist EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final greylist-max-o FIRST_REQUEST_CODE:I = 0x64

.field private static final greylist-max-o HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final whitelist HEADER_ID_UNDEFINED:J = -0x1L

.field private static final greylist-max-o MSG_BIND_PREFERENCES:I = 0x1

.field private static final greylist-max-o MSG_BUILD_HEADERS:I = 0x2

.field private static final greylist-max-o PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private greylist-max-o mActivityTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private greylist-max-o mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeadersContainer:Landroid/view/ViewGroup;

.field private blacklist mIsBackCallbackRegistered:Z

.field private greylist-max-o mListFooter:Landroid/widget/FrameLayout;

.field private greylist-max-o mNextButton:Landroid/widget/Button;

.field private final blacklist mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field private final blacklist mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

.field private greylist-max-o mPreferenceHeaderItemResId:I

.field private greylist-max-o mPreferenceHeaderRemoveEmptyIcon:Z

.field private greylist mPreferenceManager:Landroid/preference/PreferenceManager;

.field private greylist mPrefsContainer:Landroid/view/ViewGroup;

.field private greylist-max-o mSavedInstanceState:Landroid/os/Bundle;

.field private greylist-max-o mSinglePane:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$0W8rJPhDuMdAOLZ2osp4eRkx5xA(Landroid/preference/PreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->updateBackCallbackRegistrationState()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gjqBlMRkJuQXdW-nMy5X-dB8QCQ(Landroid/preference/PreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->onBackInvoked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbindPreferences(Landroid/preference/PreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 214
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 216
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    .line 217
    new-instance v0, Landroid/preference/PreferenceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$$ExternalSyntheticLambda0;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 218
    new-instance v0, Landroid/preference/PreferenceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$$ExternalSyntheticLambda1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 228
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .line 112
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .line 112
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private greylist-max-o bindPreferences()V
    .registers 3

    .line 1483
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1484
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_19

    .line 1485
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1486
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_19

    .line 1487
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1488
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1491
    :cond_19
    return-void
.end method

.method private blacklist onBackInvoked()V
    .registers 4

    .line 736
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 737
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_18

    .line 738
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_68

    .line 739
    :cond_18
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_57

    .line 740
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_57

    .line 741
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_57

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 744
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 745
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 746
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4f

    .line 747
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 749
    :cond_4f
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_68

    .line 750
    :cond_57
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 751
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_68

    .line 752
    :cond_61
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    if-nez v0, :cond_68

    .line 755
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 757
    :cond_68
    :goto_68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->updateBackCallbackRegistrationState()V

    .line 758
    return-void
.end method

.method private greylist postBindPreferences()V
    .registers 3

    .line 1478
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1479
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1480
    return-void
.end method

.method private greylist requirePreferenceManager()V
    .registers 3

    .line 1507
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_18

    .line 1508
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    .line 1509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_18
    return-void
.end method

.method private greylist-max-o switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1279
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1281
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1286
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1287
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1288
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 1289
    move v2, v3

    goto :goto_25

    .line 1290
    :cond_23
    const/16 v2, 0x1003

    .line 1288
    :goto_25
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1291
    const v2, 0x1020488

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1292
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1294
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_49

    .line 1297
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1298
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1300
    :cond_49
    return-void

    .line 1282
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateBackCallbackRegistrationState()V
    .registers 4

    .line 721
    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 722
    :cond_7
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, ":android:show_fragment"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_26

    .line 723
    :cond_1c
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_37

    .line 724
    :cond_26
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    if-nez v0, :cond_46

    .line 725
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 726
    invoke-interface {v0, v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    goto :goto_46

    .line 729
    :cond_37
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    if-eqz v0, :cond_46

    .line 730
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 731
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsBackCallbackRegistered:Z

    .line 733
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public whitelist addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1565
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1567
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1568
    return-void
.end method

.method public whitelist addPreferencesFromResource(I)V
    .registers 4
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1581
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1583
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1584
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1583
    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1585
    return-void
.end method

.method greylist-max-o findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .registers 10
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .line 1343
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 1345
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 1346
    .local v2, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v2, :cond_5d

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v5, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    goto :goto_5d

    .line 1352
    :cond_25
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 1353
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1356
    :cond_37
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_49

    .line 1357
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1358
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1360
    :cond_49
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5a

    .line 1361
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1362
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1348
    .restart local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_5d
    :goto_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1349
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    nop

    .line 1366
    .end local v1    # "j":I
    .end local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1367
    .local v1, "NM":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_73

    .line 1368
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    return-object v2

    .line 1369
    :cond_73
    if-le v1, v2, :cond_ae

    .line 1370
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_76
    if-ge v2, v1, :cond_ae

    .line 1371
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1372
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8d

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1373
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1374
    return-object v3

    .line 1376
    :cond_8d
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9c

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1377
    return-object v3

    .line 1379
    :cond_9c
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_ab

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1380
    return-object v3

    .line 1370
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 1384
    .end local v2    # "j":I
    :cond_ae
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1611
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1612
    const/4 v0, 0x0

    return-object v0

    .line 1615
    :cond_6
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .registers 6
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 1454
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1455
    if-eqz p1, :cond_16

    .line 1456
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1457
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1461
    :cond_16
    return-void
.end method

.method public greylist-max-r getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o getNextButton()Landroid/widget/Button;
    .registers 2

    .line 1632
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public whitelist getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public whitelist getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1549
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_b

    .line 1550
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1552
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasHeaders()Z
    .registers 2

    .line 764
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected greylist-max-o hasNextButton()Z
    .registers 2

    .line 1628
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist invalidateHeaders()V
    .registers 3

    .line 855
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 856
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 858
    :cond_e
    return-void
.end method

.method public whitelist isMultiPane()Z
    .registers 2

    .line 781
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected whitelist isValidFragment(Ljava/lang/String;)Z
    .registers 5
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 999
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 1006
    const/4 v0, 0x1

    return v0

    .line 1000
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1003
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist loadHeadersFromResource(ILjava/util/List;)V
    .registers 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 868
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v0, "extra"

    const-string v1, "Error parsing headers"

    const/4 v2, 0x0

    .line 870
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_9} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_1cc
    .catchall {:try_start_5 .. :try_end_9} :catchall_1c4

    move/from16 v4, p1

    :try_start_b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 871
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 874
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_14
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_20

    if-eq v6, v7, :cond_20

    goto :goto_14

    .line 879
    :cond_20
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "preference-headers"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_189

    .line 886
    const/4 v9, 0x0

    .line 888
    .local v9, "curBundle":Landroid/os/Bundle;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 889
    .local v10, "outerDepth":I
    :goto_32
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v6, v11

    if-eq v11, v8, :cond_17d

    const/4 v11, 0x3

    if-ne v6, v11, :cond_49

    .line 890
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_43

    goto :goto_49

    :cond_43
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    goto/16 :goto_183

    .line 891
    :cond_49
    :goto_49
    if-eq v6, v11, :cond_171

    const/4 v12, 0x4

    if-ne v6, v12, :cond_56

    .line 892
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    move-object/from16 v18, v9

    goto/16 :goto_177

    .line 895
    :cond_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 896
    const-string/jumbo v13, "header"

    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_162

    .line 897
    new-instance v13, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v13}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 899
    .local v13, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_6b} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6b} :catch_1bc
    .catchall {:try_start_b .. :try_end_6b} :catchall_1b8

    move-object/from16 v15, p0

    :try_start_6d
    invoke-virtual {v15, v3, v14}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 901
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v12, -0x1

    invoke-virtual {v14, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v18, v9

    .end local v9    # "curBundle":Landroid/os/Bundle;
    .local v18, "curBundle":Landroid/os/Bundle;
    int-to-long v8, v12

    iput-wide v8, v13, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 904
    invoke-virtual {v14, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 906
    .local v8, "tv":Landroid/util/TypedValue;
    if-eqz v8, :cond_92

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_92

    .line 907
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_8e

    .line 908
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto :goto_92

    .line 910
    :cond_8e
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 913
    :cond_92
    :goto_92
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 915
    .end local v8    # "tv":Landroid/util/TypedValue;
    .local v9, "tv":Landroid/util/TypedValue;
    if-eqz v9, :cond_a9

    iget v8, v9, Landroid/util/TypedValue;->type:I

    if-ne v8, v11, :cond_a9

    .line 916
    iget v8, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a5

    .line 917
    iget v8, v9, Landroid/util/TypedValue;->resourceId:I

    iput v8, v13, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto :goto_a9

    .line 919
    :cond_a5
    iget-object v8, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v13, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 922
    :cond_a9
    :goto_a9
    const/4 v8, 0x5

    invoke-virtual {v14, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 924
    .end local v9    # "tv":Landroid/util/TypedValue;
    .restart local v8    # "tv":Landroid/util/TypedValue;
    if-eqz v8, :cond_c1

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_c1

    .line 925
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_bd

    .line 926
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    goto :goto_c1

    .line 928
    :cond_bd
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 931
    :cond_c1
    :goto_c1
    const/4 v9, 0x6

    invoke-virtual {v14, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 933
    .end local v8    # "tv":Landroid/util/TypedValue;
    .restart local v9    # "tv":Landroid/util/TypedValue;
    if-eqz v9, :cond_d9

    iget v8, v9, Landroid/util/TypedValue;->type:I

    if-ne v8, v11, :cond_d9

    .line 934
    iget v8, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_d5

    .line 935
    iget v8, v9, Landroid/util/TypedValue;->resourceId:I

    iput v8, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    goto :goto_d9

    .line 937
    :cond_d5
    iget-object v8, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v8, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 940
    :cond_d9
    :goto_d9
    const/4 v8, 0x0

    invoke-virtual {v14, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v13, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 942
    const/4 v8, 0x4

    invoke-virtual {v14, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 944
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 946
    if-nez v18, :cond_f2

    .line 947
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .end local v18    # "curBundle":Landroid/os/Bundle;
    .local v8, "curBundle":Landroid/os/Bundle;
    goto :goto_f4

    .line 946
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    :cond_f2
    move-object/from16 v8, v18

    .line 950
    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    :goto_f4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 951
    .local v12, "innerDepth":I
    :goto_f8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_144

    const/4 v7, 0x3

    if-ne v6, v7, :cond_109

    .line 952
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v12, :cond_144

    .line 953
    :cond_109
    const/4 v7, 0x3

    if-eq v6, v7, :cond_141

    const/4 v7, 0x4

    if-ne v6, v7, :cond_110

    .line 954
    goto :goto_141

    .line 957
    :cond_110
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 958
    .local v17, "innerNodeName":Ljava/lang/String;
    move-object/from16 v7, v17

    .end local v17    # "innerNodeName":Ljava/lang/String;
    .local v7, "innerNodeName":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_129

    .line 959
    invoke-virtual {v15}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0, v3, v8}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 960
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_140

    .line 962
    :cond_129
    const-string/jumbo v11, "intent"

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 963
    invoke-virtual {v15}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v2, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, v13, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_140

    .line 966
    :cond_13d
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 968
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :goto_140
    nop

    .line 951
    :cond_141
    :goto_141
    const/4 v7, 0x2

    const/4 v11, 0x3

    goto :goto_f8

    .line 970
    :cond_144
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_14e

    .line 971
    iput-object v8, v13, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;
    :try_end_14c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_14c} :catch_15f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_14c} :catch_15c
    .catchall {:try_start_6d .. :try_end_14c} :catchall_159

    .line 972
    const/4 v7, 0x0

    .end local v8    # "curBundle":Landroid/os/Bundle;
    .local v7, "curBundle":Landroid/os/Bundle;
    goto :goto_14f

    .line 970
    .end local v7    # "curBundle":Landroid/os/Bundle;
    .restart local v8    # "curBundle":Landroid/os/Bundle;
    :cond_14e
    move-object v7, v8

    .line 975
    .end local v8    # "curBundle":Landroid/os/Bundle;
    .restart local v7    # "curBundle":Landroid/os/Bundle;
    :goto_14f
    move-object/from16 v8, p2

    :try_start_151
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    move-object v9, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    .end local v9    # "tv":Landroid/util/TypedValue;
    .end local v12    # "innerDepth":I
    .end local v13    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    goto/16 :goto_32

    .line 986
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "curBundle":Landroid/os/Bundle;
    .end local v10    # "outerDepth":I
    :catchall_159
    move-exception v0

    goto/16 :goto_1c9

    .line 983
    :catch_15c
    move-exception v0

    goto/16 :goto_1d1

    .line 981
    :catch_15f
    move-exception v0

    goto/16 :goto_1de

    .line 977
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    .local v9, "curBundle":Landroid/os/Bundle;
    .restart local v10    # "outerDepth":I
    :cond_162
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    move-object/from16 v18, v9

    .end local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_151 .. :try_end_16b} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_16b} :catch_1b4
    .catchall {:try_start_151 .. :try_end_16b} :catchall_1e6

    move-object/from16 v9, v18

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_32

    .line 891
    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_171
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    move-object/from16 v18, v9

    .line 889
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    :goto_177
    move-object/from16 v9, v18

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_32

    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_17d
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    move-object/from16 v18, v9

    .line 986
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v10    # "outerDepth":I
    :goto_183
    if-eqz v2, :cond_188

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 988
    :cond_188
    return-void

    .line 881
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_189
    move-object/from16 v15, p0

    move-object/from16 v8, p2

    :try_start_18d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " at "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 883
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v0
    :try_end_1b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18d .. :try_end_1b4} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1b4} :catch_1b4
    .catchall {:try_start_18d .. :try_end_1b4} :catchall_1e6

    .line 983
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catch_1b4
    move-exception v0

    goto :goto_1d3

    .line 981
    :catch_1b6
    move-exception v0

    goto :goto_1e0

    .line 986
    :catchall_1b8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1c9

    .line 983
    :catch_1bc
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1d1

    .line 981
    :catch_1c0
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1de

    .line 986
    :catchall_1c4
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1c9
    move-object/from16 v8, p2

    goto :goto_1e7

    .line 983
    :catch_1cc
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1d1
    move-object/from16 v8, p2

    .line 984
    .local v0, "e":Ljava/io/IOException;
    :goto_1d3
    :try_start_1d3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v3

    .line 981
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catch_1d9
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1de
    move-object/from16 v8, p2

    .line 982
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1e0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v3
    :try_end_1e6
    .catchall {:try_start_1d3 .. :try_end_1e6} :catchall_1e6

    .line 986
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catchall_1e6
    move-exception v0

    :goto_1e7
    if-eqz v2, :cond_1ec

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 987
    :cond_1ec
    throw v0
.end method

.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1093
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1095
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 1096
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1098
    :cond_c
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 1

    .line 717
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->onBackInvoked()V

    .line 718
    return-void
.end method

.method public whitelist onBuildHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 848
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public whitelist onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1157
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1159
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1162
    return-object v0
.end method

.method public whitelist onContentChanged()V
    .registers 2

    .line 1102
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1104
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1105
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1107
    :cond_a
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 556
    sget-object v2, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    const/4 v3, 0x0

    const v4, 0x11200cd

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 561
    .local v2, "sa":Landroid/content/res/TypedArray;
    const v4, 0x1090117

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 565
    .local v4, "layoutResId":I
    const v6, 0x1090111

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 568
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 572
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 574
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 576
    const v6, 0x10203c3

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 577
    const v8, 0x102048a

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 578
    const v8, 0x1020356

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    .line 579
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    .line 580
    .local v8, "hidingHeaders":Z
    if-nez v8, :cond_60

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v9

    if-nez v9, :cond_5e

    goto :goto_60

    :cond_5e
    move v9, v5

    goto :goto_61

    :cond_60
    :goto_60
    move v9, v7

    :goto_61
    iput-boolean v9, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 581
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, ":android:show_fragment"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "initialFragment":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, ":android:show_fragment_args"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 583
    .local v10, "initialArguments":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, ":android:show_fragment_title"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 584
    .local v11, "initialTitle":I
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, ":android:show_fragment_short_title"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 585
    .local v12, "initialShortTitle":I
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v0, Landroid/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    .line 587
    if-eqz v1, :cond_d5

    .line 590
    const-string v13, ":android:headers"

    const-class v14, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v13

    .line 591
    .local v13, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v13, :cond_cd

    .line 592
    iget-object v14, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 593
    const-string v14, ":android:cur_header"

    const/4 v15, -0x1

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 595
    .local v14, "curHeader":I
    if-ltz v14, :cond_bf

    iget-object v15, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_bf

    .line 596
    iget-object v15, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_cc

    .line 597
    :cond_bf
    iget-boolean v15, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v15, :cond_cc

    if-nez v9, :cond_cc

    .line 598
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 600
    .end local v14    # "curHeader":I
    :cond_cc
    :goto_cc
    goto :goto_d4

    .line 602
    :cond_cd
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v0, v14, v3}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 604
    .end local v13    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :goto_d4
    goto :goto_f9

    .line 605
    :cond_d5
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v13

    if-nez v13, :cond_e0

    .line 606
    iget-object v13, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 609
    :cond_e0
    if-eqz v9, :cond_e6

    .line 610
    invoke-virtual {v0, v9, v10}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f9

    .line 611
    :cond_e6
    iget-boolean v13, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v13, :cond_f9

    iget-object v13, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_f9

    .line 612
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 616
    :cond_f9
    :goto_f9
    iget-object v13, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_11a

    .line 617
    new-instance v13, Landroid/preference/PreferenceActivity$HeaderAdapter;

    iget-object v14, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v15, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v5, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v13, v0, v14, v15, v5}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-boolean v5, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v5, :cond_11a

    .line 620
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 624
    :cond_11a
    iget-boolean v5, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v5, :cond_131

    if-eqz v9, :cond_131

    if-eqz v11, :cond_131

    .line 625
    invoke-virtual {v0, v11}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 626
    .local v5, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v12, :cond_12d

    .line 627
    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_12e

    :cond_12d
    move-object v7, v3

    .line 628
    .local v7, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_12e
    invoke-virtual {v0, v5, v7}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 631
    .end local v5    # "initialTitleStr":Ljava/lang/CharSequence;
    .end local v7    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_131
    iget-object v5, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x8

    if-nez v5, :cond_167

    if-nez v9, :cond_167

    .line 634
    const v5, 0x1090119

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 635
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 636
    const v5, 0x1020488

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 637
    new-instance v5, Landroid/preference/PreferenceManager;

    const/16 v6, 0x64

    invoke-direct {v5, v0, v6}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v5, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 638
    iget-object v5, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 639
    iput-object v3, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    goto :goto_1a0

    .line 640
    :cond_167
    iget-boolean v3, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_18f

    .line 642
    if-nez v9, :cond_178

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_172

    goto :goto_178

    .line 645
    :cond_172
    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_17d

    .line 643
    :cond_178
    :goto_178
    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 650
    :goto_17d
    const v3, 0x1020489

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 652
    .local v3, "container":Landroid/view/ViewGroup;
    new-instance v5, Landroid/animation/LayoutTransition;

    invoke-direct {v5}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 653
    .end local v3    # "container":Landroid/view/ViewGroup;
    goto :goto_1a0

    .line 655
    :cond_18f
    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a0

    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_1a0

    .line 656
    iget-object v3, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 661
    :cond_1a0
    :goto_1a0
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 662
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "extra_prefs_show_button_bar"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_230

    .line 664
    const v5, 0x102025a

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 666
    const v5, 0x1020240

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 667
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v6, Landroid/preference/PreferenceActivity$2;

    invoke-direct {v6, v0}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    const v6, 0x102052a

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 674
    .local v6, "skipButton":Landroid/widget/Button;
    new-instance v13, Landroid/preference/PreferenceActivity$3;

    invoke-direct {v13, v0}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    const v13, 0x1020417

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    iput-object v13, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 681
    iget-object v13, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v14, Landroid/preference/PreferenceActivity$4;

    invoke-direct {v14, v0}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    const-string v13, "extra_prefs_set_next_text"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20b

    .line 690
    invoke-virtual {v3, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 691
    .local v13, "buttonText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_206

    .line 692
    iget-object v14, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v14, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_20b

    .line 695
    :cond_206
    iget-object v14, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 698
    .end local v13    # "buttonText":Ljava/lang/String;
    :cond_20b
    :goto_20b
    const-string v13, "extra_prefs_set_back_text"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_224

    .line 699
    invoke-virtual {v3, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 700
    .restart local v13    # "buttonText":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_221

    .line 701
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_224

    .line 704
    :cond_221
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    .end local v13    # "buttonText":Ljava/lang/String;
    :cond_224
    :goto_224
    const-string v7, "extra_prefs_show_skip"

    const/4 v13, 0x0

    invoke-virtual {v3, v7, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_230

    .line 708
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 711
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v6    # "skipButton":Landroid/widget/Button;
    :cond_230
    invoke-direct {v0}, Landroid/preference/PreferenceActivity;->updateBackCallbackRegistrationState()V

    .line 712
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 713
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 1031
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mOnBackStackChangedListener:Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1032
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1036
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_21

    .line 1037
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1039
    :cond_21
    return-void
.end method

.method public whitelist onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 4

    .line 814
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 815
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 816
    .local v1, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 817
    return-object v1

    .line 814
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "i":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 2

    .line 830
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .line 1132
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1133
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_11

    .line 1134
    :cond_8
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_11

    .line 1135
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1137
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist onIsHidingHeaders()Z
    .registers 4

    .line 803
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist onIsMultiPane()Z
    .registers 3

    .line 790
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 792
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1111
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1112
    return-void

    .line 1114
    :cond_7
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1116
    move-wide v0, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "l":Landroid/widget/ListView;
    .local v0, "id":J
    .local p2, "l":Landroid/widget/ListView;
    .local p3, "v":Landroid/view/View;
    .local p4, "position":I
    iget-object p5, p1, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p5, :cond_23

    .line 1117
    iget-object p5, p1, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p5, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p5

    .line 1118
    .local p5, "item":Ljava/lang/Object;
    instance-of v2, p5, Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_23

    move-object v2, p5

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v2, p4}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1120
    .end local p5    # "item":Ljava/lang/Object;
    :cond_23
    return-void
.end method

.method protected whitelist onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1620
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_9

    .line 1621
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1623
    :cond_9
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 543
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 545
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 546
    const/4 v0, 0x1

    return v0

    .line 548
    :cond_e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public whitelist onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .registers 10
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .line 1465
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1466
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1465
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1467
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Bundle;

    .line 1067
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_18

    .line 1068
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1069
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 1070
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1071
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_18

    .line 1072
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1073
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1074
    return-void

    .line 1081
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_18
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1083
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_28

    .line 1085
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_28

    .line 1086
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1089
    :cond_28
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1043
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1045
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 1046
    const-string v0, ":android:headers"

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1047
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_25

    .line 1048
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1049
    .local v0, "index":I
    if-ltz v0, :cond_25

    .line 1050
    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    .end local v0    # "index":I
    :cond_25
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_3c

    .line 1056
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1057
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_3c

    .line 1058
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1060
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1063
    .end local v0    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_3c
    return-void
.end method

.method protected whitelist onStop()V
    .registers 2

    .line 1022
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1024
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_c

    .line 1025
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1027
    :cond_c
    return-void
.end method

.method public whitelist setListFooter(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 1014
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1015
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    return-void
.end method

.method public whitelist setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 1250
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_9

    .line 1251
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1253
    :cond_9
    return-void
.end method

.method public whitelist setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1526
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1528
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 1529
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1530
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1532
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 1533
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1536
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1d
    return-void
.end method

.method greylist-max-o setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1256
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1257
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1258
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 1259
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1a

    .line 1261
    :cond_13
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 1263
    :goto_1a
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1264
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->updateBackCallbackRegistrationState()V

    .line 1265
    return-void
.end method

.method greylist-max-o showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .registers 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1268
    if-eqz p1, :cond_26

    .line 1269
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1270
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1271
    :cond_14
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1272
    :cond_1a
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1273
    .end local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_2e

    .line 1274
    :cond_26
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1276
    :goto_2e
    return-void
.end method

.method public whitelist showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 1208
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_46

    .line 1209
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1212
    .local v0, "crumbs":Landroid/view/View;
    :try_start_b
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_10} :catch_41

    .line 1216
    nop

    .line 1217
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v1, :cond_1b

    .line 1218
    if-eqz p1, :cond_1a

    .line 1219
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1221
    :cond_1a
    return-void

    .line 1223
    :cond_1b
    iget-boolean v1, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v1, :cond_35

    .line 1224
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1226
    const v1, 0x102024e

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1227
    .local v1, "bcSection":Landroid/view/View;
    if-eqz v1, :cond_32

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    :cond_32
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1230
    .end local v1    # "bcSection":Landroid/view/View;
    :cond_35
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1231
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    goto :goto_46

    .line 1213
    :catch_41
    move-exception v1

    .line 1214
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1215
    return-void

    .line 1233
    .end local v0    # "crumbs":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_46
    :goto_46
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_52

    .line 1234
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 1236
    :cond_52
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1239
    :goto_5d
    return-void
.end method

.method public whitelist startPreferenceFragment(Landroid/app/Fragment;Z)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .line 1395
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1396
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020488

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1397
    if-eqz p2, :cond_1b

    .line 1398
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1399
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_20

    .line 1401
    :cond_1b
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1403
    :goto_20
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1404
    return-void
.end method

.method public whitelist startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .registers 10
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .line 1427
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1428
    .local v0, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_9

    .line 1429
    invoke-virtual {v0, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1431
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1432
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x1020488

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1433
    if-eqz p3, :cond_1d

    .line 1434
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    goto :goto_22

    .line 1435
    :cond_1d
    if-eqz p4, :cond_22

    .line 1436
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1438
    :cond_22
    :goto_22
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1439
    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1440
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1441
    return-void
.end method

.method public whitelist startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .registers 12
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .line 1171
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "fragmentName":Ljava/lang/String;
    .end local p2    # "args":Landroid/os/Bundle;
    .end local p3    # "resultTo":Landroid/app/Fragment;
    .end local p4    # "resultRequestCode":I
    .local v1, "fragmentName":Ljava/lang/String;
    .local v2, "args":Landroid/os/Bundle;
    .local v3, "resultTo":Landroid/app/Fragment;
    .local v4, "resultRequestCode":I
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1172
    return-void
.end method

.method public whitelist startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .line 1194
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1195
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_a

    .line 1196
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 1198
    :cond_a
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1200
    :goto_d
    return-void
.end method

.method public whitelist switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1328
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_f

    .line 1331
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_1d

    .line 1334
    :cond_f
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 1337
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1338
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1340
    :goto_1d
    return-void

    .line 1335
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1312
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1313
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1314
    goto :goto_27

    .line 1311
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1317
    .end local v1    # "i":I
    :cond_27
    :goto_27
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1318
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1319
    return-void
.end method
