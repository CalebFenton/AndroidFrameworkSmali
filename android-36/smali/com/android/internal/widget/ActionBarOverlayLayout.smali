.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist ATTRS:[I

.field private static final blacklist EMPTY_RECT:Landroid/graphics/Rect;

.field private static final blacklist TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final blacklist ACTION_BAR_ANIMATE_DELAY:I

.field private blacklist mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private blacklist mActionBarExtendsIntoSystemInsets:Z

.field private blacklist mActionBarHeight:I

.field private blacklist mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private blacklist mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final blacklist mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private blacklist mAnimatingForFling:Z

.field private final blacklist mBaseContentInsets:Landroid/graphics/Rect;

.field private blacklist mBaseInnerInsets:Landroid/view/WindowInsets;

.field private final blacklist mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mContent:Landroid/view/View;

.field private final blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private blacklist mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private blacklist mDecorFitsSystemWindows:Z

.field private blacklist mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private blacklist mFlingEstimator:Landroid/widget/OverScroller;

.field private blacklist mHasNonEmbeddedTabs:Z

.field private blacklist mHideOnContentScroll:Z

.field private blacklist mHideOnContentScrollReference:I

.field private blacklist mIgnoreWindowContentOverlay:Z

.field private blacklist mInnerInsets:Landroid/view/WindowInsets;

.field private final blacklist mLastBaseContentInsets:Landroid/graphics/Rect;

.field private blacklist mLastBaseInnerInsets:Landroid/view/WindowInsets;

.field private blacklist mLastInnerInsets:Landroid/view/WindowInsets;

.field private blacklist mLastSystemUiVisibility:I

.field private blacklist mOverlayMode:Z

.field private final blacklist mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final blacklist mSystemInsets:Landroid/graphics/Rect;

.field private final blacklist mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private blacklist mWindowVisibility:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionBarBottom(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActionBarTop(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopAnimatorListener(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimatingForFling(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentActionBarBottomAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentActionBarTopAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhaltActionBarHideOffsetAnimations(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    const-string v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    .line 168
    const v0, 0x10102eb

    const v1, 0x1010059

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    .line 83
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 84
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 85
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 86
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorFitsSystemWindows:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    .line 92
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 99
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 113
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 128
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    .line 83
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 84
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 85
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 86
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorFitsSystemWindows:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    .line 92
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 99
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 113
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 128
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method private blacklist addActionBarHideOffset()V
    .registers 2

    .line 738
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 739
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 740
    return-void
.end method

.method private blacklist applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZZ)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "toPadding"    # Z
    .param p4, "left"    # Z
    .param p5, "top"    # Z
    .param p6, "right"    # Z
    .param p7, "bottom"    # Z

    .line 300
    if-eqz p3, :cond_16

    .line 301
    sget-object v2, Lcom/android/internal/widget/ActionBarOverlayLayout;->EMPTY_RECT:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .end local p1    # "view":Landroid/view/View;
    .end local p4    # "left":Z
    .end local p5    # "top":Z
    .end local p6    # "right":Z
    .end local p7    # "bottom":Z
    .local v1, "view":Landroid/view/View;
    .local v3, "left":Z
    .local v4, "top":Z
    .local v5, "right":Z
    .local v6, "bottom":Z
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    .line 302
    .local p1, "changed":Z
    move-object v2, p2

    .end local p2    # "insets":Landroid/graphics/Rect;
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setPadding(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p2

    move-object p4, v2

    .end local v2    # "insets":Landroid/graphics/Rect;
    .local p4, "insets":Landroid/graphics/Rect;
    or-int/2addr p1, p2

    goto :goto_29

    .line 304
    .end local v1    # "view":Landroid/view/View;
    .end local v3    # "left":Z
    .end local v4    # "top":Z
    .end local v5    # "right":Z
    .end local v6    # "bottom":Z
    .local p1, "view":Landroid/view/View;
    .restart local p2    # "insets":Landroid/graphics/Rect;
    .local p4, "left":Z
    .restart local p5    # "top":Z
    .restart local p6    # "right":Z
    .restart local p7    # "bottom":Z
    :cond_16
    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object p4, p2

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "insets":Landroid/graphics/Rect;
    .end local p5    # "top":Z
    .end local p6    # "right":Z
    .end local p7    # "bottom":Z
    .restart local v1    # "view":Landroid/view/View;
    .restart local v3    # "left":Z
    .restart local v4    # "top":Z
    .restart local v5    # "right":Z
    .restart local v6    # "bottom":Z
    .local p4, "insets":Landroid/graphics/Rect;
    sget-object v2, Lcom/android/internal/widget/ActionBarOverlayLayout;->EMPTY_RECT:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setPadding(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    .line 305
    .local p1, "changed":Z
    move-object v2, p4

    .end local p4    # "insets":Landroid/graphics/Rect;
    .restart local v2    # "insets":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p2

    or-int/2addr p1, p2

    .line 307
    :goto_29
    return p1
.end method

.method private blacklist getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 669
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_8

    .line 670
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DecorToolbar;

    return-object v0

    .line 671
    :cond_8
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_14

    .line 672
    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 674
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist haltActionBarHideOffsetAnimations()V
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 714
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_13

    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 717
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1c

    .line 718
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 720
    :cond_1c
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 187
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_34

    move v1, v2

    :cond_34
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 194
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 195
    return-void
.end method

.method private blacklist postAddActionBarHideOffset()V
    .registers 4

    .line 728
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    return-void
.end method

.method private blacklist postRemoveActionBarHideOffset()V
    .registers 4

    .line 723
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 724
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 725
    return-void
.end method

.method private blacklist removeActionBarHideOffset()V
    .registers 2

    .line 733
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 734
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 735
    return-void
.end method

.method private blacklist setMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "right"    # Z
    .param p6, "bottom"    # Z

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 329
    .local v0, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    const/4 v1, 0x0

    .line 330
    .local v1, "changed":Z
    if-eqz p3, :cond_14

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_14

    .line 331
    const/4 v1, 0x1

    .line 332
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 334
    :cond_14
    if-eqz p4, :cond_21

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_21

    .line 335
    const/4 v1, 0x1

    .line 336
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 338
    :cond_21
    if-eqz p5, :cond_2e

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2e

    .line 339
    const/4 v1, 0x1

    .line 340
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 342
    :cond_2e
    if-eqz p6, :cond_3b

    iget v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3b

    .line 343
    const/4 v1, 0x1

    .line 344
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 346
    :cond_3b
    return v1
.end method

.method private blacklist setPadding(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "right"    # Z
    .param p6, "bottom"    # Z

    .line 312
    if-eqz p3, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_28

    :cond_a
    if-eqz p4, :cond_14

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_28

    :cond_14
    if-eqz p5, :cond_1e

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_28

    :cond_1e
    if-eqz p6, :cond_52

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_52

    .line 316
    :cond_28
    nop

    .line 317
    if-eqz p3, :cond_2e

    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_32

    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 318
    :goto_32
    if-eqz p4, :cond_37

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_3b

    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 319
    :goto_3b
    if-eqz p5, :cond_40

    iget v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_44

    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 320
    :goto_44
    if-eqz p6, :cond_49

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4d

    :cond_49
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 316
    :goto_4d
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_52
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist shouldHideActionBarOnFling(FF)Z
    .registers 12
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 744
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 745
    .local v0, "finalY":I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method


# virtual methods
.method public blacklist canShowOverflowMenu()Z
    .registers 2

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 844
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 420
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public blacklist dismissPopups()V
    .registers 2

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 898
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 899
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 588
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_3d

    .line 590
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 591
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_28

    :cond_27
    move v0, v1

    .line 592
    .local v0, "top":I
    :goto_28
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 592
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 596
    .end local v0    # "top":I
    :cond_3d
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 3

    .line 405
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 415
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 410
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getActionBarHideOffset()I
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasIcon()Z
    .registers 2

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 814
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public blacklist hasLogo()Z
    .registers 2

    .line 819
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public blacklist hideOverflowMenu()Z
    .registers 2

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public blacklist initFeature(I)V
    .registers 3
    .param p1, "windowFeature"    # I

    .line 769
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 770
    sparse-switch p1, :sswitch_data_1a

    goto :goto_18

    .line 778
    :sswitch_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_18

    .line 775
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    .line 776
    goto :goto_18

    .line 772
    :sswitch_12
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    .line 773
    nop

    .line 781
    :goto_18
    return-void

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_12
        0x5 -> :sswitch_c
        0x9 -> :sswitch_7
    .end sparse-switch
.end method

.method public blacklist isHideOnContentScrollEnabled()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public blacklist isInOverlayMode()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public blacklist isOverflowMenuShowPending()Z
    .registers 2

    .line 855
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public blacklist isOverflowMenuShowing()Z
    .registers 2

    .line 849
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 850
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist notifyContentChanged()V
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 904
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 905
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 906
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 15
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v8

    .line 354
    .local v8, "vis":I
    and-int/lit16 v1, v8, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    move v9, v1

    .line 355
    .local v9, "stable":Z
    and-int/lit16 v1, v8, 0x600

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    move v10, v1

    .line 356
    .local v10, "layoutIntoSystemInsets":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->hasContentOnApplyWindowInsetsListener()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorFitsSystemWindows:Z

    .line 359
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_2a

    if-eqz v9, :cond_28

    if-eqz v10, :cond_28

    goto :goto_2a

    :cond_28
    move v1, v3

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v1, :cond_3e

    .line 363
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v9, :cond_3a

    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-nez v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v3

    :goto_3b
    invoke-interface {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 367
    :cond_3e
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v11

    .line 368
    .local v11, "sysInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/Insets;->left:I

    iget v3, v11, Landroid/graphics/Insets;->top:I

    iget v4, v11, Landroid/graphics/Insets;->right:I

    iget v5, v11, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZZ)Z

    move-result v12

    .line 373
    .local v12, "changed":Z
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_72

    .line 374
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZZ)Z

    move-result v1

    or-int/2addr v12, v1

    .line 380
    :cond_72
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 384
    const/4 v12, 0x1

    .line 385
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/view/WindowInsets;

    .line 387
    :cond_8e
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 388
    const/4 v12, 0x1

    .line 389
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    :cond_a0
    if-eqz v12, :cond_a5

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 400
    :cond_a5
    sget-object v1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v1
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 259
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 262
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 199
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 200
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 201
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    .line 559
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    .line 560
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 562
    .local v2, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    .line 563
    .local v3, "parentTop":I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 565
    .local v4, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v0, :cond_51

    .line 566
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 567
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4e

    .line 568
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 570
    .local v7, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 571
    .local v8, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 573
    .local v9, "height":I
    iget v10, v7, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 575
    .local v10, "childLeft":I
    iget-object v11, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-ne v6, v11, :cond_44

    .line 576
    sub-int v11, v4, v9

    iget v12, v7, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    .local v11, "childTop":I
    goto :goto_47

    .line 578
    .end local v11    # "childTop":I
    :cond_44
    iget v11, v7, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 581
    .restart local v11    # "childTop":I
    :goto_47
    add-int v12, v10, v8

    add-int v13, v11, v9

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 565
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "childLeft":I
    .end local v11    # "childTop":I
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 584
    .end local v5    # "i":I
    :cond_51
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "maxHeight":I
    const/4 v7, 0x0

    .line 429
    .local v7, "maxWidth":I
    const/4 v8, 0x0

    .line 431
    .local v8, "childState":I
    const/4 v9, 0x0

    .line 432
    .local v9, "topInset":I
    const/4 v10, 0x0

    .line 434
    .local v10, "bottomInset":I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 435
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 436
    .local v11, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 437
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 436
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 438
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 439
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 438
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 440
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 443
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_8f

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 446
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 447
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 446
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 448
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 449
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v11, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 448
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v8

    move-object v12, v11

    move v11, v8

    move v8, v7

    move v7, v6

    goto :goto_93

    .line 443
    :cond_8f
    move-object v12, v11

    move v11, v8

    move v8, v7

    move v7, v6

    .line 453
    .end local v6    # "maxHeight":I
    .local v7, "maxHeight":I
    .local v8, "maxWidth":I
    .local v11, "childState":I
    .local v12, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    :goto_93
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v13

    .line 454
    .local v13, "vis":I
    and-int/lit16 v1, v13, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    const/4 v1, 0x1

    goto :goto_9f

    :cond_9e
    move v1, v2

    :goto_9f
    move v14, v1

    .line 456
    .local v14, "stable":Z
    if-eqz v14, :cond_c0

    .line 459
    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 460
    .end local v9    # "topInset":I
    .local v1, "topInset":I
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-eqz v3, :cond_af

    .line 461
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    move v9, v1

    goto :goto_b0

    .line 460
    :cond_af
    move v9, v1

    .line 463
    .end local v1    # "topInset":I
    .restart local v9    # "topInset":I
    :goto_b0
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_d0

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    .line 465
    .local v1, "tabs":Landroid/view/View;
    if-eqz v1, :cond_bf

    .line 467
    iget v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v9, v3

    .line 469
    .end local v1    # "tabs":Landroid/view/View;
    :cond_bf
    goto :goto_d0

    .line 470
    :cond_c0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_d0

    .line 473
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v9

    .line 476
    :cond_d0
    :goto_d0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 478
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_f0

    .line 479
    if-eqz v14, :cond_ea

    .line 480
    iget v10, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 481
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-eqz v1, :cond_f0

    .line 482
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v1

    goto :goto_f0

    .line 485
    :cond_ea
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 494
    :cond_f0
    :goto_f0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 496
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_139

    if-nez v14, :cond_139

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_139

    .line 497
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-eqz v1, :cond_122

    .line 498
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 499
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_130

    .line 501
    :cond_122
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v9

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 502
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v10

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 505
    :goto_130
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1, v2, v9, v2, v10}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    goto :goto_188

    .line 508
    :cond_139
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-eqz v1, :cond_166

    .line 509
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 510
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 511
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 512
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 513
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 509
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    goto :goto_188

    .line 516
    :cond_166
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 517
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 518
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    add-int/2addr v3, v9

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 519
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 520
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    add-int/2addr v5, v10

    .line 516
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    .line 524
    :goto_188
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 526
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 530
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/view/WindowInsets;

    .line 531
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 534
    :cond_1a9
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 535
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 536
    .end local v12    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 537
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 536
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 538
    .end local v8    # "maxWidth":I
    .local v2, "maxWidth":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 539
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 538
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 540
    .end local v7    # "maxHeight":I
    .local v3, "maxHeight":I
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v11, v4}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v4

    .line 543
    .end local v11    # "childState":I
    .local v4, "childState":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 550
    move/from16 v5, p1

    invoke-static {v2, v5, v4}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v4, 0x10

    .line 551
    move/from16 v8, p2

    invoke-static {v3, v8, v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v7

    .line 550
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 553
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_18

    if-nez p4, :cond_7

    goto :goto_18

    .line 648
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 649
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_14

    .line 651
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    .line 653
    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 654
    return v0

    .line 646
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 624
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 625
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 626
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 615
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_15

    .line 617
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 619
    :cond_15
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 605
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    .line 608
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0

    .line 606
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .line 630
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 631
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_1c

    .line 632
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_19

    .line 633
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_1c

    .line 635
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 638
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_25

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 641
    :cond_25
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .registers 9
    .param p1, "visible"    # I

    .line 266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 268
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 269
    .local v0, "diff":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 270
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    .line 271
    .local v1, "barVisible":Z
    :goto_14
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    .line 272
    .local v4, "stable":Z
    :goto_1b
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_3c

    .line 276
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v4, :cond_28

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarExtendsIntoSystemInsets:Z

    if-nez v6, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    invoke-interface {v5, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 278
    if-nez v1, :cond_37

    if-nez v4, :cond_31

    goto :goto_37

    .line 279
    :cond_31
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3c

    .line 278
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 281
    :cond_3c
    :goto_3c
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_47

    .line 282
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_47

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 286
    :cond_47
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 290
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 291
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_e

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 295
    :cond_e
    return-void
.end method

.method blacklist pullChildren()V
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_30

    .line 659
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 660
    const v0, 0x10201e4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 662
    const v0, 0x10201e3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 663
    const v0, 0x1020544

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 666
    :cond_30
    return-void
.end method

.method public blacklist restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 891
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 892
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 893
    return-void
.end method

.method public blacklist saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 885
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 886
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 887
    return-void
.end method

.method public blacklist setActionBarHideOffset(I)V
    .registers 7
    .param p1, "offset"    # I

    .line 699
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 701
    .local v0, "topHeight":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 702
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 703
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_39

    .line 705
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 706
    .local v1, "fOffset":F
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 707
    .local v2, "bOffset":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 709
    .end local v1    # "fOffset":F
    .end local v2    # "bOffset":I
    :cond_39
    return-void
.end method

.method public blacklist setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 204
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 209
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v0, :cond_1b

    .line 210
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 211
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 215
    .end local v0    # "newVis":I
    :cond_1b
    return-void
.end method

.method public blacklist setHasNonEmbeddedTabs(Z)V
    .registers 2
    .param p1, "hasNonEmbeddedTabs"    # Z

    .line 234
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 235
    return-void
.end method

.method public blacklist setHideOnContentScrollEnabled(Z)V
    .registers 3
    .param p1, "hideOnContentScroll"    # Z

    .line 680
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_12

    .line 681
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 682
    if-nez p1, :cond_12

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    .line 684
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 688
    :cond_12
    return-void
.end method

.method public blacklist setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 827
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 833
    return-void
.end method

.method public blacklist setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 839
    return-void
.end method

.method public blacklist setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 880
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 881
    return-void
.end method

.method public blacklist setMenuPrepared()V
    .registers 2

    .line 873
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 874
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 875
    return-void
.end method

.method public blacklist setOverlayMode(Z)V
    .registers 4
    .param p1, "overlayMode"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 224
    if-eqz p1, :cond_14

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 227
    return-void
.end method

.method public blacklist setShowingForActionMode(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .line 238
    if-eqz p1, :cond_10

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x500

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    .line 250
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_14

    .line 253
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 255
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist setUiOptions(I)V
    .registers 6
    .param p1, "uiOptions"    # I

    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, "splitActionBar":Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 788
    .local v1, "splitWhenNarrow":Z
    :goto_8
    if-eqz v1, :cond_19

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11102cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 792
    :cond_19
    if-eqz v0, :cond_5b

    .line 793
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 794
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 795
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 796
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v0}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 797
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 799
    const v2, 0x10201e8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContextView;

    .line 801
    .local v2, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 802
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 803
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .end local v2    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    goto :goto_5a

    .line 804
    :cond_50
    if-eqz v0, :cond_5a

    .line 805
    const-string v2, "ActionBarOverlayLayout"

    const-string v3, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 804
    :cond_5a
    :goto_5a
    nop

    .line 809
    :cond_5b
    :goto_5b
    return-void
.end method

.method public greylist setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 751
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 752
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 753
    return-void
.end method

.method public blacklist setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 758
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 759
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showOverflowMenu()Z
    .registers 2

    .line 861
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 862
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
