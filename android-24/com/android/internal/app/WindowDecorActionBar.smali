.class public Lcom/android/internal/app/WindowDecorActionBar;
.super Landroid/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WindowDecorActionBar$1;,
        Lcom/android/internal/app/WindowDecorActionBar$2;,
        Lcom/android/internal/app/WindowDecorActionBar$3;,
        Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;,
        Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/WindowDecorActionBar;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/internal/app/WindowDecorActionBar;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->-assertionsDisabled:Z

    #@b
    .line 73
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 167
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    #@4
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@b
    .line 93
    const/4 v3, -0x1

    #@c
    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@e
    .line 103
    new-instance v3, Ljava/util/ArrayList;

    #@10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 102
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@15
    .line 117
    const/4 v3, 0x0

    #@16
    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@18
    .line 119
    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@1a
    .line 124
    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@1c
    .line 130
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$1;

    #@1e
    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@21
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    #@23
    .line 150
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$2;

    #@25
    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@28
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    #@2a
    .line 159
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$3;

    #@2c
    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@2f
    .line 158
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@31
    .line 168
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    #@33
    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@36
    move-result-object v2

    #@37
    .line 170
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    .line 171
    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    #@3d
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@40
    move-result-object v3

    #@41
    const/16 v4, 0x9

    #@43
    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    #@46
    move-result v1

    #@47
    .line 172
    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    #@4a
    .line 173
    if-nez v1, :cond_0

    #@4c
    .line 174
    const v3, 0x1020002

    #@4f
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@52
    move-result-object v3

    #@53
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@55
    .line 167
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 178
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    #@4
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@b
    .line 93
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@e
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 102
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@15
    .line 117
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@18
    .line 119
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@1a
    .line 124
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@1c
    .line 130
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    #@23
    .line 150
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    #@25
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@28
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    #@2a
    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@2f
    .line 158
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@31
    .line 179
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    #@33
    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    #@3e
    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 187
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    #@4
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@b
    .line 93
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@e
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 102
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@15
    .line 117
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@18
    .line 119
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@1a
    .line 124
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@1c
    .line 130
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    #@23
    .line 150
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    #@25
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@28
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    #@2a
    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    #@2c
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@2f
    .line 158
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@31
    .line 188
    sget-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->-assertionsDisabled:Z

    #@33
    if-nez v0, :cond_0

    #@35
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_0

    #@3b
    new-instance v0, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v0

    #@41
    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    #@44
    .line 187
    return-void
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 737
    if-eqz p2, :cond_0

    #@3
    .line 738
    return v0

    #@4
    .line 739
    :cond_0
    if-nez p0, :cond_1

    #@6
    if-eqz p1, :cond_2

    #@8
    .line 740
    :cond_1
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 742
    :cond_2
    return v0
.end method

