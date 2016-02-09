.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchBar;,
        Landroid/app/SearchDialog$1;,
        Landroid/app/SearchDialog$2;,
        Landroid/app/SearchDialog$3;,
        Landroid/app/SearchDialog$4;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private mActivityContext:Landroid/content/Context;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mBadgeLabel:Landroid/widget/TextView;

.field private mCloseSearch:Landroid/view/View;

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mLaunchComponent:Landroid/content/ComponentName;

.field private final mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

.field private mSearchAutoCompleteImeOptions:I

.field private mSearchPlate:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mUserQuery:Ljava/lang/String;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -wrap0(Landroid/app/SearchDialog;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/SearchDialog;->onClosePressed()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchManager"    # Landroid/app/SearchManager;

    #@0
    .prologue
    const/high16 v3, 0x10000000

    #@2
    .line 125
    invoke-static {p1}, Landroid/app/SearchDialog;->resolveDialogTheme(Landroid/content/Context;)I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@9
    .line 103
    new-instance v0, Landroid/app/SearchDialog$1;

    #@b
    invoke-direct {v0, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    #@e
    iput-object v0, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    #@10
    .line 666
    new-instance v0, Landroid/app/SearchDialog$2;

    #@12
    invoke-direct {v0, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    #@15
    iput-object v0, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@17
    .line 674
    new-instance v0, Landroid/app/SearchDialog$3;

    #@19
    invoke-direct {v0, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    #@1c
    .line 673
    iput-object v0, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@1e
    .line 687
    new-instance v0, Landroid/app/SearchDialog$4;

    #@20
    invoke-direct {v0, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    #@23
    .line 686
    iput-object v0, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@25
    .line 128
    new-instance v0, Landroid/content/Intent;

    #@27
    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    #@2a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2d
    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@2f
    .line 129
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@34
    .line 130
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    #@36
    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    #@39
    .line 131
    const-string/jumbo v2, "web_search"

    #@3c
    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3f
    .line 133
    new-instance v0, Landroid/content/Intent;

    #@41
    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    #@44
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@47
    iput-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@49
    .line 134
    iget-object v0, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    #@4b
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4e
    .line 124
    return-void
.end method

.method private createContentView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    const v0, 0x10900cf

    #@4
    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->setContentView(I)V

    #@7
    .line 168
    const v0, 0x10203b5

    #@a
    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/SearchView;

    #@10
    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@12
    .line 169
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@14
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    #@17
    .line 170
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@19
    iget-object v1, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    #@1e
    .line 171
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@20
    iget-object v1, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    #@25
    .line 172
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@27
    iget-object v1, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    #@29
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    #@2c
    .line 173
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@2e
    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    #@31
    .line 175
    const v0, 0x1020027

    #@34
    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    #@3a
    .line 176
    iget-object v0, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    #@3c
    new-instance v1, Landroid/app/SearchDialog$5;

    #@3e
    invoke-direct {v1, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    #@41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@44
    .line 184
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@46
    const v1, 0x10203b7

    #@49
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/widget/TextView;

    #@4f
    iput-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    #@51
    .line 186
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@53
    const v1, 0x10203bc

    #@56
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@59
    move-result-object v0

    #@5a
    .line 185
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    #@5c
    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@5e
    .line 187
    const v0, 0x10203b4

    #@61
    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v0

    #@65
    check-cast v0, Landroid/widget/ImageView;

    #@67
    iput-object v0, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    #@69
    .line 188
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@6b
    const v1, 0x10203bb

    #@6e
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    #@71
    move-result-object v0

    #@72
    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@74
    .line 189
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@77
    move-result-object v0

    #@78
    const v1, 0x10805e2

    #@7b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7e
    move-result-object v0

    #@7f
    iput-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    #@81
    .line 193
    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setWorking(Z)V

    #@84
    .line 196
    iget-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    #@86
    const/16 v1, 0x8

    #@88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@8b
    .line 199
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@8d
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    #@90
    move-result v0

    #@91
    iput v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    #@93
    .line 164
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 592
    if-eqz p2, :cond_0

    #@c
    .line 593
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@f
    .line 595
    :cond_0
    const-string/jumbo v1, "user_query"

    #@12
    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@17
    .line 596
    if-eqz p4, :cond_1

    #@19
    .line 597
    const-string/jumbo v1, "query"

    #@1c
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    .line 599
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 600
    const-string/jumbo v1, "intent_extra_data_key"

    #@24
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 602
    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 603
    const-string/jumbo v1, "app_data"

    #@2e
    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@33
    .line 605
    :cond_3
    if-eqz p5, :cond_4

    #@35
    .line 606
    const-string/jumbo v1, "action_key"

    #@38
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3b
    .line 607
    const-string/jumbo v1, "action_msg"

    #@3e
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@41
    .line 609
    :cond_4
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@43
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4a
    .line 610
    return-object v0
.end method

.method private doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 227
    invoke-direct {p0, p3, p4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 228
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 232
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    #@b
    .line 233
    if-eqz p2, :cond_1

    #@d
    .line 234
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@f
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    #@12
    .line 237
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0
.end method

.method private isEmpty(Landroid/widget/AutoCompleteTextView;)Z
    .locals 2
    .param p1, "actv"    # Landroid/widget/AutoCompleteTextView;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 639
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@a
    .line 378
    const/4 v1, 0x2

    #@b
    .line 377
    if-ne v0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 494
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@4
    move-result v4

    #@5
    float-to-int v1, v4

    #@6
    .line 495
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v4

    #@a
    float-to-int v2, v4

    #@b
    .line 496
    .local v2, "y":I
    iget-object v4, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    #@14
    move-result v0

    #@15
    .line 497
    .local v0, "slop":I
    neg-int v4, v0

    #@16
    if-lt v1, v4, :cond_0

    #@18
    neg-int v4, v0

    #@19
    if-ge v2, v4, :cond_1

    #@1b
    :cond_0
    :goto_0
    return v3

    #@1c
    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v4

    #@20
    add-int/2addr v4, v0

    #@21
    if-gt v1, v4, :cond_0

    #@23
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@26
    move-result v4

    #@27
    add-int/2addr v4, v0

    #@28
    if-gt v2, v4, :cond_0

    #@2a
    const/4 v3, 0x0

    #@2b
    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 544
    if-nez p1, :cond_0

    #@2
    .line 545
    return-void

    #@3
    .line 547
    :cond_0
    const-string/jumbo v1, "SearchDialog"

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "launching "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@24
    .line 556
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 543
    :goto_0
    return-void

    #@28
    .line 557
    :catch_0
    move-exception v0

    #@29
    .line 558
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SearchDialog"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Failed launch activity: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    goto :goto_0
.end method

.method private onClosePressed()Z
    .locals 1

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@2
    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->isEmpty(Landroid/widget/AutoCompleteTextView;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 659
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V

    #@b
    .line 660
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 663
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 113
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 114
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object v1

    #@9
    const v2, 0x116002e

    #@c
    .line 115
    const/4 v3, 0x1

    #@d
    .line 114
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@10
    .line 116
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    #@12
    return v1
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
    if-nez p1, :cond_0

    #@2
    .line 704
    const-string/jumbo p1, ""

    #@5
    .line 706
    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    #@7
    .line 707
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 708
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    #@15
    .line 702
    return-void
.end method

.method private show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 253
    iget-object v1, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "search"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 252
    check-cast v0, Landroid/app/SearchManager;

    #@b
    .line 255
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@11
    .line 257
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@13
    if-nez v1, :cond_0

    #@15
    .line 258
    const/4 v1, 0x0

    #@16
    return v1

    #@17
    .line 261
    :cond_0
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    #@19
    .line 262
    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@1b
    .line 263
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@1d
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    #@27
    .line 266
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 269
    invoke-direct {p0}, Landroid/app/SearchDialog;->createContentView()V

    #@30
    .line 270
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@32
    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    #@37
    .line 271
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    #@39
    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@3b
    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setAppSearchData(Landroid/os/Bundle;)V

    #@3e
    .line 273
    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    #@41
    .line 275
    :cond_1
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    #@44
    .line 277
    const/4 v1, 0x1

    #@45
    return v1
.end method

.method private updateSearchAppIcon()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 431
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v3

    #@9
    .line 434
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    #@b
    const/4 v5, 0x0

    #@c
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@f
    move-result-object v2

    #@10
    .line 435
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    .line 442
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    #@18
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    .line 443
    iget-object v4, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    #@1d
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    #@20
    .line 444
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@22
    iget-object v5, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@24
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    #@27
    move-result v5

    #@28
    iget-object v6, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@2a
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    #@2d
    move-result v6

    #@2e
    iget-object v7, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@30
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    #@33
    move-result v7

    #@34
    const/4 v8, 0x7

    #@35
    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    #@38
    .line 430
    return-void

    #@39
    .line 438
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    #@3a
    .line 439
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@3d
    move-result-object v1

    #@3e
    .line 440
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v4, "SearchDialog"

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    iget-object v6, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v6, " not found, using generic app icon"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 426
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownDismissedOnCompletion(Z)V

    #@6
    .line 427
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    #@b
    .line 424
    return-void
.end method

.method private updateSearchBadge()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 452
    const/16 v2, 0x8

    #@3
    .line 453
    .local v2, "visibility":I
    const/4 v0, 0x0

    #@4
    .line 454
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    #@5
    .line 457
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@7
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeIcon()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 458
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    #@f
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@11
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getIconId()I

    #@14
    move-result v4

    #@15
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    .line 459
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@1a
    .line 467
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@1f
    .line 468
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    #@21
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@24
    .line 469
    iget-object v3, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    #@26
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@29
    .line 450
    return-void

    #@2a
    .line 461
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@2c
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->useBadgeLabel()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 462
    iget-object v3, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    #@34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@3a
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getLabelId()I

    #@3d
    move-result v4

    #@3e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@41
    move-result-object v3

    #@42
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 463
    .local v1, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    #@47
    goto :goto_0
.end method

.method private updateUI()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 385
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 386
    iget-object v1, p0, Landroid/app/SearchDialog;->mDecor:Landroid/view/View;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 387
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    #@e
    .line 388
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    #@11
    .line 389
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    #@14
    .line 396
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@16
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    #@19
    move-result v0

    #@1a
    .line 399
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    #@1c
    const/4 v2, 0x1

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 402
    const v1, -0x10001

    #@22
    and-int/2addr v0, v1

    #@23
    .line 403
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@25
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 404
    const/high16 v1, 0x10000

    #@2d
    or-int/2addr v0, v1

    #@2e
    .line 407
    :cond_0
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@30
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    #@33
    .line 408
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@35
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    #@38
    move-result v1

    #@39
    iput v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    #@3b
    .line 409
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@3d
    iget v2, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    #@3f
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    #@42
    .line 413
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@44
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 414
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@4c
    const-string/jumbo v2, "nm"

    #@4f
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    #@52
    .line 384
    .end local v0    # "inputType":I
    :cond_1
    :goto_0
    return-void

    #@53
    .line 416
    .restart local v0    # "inputType":I
    :cond_2
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@55
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    #@58
    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    #@0
    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 508
    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    .line 509
    const-string/jumbo v2, "input_method"

    #@e
    .line 508
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@14
    .line 510
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@16
    .line 512
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x0

    #@23
    .line 511
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@26
    .line 515
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    #@29
    .line 503
    return-void
.end method

.method public launchQuerySearch()V
    .locals 2

    #@0
    .prologue
    .line 522
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    #@5
    .line 521
    return-void
.end method

.method protected launchQuerySearch(ILjava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 534
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@3
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 535
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEARCH"

    #@e
    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    #@f
    move-object v3, v2

    #@10
    move v5, p1

    #@11
    move-object v6, p2

    #@12
    .line 536
    invoke-direct/range {v0 .. v6}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    #@15
    move-result-object v7

    #@16
    .line 537
    .local v7, "intent":Landroid/content/Intent;
    invoke-direct {p0, v7}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    #@19
    .line 533
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    #@0
    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 647
    const-string/jumbo v2, "input_method"

    #@7
    .line 646
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@d
    .line 648
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 649
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x0

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@25
    move-result v1

    #@26
    .line 648
    if-eqz v1, :cond_0

    #@28
    .line 650
    return-void

    #@29
    .line 653
    :cond_0
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    #@2c
    .line 643
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 368
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    #@d
    .line 369
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    #@10
    .line 370
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 371
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@1c
    const/4 v1, 0x1

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    #@20
    .line 365
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 143
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@4
    .line 145
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    #@7
    move-result-object v1

    #@8
    .line 146
    .local v1, "theWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@b
    move-result-object v0

    #@c
    .line 147
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@e
    .line 151
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@10
    .line 152
    const/16 v2, 0x37

    #@12
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@14
    .line 153
    const/16 v2, 0x10

    #@16
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@18
    .line 154
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@1b
    .line 157
    const/4 v2, 0x1

    #@1c
    invoke-virtual {p0, v2}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    #@1f
    .line 142
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 349
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 351
    :cond_0
    const-string/jumbo v3, "comp"

    #@6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/content/ComponentName;

    #@c
    .line 352
    .local v1, "launchComponent":Landroid/content/ComponentName;
    const-string/jumbo v3, "data"

    #@f
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@12
    move-result-object v0

    #@13
    .line 353
    .local v0, "appSearchData":Landroid/os/Bundle;
    const-string/jumbo v3, "uQry"

    #@16
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 356
    .local v2, "userQuery":Ljava/lang/String;
    const/4 v3, 0x0

    #@1b
    invoke-direct {p0, v2, v3, v1, v0}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 358
    return-void

    #@22
    .line 348
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 331
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@d
    .line 334
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "comp"

    #@10
    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@15
    .line 335
    const-string/jumbo v1, "data"

    #@18
    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1d
    .line 336
    const-string/jumbo v1, "uQry"

    #@20
    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 338
    return-object v0
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    #@3
    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    #@5
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@8
    .line 286
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e
    .line 287
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    #@14
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@17
    .line 281
    return-void
.end method

.method public onStop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    #@4
    .line 300
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@d
    .line 303
    iput-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    #@f
    .line 304
    iput-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    #@11
    .line 305
    iput-object v2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    #@13
    .line 306
    iput-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    #@15
    .line 297
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    #@a
    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 486
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    #@13
    .line 487
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 490
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    #@5
    .line 565
    return-void
.end method

.method public setWorking(Z)V
    .locals 3
    .param p1, "working"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 316
    iget-object v2, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz p1, :cond_0

    #@5
    const/16 v0, 0xff

    #@7
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@a
    .line 317
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@f
    .line 318
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@14
    .line 315
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 316
    goto :goto_0
.end method

.method public show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    .line 210
    .local v0, "success":Z
    if-eqz v0, :cond_0

    #@6
    .line 213
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    #@8
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->showDropDownAfterLayout()V

    #@b
    .line 215
    :cond_0
    return v0
.end method
