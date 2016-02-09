.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;,
        Landroid/preference/PreferenceFragment$1;,
        Landroid/preference/PreferenceFragment$2;,
        Landroid/preference/PreferenceFragment$3;
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
    .line 106
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    .line 116
    const v0, 0x10900af

    #@6
    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@8
    .line 124
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    #@a
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    #@d
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@f
    .line 136
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    #@11
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    #@14
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@16
    .line 409
    new-instance v0, Landroid/preference/PreferenceFragment$3;

    #@18
    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    #@1b
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    #@1d
    .line 106
    return-void
.end method

.method private bindPreferences()V
    .locals 2

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@3
    move-result-object v0

    #@4
    .line 345
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    #@6
    .line 346
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    #@d
    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    #@10
    .line 343
    return-void
.end method

.method private ensureList()V
    .locals 4

    #@0
    .prologue
    .line 386
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 387
    return-void

    #@5
    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 390
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    #@b
    .line 391
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v3, "Content view not yet created"

    #@10
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 393
    :cond_1
    const v2, 0x102000a

    #@17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 394
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 395
    new-instance v2, Ljava/lang/RuntimeException;

    #@21
    .line 396
    const-string/jumbo v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@24
    .line 395
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 399
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    #@2a
    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2c
    .line 400
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 401
    new-instance v2, Ljava/lang/RuntimeException;

    #@32
    .line 402
    const-string/jumbo v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@35
    .line 401
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 405
    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@3b
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    #@3d
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@40
    .line 406
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@42
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@44
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@47
    .line 385
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 339
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
    .line 340
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 338
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "This should be called after super.onCreate."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    #@3
    .line 289
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
    .line 286
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    #@3
    .line 301
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@8
    move-result-object v1

    #@9
    .line 302
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@c
    move-result-object v2

    #@d
    .line 301
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    #@14
    .line 298
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 326
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 327
    return-object v1

    #@6
    .line 329
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
    .line 361
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    #@3
    .line 362
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@2
    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    #@0
    .prologue
    .line 278
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
    .line 367
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 368
    return v4

    #@7
    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 371
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    #@d
    .line 372
    return v3

    #@e
    .line 374
    :cond_1
    const v2, 0x102000a

    #@11
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 375
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    #@17
    if-nez v2, :cond_2

    #@19
    .line 376
    return v3

    #@1a
    .line 378
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    #@1c
    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@1e
    .line 379
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@20
    if-nez v2, :cond_3

    #@22
    .line 380
    return v3

    #@23
    .line 382
    :cond_3
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    .line 185
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 186
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    #@a
    .line 189
    :cond_0
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    #@d
    .line 191
    if-eqz p1, :cond_1

    #@f
    .line 192
    const-string/jumbo v2, "android:preferences"

    #@12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    .line 193
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@18
    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@1b
    move-result-object v1

    #@1c
    .line 195
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    #@1e
    .line 196
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@21
    .line 182
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
    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    .line 245
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    #@8
    .line 242
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    #@0
    .prologue
    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 160
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
    .line 161
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@12
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    #@15
    .line 158
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
    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@4
    move-result-object v1

    #@5
    .line 169
    sget-object v2, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    #@7
    .line 168
    const/4 v3, 0x0

    #@8
    .line 170
    const v4, 0x1160022

    #@b
    .line 168
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 174
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@11
    .line 173
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    #@17
    .line 176
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 178
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
    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@3
    .line 226
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    #@8
    .line 224
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    #@3
    .line 218
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@5
    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@a
    .line 219
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@10
    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@13
    .line 216
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    #@0
    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 311
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    #@c
    .line 310
    if-eqz v0, :cond_0

    #@e
    .line 312
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
    .line 315
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
    .line 231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    #@6
    move-result-object v1

    #@7
    .line 234
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    #@9
    .line 235
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    .line 236
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    #@11
    .line 237
    const-string/jumbo v2, "android:preferences"

    #@14
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@17
    .line 230
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    #@0
    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    #@3
    .line 205
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    #@8
    .line 203
    return-void
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    #@3
    .line 211
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@5
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    #@8
    .line 212
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    #@e
    .line 209
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    #@0
    .prologue
    .line 356
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    #@0
    .prologue
    .line 262
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
    .line 263
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    #@d
    .line 264
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    #@10
    .line 265
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 266
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    #@17
    .line 261
    :cond_0
    return-void
.end method
