.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forAdapter"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    #@3
    .line 65
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@a
    .line 73
    const/4 v1, 0x0

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    #@e
    .line 75
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@11
    move-result-object v0

    #@12
    .line 76
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    #@19
    .line 77
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@1f
    .line 79
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@25
    .line 80
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@27
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@29
    const/4 v3, -0x2

    #@2a
    .line 81
    const/4 v4, -0x1

    #@2b
    .line 80
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@2e
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@31
    .line 71
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    #@0
    .prologue
    .line 205
    new-instance v0, Landroid/widget/Spinner;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 206
    const v3, 0x10102d7

    #@a
    .line 205
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@d
    .line 207
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    #@f
    .line 208
    const/4 v2, -0x2

    #@10
    const/4 v3, -0x1

    #@11
    .line 207
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@17
    .line 209
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@1a
    .line 210
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    #@0
    .prologue
    .line 195
    new-instance v0, Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 196
    const v3, 0x10102f4

    #@a
    .line 195
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@d
    .line 197
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    #@11
    .line 198
    const/16 v1, 0x11

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@16
    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    #@18
    .line 200
    const/4 v2, -0x2

    #@19
    const/4 v3, -0x1

    #@1a
    .line 199
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@20
    .line 201
    return-object v0
.end method

.method private createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forAdapter"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 281
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    #@6
    .line 282
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p3, :cond_0

    #@8
    .line 283
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 284
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    #@d
    .line 285
    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    #@f
    .line 284
    const/4 v3, -0x1

    #@10
    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@16
    .line 294
    :goto_0
    return-object v0

    #@17
    .line 287
    :cond_0
    const/4 v1, 0x1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    #@1b
    .line 289
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 290
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    #@21
    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;)V

    #@24
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    #@26
    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2b
    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 135
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@7
    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    #@a
    move-result-object v1

    #@b
    if-ne v1, p0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private performCollapse()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return-void

    #@8
    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 146
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@12
    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    #@17
    .line 149
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@19
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@1b
    const/4 v3, -0x2

    #@1c
    .line 150
    const/4 v4, -0x1

    #@1d
    .line 149
    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@20
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@23
    .line 151
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@25
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@28
    move-result-object v1

    #@29
    if-nez v1, :cond_2

    #@2b
    .line 152
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@2d
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    #@2f
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V

    #@32
    .line 153
    .local v0, "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@34
    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    #@3b
    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@3d
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    #@40
    .line 156
    .end local v0    # "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 157
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@46
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@49
    .line 158
    iput-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@4b
    .line 160
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@4d
    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@4f
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    #@52
    .line 142
    return-void
.end method

