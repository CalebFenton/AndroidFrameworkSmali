.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$TabInfo;,
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$SavedState;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@b
    .line 131
    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@e
    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@a
    .line 136
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@d
    .line 134
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    #@0
    .prologue
    .line 322
    const/4 v1, 0x0

    #@1
    .line 323
    .local v1, "newTab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    const/4 v0, 0x0

    #@2
    .end local v1    # "newTab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v0, v3, :cond_1

    #@a
    .line 324
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@12
    .line 325
    .local v2, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    invoke-static {v2}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 326
    move-object v1, v2

    #@1d
    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 329
    .end local v2    # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    #@22
    .line 330
    new-instance v3, Ljava/lang/IllegalStateException;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "No tab known for tag "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 332
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@3e
    if-eq v3, v1, :cond_6

    #@40
    .line 333
    if-nez p2, :cond_3

    #@42
    .line 334
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@44
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@47
    move-result-object p2

    #@48
    .line 336
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@4a
    if-eqz v3, :cond_4

    #@4c
    .line 337
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@4e
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@51
    move-result-object v3

    #@52
    if-eqz v3, :cond_4

    #@54
    .line 338
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@56
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@5d
    .line 341
    :cond_4
    if-eqz v1, :cond_5

    #@5f
    .line 342
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@62
    move-result-object v3

    #@63
    if-nez v3, :cond_7

    #@65
    .line 343
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@67
    .line 344
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get1(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get0(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;

    #@72
    move-result-object v5

    #@73
    .line 343
    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    #@76
    move-result-object v3

    #@77
    invoke-static {v1, v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-set0(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    #@7a
    .line 345
    iget v3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@7c
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@7f
    move-result-object v4

    #@80
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@87
    .line 351
    :cond_5
    :goto_1
    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@89
    .line 353
    :cond_6
    return-object p2

    #@8a
    .line 347
    :cond_7
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@91
    goto :goto_1
.end method

.method private ensureContent()V
    .locals 3

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 213
    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@6
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/FrameLayout;

    #@c
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@e
    .line 214
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@10
    if-nez v0, :cond_0

    #@12
    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "No tab content FrameLayout found for id "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 215
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 211
    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const v4, 0x1020013

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, -0x1

    #@6
    .line 151
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 152
    new-instance v1, Landroid/widget/LinearLayout;

    #@e
    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@11
    .line 153
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    #@12
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@15
    .line 154
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@17
    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1a
    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    .line 158
    new-instance v2, Landroid/widget/TabWidget;

    #@1f
    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    #@22
    .line 159
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    #@25
    .line 160
    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    #@28
    .line 161
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    #@2a
    .line 163
    const/4 v4, -0x2

    #@2b
    .line 161
    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@2e
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@31
    .line 165
    new-instance v0, Landroid/widget/FrameLayout;

    #@33
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@36
    .line 166
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    #@39
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    #@3c
    .line 167
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    #@3e
    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@41
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 169
    new-instance v0, Landroid/widget/FrameLayout;

    #@46
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@49
    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@4b
    .line 170
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@4d
    iget v4, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@4f
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    #@52
    .line 171
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    #@54
    .line 172
    const/high16 v4, 0x3f800000    # 1.0f

    #@56
    .line 171
    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@59
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5c
    .line 148
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    const/4 v1, 0x1

    #@2
    new-array v1, v1, [I

    #@4
    const v2, 0x10100f3

    #@7
    aput v2, v1, v3

    #@9
    .line 140
    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@13
    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 145
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    #@19
    .line 139
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;

    #@2
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    #@7
    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    #@a
    .line 228
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 230
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@10
    invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    #@13
    .line 232
    .local v1, "info":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 236
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@19
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v1, v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-set0(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    #@20
    .line 237
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@23
    move-result-object v3

    #@24
    if-eqz v3, :cond_0

    #@26
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 244
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 245
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    #@38
    .line 226
    return-void

    #@39
    .line 238
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@3b
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@3e
    move-result-object v0

    #@3f
    .line 239
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v1}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@46
    .line 240
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@49
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    .line 250
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    #@3
    .line 252
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 256
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .line 257
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    #@9
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v4

    #@f
    if-ge v2, v4, :cond_4

    #@11
    .line 258
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@19
    .line 259
    .local v3, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@1b
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3, v4}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-set0(Landroid/support/v4/app/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    #@26
    .line 260
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@29
    move-result-object v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 261
    :cond_1
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get3(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_2

    #@43
    .line 265
    iput-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    #@45
    goto :goto_1

    #@46
    .line 269
    :cond_2
    if-nez v1, :cond_3

    #@48
    .line 270
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@4a
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@4d
    move-result-object v1

    #@4e
    .line 272
    :cond_3
    invoke-static {v3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;->-get2(Landroid/support/v4/app/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@55
    goto :goto_1

    #@56
    .line 279
    .end local v3    # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    :cond_4
    const/4 v4, 0x1

    #@57
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    #@59
    .line 280
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    #@5c
    move-result-object v1

    #@5d
    .line 281
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v1, :cond_5

    #@5f
    .line 282
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@62
    .line 283
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@64
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    #@67
    .line 249
    :cond_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 289
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    #@3
    .line 290
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    #@6
    .line 288
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 303
    check-cast v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    #@3
    .line 304
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 305
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    #@c
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    #@f
    .line 302
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 296
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 297
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    #@f
    .line 298
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 310
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 311
    invoke-direct {p0, p1, v2}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    #@8
    move-result-object v0

    #@9
    .line 312
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_0

    #@b
    .line 313
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@e
    .line 316
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 317
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@14
    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    #@17
    .line 309
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    #@0
    .prologue
    .line 223
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    .line 222
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    .line 184
    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    #@5
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;

    #@0
    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    #@3
    .line 189
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    #@6
    .line 190
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@8
    .line 191
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@a
    .line 192
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    #@d
    .line 187
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I

    #@0
    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    #@3
    .line 197
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    #@6
    .line 198
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #@8
    .line 199
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    #@a
    .line 200
    iput p3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    #@c
    .line 201
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    #@f
    .line 202
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    #@11
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    #@14
    .line 206
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getId()I

    #@17
    move-result v0

    #@18
    const/4 v1, -0x1

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    .line 207
    const v0, 0x1020012

    #@1e
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V

    #@21
    .line 195
    :cond_0
    return-void
.end method
