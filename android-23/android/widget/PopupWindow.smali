.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$1;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private final mDrawingLocation:[I

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private final mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PopupWindow;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/PopupWindow;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/PopupWindow;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/PopupWindow;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "aboveAnchor"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 158
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 159
    const v1, 0x10100aa

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 158
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    #@b
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@5
    .line 265
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 293
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@4
    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 192
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 201
    const v0, 0x1010076

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 210
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v6, -0x2

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 94
    new-array v5, v10, [I

    #@a
    iput-object v5, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@c
    .line 95
    new-array v5, v10, [I

    #@e
    iput-object v5, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@10
    .line 96
    new-instance v5, Landroid/graphics/Rect;

    #@12
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@17
    .line 115
    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@19
    .line 116
    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1b
    .line 117
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1d
    .line 118
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@1f
    .line 119
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@21
    .line 120
    iput v9, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@23
    .line 123
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@25
    .line 124
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@27
    .line 126
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@29
    .line 127
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@2b
    .line 132
    iput v6, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2d
    .line 135
    iput v6, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2f
    .line 151
    const/16 v5, 0x3e8

    #@31
    iput v5, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@33
    .line 154
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@35
    .line 156
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@37
    .line 164
    new-instance v5, Landroid/widget/PopupWindow$1;

    #@39
    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    #@3c
    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@3e
    .line 219
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@40
    .line 220
    const-string/jumbo v5, "window"

    #@43
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    check-cast v5, Landroid/view/WindowManager;

    #@49
    iput-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@4b
    .line 223
    sget-object v5, Lcom/android/internal/R$styleable;->PopupWindow:[I

    #@4d
    .line 222
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@50
    move-result-object v0

    #@51
    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@54
    move-result-object v2

    #@55
    .line 225
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    #@56
    const/4 v6, 0x3

    #@57
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5a
    move-result v5

    #@5b
    iput v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@5d
    .line 226
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result v5

    #@61
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@63
    .line 231
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@66
    move-result v5

    #@67
    if-eqz v5, :cond_1

    #@69
    .line 232
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6c
    move-result v1

    #@6d
    .line 233
    .local v1, "animStyle":I
    const v5, 0x10302ec

    #@70
    if-ne v1, v5, :cond_0

    #@72
    .line 234
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@74
    .line 243
    .end local v1    # "animStyle":I
    :goto_0
    const/4 v5, 0x4

    #@75
    .line 242
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@78
    move-result v5

    #@79
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    #@7c
    move-result-object v3

    #@7d
    .line 245
    .local v3, "enterTransition":Landroid/transition/Transition;
    const/4 v5, 0x5

    #@7e
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@81
    move-result v5

    #@82
    if-eqz v5, :cond_2

    #@84
    .line 247
    const/4 v5, 0x5

    #@85
    .line 246
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@88
    move-result v5

    #@89
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    #@8c
    move-result-object v4

    #@8d
    .line 252
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@90
    .line 254
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    #@93
    .line 255
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    #@96
    .line 256
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@99
    .line 218
    return-void

    #@9a
    .line 236
    .end local v3    # "enterTransition":Landroid/transition/Transition;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@9c
    goto :goto_0

    #@9d
    .line 239
    .end local v1    # "animStyle":I
    :cond_1
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@9f
    goto :goto_0

    #@a0
    .line 249
    .restart local v3    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v3, :cond_3

    #@a2
    const/4 v4, 0x0

    #@a3
    .local v4, "exitTransition":Landroid/transition/Transition;
    goto :goto_1

    #@a4
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@a7
    move-result-object v4

    #@a8
    .local v4, "exitTransition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 279
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@4
    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 309
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    #@4
    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, -0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 94
    new-array v0, v5, [I

    #@a
    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@c
    .line 95
    new-array v0, v5, [I

    #@e
    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@10
    .line 96
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@17
    .line 115
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@19
    .line 116
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1b
    .line 117
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1d
    .line 118
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@1f
    .line 119
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@21
    .line 120
    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@23
    .line 123
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@25
    .line 124
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@27
    .line 126
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@29
    .line 127
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@2b
    .line 132
    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2d
    .line 135
    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2f
    .line 151
    const/16 v0, 0x3e8

    #@31
    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@33
    .line 154
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@35
    .line 156
    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@37
    .line 164
    new-instance v0, Landroid/widget/PopupWindow$1;

    #@39
    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    #@3c
    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@3e
    .line 325
    if-eqz p1, :cond_0

    #@40
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@46
    .line 327
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@48
    const-string/jumbo v1, "window"

    #@4b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/view/WindowManager;

    #@51
    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@53
    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@56
    .line 331
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@59
    .line 332
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@5c
    .line 333
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@5f
    .line 324
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    #@0
    .prologue
    .line 1367
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 1368
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1369
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1370
    const v0, 0x10302e4

    #@10
    .line 1369
    :goto_0
    return v0

    #@11
    .line 1371
    :cond_0
    const v0, 0x10302e3

    #@14
    goto :goto_0

    #@15
    .line 1373
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 1375
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@19
    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    #@0
    .prologue
    const/high16 v2, 0x20000

    #@2
    .line 1320
    const v0, -0x868219

    #@5
    and-int/2addr p1, v0

    #@6
    .line 1328
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1329
    const v0, 0x8000

    #@d
    or-int/2addr p1, v0

    #@e
    .line 1331
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@10
    if-nez v0, :cond_a

    #@12
    .line 1332
    or-int/lit8 p1, p1, 0x8

    #@14
    .line 1333
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@16
    const/4 v1, 0x1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 1334
    or-int/2addr p1, v2

    #@1a
    .line 1339
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1340
    or-int/lit8 p1, p1, 0x10

    #@20
    .line 1342
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 1343
    const/high16 v0, 0x40000

    #@26
    or-int/2addr p1, v0

    #@27
    .line 1345
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@29
    if-nez v0, :cond_4

    #@2b
    .line 1346
    or-int/lit16 p1, p1, 0x200

    #@2d
    .line 1348
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_5

    #@33
    .line 1349
    const/high16 v0, 0x800000

    #@35
    or-int/2addr p1, v0

    #@36
    .line 1351
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@38
    if-eqz v0, :cond_6

    #@3a
    .line 1352
    or-int/lit16 p1, p1, 0x100

    #@3c
    .line 1354
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@3e
    if-eqz v0, :cond_7

    #@40
    .line 1355
    const/high16 v0, 0x10000

    #@42
    or-int/2addr p1, v0

    #@43
    .line 1357
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    #@45
    if-eqz v0, :cond_8

    #@47
    .line 1358
    or-int/lit8 p1, p1, 0x20

    #@49
    .line 1360
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@4b
    if-eqz v0, :cond_9

    #@4d
    .line 1361
    const/high16 v0, 0x40000000    # 2.0f

    #@4f
    or-int/2addr p1, v0

    #@50
    .line 1363
    :cond_9
    return p1

    #@51
    .line 1336
    :cond_a
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@53
    const/4 v1, 0x2

    #@54
    if-ne v0, v1, :cond_1

    #@56
    .line 1337
    or-int/2addr p1, v2

    #@57
    goto :goto_0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1201
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v2

    #@6
    .line 1203
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    #@8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@a
    const/4 v5, -0x2

    #@b
    if-ne v4, v5, :cond_0

    #@d
    .line 1204
    const/4 v1, -0x2

    #@e
    .line 1209
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    #@10
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@12
    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    #@15
    .line 1210
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@17
    .line 1211
    const/4 v4, -0x1

    #@18
    .line 1210
    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1b
    .line 1212
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1e
    .line 1214
    return-object v0

    #@1f
    .line 1206
    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    #@20
    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1224
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v2

    #@7
    .line 1226
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    #@9
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b
    const/4 v4, -0x2

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 1227
    const/4 v1, -0x2

    #@f
    .line 1232
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    #@11
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    #@16
    .line 1233
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    #@17
    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    #@1a
    .line 1234
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    #@1d
    .line 1235
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    #@20
    .line 1237
    return-object v0

    #@21
    .line 1229
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    #@22
    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1282
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@5
    .line 1288
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    #@8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@a
    .line 1289
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@c
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@f
    move-result v1

    #@10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    .line 1290
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16
    .line 1291
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    .line 1292
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@1c
    .line 1293
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@1f
    move-result v1

    #@20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@22
    .line 1295
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1296
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@28
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2b
    move-result v1

    #@2c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@2e
    .line 1301
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@30
    if-gez v1, :cond_1

    #@32
    .line 1302
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@34
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@38
    .line 1307
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@3a
    if-gez v1, :cond_2

    #@3c
    .line 1308
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@3e
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@40
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@42
    .line 1314
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "PopupWindow:"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    #@51
    move-result v2

    #@52
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@61
    .line 1316
    return-object v0

    #@62
    .line 1298
    :cond_0
    const/4 v1, -0x3

    #@63
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@65
    goto :goto_0

    #@66
    .line 1304
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@68
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@6a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@6c
    goto :goto_1

    #@6d
    .line 1310
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@6f
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@71
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@73
    goto :goto_2
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1644
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1645
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@9
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@c
    .line 1648
    :cond_0
    if-eqz p2, :cond_1

    #@e
    .line 1649
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@11
    .line 1654
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@13
    .line 1655
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@15
    .line 1656
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@18
    .line 1640
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    #@0
    .prologue
    .line 1396
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result v1

    #@4
    .line 1397
    .local v1, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    #@7
    move-result v2

    #@8
    .line 1398
    .local v2, "anchorWidth":I
    move-object/from16 v0, p0

    #@a
    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@c
    if-eqz v14, :cond_0

    #@e
    .line 1399
    sub-int p4, p4, v1

    #@10
    .line 1402
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    #@19
    .line 1403
    move-object/from16 v0, p0

    #@1b
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@1d
    const/4 v15, 0x0

    #@1e
    aget v14, v14, v15

    #@20
    add-int v14, v14, p3

    #@22
    move-object/from16 v0, p2

    #@24
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@26
    .line 1404
    move-object/from16 v0, p0

    #@28
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@2a
    const/4 v15, 0x1

    #@2b
    aget v14, v14, v15

    #@2d
    add-int/2addr v14, v1

    #@2e
    add-int v14, v14, p4

    #@30
    move-object/from16 v0, p2

    #@32
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@34
    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    #@37
    move-result v14

    #@38
    move/from16 v0, p5

    #@3a
    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@3d
    move-result v14

    #@3e
    and-int/lit8 v5, v14, 0x7

    #@40
    .line 1408
    .local v5, "hgrav":I
    const/4 v14, 0x5

    #@41
    if-ne v5, v14, :cond_1

    #@43
    .line 1411
    move-object/from16 v0, p2

    #@45
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@47
    move-object/from16 v0, p0

    #@49
    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@4b
    sub-int/2addr v15, v2

    #@4c
    sub-int/2addr v14, v15

    #@4d
    move-object/from16 v0, p2

    #@4f
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@51
    .line 1414
    :cond_1
    const/4 v6, 0x0

    #@52
    .line 1416
    .local v6, "onTop":Z
    const/16 v14, 0x33

    #@54
    move-object/from16 v0, p2

    #@56
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@58
    .line 1418
    move-object/from16 v0, p0

    #@5a
    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@5c
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    #@61
    .line 1419
    new-instance v3, Landroid/graphics/Rect;

    #@63
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@66
    .line 1420
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@6b
    .line 1422
    move-object/from16 v0, p0

    #@6d
    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@6f
    const/4 v15, 0x1

    #@70
    aget v14, v14, v15

    #@72
    add-int/2addr v14, v1

    #@73
    add-int v11, v14, p4

    #@75
    .line 1423
    .local v11, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@78
    move-result-object v10

    #@79
    .line 1424
    .local v10, "root":Landroid/view/View;
    move-object/from16 v0, p0

    #@7b
    iget v14, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@7d
    add-int/2addr v14, v11

    #@7e
    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    #@80
    if-gt v14, v15, :cond_2

    #@82
    .line 1425
    move-object/from16 v0, p2

    #@84
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@86
    move-object/from16 v0, p0

    #@88
    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@8a
    add-int/2addr v14, v15

    #@8b
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    #@8e
    move-result v15

    #@8f
    sub-int/2addr v14, v15

    #@90
    if-lez v14, :cond_5

    #@92
    .line 1429
    :cond_2
    move-object/from16 v0, p0

    #@94
    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@96
    if-eqz v14, :cond_3

    #@98
    .line 1430
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    #@9b
    move-result v12

    #@9c
    .line 1431
    .local v12, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    #@9f
    move-result v13

    #@a0
    .line 1432
    .local v13, "scrollY":I
    new-instance v8, Landroid/graphics/Rect;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@a6
    add-int/2addr v14, v12

    #@a7
    add-int v14, v14, p3

    #@a9
    .line 1433
    move-object/from16 v0, p0

    #@ab
    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@ad
    add-int/2addr v15, v13

    #@ae
    add-int/2addr v15, v1

    #@af
    add-int v15, v15, p4

    #@b1
    .line 1432
    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    #@b4
    .line 1434
    .local v8, "r":Landroid/graphics/Rect;
    const/4 v14, 0x1

    #@b5
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v8, v14}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    #@ba
    .line 1439
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v12    # "scrollX":I
    .end local v13    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    #@bc
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@be
    move-object/from16 v0, p1

    #@c0
    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    #@c3
    .line 1440
    move-object/from16 v0, p0

    #@c5
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@c7
    const/4 v15, 0x0

    #@c8
    aget v14, v14, v15

    #@ca
    add-int v14, v14, p3

    #@cc
    move-object/from16 v0, p2

    #@ce
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@d0
    .line 1441
    move-object/from16 v0, p0

    #@d2
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@d4
    const/4 v15, 0x1

    #@d5
    aget v14, v14, v15

    #@d7
    add-int/2addr v14, v1

    #@d8
    add-int v14, v14, p4

    #@da
    move-object/from16 v0, p2

    #@dc
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@de
    .line 1444
    const/4 v14, 0x5

    #@df
    if-ne v5, v14, :cond_4

    #@e1
    .line 1445
    move-object/from16 v0, p2

    #@e3
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@e9
    sub-int/2addr v15, v2

    #@ea
    sub-int/2addr v14, v15

    #@eb
    move-object/from16 v0, p2

    #@ed
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@ef
    .line 1449
    :cond_4
    move-object/from16 v0, p0

    #@f1
    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f8
    .line 1450
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@fe
    const/16 v16, 0x1

    #@100
    aget v15, v15, v16

    #@102
    sub-int/2addr v14, v15

    #@103
    sub-int/2addr v14, v1

    #@104
    sub-int v14, v14, p4

    #@106
    .line 1451
    move-object/from16 v0, p0

    #@108
    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@10a
    const/16 v16, 0x1

    #@10c
    aget v15, v15, v16

    #@10e
    sub-int v15, v15, p4

    #@110
    iget v0, v3, Landroid/graphics/Rect;->top:I

    #@112
    move/from16 v16, v0

    #@114
    sub-int v15, v15, v16

    #@116
    .line 1450
    if-ge v14, v15, :cond_9

    #@118
    const/4 v6, 0x1

    #@119
    .line 1452
    :goto_0
    if-eqz v6, :cond_a

    #@11b
    .line 1453
    const/16 v14, 0x53

    #@11d
    move-object/from16 v0, p2

    #@11f
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@121
    .line 1454
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    #@124
    move-result v14

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v15, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@129
    const/16 v16, 0x1

    #@12b
    aget v15, v15, v16

    #@12d
    sub-int/2addr v14, v15

    #@12e
    add-int v14, v14, p4

    #@130
    move-object/from16 v0, p2

    #@132
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@134
    .line 1460
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    #@136
    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@138
    if-eqz v14, :cond_8

    #@13a
    .line 1461
    iget v14, v3, Landroid/graphics/Rect;->right:I

    #@13c
    iget v15, v3, Landroid/graphics/Rect;->left:I

    #@13e
    sub-int v4, v14, v15

    #@140
    .line 1462
    .local v4, "displayFrameWidth":I
    move-object/from16 v0, p2

    #@142
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@144
    move-object/from16 v0, p2

    #@146
    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@148
    add-int v9, v14, v15

    #@14a
    .line 1463
    .local v9, "right":I
    if-le v9, v4, :cond_6

    #@14c
    .line 1464
    move-object/from16 v0, p2

    #@14e
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@150
    sub-int v15, v9, v4

    #@152
    sub-int/2addr v14, v15

    #@153
    move-object/from16 v0, p2

    #@155
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@157
    .line 1467
    :cond_6
    move-object/from16 v0, p2

    #@159
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@15b
    iget v15, v3, Landroid/graphics/Rect;->left:I

    #@15d
    if-ge v14, v15, :cond_7

    #@15f
    .line 1468
    iget v14, v3, Landroid/graphics/Rect;->left:I

    #@161
    move-object/from16 v0, p2

    #@163
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@165
    .line 1469
    move-object/from16 v0, p2

    #@167
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@169
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    #@16c
    move-result v14

    #@16d
    move-object/from16 v0, p2

    #@16f
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@171
    .line 1472
    :cond_7
    if-eqz v6, :cond_b

    #@173
    .line 1473
    move-object/from16 v0, p0

    #@175
    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    #@177
    const/4 v15, 0x1

    #@178
    aget v14, v14, v15

    #@17a
    add-int v14, v14, p4

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@180
    sub-int v7, v14, v15

    #@182
    .line 1474
    .local v7, "popupTop":I
    if-gez v7, :cond_8

    #@184
    .line 1475
    move-object/from16 v0, p2

    #@186
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@188
    add-int/2addr v14, v7

    #@189
    move-object/from16 v0, p2

    #@18b
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@18d
    .line 1482
    .end local v4    # "displayFrameWidth":I
    .end local v7    # "popupTop":I
    .end local v9    # "right":I
    :cond_8
    :goto_2
    move-object/from16 v0, p2

    #@18f
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@191
    const/high16 v15, 0x10000000

    #@193
    or-int/2addr v14, v15

    #@194
    move-object/from16 v0, p2

    #@196
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@198
    .line 1484
    return v6

    #@199
    .line 1450
    :cond_9
    const/4 v6, 0x0

    #@19a
    goto/16 :goto_0

    #@19c
    .line 1456
    :cond_a
    move-object/from16 v0, p0

    #@19e
    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@1a0
    const/4 v15, 0x1

    #@1a1
    aget v14, v14, v15

    #@1a3
    add-int/2addr v14, v1

    #@1a4
    add-int v14, v14, p4

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1aa
    goto :goto_1

    #@1ab
    .line 1478
    .restart local v4    # "displayFrameWidth":I
    .restart local v9    # "right":I
    :cond_b
    move-object/from16 v0, p2

    #@1ad
    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1af
    iget v15, v3, Landroid/graphics/Rect;->top:I

    #@1b1
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    #@1b4
    move-result v14

    #@1b5
    move-object/from16 v0, p2

    #@1b7
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1b9
    goto :goto_2
.end method

.method private getRelativeAnchorBounds()Landroid/graphics/Rect;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1621
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@5
    if-eqz v5, :cond_1

    #@7
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@9
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/View;

    #@f
    .line 1622
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@11
    .line 1623
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@13
    if-nez v3, :cond_2

    #@15
    .line 1624
    :cond_0
    return-object v6

    #@16
    .line 1621
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@17
    .local v0, "anchor":Landroid/view/View;
    goto :goto_0

    #@18
    .line 1627
    .end local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    #@1b
    move-result-object v1

    #@1c
    .line 1628
    .local v1, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1e
    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    #@21
    move-result-object v4

    #@22
    .line 1631
    .local v4, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    #@24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@27
    move-result v5

    #@28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@2b
    move-result v6

    #@2c
    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2f
    .line 1632
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    #@31
    aget v6, v4, v7

    #@33
    sub-int/2addr v5, v6

    #@34
    aget v6, v1, v8

    #@36
    aget v7, v4, v8

    #@38
    sub-int/2addr v6, v7

    #@39
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    #@3c
    .line 1633
    return-object v2
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 5
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 345
    if-eqz p1, :cond_2

    #@3
    const/high16 v3, 0x10f0000

    #@5
    if-eq p1, v3, :cond_2

    #@7
    .line 346
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@c
    move-result-object v0

    #@d
    .line 347
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@10
    move-result-object v2

    #@11
    .line 348
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_2

    #@13
    .line 349
    instance-of v3, v2, Landroid/transition/TransitionSet;

    #@15
    if-eqz v3, :cond_1

    #@17
    move-object v3, v2

    #@18
    .line 350
    check-cast v3, Landroid/transition/TransitionSet;

    #@1a
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    .line 351
    .local v1, "isEmpty":Z
    :goto_0
    if-nez v1, :cond_2

    #@23
    .line 352
    return-object v2

    #@24
    .line 350
    .end local v1    # "isEmpty":Z
    :cond_0
    const/4 v1, 0x0

    #@25
    .restart local v1    # "isEmpty":Z
    goto :goto_0

    #@26
    .line 349
    .end local v1    # "isEmpty":Z
    :cond_1
    const/4 v1, 0x0

    #@27
    .restart local v1    # "isEmpty":Z
    goto :goto_0

    #@28
    .line 356
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_2
    return-object v4
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1249
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1250
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@c
    .line 1253
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    .line 1254
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    #@13
    .line 1256
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@16
    .line 1258
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@18
    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .line 1260
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 1261
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    #@24
    .line 1248
    :cond_1
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1157
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1158
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 1157
    :cond_1
    iget-object v2, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1164
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 1165
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1c
    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    #@1f
    .line 1170
    :cond_2
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 1171
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@25
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@2b
    .line 1172
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@2d
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2f
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@32
    .line 1177
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@34
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    #@37
    move-result-object v2

    #@38
    iput-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@3a
    .line 1180
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@3c
    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@3e
    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    #@41
    .line 1184
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@43
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    #@46
    move-result v2

    #@47
    const/high16 v3, 0x40000000    # 2.0f

    #@49
    mul-float/2addr v2, v3

    #@4a
    float-to-double v2, v2

    #@4b
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@4e
    move-result-wide v2

    #@4f
    double-to-int v0, v2

    #@50
    .line 1185
    .local v0, "surfaceInset":I
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@55
    .line 1186
    iput-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@57
    .line 1189
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@59
    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    #@5c
    move-result v2

    #@5d
    const/4 v3, 0x2

    #@5e
    if-ne v2, v3, :cond_4

    #@60
    .line 1188
    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    #@62
    .line 1190
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@64
    iput v1, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@66
    .line 1191
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@68
    iput v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@6a
    .line 1156
    return-void

    #@6b
    .line 1174
    .end local v0    # "surfaceInset":I
    :cond_3
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@6d
    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@6f
    goto :goto_0

    #@70
    .line 1189
    .restart local v0    # "surfaceInset":I
    :cond_4
    const/4 v1, 0x0

    #@71
    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    #@0
    .prologue
    .line 1916
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    #@3
    .line 1918
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@a
    .line 1920
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    .line 1921
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    #@10
    .line 1922
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@15
    .line 1925
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@17
    .line 1926
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@19
    .line 1927
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@1b
    .line 1915
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    #@0
    .prologue
    .line 1266
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1267
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    .line 1268
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@e
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1269
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    #@1b
    .line 1265
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1905
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@3
    .line 1906
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_1

    #@5
    const/4 v0, 0x0

    #@6
    .line 1907
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 1908
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@b
    move-result-object v2

    #@c
    .line 1909
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@e
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@11
    .line 1912
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@13
    .line 1904
    return-void

    #@14
    .line 1906
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/view/View;

    #@1a
    .local v0, "anchor":Landroid/view/View;
    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    #@0
    .prologue
    .line 1853
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@a
    if-nez v4, :cond_1

    #@c
    .line 1854
    :cond_0
    return-void

    #@d
    .line 1857
    :cond_1
    move-object/from16 v0, p0

    #@f
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@11
    .line 1858
    .local v14, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    #@13
    move-object/from16 v0, p0

    #@15
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@17
    move/from16 v0, p3

    #@19
    if-ne v4, v0, :cond_2

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@1f
    move/from16 v0, p4

    #@21
    if-eq v4, v0, :cond_7

    #@23
    :cond_2
    const/4 v13, 0x1

    #@24
    .line 1859
    .local v13, "needsUpdate":Z
    :goto_0
    if-eqz v14, :cond_3

    #@26
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    move-object/from16 v0, p1

    #@2c
    if-eq v4, v0, :cond_8

    #@2e
    .line 1860
    :cond_3
    move-object/from16 v0, p0

    #@30
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@32
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, p1

    #@36
    move/from16 v2, p3

    #@38
    move/from16 v3, p4

    #@3a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    #@3d
    .line 1867
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    #@3f
    .line 1868
    const/4 v4, -0x1

    #@40
    move/from16 v0, p6

    #@42
    if-ne v0, v4, :cond_a

    #@44
    .line 1869
    move-object/from16 v0, p0

    #@46
    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@48
    move/from16 p6, v0

    #@4a
    .line 1873
    :goto_2
    const/4 v4, -0x1

    #@4b
    move/from16 v0, p7

    #@4d
    if-ne v0, v4, :cond_b

    #@4f
    .line 1874
    move-object/from16 v0, p0

    #@51
    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@53
    move/from16 p7, v0

    #@55
    .line 1881
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@57
    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@59
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5c
    move-result-object v6

    #@5d
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@5f
    .line 1882
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@61
    .line 1883
    .local v15, "x":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@63
    move/from16 v16, v0

    #@65
    .line 1884
    .local v16, "y":I
    if-eqz p2, :cond_c

    #@67
    .line 1885
    move-object/from16 v0, p0

    #@69
    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@6b
    move-object/from16 v4, p0

    #@6d
    move-object/from16 v5, p1

    #@6f
    move/from16 v7, p3

    #@71
    move/from16 v8, p4

    #@73
    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    #@76
    move-result v4

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@7c
    .line 1891
    :goto_4
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@7e
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@80
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@82
    if-ne v15, v4, :cond_6

    #@84
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@86
    move/from16 v0, v16

    #@88
    if-eq v0, v4, :cond_d

    #@8a
    :cond_6
    const/4 v12, 0x1

    #@8b
    :goto_5
    move-object/from16 v7, p0

    #@8d
    move/from16 v10, p6

    #@8f
    move/from16 v11, p7

    #@91
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@94
    .line 1851
    return-void

    #@95
    .line 1858
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "needsUpdate":Z
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_7
    const/4 v13, 0x0

    #@96
    .restart local v13    # "needsUpdate":Z
    goto :goto_0

    #@97
    .line 1859
    :cond_8
    if-eqz v13, :cond_9

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@9d
    if-eqz v4, :cond_3

    #@9f
    .line 1861
    :cond_9
    if-eqz v13, :cond_4

    #@a1
    .line 1863
    move/from16 v0, p3

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@a7
    .line 1864
    move/from16 v0, p4

    #@a9
    move-object/from16 v1, p0

    #@ab
    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@ad
    goto :goto_1

    #@ae
    .line 1871
    :cond_a
    move/from16 v0, p6

    #@b0
    move-object/from16 v1, p0

    #@b2
    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    #@b4
    goto :goto_2

    #@b5
    .line 1876
    :cond_b
    move/from16 v0, p7

    #@b7
    move-object/from16 v1, p0

    #@b9
    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    #@bb
    goto :goto_3

    #@bc
    .line 1887
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_c
    move-object/from16 v0, p0

    #@be
    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@c0
    move-object/from16 v0, p0

    #@c2
    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@c4
    .line 1888
    move-object/from16 v0, p0

    #@c6
    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@c8
    move-object/from16 v4, p0

    #@ca
    move-object/from16 v5, p1

    #@cc
    .line 1887
    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    #@cf
    move-result v4

    #@d0
    move-object/from16 v0, p0

    #@d2
    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@d5
    goto :goto_4

    #@d6
    .line 1891
    :cond_d
    const/4 v12, 0x0

    #@d7
    goto :goto_5
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    #@0
    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1115
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@6
    .line 1117
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1121
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 1122
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1123
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@18
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 1113
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1125
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@20
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@25
    goto :goto_0

    #@26
    .line 1128
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@28
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    #@2b
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    #@0
    .prologue
    .line 1566
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_0

    #@6
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@8
    if-eqz v7, :cond_1

    #@a
    .line 1567
    :cond_0
    return-void

    #@b
    .line 1570
    :cond_1
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@d
    .line 1571
    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@f
    .line 1574
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v1

    #@13
    .line 1575
    .local v1, "contentParent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    #@15
    if-eqz v7, :cond_3

    #@17
    move-object v0, v1

    #@18
    .line 1576
    check-cast v0, Landroid/view/ViewGroup;

    #@1a
    .line 1582
    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    #@1d
    .line 1584
    const/4 v7, 0x0

    #@1e
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@20
    .line 1585
    const/4 v7, 0x1

    #@21
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@23
    .line 1587
    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    #@25
    .line 1588
    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_4

    #@27
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_4

    #@2d
    .line 1590
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@33
    .line 1591
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@35
    or-int/lit8 v7, v7, 0x10

    #@37
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@39
    .line 1592
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3b
    or-int/lit8 v7, v7, 0x8

    #@3d
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3f
    .line 1593
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@41
    invoke-interface {v7, v3, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 1595
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    #@47
    move-result-object v4

    #@48
    .line 1596
    .local v4, "epicenter":Landroid/graphics/Rect;
    new-instance v7, Landroid/widget/PopupWindow$2;

    #@4a
    invoke-direct {v7, p0, v4}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    #@4d
    invoke-virtual {v5, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@50
    .line 1602
    new-instance v7, Landroid/widget/PopupWindow$3;

    #@52
    invoke-direct {v7, p0, v3, v0, v2}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@55
    invoke-virtual {v3, v5, v7}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    #@58
    .line 1613
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    #@5b
    .line 1615
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@5d
    if-eqz v7, :cond_2

    #@5f
    .line 1616
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@61
    invoke-interface {v7}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@64
    .line 1565
    :cond_2
    return-void

    #@65
    .line 1578
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    const/4 v0, 0x0

    #@66
    .local v0, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    #@67
    .line 1609
    .end local v0    # "contentHolder":Landroid/view/ViewGroup;
    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@6a
    goto :goto_1
.end method

.method public getAnimationStyle()I
    .locals 1

    #@0
    .prologue
    .line 445
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 425
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 902
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2
    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    #@0
    .prologue
    .line 577
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@2
    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 1498
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    #@0
    .prologue
    .line 1513
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1534
    new-instance v2, Landroid/graphics/Rect;

    #@3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@6
    .line 1535
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@9
    .line 1537
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    #@b
    .line 1538
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@e
    .line 1540
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 1541
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    #@12
    .line 1542
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v5

    #@1a
    .line 1543
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1d
    move-result-object v7

    #@1e
    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    #@20
    .line 1545
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    #@22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@25
    move-result v8

    #@26
    add-int/2addr v7, v8

    #@27
    sub-int v7, v1, v7

    #@29
    sub-int v3, v7, p2

    #@2b
    .line 1546
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    #@2d
    iget v8, v2, Landroid/graphics/Rect;->top:I

    #@2f
    sub-int/2addr v7, v8

    #@30
    add-int v4, v7, p2

    #@32
    .line 1549
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v6

    #@36
    .line 1550
    .local v6, "returnedHeight":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@38
    if-eqz v7, :cond_1

    #@3a
    .line 1551
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@3c
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@41
    .line 1552
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@43
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@45
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@47
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@49
    add-int/2addr v7, v8

    #@4a
    sub-int/2addr v6, v7

    #@4b
    .line 1555
    :cond_1
    return v6
.end method

.method public getOverlapAnchor()Z
    .locals 1

    #@0
    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@2
    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    #@0
    .prologue
    .line 618
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 926
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2
    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    #@0
    .prologue
    .line 853
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@2
    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    #@0
    .prologue
    .line 1146
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@2
    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    #@0
    .prologue
    .line 798
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@2
    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@2
    return v0
.end method

.method public isFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@2
    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@2
    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    #@0
    .prologue
    .line 660
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@2
    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 742
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@4
    if-gez v2, :cond_1

    #@6
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 743
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@f
    move-result-object v2

    #@10
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@12
    const/16 v3, 0xb

    #@14
    if-lt v2, v3, :cond_0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 745
    :cond_1
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@1b
    if-ne v2, v0, :cond_2

    #@1d
    :goto_1
    return v0

    #@1e
    :cond_2
    move v0, v1

    #@1f
    goto :goto_1
.end method

.method public isTouchable()Z
    .locals 1

    #@0
    .prologue
    .line 629
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@2
    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 731
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@2
    .line 730
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    #@0
    .prologue
    .line 478
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    .line 477
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 814
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@2
    .line 815
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@5
    .line 813
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 379
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@4
    .line 390
    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@6
    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 391
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@c
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    #@e
    .line 394
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    #@10
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    #@13
    move-result v0

    #@14
    .line 398
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@17
    move-result v2

    #@18
    .line 399
    .local v2, "count":I
    const/4 v1, -0x1

    #@19
    .line 400
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@1c
    .line 401
    if-eq v3, v0, :cond_2

    #@1e
    .line 402
    move v1, v3

    #@1f
    .line 409
    :cond_0
    if-eq v0, v6, :cond_3

    #@21
    if-eq v1, v6, :cond_3

    #@23
    .line 410
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v5

    #@27
    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    .line 411
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2f
    .line 378
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    #@30
    .line 400
    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 413
    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@35
    .line 414
    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@37
    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@2
    .line 721
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@8
    .line 719
    return-void

    #@9
    .line 721
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 710
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@2
    .line 709
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 505
    return-void

    #@7
    .line 508
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@9
    .line 510
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@b
    if-nez v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 511
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@19
    .line 514
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@1b
    if-nez v0, :cond_2

    #@1d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 515
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@23
    const-string/jumbo v1, "window"

    #@26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/view/WindowManager;

    #@2c
    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@2e
    .line 522
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@30
    if-eqz v0, :cond_3

    #@32
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 503
    :cond_3
    :goto_0
    return-void

    #@37
    .line 526
    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3c
    move-result-object v0

    #@3d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3f
    .line 527
    const/16 v1, 0x16

    #@41
    .line 526
    if-lt v0, v1, :cond_5

    #@43
    const/4 v0, 0x1

    #@44
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    #@47
    goto :goto_0

    #@48
    :cond_5
    const/4 v0, 0x0

    #@49
    goto :goto_1
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 436
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@2
    .line 435
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 336
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 341
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 340
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .line 568
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@2
    .line 567
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 916
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2
    .line 915
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    #@0
    .prologue
    .line 460
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@3
    .line 459
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 594
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@2
    .line 593
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 785
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@2
    .line 784
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 831
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@2
    .line 830
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 1665
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 1664
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    #@0
    .prologue
    .line 681
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@2
    .line 680
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 956
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@2
    .line 955
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 608
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@2
    .line 607
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 762
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@5
    .line 761
    return-void

    #@6
    .line 762
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    #@0
    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    #@2
    .line 536
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    #@0
    .prologue
    .line 862
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    #@5
    .line 861
    return-void

    #@6
    .line 862
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    #@0
    .prologue
    .line 648
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@2
    .line 647
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 940
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2
    .line 939
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 891
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@2
    .line 892
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@4
    .line 890
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 844
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@2
    .line 843
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1048
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    #@4
    .line 1047
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    #@0
    .prologue
    .line 1069
    const v0, 0x800033

    #@3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    #@6
    .line 1068
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1093
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1094
    :cond_0
    return-void

    #@c
    .line 1097
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@11
    .line 1099
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    #@14
    .line 1101
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@16
    .line 1102
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@18
    .line 1104
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    #@1f
    move-result-object v2

    #@20
    .line 1105
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move v3, p2

    #@26
    move v4, p3

    #@27
    move v5, p4

    #@28
    .line 1107
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    #@2b
    move-result v6

    #@2c
    .line 1108
    .local v6, "aboveAnchor":Z
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@2f
    .line 1110
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@32
    .line 1092
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1010
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1011
    :cond_0
    return-void

    #@c
    .line 1014
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@11
    .line 1016
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    #@14
    .line 1018
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@17
    .line 1019
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@19
    .line 1021
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    #@1c
    move-result-object v0

    #@1d
    .line 1022
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@20
    .line 1025
    if-eqz p2, :cond_2

    #@22
    .line 1026
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@24
    .line 1029
    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@26
    .line 1030
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@28
    .line 1032
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@2b
    .line 1009
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    .line 995
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    #@7
    .line 994
    return-void
.end method

.method public update()V
    .locals 6

    #@0
    .prologue
    .line 1683
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@8
    if-nez v4, :cond_1

    #@a
    .line 1684
    :cond_0
    return-void

    #@b
    .line 1688
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@d
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@13
    .line 1690
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    #@14
    .line 1692
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@17
    move-result v0

    #@18
    .line 1693
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1a
    if-eq v0, v4, :cond_2

    #@1c
    .line 1694
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1e
    .line 1695
    const/4 v3, 0x1

    #@1f
    .line 1698
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@24
    move-result v1

    #@25
    .line 1699
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@27
    if-eq v1, v4, :cond_3

    #@29
    .line 1700
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2b
    .line 1701
    const/4 v3, 0x1

    #@2c
    .line 1704
    :cond_3
    if-eqz v3, :cond_4

    #@2e
    .line 1705
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@31
    .line 1706
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@33
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@35
    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@38
    .line 1682
    :cond_4
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1721
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v6

    #@6
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@8
    .line 1722
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@a
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@c
    const/4 v5, 0x0

    #@d
    move-object v0, p0

    #@e
    move v3, p1

    #@f
    move v4, p2

    #@10
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@13
    .line 1719
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 1738
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@9
    .line 1737
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 1757
    if-ltz p3, :cond_0

    #@3
    .line 1758
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@5
    .line 1759
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@8
    .line 1762
    :cond_0
    if-ltz p4, :cond_1

    #@a
    .line 1763
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@c
    .line 1764
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@f
    .line 1767
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_2

    #@15
    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@17
    if-nez v6, :cond_3

    #@19
    .line 1768
    :cond_2
    return-void

    #@1a
    .line 1772
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1c
    invoke-virtual {v6}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    #@22
    .line 1774
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    #@23
    .line 1776
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@25
    if-gez v6, :cond_b

    #@27
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@29
    .line 1777
    .local v1, "finalWidth":I
    :goto_0
    if-eq p3, v7, :cond_4

    #@2b
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2d
    if-eq v6, v1, :cond_4

    #@2f
    .line 1778
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@31
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@33
    .line 1779
    const/4 v5, 0x1

    #@34
    .line 1782
    .end local v5    # "update":Z
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@36
    if-gez v6, :cond_c

    #@38
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@3a
    .line 1783
    .local v0, "finalHeight":I
    :goto_1
    if-eq p4, v7, :cond_5

    #@3c
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@3e
    if-eq v6, v0, :cond_5

    #@40
    .line 1784
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@42
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@44
    .line 1785
    const/4 v5, 0x1

    #@45
    .line 1788
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@47
    if-eq v6, p1, :cond_6

    #@49
    .line 1789
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4b
    .line 1790
    const/4 v5, 0x1

    #@4c
    .line 1793
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4e
    if-eq v6, p2, :cond_7

    #@50
    .line 1794
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@52
    .line 1795
    const/4 v5, 0x1

    #@53
    .line 1798
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@56
    move-result v2

    #@57
    .line 1799
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@59
    if-eq v2, v6, :cond_8

    #@5b
    .line 1800
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@5d
    .line 1801
    const/4 v5, 0x1

    #@5e
    .line 1804
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@60
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@63
    move-result v3

    #@64
    .line 1805
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@66
    if-eq v3, v6, :cond_9

    #@68
    .line 1806
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6a
    .line 1807
    const/4 v5, 0x1

    #@6b
    .line 1810
    :cond_9
    if-eqz v5, :cond_a

    #@6d
    .line 1811
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@70
    .line 1812
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@72
    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@74
    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@77
    .line 1756
    :cond_a
    return-void

    #@78
    .line 1776
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .restart local v5    # "update":Z
    :cond_b
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@7a
    .restart local v1    # "finalWidth":I
    goto :goto_0

    #@7b
    .line 1782
    .end local v5    # "update":Z
    :cond_c
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@7d
    .restart local v0    # "finalHeight":I
    goto :goto_1
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1827
    const/4 v5, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v3, v2

    #@5
    move v4, v2

    #@6
    move v6, p2

    #@7
    move v7, p3

    #@8
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    #@b
    .line 1826
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, v2

    #@6
    move v6, p4

    #@7
    move v7, p5

    #@8
    .line 1847
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    #@b
    .line 1846
    return-void
.end method