.method private cleanupTabs()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 427
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 428
    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@8
    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 431
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 432
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    #@16
    .line 434
    :cond_1
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@19
    .line 426
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    #@0
    .prologue
    move-object v3, p1

    #@1
    .line 530
    check-cast v3, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@3
    .line 531
    .local v3, "tabi":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    #@6
    move-result-object v0

    #@7
    .line 533
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    #@9
    .line 534
    new-instance v4, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v5, "Action Bar Tab must have a Callback"

    #@e
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 537
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    #@15
    .line 538
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@1a
    .line 540
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v1

    #@20
    .line 541
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    #@22
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@24
    .line 542
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@2c
    invoke-virtual {v4, v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    #@2f
    .line 541
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 529
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 293
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 294
    return-void

    #@6
    .line 297
    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    #@8
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    #@d
    .line 299
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 300
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@14
    .line 301
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@16
    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@19
    .line 313
    :goto_0
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@1b
    .line 292
    return-void

    #@1c
    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    #@1f
    move-result v1

    #@20
    const/4 v2, 0x2

    #@21
    if-ne v1, v2, :cond_3

    #@23
    .line 304
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@26
    .line 305
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 306
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2c
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@2f
    .line 311
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@31
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@34
    goto :goto_0

    #@35
    .line 309
    :cond_3
    const/16 v1, 0x8

    #@37
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@3a
    goto :goto_1
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 240
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 241
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    #@6
    .end local p1    # "view":Landroid/view/View;
    return-object p1

    #@7
    .line 242
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 243
    check-cast p1, Landroid/widget/Toolbar;

    #@d
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 245
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 690
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 691
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    #@7
    .line 692
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 693
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    #@10
    .line 695
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@13
    .line 689
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 194
    const v5, 0x10203ed

    #@6
    .line 193
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@c
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@e
    .line 195
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 196
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@14
    invoke-virtual {v5, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    #@17
    .line 198
    :cond_0
    const v5, 0x10203ef

    #@1a
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    #@21
    move-result-object v5

    #@22
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@24
    .line 200
    const v5, 0x10203f0

    #@27
    .line 199
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Lcom/android/internal/widget/ActionBarContextView;

    #@2d
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2f
    .line 202
    const v5, 0x10203ee

    #@32
    .line 201
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    #@38
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@3a
    .line 204
    const v5, 0x10203f1

    #@3d
    .line 203
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@40
    move-result-object v5

    #@41
    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    #@43
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@45
    .line 206
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@47
    if-eqz v5, :cond_1

    #@49
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@4b
    if-nez v5, :cond_2

    #@4d
    .line 207
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getClass()Ljava/lang/Class;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    const-string/jumbo v7, " can only be used "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 208
    const-string/jumbo v7, "with a compatible window decor layout"

    #@6a
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@75
    throw v5

    #@76
    .line 206
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@78
    if-eqz v5, :cond_1

    #@7a
    .line 211
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@7c
    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    #@7f
    move-result-object v5

    #@80
    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@82
    .line 212
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@84
    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_6

    #@8a
    move v5, v6

    #@8b
    :goto_0
    iput v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    #@8d
    .line 216
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@8f
    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    #@92
    move-result v2

    #@93
    .line 217
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    #@95
    if-eqz v5, :cond_7

    #@97
    move v4, v6

    #@98
    .line 218
    .local v4, "homeAsUp":Z
    :goto_1
    if-eqz v4, :cond_3

    #@9a
    .line 219
    iput-boolean v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    #@9c
    .line 222
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@9e
    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@a1
    move-result-object v1

    #@a2
    .line 223
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    #@a5
    move-result v5

    #@a6
    if-nez v5, :cond_8

    #@a8
    .end local v4    # "homeAsUp":Z
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    #@ab
    .line 224
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    #@ae
    move-result v5

    #@af
    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    #@b2
    .line 226
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@b4
    .line 227
    sget-object v8, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@b6
    .line 228
    const v9, 0x10102ce

    #@b9
    .line 226
    invoke-virtual {v5, v10, v8, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@bc
    move-result-object v0

    #@bd
    .line 229
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x15

    #@bf
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c2
    move-result v5

    #@c3
    if-eqz v5, :cond_4

    #@c5
    .line 230
    invoke-virtual {p0, v6}, Lcom/android/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    #@c8
    .line 232
    :cond_4
    const/16 v5, 0x14

    #@ca
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@cd
    move-result v3

    #@ce
    .line 233
    .local v3, "elevation":I
    if-eqz v3, :cond_5

    #@d0
    .line 234
    int-to-float v5, v3

    #@d1
    invoke-virtual {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setElevation(F)V

    #@d4
    .line 236
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@d7
    .line 192
    return-void

    #@d8
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    :cond_6
    move v5, v7

    #@d9
    .line 213
    goto :goto_0

    #@da
    .restart local v2    # "current":I
    :cond_7
    move v4, v7

    #@db
    .line 217
    goto :goto_1

    #@dc
    .restart local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_8
    move v4, v6

    #@dd
    .line 223
    goto :goto_2
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 4
    .param p1, "hasEmbeddedTabs"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 268
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@4
    .line 270
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@6
    if-nez v1, :cond_1

    #@8
    .line 271
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@a
    invoke-interface {v1, v3}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@d
    .line 272
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@f
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@11
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@14
    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    #@17
    move-result v1

    #@18
    const/4 v3, 0x2

    #@19
    if-ne v1, v3, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 278
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 279
    if-eqz v0, :cond_3

    #@22
    .line 280
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@27
    .line 281
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 282
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@30
    .line 288
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@32
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@34
    if-nez v1, :cond_4

    #@36
    move v1, v0

    #@37
    :goto_3
    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    #@3a
    .line 289
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@3c
    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@3e
    if-nez v3, :cond_5

    #@40
    .end local v0    # "isInTabMode":Z
    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    #@43
    .line 267
    return-void

    #@44
    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@46
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@49
    .line 275
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@4b
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@4d
    invoke-interface {v1, v3}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    #@50
    goto :goto_0

    #@51
    .line 277
    :cond_2
    const/4 v0, 0x0

    #@52
    .restart local v0    # "isInTabMode":Z
    goto :goto_1

    #@53
    .line 285
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@55
    const/16 v3, 0x8

    #@57
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@5a
    goto :goto_2

    #@5b
    :cond_4
    move v1, v2

    #@5c
    .line 288
    goto :goto_3

    #@5d
    :cond_5
    move v0, v2

    #@5e
    .line 289
    goto :goto_4
.end method

.method private shouldAnimateContextView()Z
    .locals 1

    #@0
    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->isLaidOut()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private showForActionMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 665
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 666
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    #@7
    .line 667
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 668
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    #@10
    .line 670
    :cond_0
    const/4 v0, 0x0

    #@11
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@14
    .line 664
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    #@0
    .prologue
    .line 748
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@2
    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@4
    .line 749
    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    #@6
    .line 748
    invoke-static {v1, v2, v3}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    #@9
    move-result v0

    #@a
    .line 751
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    #@c
    .line 752
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@e
    if-nez v1, :cond_0

    #@10
    .line 753
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@13
    .line 754
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doShow(Z)V

    #@16
    .line 746
    :cond_0
    :goto_0
    return-void

    #@17
    .line 757
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 758
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@1e
    .line 759
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doHide(Z)V

    #@21
    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 342
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    #@9
    .line 547
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    #@9
    .line 552
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    #@0
    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    #@3
    .line 569
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    #@8
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    #@b
    .line 571
    if-eqz p3, :cond_0

    #@d
    .line 572
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@10
    .line 567
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    #@0
    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    #@3
    .line 559
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    #@8
    .line 560
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    #@11
    .line 561
    if-eqz p2, :cond_0

    #@13
    .line 562
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@16
    .line 557
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 10
    .param p1, "toActionMode"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0xc8

    #@2
    const-wide/16 v6, 0x64

    #@4
    const/16 v5, 0x8

    #@6
    const/4 v4, 0x0

    #@7
    .line 870
    if-eqz p1, :cond_0

    #@9
    .line 871
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->showForActionMode()V

    #@c
    .line 876
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->shouldAnimateContextView()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 878
    if-eqz p1, :cond_1

    #@14
    .line 879
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@16
    invoke-interface {v3, v5, v6, v7}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@19
    move-result-object v1

    #@1a
    .line 881
    .local v1, "fadeOut":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@1c
    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@1f
    move-result-object v0

    #@20
    .line 889
    .local v0, "fadeIn":Landroid/animation/Animator;
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    #@22
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    #@25
    .line 890
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    #@26
    new-array v3, v3, [Landroid/animation/Animator;

    #@28
    aput-object v1, v3, v4

    #@2a
    const/4 v4, 0x1

    #@2b
    aput-object v0, v3, v4

    #@2d
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@30
    .line 891
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    #@33
    .line 869
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeOut":Landroid/animation/Animator;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :goto_2
    return-void

    #@34
    .line 873
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->hideForActionMode()V

    #@37
    goto :goto_0

    #@38
    .line 884
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@3a
    invoke-interface {v3, v4, v8, v9}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@3d
    move-result-object v0

    #@3e
    .line 886
    .restart local v0    # "fadeIn":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@40
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    #@43
    move-result-object v1

    #@44
    .restart local v1    # "fadeOut":Landroid/animation/Animator;
    goto :goto_1

    #@45
    .line 893
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeOut":Landroid/animation/Animator;
    :cond_2
    if-eqz p1, :cond_3

    #@47
    .line 894
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@49
    invoke-interface {v3, v5}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    #@4c
    .line 895
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@4e
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@51
    goto :goto_2

    #@52
    .line 897
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@54
    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    #@57
    .line 898
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@59
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@5c
    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@6
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 967
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@e
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    #@11
    .line 968
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 970
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 318
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    #@7
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    #@9
    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@c
    .line 319
    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    #@e
    .line 320
    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    #@10
    .line 316
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 351
    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 352
    return-void

    #@5
    .line 354
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    #@7
    .line 356
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .line 357
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 358
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@18
    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    #@1b
    .line 357
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 350
    :cond_1
    return-void
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    #@0
    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v9, 0x0

    #@5
    .line 825
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 826
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@b
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    #@e
    .line 829
    :cond_0
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@10
    if-nez v5, :cond_5

    #@12
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    #@14
    if-nez v5, :cond_1

    #@16
    if-eqz p1, :cond_5

    #@18
    .line 831
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@1a
    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    #@1d
    .line 832
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@1f
    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    #@22
    .line 833
    new-instance v1, Landroid/animation/AnimatorSet;

    #@24
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@27
    .line 834
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@29
    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@2c
    move-result v5

    #@2d
    neg-int v5, v5

    #@2e
    int-to-float v3, v5

    #@2f
    .line 835
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    #@31
    .line 836
    filled-new-array {v9, v9}, [I

    #@34
    move-result-object v4

    #@35
    .line 837
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@37
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    #@3a
    .line 838
    aget v5, v4, v10

    #@3c
    int-to-float v5, v5

    #@3d
    sub-float/2addr v3, v5

    #@3e
    .line 840
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@40
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@42
    new-array v7, v10, [F

    #@44
    aput v3, v7, v9

    #@46
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@49
    move-result-object v0

    #@4a
    .line 841
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@4c
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@4f
    .line 842
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@52
    move-result-object v2

    #@53
    .line 843
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@55
    if-eqz v5, :cond_3

    #@57
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@59
    if-eqz v5, :cond_3

    #@5b
    .line 844
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@5d
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@5f
    const/4 v7, 0x2

    #@60
    new-array v7, v7, [F

    #@62
    .line 845
    const/4 v8, 0x0

    #@63
    aput v8, v7, v9

    #@65
    aput v3, v7, v10

    #@67
    .line 844
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@6e
    .line 847
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@70
    if-eqz v5, :cond_4

    #@72
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@74
    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@77
    move-result v5

    #@78
    if-nez v5, :cond_4

    #@7a
    .line 848
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@7c
    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    #@7f
    .line 849
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@81
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@83
    new-array v7, v10, [F

    #@85
    .line 850
    iget-object v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@87
    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@8a
    move-result v8

    #@8b
    int-to-float v8, v8

    #@8c
    aput v8, v7, v9

    #@8e
    .line 849
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@95
    .line 852
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@97
    .line 853
    const v6, 0x10c0002

    #@9a
    .line 852
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@a1
    .line 854
    const-wide/16 v6, 0xfa

    #@a3
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@a6
    .line 855
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    #@a8
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@ab
    .line 856
    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@ad
    .line 857
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    #@b0
    .line 824
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    #@b1
    .line 859
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    #@b3
    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@b6
    goto :goto_0
.end method

.method public doShow(Z)V
    .locals 11
    .param p1, "fromSystem"    # Z

    #@0
    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v8, 0x0

    #@6
    .line 765
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 766
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@c
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    #@f
    .line 768
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@11
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@14
    .line 770
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@16
    if-nez v5, :cond_6

    #@18
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    #@1a
    if-nez v5, :cond_1

    #@1c
    if-eqz p1, :cond_6

    #@1e
    .line 772
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@20
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@23
    .line 773
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@25
    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@28
    move-result v5

    #@29
    neg-int v5, v5

    #@2a
    int-to-float v3, v5

    #@2b
    .line 774
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    #@2d
    .line 775
    filled-new-array {v8, v8}, [I

    #@30
    move-result-object v4

    #@31
    .line 776
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@33
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    #@36
    .line 777
    aget v5, v4, v10

    #@38
    int-to-float v5, v5

    #@39
    sub-float/2addr v3, v5

    #@3a
    .line 779
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@3c
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@3f
    .line 780
    new-instance v1, Landroid/animation/AnimatorSet;

    #@41
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@44
    .line 781
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@46
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@48
    new-array v7, v10, [F

    #@4a
    aput v9, v7, v8

    #@4c
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@4f
    move-result-object v0

    #@50
    .line 782
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@52
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@55
    .line 783
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@58
    move-result-object v2

    #@59
    .line 784
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@5b
    if-eqz v5, :cond_3

    #@5d
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@5f
    if-eqz v5, :cond_3

    #@61
    .line 785
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@63
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@65
    const/4 v7, 0x2

    #@66
    new-array v7, v7, [F

    #@68
    .line 786
    aput v3, v7, v8

    #@6a
    aput v9, v7, v10

    #@6c
    .line 785
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@73
    .line 788
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@75
    if-eqz v5, :cond_4

    #@77
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    #@79
    if-ne v5, v10, :cond_4

    #@7b
    .line 789
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@7d
    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@7f
    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@82
    move-result v6

    #@83
    int-to-float v6, v6

    #@84
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@87
    .line 790
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@89
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@8c
    .line 791
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@8e
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@90
    new-array v7, v10, [F

    #@92
    aput v9, v7, v8

    #@94
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@9b
    .line 793
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@9d
    .line 794
    const v6, 0x10c0003

    #@a0
    .line 793
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@a7
    .line 795
    const-wide/16 v6, 0xfa

    #@a9
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    #@ac
    .line 803
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    #@ae
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@b1
    .line 804
    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@b3
    .line 805
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    #@b6
    .line 819
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@b8
    if-eqz v5, :cond_5

    #@ba
    .line 820
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@bc
    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@bf
    .line 764
    :cond_5
    return-void

    #@c0
    .line 807
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@c2
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    #@c5
    .line 808
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@c7
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@ca
    .line 809
    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@cc
    if-eqz v5, :cond_7

    #@ce
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@d0
    if-eqz v5, :cond_7

    #@d2
    .line 810
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    #@d4
    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    #@d7
    .line 812
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@d9
    if-eqz v5, :cond_8

    #@db
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    #@dd
    if-ne v5, v10, :cond_8

    #@df
    .line 813
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@e1
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    #@e4
    .line 814
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@e6
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@e9
    .line 815
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@eb
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@ee
    .line 817
    :cond_8
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    #@f0
    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    #@f3
    goto :goto_0
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    #@2
    .line 652
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getElevation()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHideOffset()I
    .locals 1

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    #@0
    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1314
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1310
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 1312
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@14
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownItemCount()I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 1308
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 1296
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@3
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 1302
    return v0

    #@b
    .line 1298
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    #@14
    move-result v0

    #@15
    :cond_0
    return v0

    #@16
    .line 1300
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@18
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 1296
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@2
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActionBar$Tab;

    #@8
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    #@0
    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    #@0
    .prologue
    .line 911
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 912
    new-instance v1, Landroid/util/TypedValue;

    #@6
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@9
    .line 913
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@e
    move-result-object v0

    #@f
    .line 914
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    #@12
    .line 915
    const/4 v4, 0x1

    #@13
    .line 914
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@16
    .line 916
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    #@18
    .line 918
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    #@1a
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    #@1f
    move-result v3

    #@20
    if-eq v3, v2, :cond_1

    #@22
    .line 919
    new-instance v3, Landroid/view/ContextThemeWrapper;

    #@24
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@26
    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@29
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    #@2b
    .line 924
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    #@2d
    return-object v3

    #@2e
    .line 921
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@30
    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    #@32
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    #@0
    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 684
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@7
    .line 685
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@b
    .line 682
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 700
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 701
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@7
    .line 702
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@a
    .line 699
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isShowing()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 864
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHeight()I

    #@5
    move-result v0

    #@6
    .line 866
    .local v0, "height":I
    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHideOffset()I

    #@f
    move-result v3

    #@10
    if-ge v3, v0, :cond_1

    #@12
    :cond_0
    :goto_0
    return v1

    #@13
    :cond_1
    move v1, v2

    #@14
    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    #@0
    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@6
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isTitleTruncated()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    #@0
    .prologue
    .line 578
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    #@5
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    #@9
    move-result v0

    #@a
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    #@d
    .line 263
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 954
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 955
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@a
    .line 956
    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@c
    .line 953
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    #@0
    .prologue
    .line 961
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 325
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    #@2
    .line 324
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    #@0
    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->cleanupTabs()V

    #@3
    .line 422
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 346
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    #@7
    .line 582
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 588
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 590
    return-void

    #@6
    .line 593
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 594
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@c
    invoke-virtual {v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    #@f
    move-result v3

    #@10
    .line 595
    .local v3, "selectedTabPosition":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@12
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    #@15
    .line 596
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@1d
    .line 597
    .local v2, "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_1

    #@1f
    .line 598
    const/4 v4, -0x1

    #@20
    invoke-virtual {v2, v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    #@23
    .line 601
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v1

    #@29
    .line 602
    .local v1, "newTabCount":I
    move v0, p1

    #@2a
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    #@2c
    .line 603
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@34
    invoke-virtual {v4, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    #@37
    .line 602
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 594
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_2
    iget v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@3c
    .restart local v3    # "selectedTabPosition":I
    goto :goto_0

    #@3d
    .line 606
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    :cond_3
    if-ne v3, p1, :cond_4

    #@3f
    .line 607
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_5

    #@47
    move-object v4, v5

    #@48
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@4b
    .line 587
    :cond_4
    return-void

    #@4c
    .line 607
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@4e
    add-int/lit8 v5, p1, -0x1

    #@50
    const/4 v6, 0x0

    #@51
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v5

    #@55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    check-cast v4, Landroid/app/ActionBar$Tab;

    #@5b
    goto :goto_2
.end method

.method public requestFocus()Z
    .locals 1

    #@0
    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->requestFocus(Landroid/view/ViewGroup;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 613
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    #@4
    move-result v2

    #@5
    const/4 v3, 0x2

    #@6
    if-eq v2, v3, :cond_1

    #@8
    .line 614
    if-eqz p1, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    #@d
    move-result v1

    #@e
    :cond_0
    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@10
    .line 615
    return-void

    #@11
    .line 618
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@13
    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_4

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 621
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@20
    if-ne v2, p1, :cond_5

    #@22
    .line 622
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 623
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@2e
    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    #@31
    .line 624
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@33
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    #@3a
    .line 637
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@3c
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_8

    #@42
    .line 612
    :cond_3
    :goto_2
    return-void

    #@43
    .line 619
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    #@45
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    #@50
    move-result-object v0

    #@51
    .local v0, "trans":Landroid/app/FragmentTransaction;
    goto :goto_0

    #@52
    .line 627
    .end local v0    # "trans":Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@54
    if-eqz p1, :cond_6

    #@56
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    #@59
    move-result v1

    #@5a
    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    #@5d
    .line 628
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@5f
    if-eqz v1, :cond_7

    #@61
    .line 629
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    #@66
    move-result-object v1

    #@67
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@69
    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    #@6c
    .line 631
    :cond_7
    check-cast p1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@6e
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@70
    .line 632
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@72
    if-eqz v1, :cond_2

    #@74
    .line 633
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@76
    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    #@79
    move-result-object v1

    #@7a
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    #@7c
    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    #@7f
    goto :goto_1

    #@80
    .line 638
    :cond_8
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    #@83
    goto :goto_2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 465
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    .line 365
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@a
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    .line 364
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    #@16
    .line 363
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    #@5
    .line 1279
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    #@0
    .prologue
    .line 1285
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1286
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    #@8
    .line 1284
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1389
    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    #@7
    .line 1387
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 380
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    #@7
    .line 379
    return-void

    #@8
    .line 380
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 451
    and-int/lit8 v0, p1, 0x4

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 452
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    #@7
    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@9
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    #@c
    .line 450
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    #@5
    move-result v0

    #@6
    .line 459
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 460
    const/4 v1, 0x1

    #@b
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    #@d
    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@f
    and-int v2, p1, p2

    #@11
    not-int v3, p2

    #@12
    and-int/2addr v3, v0

    #@13
    or-int/2addr v2, v3

    #@14
    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    #@17
    .line 457
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 390
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    #@8
    .line 389
    return-void

    #@9
    .line 390
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 375
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    #@7
    .line 374
    return-void

    #@8
    .line 375
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 385
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    #@8
    .line 384
    return-void

    #@9
    .line 385
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 370
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    #@7
    .line 369
    return-void

    #@8
    .line 370
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    #@5
    .line 253
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 254
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@b
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    #@e
    .line 251
    :cond_0
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 728
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    #@f
    .line 727
    return-void

    #@10
    .line 729
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    #@0
    .prologue
    .line 708
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 712
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    #@c
    .line 713
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    #@11
    .line 707
    return-void

    #@12
    .line 709
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    #@5
    .line 948
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    #@5
    .line 943
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    #@5
    .line 938
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 933
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    #@5
    .line 394
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    #@5
    .line 1360
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 1365
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    #@4
    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    #@7
    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@a
    .line 1290
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    #@5
    .line 1374
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 1379
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v5, -0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 1325
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@7
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@a
    move-result v0

    #@b
    .line 1326
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    #@e
    .line 1333
    :goto_0
    if-eq v0, p1, :cond_0

    #@10
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@12
    if-eqz v1, :cond_4

    #@14
    .line 1338
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@16
    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    #@19
    .line 1339
    packed-switch p1, :pswitch_data_1

    #@1c
    .line 1349
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@1e
    if-ne p1, v6, :cond_2

    #@20
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@22
    if-eqz v1, :cond_5

    #@24
    :cond_2
    move v1, v2

    #@25
    :goto_3
    invoke-interface {v4, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    #@28
    .line 1350
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@2a
    if-ne p1, v6, :cond_3

    #@2c
    iget-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    #@2e
    if-eqz v4, :cond_6

    #@30
    :cond_3
    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    #@33
    .line 1324
    return-void

    #@34
    .line 1328
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    #@37
    move-result v1

    #@38
    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@3a
    .line 1329
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@3d
    .line 1330
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@3f
    const/16 v4, 0x8

    #@41
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@44
    goto :goto_0

    #@45
    .line 1334
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@47
    if-eqz v1, :cond_0

    #@49
    .line 1335
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4b
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    #@4e
    goto :goto_1

    #@4f
    .line 1341
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    #@52
    .line 1342
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    #@54
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    #@57
    .line 1343
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@59
    if-eq v1, v5, :cond_1

    #@5b
    .line 1344
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@5d
    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    #@60
    .line 1345
    iput v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    #@62
    goto :goto_2

    #@63
    :cond_5
    move v1, v3

    #@64
    .line 1349
    goto :goto_3

    #@65
    :cond_6
    move v2, v3

    #@66
    .line 1350
    goto :goto_4

    #@67
    .line 1326
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    #@6e
    .line 1339
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    .line 418
    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    #@e
    .line 417
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/app/ActionBar$Tab;

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    #@1d
    .line 408
    :goto_0
    return-void

    #@1e
    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@20
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    #@23
    goto :goto_0

    #@24
    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    #@2
    .line 337
    if-nez p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 338
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    #@a
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@d
    .line 335
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 475
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 473
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 469
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@9
    .line 404
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    #@5
    .line 446
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    #@9
    .line 399
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 437
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@5
    .line 442
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 658
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 659
    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    #@7
    .line 660
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@a
    .line 657
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    #@0
    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 676
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    #@7
    .line 677
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    #@b
    .line 674
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 500
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 501
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@9
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@c
    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@e
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    #@11
    .line 505
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@16
    .line 506
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    #@18
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    #@21
    .line 507
    .local v0, "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_2

    #@27
    .line 510
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    #@29
    .line 511
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    #@2c
    .line 512
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@2e
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    #@31
    .line 513
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    #@34
    .line 514
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@36
    if-eqz v1, :cond_1

    #@38
    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    #@3a
    if-ne v1, v4, :cond_1

    #@3c
    .line 516
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@3e
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_1

    #@44
    .line 517
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    #@46
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    #@49
    .line 518
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4b
    if-eqz v1, :cond_1

    #@4d
    .line 519
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@52
    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    #@54
    const/16 v2, 0x20

    #@56
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    #@59
    .line 524
    return-object v0

    #@5a
    .line 526
    :cond_2
    return-object v2
.end method
