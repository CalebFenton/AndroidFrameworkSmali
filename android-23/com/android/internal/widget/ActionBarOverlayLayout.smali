.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$1;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$2;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$3;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$4;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$5;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 147
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    #@2
    const-string/jumbo v1, "actionBarHideOffset"

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    #@8
    .line 146
    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    #@a
    .line 161
    const v0, 0x10102eb

    #@d
    .line 162
    const v1, 0x1010059

    #@10
    .line 160
    filled-new-array {v0, v1}, [I

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    #@16
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    #@6
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@d
    .line 76
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    #@14
    .line 77
    new-instance v0, Landroid/graphics/Rect;

    #@16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@1b
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    #@22
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    #@24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@29
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    #@30
    .line 84
    const/16 v0, 0x258

    #@32
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    #@34
    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    #@36
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@39
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@3b
    .line 106
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@40
    .line 105
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@42
    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    #@44
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@47
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    #@49
    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    #@4b
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@4e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    #@50
    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    #@53
    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    #@6
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@d
    .line 76
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    #@14
    .line 77
    new-instance v0, Landroid/graphics/Rect;

    #@16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@1b
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    #@22
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    #@24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@29
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    #@30
    .line 84
    const/16 v0, 0x258

    #@32
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    #@34
    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    #@36
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@39
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@3b
    .line 106
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    #@3d
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@40
    .line 105
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@42
    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    #@44
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@47
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    #@49
    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    #@4b
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    #@4e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    #@50
    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    #@53
    .line 170
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    #@0
    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    .line 651
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    #@5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@8
    .line 649
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    #@0
    .prologue
    .line 289
    const/4 v0, 0x0

    #@1
    .line 290
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@7
    .line 291
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    #@9
    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@b
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 292
    const/4 v0, 0x1

    #@10
    .line 293
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@12
    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@14
    .line 295
    :cond_0
    if-eqz p4, :cond_1

    #@16
    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@18
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@1a
    if-eq v2, v3, :cond_1

    #@1c
    .line 296
    const/4 v0, 0x1

    #@1d
    .line 297
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@1f
    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@21
    .line 299
    :cond_1
    if-eqz p6, :cond_2

    #@23
    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    #@25
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@27
    if-eq v2, v3, :cond_2

    #@29
    .line 300
    const/4 v0, 0x1

    #@2a
    .line 301
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@2c
    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    #@2e
    .line 303
    :cond_2
    if-eqz p5, :cond_3

    #@30
    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@32
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@34
    if-eq v2, v3, :cond_3

    #@36
    .line 304
    const/4 v0, 0x1

    #@37
    .line 305
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    #@39
    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@3b
    .line 307
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 581
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 582
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    #@6
    .end local p1    # "view":Landroid/view/View;
    return-object p1

    #@7
    .line 583
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 584
    check-cast p1, Landroid/widget/Toolbar;

    #@d
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 586
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
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 586
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

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 625
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    #@10
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@13
    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    #@19
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@1c
    .line 623
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@9
    move-result-object v1

    #@a
    sget-object v4, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    #@c
    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 177
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    #@16
    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@1c
    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@1e
    if-nez v1, :cond_0

    #@20
    move v1, v2

    #@21
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    #@24
    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2a
    move-result-object v1

    #@2b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2d
    .line 183
    const/16 v4, 0x13

    #@2f
    .line 182
    if-ge v1, v4, :cond_1

    #@31
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    #@33
    .line 185
    new-instance v1, Landroid/widget/OverScroller;

    #@35
    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@38
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    #@3a
    .line 175
    return-void

    #@3b
    :cond_0
    move v1, v3

    #@3c
    .line 179
    goto :goto_0

    #@3d
    :cond_1
    move v2, v3

    #@3e
    .line 182
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    #@0
    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    #@5
    const-wide/16 v2, 0x258

    #@7
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a
    .line 639
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    #@0
    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    #@5
    const-wide/16 v2, 0x258

    #@7
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a
    .line 634
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    #@0
    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    .line 646
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    #@5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@8
    .line 644
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    #@3
    float-to-int v4, p2

    #@4
    const/high16 v7, -0x80000000

    #@6
    const v8, 0x7fffffff

    #@9
    move v2, v1

    #@a
    move v3, v1

    #@b
    move v5, v1

    #@c
    move v6, v1

    #@d
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@10
    .line 656
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    #@12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    #@15
    move-result v9

    #@16
    .line 657
    .local v9, "finalY":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@1b
    move-result v0

    #@1c
    if-le v9, v0, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 755
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 359
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@2
    return v0
.end method

.method public dismissPopups()V
    .locals 1

    #@0
    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    #@8
    .line 807
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@4
    .line 501
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 499
    :cond_0
    :goto_0
    return-void

    #@d
    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_2

    #@15
    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    #@1a
    move-result v1

    #@1b
    int-to-float v1, v1

    #@1c
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    #@21
    move-result v2

    #@22
    add-float/2addr v1, v2

    #@23
    const/high16 v2, 0x3f000000    # 0.5f

    #@25
    add-float/2addr v1, v2

    #@26
    float-to-int v0, v1

    #@27
    .line 504
    .local v0, "top":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@29
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    #@2c
    move-result v2

    #@2d
    .line 505
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@2f
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@32
    move-result v3

    #@33
    add-int/2addr v3, v0

    #@34
    .line 504
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@37
    .line 506
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    #@39
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3c
    goto :goto_0

    #@3d
    .line 503
    .end local v0    # "top":I
    :cond_2
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "top":I
    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 344
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 354
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 349
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    #@9
    move-result v0

    #@a
    float-to-int v0, v0

    #@b
    neg-int v0, v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    #@0
    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 725
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    #@0
    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 681
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 679
    :goto_0
    return-void

    #@7
    .line 683
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@9
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    #@c
    goto :goto_0

    #@d
    .line 686
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@f
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    #@12
    goto :goto_0

    #@13
    .line 689
    :sswitch_2
    const/4 v0, 0x1

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    #@17
    goto :goto_0

    #@18
    .line 681
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@2
    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    #@2
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    #@6
    move-result v9

    #@7
    .line 315
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    #@9
    if-eqz v0, :cond_3

    #@b
    const/4 v8, 0x1

    #@c
    .line 316
    .local v8, "stable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    #@f
    move-result-object v2

    #@10
    .line 319
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@12
    const/4 v3, 0x1

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    const/4 v6, 0x1

    #@16
    move-object v0, p0

    #@17
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    #@1a
    move-result v7

    #@1b
    .line 320
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 321
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@21
    const/4 v3, 0x1

    #@22
    const/4 v4, 0x0

    #@23
    const/4 v5, 0x1

    #@24
    const/4 v6, 0x1

    #@25
    move-object v0, p0

    #@26
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    #@29
    move-result v0

    #@2a
    or-int/2addr v7, v0

    #@2b
    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@30
    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    #@32
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@34
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@37
    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    #@39
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@3b
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_1

    #@41
    .line 327
    const/4 v7, 0x1

    #@42
    .line 328
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    #@44
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@46
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@49
    .line 331
    .end local v7    # "changed":Z
    :cond_1
    if-eqz v7, :cond_2

    #@4b
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    #@4e
    .line 339
    :cond_2
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    #@50
    return-object v0

    #@51
    .line 315
    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v8    # "stable":Z
    :cond_3
    const/4 v8, 0x0

    #@52
    .restart local v8    # "stable":Z
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    #@a
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@d
    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 191
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@6
    .line 189
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    #@3
    move-result v3

    #@4
    .line 471
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    #@7
    move-result v8

    #@8
    .line 472
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    #@a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    #@d
    move-result v13

    #@e
    sub-int v9, v12, v13

    #@10
    .line 474
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    #@13
    move-result v10

    #@14
    .line 475
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    #@16
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    #@19
    move-result v13

    #@1a
    sub-int v7, v12, v13

    #@1c
    .line 477
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    #@1d
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    #@1f
    .line 478
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .line 479
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@26
    move-result v12

    #@27
    const/16 v13, 0x8

    #@29
    if-eq v12, v13, :cond_0

    #@2b
    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@31
    .line 482
    .local v6, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@34
    move-result v11

    #@35
    .line 483
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@38
    move-result v4

    #@39
    .line 485
    .local v4, "height":I
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@3b
    add-int v1, v8, v12

    #@3d
    .line 487
    .local v1, "childLeft":I
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@3f
    if-ne v0, v12, :cond_1

    #@41
    .line 488
    sub-int v12, v7, v4

    #@43
    iget v13, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@45
    sub-int v2, v12, v13

    #@47
    .line 493
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    #@49
    add-int v13, v2, v4

    #@4b
    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    #@4e
    .line 477
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@50
    goto :goto_0

    #@51
    .line 490
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@53
    add-int v2, v10, v12

    #@55
    .restart local v2    # "childTop":I
    goto :goto_1

    #@56
    .line 468
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 366
    const/4 v11, 0x0

    #@4
    .line 367
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    #@5
    .line 368
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    #@6
    .line 370
    .local v9, "childState":I
    const/4 v15, 0x0

    #@7
    .line 371
    .local v15, "topInset":I
    const/4 v8, 0x0

    #@8
    .line 373
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v6, 0x0

    #@e
    move-object/from16 v1, p0

    #@10
    move/from16 v3, p1

    #@12
    move/from16 v5, p2

    #@14
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@17
    .line 374
    move-object/from16 v0, p0

    #@19
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v10

    #@1f
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@21
    .line 376
    .local v10, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    #@23
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@25
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    #@28
    move-result v1

    #@29
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@2b
    add-int/2addr v1, v2

    #@2c
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    #@2e
    add-int/2addr v1, v2

    #@2f
    .line 375
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@32
    move-result v12

    #@33
    .line 378
    move-object/from16 v0, p0

    #@35
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@3a
    move-result v1

    #@3b
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@3d
    add-int/2addr v1, v2

    #@3e
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@40
    add-int/2addr v1, v2

    #@41
    .line 377
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    #@44
    move-result v11

    #@45
    .line 379
    move-object/from16 v0, p0

    #@47
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@49
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    #@4c
    move-result v1

    #@4d
    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    #@50
    move-result v9

    #@51
    .line 382
    move-object/from16 v0, p0

    #@53
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@55
    if-eqz v1, :cond_0

    #@57
    .line 383
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@5b
    const/4 v4, 0x0

    #@5c
    const/4 v6, 0x0

    #@5d
    move-object/from16 v1, p0

    #@5f
    move/from16 v3, p1

    #@61
    move/from16 v5, p2

    #@63
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@66
    .line 384
    move-object/from16 v0, p0

    #@68
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@6a
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6d
    move-result-object v10

    #@6e
    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@70
    .line 386
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    #@72
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@74
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    #@77
    move-result v1

    #@78
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@7a
    add-int/2addr v1, v2

    #@7b
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    #@7d
    add-int/2addr v1, v2

    #@7e
    .line 385
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@81
    move-result v12

    #@82
    .line 388
    move-object/from16 v0, p0

    #@84
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@86
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@89
    move-result v1

    #@8a
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@8c
    add-int/2addr v1, v2

    #@8d
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@8f
    add-int/2addr v1, v2

    #@90
    .line 387
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    #@93
    move-result v11

    #@94
    .line 389
    move-object/from16 v0, p0

    #@96
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@98
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    #@9b
    move-result v1

    #@9c
    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    #@9f
    move-result v9

    #@a0
    .line 392
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    #@a3
    move-result v16

    #@a4
    .line 393
    .local v16, "vis":I
    move/from16 v0, v16

    #@a6
    and-int/lit16 v1, v0, 0x100

    #@a8
    if-eqz v1, :cond_5

    #@aa
    const/4 v13, 0x1

    #@ab
    .line 395
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_6

    #@ad
    .line 398
    move-object/from16 v0, p0

    #@af
    iget v15, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    #@b1
    .line 399
    move-object/from16 v0, p0

    #@b3
    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    #@b5
    if-eqz v1, :cond_1

    #@b7
    .line 400
    move-object/from16 v0, p0

    #@b9
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@bb
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    #@be
    move-result-object v14

    #@bf
    .line 401
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_1

    #@c1
    .line 403
    move-object/from16 v0, p0

    #@c3
    iget v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    #@c5
    add-int/2addr v15, v1

    #@c6
    .line 412
    .end local v14    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@c8
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@ca
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    #@cd
    move-result v1

    #@ce
    if-eqz v1, :cond_2

    #@d0
    .line 414
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@d4
    if-eqz v1, :cond_2

    #@d6
    .line 415
    if-eqz v13, :cond_7

    #@d8
    .line 416
    move-object/from16 v0, p0

    #@da
    iget v8, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    #@dc
    .line 427
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@de
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    #@e4
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@e7
    .line 428
    move-object/from16 v0, p0

    #@e9
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    #@ef
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f2
    .line 429
    move-object/from16 v0, p0

    #@f4
    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    #@f6
    if-nez v1, :cond_3

    #@f8
    if-eqz v13, :cond_8

    #@fa
    .line 433
    :cond_3
    move-object/from16 v0, p0

    #@fc
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@fe
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@100
    add-int/2addr v2, v15

    #@101
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@103
    .line 434
    move-object/from16 v0, p0

    #@105
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@107
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@109
    add-int/2addr v2, v8

    #@10a
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@10c
    .line 436
    :goto_3
    move-object/from16 v0, p0

    #@10e
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@114
    const/4 v4, 0x1

    #@115
    const/4 v5, 0x1

    #@116
    const/4 v6, 0x1

    #@117
    const/4 v7, 0x1

    #@118
    move-object/from16 v1, p0

    #@11a
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    #@11d
    .line 438
    move-object/from16 v0, p0

    #@11f
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    #@121
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@125
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@128
    move-result v1

    #@129
    if-nez v1, :cond_4

    #@12b
    .line 442
    move-object/from16 v0, p0

    #@12d
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@133
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@136
    .line 443
    move-object/from16 v0, p0

    #@138
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@13a
    new-instance v2, Landroid/view/WindowInsets;

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    #@140
    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    #@143
    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@146
    .line 446
    :cond_4
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@14a
    const/4 v4, 0x0

    #@14b
    const/4 v6, 0x0

    #@14c
    move-object/from16 v1, p0

    #@14e
    move/from16 v3, p1

    #@150
    move/from16 v5, p2

    #@152
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@155
    .line 447
    move-object/from16 v0, p0

    #@157
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@159
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15c
    move-result-object v10

    #@15d
    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    #@15f
    .line 449
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    #@161
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@163
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@166
    move-result v1

    #@167
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    #@169
    add-int/2addr v1, v2

    #@16a
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    #@16c
    add-int/2addr v1, v2

    #@16d
    .line 448
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@170
    move-result v12

    #@171
    .line 451
    move-object/from16 v0, p0

    #@173
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@175
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@178
    move-result v1

    #@179
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    #@17b
    add-int/2addr v1, v2

    #@17c
    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    #@17e
    add-int/2addr v1, v2

    #@17f
    .line 450
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    #@182
    move-result v11

    #@183
    .line 452
    move-object/from16 v0, p0

    #@185
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@187
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    #@18a
    move-result v1

    #@18b
    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    #@18e
    move-result v9

    #@18f
    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    #@192
    move-result v1

    #@193
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    #@196
    move-result v2

    #@197
    add-int/2addr v1, v2

    #@198
    add-int/2addr v12, v1

    #@199
    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    #@19c
    move-result v1

    #@19d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    #@1a0
    move-result v2

    #@1a1
    add-int/2addr v1, v2

    #@1a2
    add-int/2addr v11, v1

    #@1a3
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    #@1a6
    move-result v1

    #@1a7
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    #@1aa
    move-result v11

    #@1ab
    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    #@1ae
    move-result v1

    #@1af
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    #@1b2
    move-result v12

    #@1b3
    .line 462
    move/from16 v0, p1

    #@1b5
    invoke-static {v12, v0, v9}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    #@1b8
    move-result v1

    #@1b9
    .line 464
    shl-int/lit8 v2, v9, 0x10

    #@1bb
    .line 463
    move/from16 v0, p2

    #@1bd
    invoke-static {v11, v0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    #@1c0
    move-result v2

    #@1c1
    .line 462
    move-object/from16 v0, p0

    #@1c3
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    #@1c6
    .line 363
    return-void

    #@1c7
    .line 393
    .end local v13    # "stable":Z
    :cond_5
    const/4 v13, 0x0

    #@1c8
    .restart local v13    # "stable":Z
    goto/16 :goto_0

    #@1ca
    .line 406
    :cond_6
    move-object/from16 v0, p0

    #@1cc
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@1ce
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@1d1
    move-result v1

    #@1d2
    const/16 v2, 0x8

    #@1d4
    if-eq v1, v2, :cond_1

    #@1d6
    .line 409
    move-object/from16 v0, p0

    #@1d8
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@1da
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@1dd
    move-result v15

    #@1de
    goto/16 :goto_1

    #@1e0
    .line 418
    :cond_7
    move-object/from16 v0, p0

    #@1e2
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@1e4
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    #@1e7
    move-result v8

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 430
    :cond_8
    move-object/from16 v0, p0

    #@1ec
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@1ee
    iget v2, v1, Landroid/graphics/Rect;->top:I

    #@1f0
    add-int/2addr v2, v15

    #@1f1
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@1f3
    .line 431
    move-object/from16 v0, p0

    #@1f5
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    #@1f7
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    #@1f9
    add-int/2addr v2, v8

    #@1fa
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@1fc
    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 557
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    if-eqz p4, :cond_0

    #@7
    .line 560
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    #@10
    .line 565
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    #@12
    .line 566
    return v1

    #@13
    .line 558
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 563
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    #@18
    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 536
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    #@2
    add-int/2addr v0, p3

    #@3
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    #@5
    .line 537
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    #@a
    .line 535
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@3
    .line 526
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    #@9
    .line 527
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@c
    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@12
    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    #@15
    .line 524
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 517
    and-int/lit8 v0, p3, 0x2

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 518
    :cond_0
    return v1

    #@e
    .line 520
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@10
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    #@3
    .line 543
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 550
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@11
    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    #@14
    .line 541
    :cond_1
    return-void

    #@15
    .line 544
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    #@17
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@1c
    move-result v1

    #@1d
    if-gt v0, v1, :cond_3

    #@1f
    .line 545
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    #@22
    goto :goto_0

    #@23
    .line 547
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    #@26
    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5
    .param p1, "visible"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    #@4
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@7
    .line 259
    iget v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    #@9
    xor-int v1, v4, p1

    #@b
    .line 260
    .local v1, "diff":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    #@d
    .line 261
    and-int/lit8 v4, p1, 0x4

    #@f
    if-nez v4, :cond_2

    #@11
    const/4 v0, 0x1

    #@12
    .line 262
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v4, p1, 0x100

    #@14
    if-eqz v4, :cond_3

    #@16
    const/4 v2, 0x1

    #@17
    .line 263
    .local v2, "stable":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@1d
    if-eqz v2, :cond_4

    #@1f
    :goto_2
    invoke-interface {v4, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    #@22
    .line 268
    if-nez v0, :cond_5

    #@24
    if-eqz v2, :cond_5

    #@26
    .line 269
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@28
    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    #@2b
    .line 271
    :cond_0
    :goto_3
    and-int/lit16 v3, v1, 0x100

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 272
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@36
    .line 256
    :cond_1
    return-void

    #@37
    .line 261
    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_2
    const/4 v0, 0x0

    #@38
    .restart local v0    # "barVisible":Z
    goto :goto_0

    #@39
    .line 262
    :cond_3
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "stable":Z
    goto :goto_1

    #@3b
    .line 267
    :cond_4
    const/4 v3, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 268
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@3f
    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    #@42
    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    #@3
    .line 281
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    #@5
    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@b
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    #@e
    .line 279
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 571
    const v0, 0x1020002

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    #@d
    .line 573
    const v0, 0x10203af

    #@10
    .line 572
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    #@16
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@18
    .line 574
    const v0, 0x10203b0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@25
    .line 576
    const v0, 0x10203b2

    #@28
    .line 575
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    #@2e
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@30
    .line 569
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 802
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@8
    .line 801
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 796
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@8
    .line 795
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@3
    .line 612
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@5
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@8
    move-result v2

    #@9
    .line 613
    .local v2, "topHeight":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@11
    move-result p1

    #@12
    .line 614
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    #@14
    neg-int v4, p1

    #@15
    int-to-float v4, v4

    #@16
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@19
    .line 615
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@1b
    if-eqz v3, :cond_0

    #@1d
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@1f
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    #@22
    move-result v3

    #@23
    const/16 v4, 0x8

    #@25
    if-eq v3, v4, :cond_0

    #@27
    .line 617
    int-to-float v3, p1

    #@28
    int-to-float v4, v2

    #@29
    div-float v1, v3, v4

    #@2b
    .line 618
    .local v1, "fOffset":F
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@2d
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    #@30
    move-result v3

    #@31
    int-to-float v3, v3

    #@32
    mul-float/2addr v3, v1

    #@33
    float-to-int v0, v3

    #@34
    .line 619
    .local v0, "bOffset":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@36
    int-to-float v4, v0

    #@37
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    #@3a
    .line 610
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@2
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    #@a
    iget v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    #@c
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    #@f
    .line 200
    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 201
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    #@15
    .line 202
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    #@18
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    #@1b
    .line 194
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    #@0
    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    #@2
    .line 224
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    #@0
    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 593
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    #@6
    .line 594
    if-nez p1, :cond_0

    #@8
    .line 595
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    #@b
    .line 596
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    #@e
    .line 597
    const/4 v0, 0x0

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    #@12
    .line 591
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    #@8
    .line 735
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 741
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    #@8
    .line 747
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@8
    .line 789
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    #@0
    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    #@8
    .line 783
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 3
    .param p1, "overlayMode"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 209
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    #@3
    .line 215
    if-eqz p1, :cond_0

    #@5
    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v1

    #@d
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    .line 217
    const/16 v2, 0x13

    #@11
    .line 216
    if-ge v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 215
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    #@16
    .line 208
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .param p1, "showing"    # Z

    #@0
    .prologue
    .line 229
    if-eqz p1, :cond_1

    #@2
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0x500

    #@8
    .line 240
    const/16 v1, 0x500

    #@a
    .line 238
    if-ne v0, v1, :cond_0

    #@c
    .line 241
    const/4 v0, 0x4

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    #@10
    .line 228
    :cond_0
    :goto_0
    return-void

    #@11
    .line 244
    :cond_1
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    #@15
    goto :goto_0
.end method

.method public setUiOptions(I)V
    .locals 5
    .param p1, "uiOptions"    # I

    #@0
    .prologue
    .line 696
    const/4 v1, 0x0

    #@1
    .line 698
    .local v1, "splitActionBar":Z
    and-int/lit8 v3, p1, 0x1

    #@3
    if-eqz v3, :cond_2

    #@5
    const/4 v2, 0x1

    #@6
    .line 699
    .local v2, "splitWhenNarrow":Z
    :goto_0
    if-eqz v2, :cond_0

    #@8
    .line 700
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v3

    #@10
    .line 701
    const v4, 0x1120005

    #@13
    .line 700
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@16
    move-result v1

    #@17
    .line 703
    .end local v1    # "splitActionBar":Z
    :cond_0
    if-eqz v1, :cond_1

    #@19
    .line 704
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@1c
    .line 705
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@1e
    if-eqz v3, :cond_3

    #@20
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@22
    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_3

    #@28
    .line 706
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@2a
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@2c
    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    #@2f
    .line 707
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@31
    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    #@34
    .line 708
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@36
    invoke-interface {v3, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    #@39
    .line 711
    const v3, 0x10203b1

    #@3c
    .line 710
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    #@42
    .line 712
    .local v0, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    #@44
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    #@47
    .line 713
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    #@4a
    .line 714
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    #@4d
    .line 695
    .end local v0    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_1
    :goto_1
    return-void

    #@4e
    .line 698
    .end local v2    # "splitWhenNarrow":Z
    .restart local v1    # "splitActionBar":Z
    :cond_2
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "splitWhenNarrow":Z
    goto :goto_0

    #@50
    .line 715
    .end local v1    # "splitActionBar":Z
    :cond_3
    if-eqz v1, :cond_1

    #@52
    .line 716
    const-string/jumbo v3, "ActionBarOverlayLayout"

    #@55
    const-string/jumbo v4, "Requested split action bar with incompatible window decor! Ignoring request."

    #@58
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    goto :goto_1
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    #@8
    .line 661
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@8
    .line 667
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 512
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    #@3
    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    #@5
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    #@8
    move-result v0

    #@9
    return v0
.end method
