.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter;,
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$1;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method static synthetic -get0(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceActivity;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    #@4
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@b
    .line 218
    iput v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    #@d
    .line 219
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    #@f
    .line 228
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    #@11
    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    #@14
    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@16
    .line 126
    return-void
.end method

.method private bindPreferences()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1422
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@4
    move-result-object v0

    #@5
    .line 1423
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    #@7
    .line 1424
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    #@e
    .line 1425
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1426
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    #@14
    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@17
    .line 1427
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    #@19
    .line 1421
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1417
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    return-void

    #@a
    .line 1418
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 1416
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    #@0
    .prologue
    .line 1445
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1446
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1447
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "This should be called after super.onCreate."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1449
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@13
    .line 1450
    const-string/jumbo v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    #@16
    .line 1449
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1444
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1220
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, ":android:prefs"

    #@7
    .line 1221
    const/4 v4, 0x1

    #@8
    .line 1220
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    #@b
    .line 1222
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1223
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Invalid fragment for this activity: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 1226
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    #@2e
    move-result-object v0

    #@2f
    .line 1227
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@36
    move-result-object v1

    #@37
    .line 1228
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    #@39
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    #@3c
    .line 1229
    const v2, 0x1020391

    #@3f
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@42
    .line 1230
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@45
    .line 1219
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1503
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    #@3
    .line 1505
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    #@10
    .line 1502
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1519
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    #@3
    .line 1521
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    .line 1522
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@8
    move-result-object v1

    #@9
    .line 1521
    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    #@10
    .line 1518
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 10
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1274
    new-instance v2, Ljava/util/ArrayList;

    #@4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1275
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    #@8
    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v4

    #@c
    if-ge v1, v4, :cond_1

    #@e
    .line 1276
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    #@14
    .line 1277
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    #@16
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    #@18
    const-wide/16 v6, -0x1

    #@1a
    cmp-long v4, v4, v6

    #@1c
    if-eqz v4, :cond_2

    #@1e
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    #@20
    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    #@22
    cmp-long v4, v4, v6

    #@24
    if-nez v4, :cond_2

    #@26
    .line 1279
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 1280
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1297
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    .line 1298
    .local v0, "NM":I
    if-ne v0, v9, :cond_6

    #@32
    .line 1299
    const/4 v4, 0x0

    #@33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    #@39
    return-object v4

    #@3a
    .line 1283
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@3c
    if-eqz v4, :cond_4

    #@3e
    .line 1284
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@40
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    .line 1285
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 1275
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 1287
    :cond_4
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@50
    if-eqz v4, :cond_5

    #@52
    .line 1288
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@54
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@56
    invoke-virtual {v4, v5}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_3

    #@5c
    .line 1289
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_1

    #@60
    .line 1291
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@62
    if-eqz v4, :cond_3

    #@64
    .line 1292
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@66
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_3

    #@6e
    .line 1293
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    goto :goto_1

    #@72
    .line 1300
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_6
    if-le v0, v9, :cond_a

    #@74
    .line 1301
    const/4 v1, 0x0

    #@75
    :goto_2
    if-ge v1, v0, :cond_a

    #@77
    .line 1302
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v3

    #@7b
    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    #@7d
    .line 1303
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@7f
    if-eqz v4, :cond_7

    #@81
    .line 1304
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@83
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@85
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v4

    #@89
    .line 1303
    if-eqz v4, :cond_7

    #@8b
    .line 1305
    return-object v3

    #@8c
    .line 1307
    :cond_7
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    #@8e
    if-eqz v4, :cond_8

    #@90
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    #@92
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    #@94
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v4

    #@98
    if-eqz v4, :cond_8

    #@9a
    .line 1308
    return-object v3

    #@9b
    .line 1310
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@9d
    if-eqz v4, :cond_9

    #@9f
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@a1
    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@a3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_9

    #@a9
    .line 1311
    return-object v3

    #@aa
    .line 1301
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@ac
    goto :goto_2

    #@ad
    .line 1315
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_a
    return-object v8
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1549
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1550
    return-object v1

    #@6
    .line 1553
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@8
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1388
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1389
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    #@7
    .line 1390
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    #@a
    .line 1387
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1393
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    #@e
    .line 1394
    if-eqz p1, :cond_0

    #@10
    .line 1395
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1396
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@21
    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    #@0
    .prologue
    .line 1570
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1441
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1487
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1488
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@7
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1490
    :cond_0
    return-object v1
.end method

.method public hasHeaders()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 704
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 705
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 704
    :cond_0
    return v0
.end method

.method protected hasNextButton()Z
    .locals 1

    #@0
    .prologue
    .line 1566
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 795
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 796
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@e
    .line 794
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 721
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    #@9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 939
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    const/16 v1, 0x13

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 940
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 942
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 943
    const-string/jumbo v2, " has not checked if fragment "

    #@27
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 943
    const-string/jumbo v2, " is valid."

    #@32
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 940
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 945
    :cond_0
    const/4 v0, 0x1

    #@3f
    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 808
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v11, 0x0

    #@1
    .line 810
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v15

    #@5
    move/from16 v0, p1

    #@7
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@a
    move-result-object v11

    #@b
    .line 811
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@e
    move-result-object v2

    #@f
    .line 814
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    #@12
    move-result v14

    #@13
    .local v14, "type":I
    const/4 v15, 0x1

    #@14
    if-eq v14, v15, :cond_1

    #@16
    .line 815
    const/4 v15, 0x2

    #@17
    if-ne v14, v15, :cond_0

    #@19
    .line 819
    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v9

    #@1d
    .line 820
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "preference-headers"

    #@20
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v15

    #@24
    if-nez v15, :cond_3

    #@26
    .line 821
    new-instance v15, Ljava/lang/RuntimeException;

    #@28
    .line 822
    new-instance v16, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v17, "XML document must start with <preference-headers> tag; found"

    #@30
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v16

    #@34
    move-object/from16 v0, v16

    #@36
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v16

    #@3a
    .line 823
    const-string/jumbo v17, " at "

    #@3d
    .line 822
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v16

    #@41
    .line 823
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@44
    move-result-object v17

    #@45
    .line 822
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v16

    #@49
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v16

    #@4d
    .line 821
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 921
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "type":I
    :catch_0
    move-exception v5

    #@52
    .line 922
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    #@54
    const-string/jumbo v16, "Error parsing headers"

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5c
    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 925
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    #@5e
    .line 926
    if-eqz v11, :cond_2

    #@60
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@63
    .line 925
    :cond_2
    throw v15

    #@64
    .line 826
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "type":I
    :cond_3
    const/4 v3, 0x0

    #@65
    .line 828
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@68
    move-result v10

    #@69
    .line 829
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .local v10, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    #@6c
    move-result v14

    #@6d
    const/4 v15, 0x1

    #@6e
    if-eq v14, v15, :cond_16

    #@70
    .line 830
    const/4 v15, 0x3

    #@71
    if-ne v14, v15, :cond_5

    #@73
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@76
    move-result v15

    #@77
    if-le v15, v10, :cond_16

    #@79
    .line 831
    :cond_5
    const/4 v15, 0x3

    #@7a
    if-eq v14, v15, :cond_4

    #@7c
    const/4 v15, 0x4

    #@7d
    if-eq v14, v15, :cond_4

    #@7f
    .line 835
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    .line 836
    const-string/jumbo v15, "header"

    #@86
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v15

    #@8a
    if-eqz v15, :cond_15

    #@8c
    .line 837
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    #@8e
    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    #@91
    .line 840
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v15, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    #@93
    .line 839
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v2, v15}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@98
    move-result-object v12

    #@99
    .line 842
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    #@9a
    .line 843
    const/16 v16, -0x1

    #@9c
    .line 841
    move/from16 v0, v16

    #@9e
    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a1
    move-result v15

    #@a2
    int-to-long v0, v15

    #@a3
    move-wide/from16 v16, v0

    #@a5
    move-wide/from16 v0, v16

    #@a7
    iput-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    #@a9
    .line 845
    const/4 v15, 0x2

    #@aa
    .line 844
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@ad
    move-result-object v13

    #@ae
    .line 846
    .local v13, "tv":Landroid/util/TypedValue;
    if-eqz v13, :cond_6

    #@b0
    iget v15, v13, Landroid/util/TypedValue;->type:I

    #@b2
    const/16 v16, 0x3

    #@b4
    move/from16 v0, v16

    #@b6
    if-ne v15, v0, :cond_6

    #@b8
    .line 847
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@ba
    if-eqz v15, :cond_d

    #@bc
    .line 848
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@be
    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@c0
    .line 854
    :cond_6
    :goto_1
    const/4 v15, 0x3

    #@c1
    .line 853
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c4
    move-result-object v13

    #@c5
    .line 855
    if-eqz v13, :cond_7

    #@c7
    iget v15, v13, Landroid/util/TypedValue;->type:I

    #@c9
    const/16 v16, 0x3

    #@cb
    move/from16 v0, v16

    #@cd
    if-ne v15, v0, :cond_7

    #@cf
    .line 856
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@d1
    if-eqz v15, :cond_e

    #@d3
    .line 857
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@d5
    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    #@d7
    .line 863
    :cond_7
    :goto_2
    const/4 v15, 0x5

    #@d8
    .line 862
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@db
    move-result-object v13

    #@dc
    .line 864
    if-eqz v13, :cond_8

    #@de
    iget v15, v13, Landroid/util/TypedValue;->type:I

    #@e0
    const/16 v16, 0x3

    #@e2
    move/from16 v0, v16

    #@e4
    if-ne v15, v0, :cond_8

    #@e6
    .line 865
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@e8
    if-eqz v15, :cond_f

    #@ea
    .line 866
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@ec
    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@ee
    .line 872
    :cond_8
    :goto_3
    const/4 v15, 0x6

    #@ef
    .line 871
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@f2
    move-result-object v13

    #@f3
    .line 873
    if-eqz v13, :cond_9

    #@f5
    iget v15, v13, Landroid/util/TypedValue;->type:I

    #@f7
    const/16 v16, 0x3

    #@f9
    move/from16 v0, v16

    #@fb
    if-ne v15, v0, :cond_9

    #@fd
    .line 874
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@ff
    if-eqz v15, :cond_10

    #@101
    .line 875
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    #@103
    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@105
    .line 881
    :cond_9
    :goto_4
    const/4 v15, 0x0

    #@106
    const/16 v16, 0x0

    #@108
    .line 880
    move/from16 v0, v16

    #@10a
    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10d
    move-result v15

    #@10e
    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@110
    .line 883
    const/4 v15, 0x4

    #@111
    .line 882
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@114
    move-result-object v15

    #@115
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@117
    .line 884
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@11a
    .line 886
    if-nez v3, :cond_a

    #@11c
    .line 887
    new-instance v3, Landroid/os/Bundle;

    #@11e
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@121
    .line 890
    :cond_a
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@124
    move-result v7

    #@125
    .line 891
    .local v7, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    #@128
    move-result v14

    #@129
    const/4 v15, 0x1

    #@12a
    if-eq v14, v15, :cond_13

    #@12c
    .line 892
    const/4 v15, 0x3

    #@12d
    if-ne v14, v15, :cond_c

    #@12f
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@132
    move-result v15

    #@133
    if-le v15, v7, :cond_13

    #@135
    .line 893
    :cond_c
    const/4 v15, 0x3

    #@136
    if-eq v14, v15, :cond_b

    #@138
    const/4 v15, 0x4

    #@139
    if-eq v14, v15, :cond_b

    #@13b
    .line 897
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@13e
    move-result-object v8

    #@13f
    .line 898
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string/jumbo v15, "extra"

    #@142
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v15

    #@146
    if-eqz v15, :cond_11

    #@148
    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@14b
    move-result-object v15

    #@14c
    const-string/jumbo v16, "extra"

    #@14f
    move-object/from16 v0, v16

    #@151
    invoke-virtual {v15, v0, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@154
    .line 900
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@157
    goto :goto_5

    #@158
    .line 923
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catch_1
    move-exception v4

    #@159
    .line 924
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/lang/RuntimeException;

    #@15b
    const-string/jumbo v16, "Error parsing headers"

    #@15e
    move-object/from16 v0, v16

    #@160
    invoke-direct {v15, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@163
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@164
    .line 850
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "outerDepth":I
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_d
    :try_start_4
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@166
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    #@168
    goto/16 :goto_1

    #@16a
    .line 859
    :cond_e
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@16c
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    #@16e
    goto/16 :goto_2

    #@170
    .line 868
    :cond_f
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@172
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    #@174
    goto/16 :goto_3

    #@176
    .line 877
    :cond_10
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@178
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    #@17a
    goto :goto_4

    #@17b
    .line 902
    .restart local v7    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v15, "intent"

    #@17e
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@181
    move-result v15

    #@182
    if-eqz v15, :cond_12

    #@184
    .line 903
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@187
    move-result-object v15

    #@188
    invoke-static {v15, v11, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    #@18b
    move-result-object v15

    #@18c
    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@18e
    goto :goto_5

    #@18f
    .line 906
    :cond_12
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@192
    goto :goto_5

    #@193
    .line 910
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    #@196
    move-result v15

    #@197
    if-lez v15, :cond_14

    #@199
    .line 911
    iput-object v3, v6, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@19b
    .line 912
    const/4 v3, 0x0

    #@19c
    .line 915
    :cond_14
    move-object/from16 v0, p2

    #@19e
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a1
    goto/16 :goto_0

    #@1a3
    .line 917
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_15
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1a6
    goto/16 :goto_0

    #@1a8
    .line 926
    :cond_16
    if-eqz v11, :cond_17

    #@1aa
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@1ad
    .line 807
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1024
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    .line 1026
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1027
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    #@c
    .line 1023
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 786
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    #@0
    .prologue
    .line 1097
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1098
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    #@f
    .line 1099
    const-string/jumbo v1, ":android:show_fragment"

    #@12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 1100
    const-string/jumbo v1, ":android:show_fragment_args"

    #@18
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@1b
    .line 1101
    const-string/jumbo v1, ":android:show_fragment_title"

    #@1e
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@21
    .line 1102
    const-string/jumbo v1, ":android:show_fragment_short_title"

    #@24
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@27
    .line 1103
    const-string/jumbo v1, ":android:no_headers"

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2e
    .line 1104
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 1033
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    #@3
    .line 1035
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1036
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    #@a
    .line 1032
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 536
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 540
    sget-object v21, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    #@5
    .line 539
    const/16 v22, 0x0

    #@7
    .line 541
    const v23, 0x1160021

    #@a
    .line 542
    const/16 v24, 0x0

    #@c
    .line 539
    move-object/from16 v0, p0

    #@e
    move-object/from16 v1, v22

    #@10
    move-object/from16 v2, v21

    #@12
    move/from16 v3, v23

    #@14
    move/from16 v4, v24

    #@16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@19
    move-result-object v19

    #@1a
    .line 545
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    #@1c
    .line 546
    const v22, 0x10900ac

    #@1f
    .line 544
    move-object/from16 v0, v19

    #@21
    move/from16 v1, v21

    #@23
    move/from16 v2, v22

    #@25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@28
    move-result v18

    #@29
    .line 549
    .local v18, "layoutResId":I
    const/16 v21, 0x1

    #@2b
    .line 550
    const v22, 0x10900a6

    #@2e
    .line 548
    move-object/from16 v0, v19

    #@30
    move/from16 v1, v21

    #@32
    move/from16 v2, v22

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@37
    move-result v21

    #@38
    move/from16 v0, v21

    #@3a
    move-object/from16 v1, p0

    #@3c
    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    #@3e
    .line 552
    const/16 v21, 0x2

    #@40
    .line 553
    const/16 v22, 0x0

    #@42
    .line 551
    move-object/from16 v0, v19

    #@44
    move/from16 v1, v21

    #@46
    move/from16 v2, v22

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4b
    move-result v21

    #@4c
    move/from16 v0, v21

    #@4e
    move-object/from16 v1, p0

    #@50
    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    #@52
    .line 555
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    #@55
    .line 557
    move-object/from16 v0, p0

    #@57
    move/from16 v1, v18

    #@59
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    #@5c
    .line 559
    const v21, 0x102038f

    #@5f
    move-object/from16 v0, p0

    #@61
    move/from16 v1, v21

    #@63
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@66
    move-result-object v21

    #@67
    check-cast v21, Landroid/widget/FrameLayout;

    #@69
    move-object/from16 v0, v21

    #@6b
    move-object/from16 v1, p0

    #@6d
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    #@6f
    .line 560
    const v21, 0x1020390

    #@72
    move-object/from16 v0, p0

    #@74
    move/from16 v1, v21

    #@76
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@79
    move-result-object v21

    #@7a
    check-cast v21, Landroid/view/ViewGroup;

    #@7c
    move-object/from16 v0, v21

    #@7e
    move-object/from16 v1, p0

    #@80
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    #@82
    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    #@85
    move-result v10

    #@86
    .line 562
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_5

    #@88
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    #@8b
    move-result v21

    #@8c
    if-eqz v21, :cond_5

    #@8e
    const/16 v21, 0x0

    #@90
    :goto_0
    move/from16 v0, v21

    #@92
    move-object/from16 v1, p0

    #@94
    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@96
    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@99
    move-result-object v21

    #@9a
    const-string/jumbo v22, ":android:show_fragment"

    #@9d
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    .line 564
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@a4
    move-result-object v21

    #@a5
    const-string/jumbo v22, ":android:show_fragment_args"

    #@a8
    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@ab
    move-result-object v11

    #@ac
    .line 565
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@af
    move-result-object v21

    #@b0
    const-string/jumbo v22, ":android:show_fragment_title"

    #@b3
    const/16 v23, 0x0

    #@b5
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b8
    move-result v15

    #@b9
    .line 566
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@bc
    move-result-object v21

    #@bd
    const-string/jumbo v22, ":android:show_fragment_short_title"

    #@c0
    const/16 v23, 0x0

    #@c2
    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c5
    move-result v13

    #@c6
    .line 568
    .local v13, "initialShortTitle":I
    if-eqz p1, :cond_6

    #@c8
    .line 571
    const-string/jumbo v21, ":android:headers"

    #@cb
    move-object/from16 v0, p1

    #@cd
    move-object/from16 v1, v21

    #@cf
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@d2
    move-result-object v9

    #@d3
    .line 572
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_0

    #@d5
    .line 573
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@d9
    move-object/from16 v21, v0

    #@db
    move-object/from16 v0, v21

    #@dd
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e0
    .line 574
    const-string/jumbo v21, ":android:cur_header"

    #@e3
    .line 575
    const/16 v22, -0x1

    #@e5
    .line 574
    move-object/from16 v0, p1

    #@e7
    move-object/from16 v1, v21

    #@e9
    move/from16 v2, v22

    #@eb
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@ee
    move-result v7

    #@ef
    .line 576
    .local v7, "curHeader":I
    if-ltz v7, :cond_0

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@f5
    move-object/from16 v21, v0

    #@f7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@fa
    move-result v21

    #@fb
    move/from16 v0, v21

    #@fd
    if-ge v7, v0, :cond_0

    #@ff
    .line 577
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@103
    move-object/from16 v21, v0

    #@105
    move-object/from16 v0, v21

    #@107
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10a
    move-result-object v21

    #@10b
    check-cast v21, Landroid/preference/PreferenceActivity$Header;

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v21

    #@111
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@114
    .line 616
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_0
    :goto_1
    if-eqz v12, :cond_b

    #@116
    move-object/from16 v0, p0

    #@118
    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@11a
    move/from16 v21, v0

    #@11c
    if-eqz v21, :cond_b

    #@11e
    .line 618
    const v21, 0x102038e

    #@121
    move-object/from16 v0, p0

    #@123
    move/from16 v1, v21

    #@125
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@128
    move-result-object v21

    #@129
    const/16 v22, 0x8

    #@12b
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    #@12e
    .line 619
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    #@132
    move-object/from16 v21, v0

    #@134
    const/16 v22, 0x0

    #@136
    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@139
    .line 620
    if-eqz v15, :cond_1

    #@13b
    .line 621
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    #@140
    move-result-object v16

    #@141
    .line 622
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_a

    #@143
    .line 623
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    #@148
    move-result-object v14

    #@149
    .line 624
    :goto_2
    move-object/from16 v0, p0

    #@14b
    move-object/from16 v1, v16

    #@14d
    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@150
    .line 648
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@153
    move-result-object v17

    #@154
    .line 649
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "extra_prefs_show_button_bar"

    #@157
    const/16 v22, 0x0

    #@159
    move-object/from16 v0, v17

    #@15b
    move-object/from16 v1, v21

    #@15d
    move/from16 v2, v22

    #@15f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@162
    move-result v21

    #@163
    if-eqz v21, :cond_4

    #@165
    .line 651
    const v21, 0x1020392

    #@168
    move-object/from16 v0, p0

    #@16a
    move/from16 v1, v21

    #@16c
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@16f
    move-result-object v21

    #@170
    const/16 v22, 0x0

    #@172
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    #@175
    .line 653
    const v21, 0x1020393

    #@178
    move-object/from16 v0, p0

    #@17a
    move/from16 v1, v21

    #@17c
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@17f
    move-result-object v5

    #@180
    check-cast v5, Landroid/widget/Button;

    #@182
    .line 654
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$2;

    #@184
    move-object/from16 v0, v21

    #@186
    move-object/from16 v1, p0

    #@188
    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    #@18b
    move-object/from16 v0, v21

    #@18d
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@190
    .line 660
    const v21, 0x1020394

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v21

    #@197
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@19a
    move-result-object v20

    #@19b
    check-cast v20, Landroid/widget/Button;

    #@19d
    .line 661
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Landroid/preference/PreferenceActivity$3;

    #@19f
    move-object/from16 v0, v21

    #@1a1
    move-object/from16 v1, p0

    #@1a3
    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    #@1a6
    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1a9
    .line 667
    const v21, 0x1020395

    #@1ac
    move-object/from16 v0, p0

    #@1ae
    move/from16 v1, v21

    #@1b0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@1b3
    move-result-object v21

    #@1b4
    check-cast v21, Landroid/widget/Button;

    #@1b6
    move-object/from16 v0, v21

    #@1b8
    move-object/from16 v1, p0

    #@1ba
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@1bc
    .line 668
    move-object/from16 v0, p0

    #@1be
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@1c0
    move-object/from16 v21, v0

    #@1c2
    new-instance v22, Landroid/preference/PreferenceActivity$4;

    #@1c4
    move-object/from16 v0, v22

    #@1c6
    move-object/from16 v1, p0

    #@1c8
    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    #@1cb
    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1ce
    .line 676
    const-string/jumbo v21, "extra_prefs_set_next_text"

    #@1d1
    move-object/from16 v0, v17

    #@1d3
    move-object/from16 v1, v21

    #@1d5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@1d8
    move-result v21

    #@1d9
    if-eqz v21, :cond_2

    #@1db
    .line 677
    const-string/jumbo v21, "extra_prefs_set_next_text"

    #@1de
    move-object/from16 v0, v17

    #@1e0
    move-object/from16 v1, v21

    #@1e2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1e5
    move-result-object v6

    #@1e6
    .line 678
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1e9
    move-result v21

    #@1ea
    if-eqz v21, :cond_e

    #@1ec
    .line 679
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@1f0
    move-object/from16 v21, v0

    #@1f2
    const/16 v22, 0x8

    #@1f4
    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    #@1f7
    .line 685
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_2
    :goto_4
    const-string/jumbo v21, "extra_prefs_set_back_text"

    #@1fa
    move-object/from16 v0, v17

    #@1fc
    move-object/from16 v1, v21

    #@1fe
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@201
    move-result v21

    #@202
    if-eqz v21, :cond_3

    #@204
    .line 686
    const-string/jumbo v21, "extra_prefs_set_back_text"

    #@207
    move-object/from16 v0, v17

    #@209
    move-object/from16 v1, v21

    #@20b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@20e
    move-result-object v6

    #@20f
    .line 687
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@212
    move-result v21

    #@213
    if-eqz v21, :cond_f

    #@215
    .line 688
    const/16 v21, 0x8

    #@217
    move/from16 v0, v21

    #@219
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    #@21c
    .line 694
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_5
    const-string/jumbo v21, "extra_prefs_show_skip"

    #@21f
    const/16 v22, 0x0

    #@221
    move-object/from16 v0, v17

    #@223
    move-object/from16 v1, v21

    #@225
    move/from16 v2, v22

    #@227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@22a
    move-result v21

    #@22b
    if-eqz v21, :cond_4

    #@22d
    .line 695
    const/16 v21, 0x0

    #@22f
    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    #@232
    .line 535
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_4
    return-void

    #@233
    .line 562
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_5
    const/16 v21, 0x1

    #@235
    goto/16 :goto_0

    #@237
    .line 582
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_6
    if-eqz v12, :cond_8

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@23d
    move/from16 v21, v0

    #@23f
    if-eqz v21, :cond_8

    #@241
    .line 586
    move-object/from16 v0, p0

    #@243
    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    #@246
    .line 587
    if-eqz v15, :cond_0

    #@248
    .line 588
    move-object/from16 v0, p0

    #@24a
    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    #@24d
    move-result-object v16

    #@24e
    .line 589
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_7

    #@250
    .line 590
    move-object/from16 v0, p0

    #@252
    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    #@255
    move-result-object v14

    #@256
    .line 591
    :goto_6
    move-object/from16 v0, p0

    #@258
    move-object/from16 v1, v16

    #@25a
    invoke-virtual {v0, v1, v14}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@25d
    goto/16 :goto_1

    #@25f
    .line 590
    :cond_7
    const/4 v14, 0x0

    #@260
    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    goto :goto_6

    #@261
    .line 596
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@265
    move-object/from16 v21, v0

    #@267
    move-object/from16 v0, p0

    #@269
    move-object/from16 v1, v21

    #@26b
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    #@26e
    .line 601
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@272
    move-object/from16 v21, v0

    #@274
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@277
    move-result v21

    #@278
    if-lez v21, :cond_0

    #@27a
    .line 602
    move-object/from16 v0, p0

    #@27c
    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@27e
    move/from16 v21, v0

    #@280
    if-nez v21, :cond_0

    #@282
    .line 603
    if-nez v12, :cond_9

    #@284
    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    #@287
    move-result-object v8

    #@288
    .line 605
    .local v8, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    #@28a
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@28d
    goto/16 :goto_1

    #@28f
    .line 607
    .end local v8    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_9
    move-object/from16 v0, p0

    #@291
    invoke-virtual {v0, v12, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    #@294
    goto/16 :goto_1

    #@296
    .line 623
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_a
    const/4 v14, 0x0

    #@297
    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    goto/16 :goto_2

    #@299
    .line 626
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    #@29b
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@29d
    move-object/from16 v21, v0

    #@29f
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    #@2a2
    move-result v21

    #@2a3
    if-lez v21, :cond_d

    #@2a5
    .line 627
    new-instance v21, Landroid/preference/PreferenceActivity$HeaderAdapter;

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@2ab
    move-object/from16 v22, v0

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    #@2b1
    move/from16 v23, v0

    #@2b3
    .line 628
    move-object/from16 v0, p0

    #@2b5
    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    #@2b7
    move/from16 v24, v0

    #@2b9
    .line 627
    move-object/from16 v0, v21

    #@2bb
    move-object/from16 v1, p0

    #@2bd
    move-object/from16 v2, v22

    #@2bf
    move/from16 v3, v23

    #@2c1
    move/from16 v4, v24

    #@2c3
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    move-object/from16 v1, v21

    #@2ca
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@2cd
    .line 629
    move-object/from16 v0, p0

    #@2cf
    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@2d1
    move/from16 v21, v0

    #@2d3
    if-nez v21, :cond_1

    #@2d5
    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    #@2d8
    move-result-object v21

    #@2d9
    const/16 v22, 0x1

    #@2db
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@2de
    .line 632
    move-object/from16 v0, p0

    #@2e0
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@2e2
    move-object/from16 v21, v0

    #@2e4
    if-eqz v21, :cond_c

    #@2e6
    .line 633
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@2ea
    move-object/from16 v21, v0

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    move-object/from16 v1, v21

    #@2f0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@2f3
    .line 635
    :cond_c
    move-object/from16 v0, p0

    #@2f5
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    #@2f7
    move-object/from16 v21, v0

    #@2f9
    const/16 v22, 0x0

    #@2fb
    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@2fe
    goto/16 :goto_3

    #@300
    .line 640
    :cond_d
    const v21, 0x10900ae

    #@303
    move-object/from16 v0, p0

    #@305
    move/from16 v1, v21

    #@307
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    #@30a
    .line 641
    const v21, 0x102038f

    #@30d
    move-object/from16 v0, p0

    #@30f
    move/from16 v1, v21

    #@311
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@314
    move-result-object v21

    #@315
    check-cast v21, Landroid/widget/FrameLayout;

    #@317
    move-object/from16 v0, v21

    #@319
    move-object/from16 v1, p0

    #@31b
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    #@31d
    .line 642
    const v21, 0x1020391

    #@320
    move-object/from16 v0, p0

    #@322
    move/from16 v1, v21

    #@324
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@327
    move-result-object v21

    #@328
    check-cast v21, Landroid/view/ViewGroup;

    #@32a
    move-object/from16 v0, v21

    #@32c
    move-object/from16 v1, p0

    #@32e
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    #@330
    .line 643
    new-instance v21, Landroid/preference/PreferenceManager;

    #@332
    const/16 v22, 0x64

    #@334
    move-object/from16 v0, v21

    #@336
    move-object/from16 v1, p0

    #@338
    move/from16 v2, v22

    #@33a
    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    #@33d
    move-object/from16 v0, v21

    #@33f
    move-object/from16 v1, p0

    #@341
    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@343
    .line 644
    move-object/from16 v0, p0

    #@345
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@347
    move-object/from16 v21, v0

    #@349
    move-object/from16 v0, v21

    #@34b
    move-object/from16 v1, p0

    #@34d
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    #@350
    goto/16 :goto_3

    #@352
    .line 682
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_e
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    #@356
    move-object/from16 v21, v0

    #@358
    move-object/from16 v0, v21

    #@35a
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@35d
    goto/16 :goto_4

    #@35f
    .line 691
    :cond_f
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@362
    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    #@0
    .prologue
    .line 970
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 971
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 972
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    #@f
    .line 974
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 975
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@15
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    #@18
    .line 969
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    #@0
    .prologue
    .line 754
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 755
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    #@11
    .line 756
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 757
    return-object v0

    #@16
    .line 754
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 760
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v3, "Must have at least one header with a fragment"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    #@0
    .prologue
    .line 770
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1063
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 1064
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 1065
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    #@c
    .line 1066
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    #@e
    .line 1067
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    #@10
    .line 1068
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    #@12
    .line 1069
    const/4 v6, 0x0

    #@13
    .line 1071
    :cond_0
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@15
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@17
    move-object v0, p0

    #@18
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    #@1b
    .line 1062
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    #@1c
    .line 1074
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@1f
    goto :goto_0

    #@20
    .line 1076
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 1077
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    #@26
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    #@29
    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    #@0
    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, ":android:no_headers"

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 731
    const v2, 0x1120006

    #@7
    .line 730
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    .line 732
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 1042
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1043
    return-void

    #@7
    .line 1045
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    #@a
    .line 1047
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1048
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    #@10
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 1049
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    #@16
    if-eqz v1, :cond_1

    #@18
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    #@1a
    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    #@1d
    .line 1041
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1558
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1559
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@6
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    #@9
    .line 1557
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 1405
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    #@b
    move-result v3

    #@c
    .line 1406
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    move-object v0, p0

    #@13
    .line 1405
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    #@16
    .line 1407
    const/4 v0, 0x1

    #@17
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1533
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1005
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1006
    const-string/jumbo v2, ":android:preferences"

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@a
    move-result-object v0

    #@b
    .line 1007
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@d
    .line 1008
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@10
    move-result-object v1

    #@11
    .line 1009
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    #@13
    .line 1010
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@16
    .line 1011
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    #@18
    .line 1012
    return-void

    #@19
    .line 1019
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@1c
    .line 1004
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 981
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 983
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 984
    const-string/jumbo v3, ":android:headers"

    #@e
    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@10
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@13
    .line 985
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 986
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@19
    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@1b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1e
    move-result v1

    #@1f
    .line 987
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@21
    .line 988
    const-string/jumbo v3, ":android:cur_header"

    #@24
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@27
    .line 993
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 994
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@2e
    move-result-object v2

    #@2f
    .line 995
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    #@31
    .line 996
    new-instance v0, Landroid/os/Bundle;

    #@33
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@36
    .line 997
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    #@39
    .line 998
    const-string/jumbo v3, ":android:preferences"

    #@3c
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3f
    .line 980
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    #@0
    .prologue
    .line 961
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    #@3
    .line 963
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 964
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@9
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    #@c
    .line 960
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@5
    .line 954
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    #@7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@9
    .line 955
    const/4 v2, -0x1

    #@a
    .line 956
    const/4 v3, -0x2

    #@b
    .line 954
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    .line 952
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 1192
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1193
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    #@9
    .line 1191
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1464
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    #@3
    .line 1466
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    if-eqz p1, :cond_0

    #@d
    .line 1467
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    #@10
    .line 1468
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    .line 1470
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@1a
    .line 1471
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@1d
    .line 1463
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    #@0
    .prologue
    .line 1198
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@2
    .line 1199
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 1200
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@a
    .line 1201
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    #@12
    .line 1205
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    #@15
    .line 1197
    return-void

    #@16
    .line 1203
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    #@1d
    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1209
    if-eqz p1, :cond_2

    #@3
    .line 1210
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    .line 1211
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@d
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    .line 1212
    :cond_0
    if-nez v0, :cond_1

    #@17
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    #@1a
    move-result-object v0

    #@1b
    .line 1213
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@26
    .line 1208
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    #@27
    .line 1215
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@2e
    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 1150
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@5
    if-nez v3, :cond_4

    #@7
    .line 1151
    const v3, 0x1020016

    #@a
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    .line 1154
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    #@10
    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1159
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1160
    if-eqz p1, :cond_0

    #@18
    .line 1161
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@1b
    .line 1163
    :cond_0
    return-void

    #@1c
    .line 1155
    :catch_0
    move-exception v2

    #@1d
    .line 1156
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@20
    .line 1157
    return-void

    #@21
    .line 1165
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@23
    if-eqz v3, :cond_3

    #@25
    .line 1166
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@27
    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    #@2a
    .line 1168
    const v3, 0x102030d

    #@2d
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    .line 1169
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    #@33
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    #@36
    .line 1170
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@39
    .line 1172
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@3b
    const/4 v4, 0x2

    #@3c
    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    #@3f
    .line 1173
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@41
    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    #@44
    .line 1175
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@46
    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_5

    #@4c
    .line 1176
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    #@4f
    .line 1149
    :goto_0
    return-void

    #@50
    .line 1178
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@52
    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@55
    .line 1179
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    #@57
    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    #@5a
    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    #@0
    .prologue
    .line 1326
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@7
    move-result-object v0

    #@8
    .line 1327
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020391

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@e
    .line 1328
    if-eqz p2, :cond_0

    #@10
    .line 1329
    const/16 v1, 0x1001

    #@12
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    #@15
    .line 1330
    const-string/jumbo v1, ":android:prefs"

    #@18
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@1b
    .line 1334
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@1e
    .line 1325
    return-void

    #@1f
    .line 1332
    :cond_0
    const/16 v1, 0x1003

    #@21
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    #@24
    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1358
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p5

    #@9
    move v4, p6

    #@a
    move v5, p3

    #@b
    .line 1359
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    #@e
    .line 1357
    :goto_0
    return-void

    #@f
    .line 1361
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    #@12
    move-result-object v7

    #@13
    .line 1362
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    #@15
    .line 1363
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    #@18
    .line 1365
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@1f
    move-result-object v8

    #@20
    .line 1366
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x1020391

    #@23
    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    #@26
    .line 1367
    if-eqz p3, :cond_3

    #@28
    .line 1368
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    #@2b
    .line 1372
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    #@2d
    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    #@30
    .line 1373
    const-string/jumbo v0, ":android:prefs"

    #@33
    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@36
    .line 1374
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    #@39
    goto :goto_0

    #@3a
    .line 1369
    :cond_3
    if-eqz p4, :cond_2

    #@3c
    .line 1370
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    #@3f
    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v6, v5

    #@7
    .line 1113
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    #@a
    .line 1112
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    #@0
    .prologue
    .line 1136
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 1137
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    #@6
    .line 1138
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    #@9
    .line 1135
    :goto_0
    return-void

    #@a
    .line 1140
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    #@d
    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    #@0
    .prologue
    .line 1259
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1262
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, ":android:prefs"

    #@b
    .line 1263
    const/4 v2, 0x1

    #@c
    .line 1262
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    #@f
    .line 1258
    :goto_0
    return-void

    #@10
    .line 1265
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@12
    if-nez v0, :cond_1

    #@14
    .line 1266
    new-instance v0, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v1, "can\'t switch to header that has no fragment"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1268
    :cond_1
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@1f
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    #@21
    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    #@24
    .line 1269
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@27
    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1241
    const/4 v1, 0x0

    #@1
    .line 1242
    .local v1, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 1243
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    #@12
    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1244
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .end local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    #@22
    .line 1248
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@25
    .line 1249
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    #@28
    .line 1240
    return-void

    #@29
    .line 1242
    .restart local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0
.end method
