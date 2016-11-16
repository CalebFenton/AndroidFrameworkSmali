.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$1;,
        Landroid/preference/PreferenceFragment$2;,
        Landroid/preference/PreferenceFragment$3;,
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceFragment;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    .line 119
    const v0, 0x10900b6

    #@6
    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@8
    .line 127
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    #@a
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    #@d
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@f
    .line 139
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    #@11
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    #@14
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@16
    .line 448
    new-instance v0, Landroid/preference/PreferenceFragment$3;

    #@18
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    #@1b
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    #@1d
    .line 109
    return-void
.end method

.method private bindPreferences()V
    .locals 5

    #@0
    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@3
    move-result-object v0

    #@4
    .line 370
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    #@6
    .line 371
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 372
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    #@c
    .line 373
    const v4, 0x1020016

    #@f
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    .line 374
    .local v3, "titleView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 375
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    #@1a
    move-result-object v2

    #@1b
    .line 376
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 377
    const/16 v4, 0x8

    #@23
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    #@26
    .line 385
    .end local v2    # "title":Ljava/lang/CharSequence;
    .end local v3    # "titleView":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    #@2d
    .line 387
    .end local v1    # "root":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    #@30
    .line 368
    return-void

    #@31
    .restart local v1    # "root":Landroid/view/View;
    .restart local v2    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "titleView":Landroid/view/View;
    :cond_2
    move-object v4, v3

    #@32
    .line 379
    check-cast v4, Landroid/widget/TextView;

    #@34
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@37
    .line 380
    const/4 v4, 0x0

    #@38
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    #@3b
    goto :goto_0
.end method

.method private ensureList()V
    .locals 4

    #@0
    .prologue
    .line 425
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 426
    return-void

    #@5
    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 429
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    #@b
    .line 430
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v3, "Content view not yet created"

    #@10
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 432
    :cond_1
    const v2, 0x102000a

    #@17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 433
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 434
    new-instance v2, Ljava/lang/RuntimeException;

    #@21
    .line 435
    const-string/jumbo v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@24
    .line 434
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 438
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    #@2a
    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2c
    .line 439
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 440
    new-instance v2, Ljava/lang/RuntimeException;

    #@32
    .line 441
    const-string/jumbo v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@35
    .line 440
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 444
    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@3b
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    #@3d
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@40
    .line 445
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@42
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@44
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    .line 424
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 364
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    return-void

    #@a
    .line 365
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 363
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "This should be called after super.onCreate."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    #@3
    .line 314
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    #@10
    .line 311
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    #@0
    .prologue
    .line 324
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    #@3
    .line 326
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@8
    move-result-object v1

    #@9
    .line 327
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@c
    move-result-object v2

    #@d
    .line 326
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    #@14
    .line 323
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 351
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 352
    return-object v1

    #@6
    .line 354
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@8
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    #@3
    .line 401
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 406
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 407
    return v4

    #@7
    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 410
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    #@d
    .line 411
    return v3

    #@e
    .line 413
    :cond_1
    const v2, 0x102000a

    #@11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 414
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    #@17
    if-nez v2, :cond_2

    #@19
    .line 415
    return v3

    #@1a
    .line 417
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    #@1c
    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@1e
    .line 418
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@20
    if-nez v2, :cond_3

    #@22
    .line 419
    return v3

    #@23
    .line 421
    :cond_3
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 207
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 208
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    #@a
    .line 211
    :cond_0
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    #@d
    .line 213
    if-eqz p1, :cond_1

    #@f
    .line 214
    const-string/jumbo v2, "android:preferences"

    #@12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    .line 215
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@18
    .line 216
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@1b
    move-result-object v1

    #@1c
    .line 217
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    #@1e
    .line 218
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@21
    .line 204
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    .line 270
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    #@8
    .line 267
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    #@0
    .prologue
    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 163
    new-instance v0, Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@8
    move-result-object v1

    #@9
    const/16 v2, 0x64

    #@b
    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    #@e
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@10
    .line 164
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@12
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    #@15
    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@4
    move-result-object v1

    #@5
    .line 172
    sget-object v2, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    #@7
    .line 171
    const/4 v3, 0x0

    #@8
    .line 173
    const v4, 0x1010506

    #@b
    .line 171
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 177
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@11
    .line 176
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@17
    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 181
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@1c
    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@3
    .line 251
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    #@8
    .line 249
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 239
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 240
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@a
    .line 242
    :cond_0
    iput-object v1, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@c
    .line 243
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@e
    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@13
    .line 244
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@19
    .line 245
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@1c
    .line 238
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 335
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 336
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    #@c
    .line 335
    if-eqz v0, :cond_0

    #@e
    .line 337
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    #@14
    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 340
    :cond_0
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@6
    move-result-object v1

    #@7
    .line 259
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    #@9
    .line 260
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    .line 261
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    #@11
    .line 262
    const-string/jumbo v2, "android:preferences"

    #@14
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@17
    .line 255
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    .line 227
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    #@8
    .line 225
    return-void
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    .line 233
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    #@8
    .line 234
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    #@e
    .line 231
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    #@0
    .prologue
    .line 395
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 186
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@5
    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@8
    move-result-object v2

    #@9
    .line 189
    sget-object v3, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    #@b
    .line 190
    const v4, 0x1010506

    #@e
    .line 191
    const/4 v5, 0x0

    #@f
    .line 188
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, 0x102000a

    #@16
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/widget/ListView;

    #@1c
    .line 194
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    #@1e
    .line 195
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@21
    move-result v2

    #@22
    .line 194
    if-eqz v2, :cond_0

    #@24
    .line 197
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v2

    #@28
    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 185
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    if-eqz p1, :cond_0

    #@a
    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    #@d
    .line 289
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    #@10
    .line 290
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 291
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    #@17
    .line 286
    :cond_0
    return-void
.end method