.method private performExpand()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 164
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    return v4

    #@8
    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    #@d
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@f
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@11
    const/4 v2, -0x2

    #@12
    .line 168
    const/4 v3, -0x1

    #@13
    .line 167
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@16
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@1b
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    #@22
    .line 170
    return v4
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 313
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    #@3
    invoke-direct {p0, v1, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@6
    move-result-object v0

    #@7
    .line 314
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@9
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #@b
    .line 315
    const/high16 v3, 0x3f800000    # 1.0f

    #@d
    const/4 v4, -0x1

    #@e
    .line 314
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@11
    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@14
    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 317
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@1a
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@23
    .line 319
    :cond_0
    if-eqz p3, :cond_1

    #@25
    .line 320
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    #@29
    .line 322
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@30
    .line 312
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 298
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    #@3
    invoke-direct {p0, v1, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@6
    move-result-object v0

    #@7
    .line 299
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@9
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #@b
    .line 300
    const/high16 v3, 0x3f800000    # 1.0f

    #@d
    const/4 v4, -0x1

    #@e
    .line 299
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@11
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14
    .line 301
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@1a
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@23
    .line 304
    :cond_0
    if-eqz p2, :cond_1

    #@25
    .line 305
    const/4 v1, 0x1

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    #@29
    .line 307
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@30
    .line 297
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 250
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 251
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@c
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    .line 253
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    #@11
    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    #@14
    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@16
    .line 260
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@18
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 248
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    #@0
    .prologue
    const-wide/16 v6, 0xc8

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    #@b
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@e
    .line 228
    :cond_0
    if-nez p1, :cond_2

    #@10
    .line 229
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 230
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    #@19
    .line 232
    :cond_1
    const-string/jumbo v1, "alpha"

    #@1c
    new-array v2, v2, [F

    #@1e
    const/high16 v3, 0x3f800000    # 1.0f

    #@20
    aput v3, v2, v4

    #@22
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@25
    move-result-object v0

    #@26
    .line 233
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@29
    .line 234
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@2b
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@2e
    .line 236
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@30
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@37
    .line 237
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@3a
    .line 224
    :goto_0
    return-void

    #@3b
    .line 239
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string/jumbo v1, "alpha"

    #@3e
    new-array v2, v2, [F

    #@40
    aput v3, v2, v4

    #@42
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@45
    move-result-object v0

    #@46
    .line 240
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@49
    .line 241
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    #@4b
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@4e
    .line 243
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@50
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@57
    .line 244
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@5a
    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    #@3
    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 264
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@a
    move-result-object v0

    #@b
    .line 220
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    #@12
    .line 221
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@18
    .line 214
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    #@3
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@c
    .line 273
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    #@1
    .line 359
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@3
    .line 360
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    #@a
    .line 358
    return-void
.end method

.method public onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    #@2
    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v5

    #@6
    .line 87
    .local v5, "widthMode":I
    if-ne v5, v8, :cond_2

    #@8
    const/4 v2, 0x1

    #@9
    .line 88
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    #@c
    .line 90
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@e
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    #@11
    move-result v1

    #@12
    .line 91
    .local v1, "childCount":I
    const/4 v6, 0x1

    #@13
    if-le v1, v6, :cond_4

    #@15
    .line 92
    if-eq v5, v8, :cond_0

    #@17
    const/high16 v6, -0x80000000

    #@19
    if-ne v5, v6, :cond_4

    #@1b
    .line 93
    :cond_0
    const/4 v6, 0x2

    #@1c
    if-le v1, v6, :cond_3

    #@1e
    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@21
    move-result v6

    #@22
    int-to-float v6, v6

    #@23
    const v7, 0x3ecccccd    # 0.4f

    #@26
    mul-float/2addr v6, v7

    #@27
    float-to-int v6, v6

    #@28
    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@2a
    .line 98
    :goto_1
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@2c
    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    #@2e
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@31
    move-result v6

    #@32
    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@34
    .line 103
    :goto_2
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    #@36
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@39
    move-result p2

    #@3a
    .line 105
    if-nez v2, :cond_5

    #@3c
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@3e
    .line 107
    :goto_3
    if-eqz v0, :cond_7

    #@40
    .line 109
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@42
    const/4 v7, 0x0

    #@43
    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    #@46
    .line 110
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@48
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@4b
    move-result v6

    #@4c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@4f
    move-result v7

    #@50
    if-le v6, v7, :cond_6

    #@52
    .line 111
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    #@55
    .line 119
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    #@58
    move-result v4

    #@59
    .line 120
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    #@5c
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    #@5f
    move-result v3

    #@60
    .line 123
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    #@62
    if-eq v4, v3, :cond_1

    #@64
    .line 125
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@66
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    #@69
    .line 85
    :cond_1
    return-void

    #@6a
    .line 87
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "lockedExpanded":Z
    goto :goto_0

    #@6c
    .line 96
    .restart local v1    # "childCount":I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@6f
    move-result v6

    #@70
    div-int/lit8 v6, v6, 0x2

    #@72
    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@74
    goto :goto_1

    #@75
    .line 100
    :cond_4
    const/4 v6, -0x1

    #@76
    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    #@78
    goto :goto_2

    #@79
    .line 105
    :cond_5
    const/4 v0, 0x0

    #@7a
    .local v0, "canCollapse":Z
    goto :goto_3

    #@7b
    .line 113
    .end local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    #@7e
    goto :goto_4

    #@7f
    .line 116
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    #@82
    goto :goto_4
.end method

.method public removeAllTabs()V
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@b
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@14
    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@1b
    .line 347
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    #@5
    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@b
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@14
    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@1b
    .line 337
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    #@0
    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@2
    .line 138
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    #@0
    .prologue
    .line 190
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    #@2
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@5
    .line 189
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    .line 174
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    #@2
    .line 175
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@4
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    #@7
    move-result v3

    #@8
    .line 176
    .local v3, "tabCount":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@b
    .line 177
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@d
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 178
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    #@13
    const/4 v2, 0x1

    #@14
    .line 179
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    #@17
    .line 180
    if-eqz v2, :cond_0

    #@19
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    #@1c
    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 178
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    #@20
    .restart local v2    # "isSelected":Z
    goto :goto_1

    #@21
    .line 184
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "isSelected":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@23
    if-eqz v4, :cond_3

    #@25
    if-ltz p1, :cond_3

    #@27
    .line 185
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@29
    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    #@2c
    .line 173
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    #@b
    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    #@11
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    #@1a
    .line 332
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    #@21
    .line 327
    :cond_1
    return-void
.end method
