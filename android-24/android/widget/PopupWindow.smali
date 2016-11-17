.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$1;,
        Landroid/widget/PopupWindow$2;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;
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

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
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

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

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

.method static synthetic -set0(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

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
    .line 196
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 197
    const v1, 0x10100aa

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 196
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    #@b
    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@5
    .line 316
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@4
    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 243
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 252
    const v0, 0x1010076

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 260
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
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 134
    new-array v5, v10, [I

    #@a
    iput-object v5, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    #@c
    .line 135
    new-array v5, v10, [I

    #@e
    iput-object v5, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    #@10
    .line 136
    new-instance v5, Landroid/graphics/Rect;

    #@12
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@17
    .line 155
    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@19
    .line 156
    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1b
    .line 157
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1d
    .line 158
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@1f
    .line 159
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@21
    .line 160
    iput v9, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@23
    .line 163
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@25
    .line 164
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@27
    .line 166
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@29
    .line 167
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@2b
    .line 172
    iput v6, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2d
    .line 175
    iput v6, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2f
    .line 189
    const/16 v5, 0x3e8

    #@31
    iput v5, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@33
    .line 192
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@35
    .line 194
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@37
    .line 201
    new-instance v5, Landroid/widget/PopupWindow$1;

    #@39
    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    #@3c
    .line 200
    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@3e
    .line 215
    new-instance v5, Landroid/widget/PopupWindow$2;

    #@40
    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    #@43
    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@45
    .line 270
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@47
    .line 271
    const-string/jumbo v5, "window"

    #@4a
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroid/view/WindowManager;

    #@50
    iput-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@52
    .line 274
    sget-object v5, Lcom/android/internal/R$styleable;->PopupWindow:[I

    #@54
    .line 273
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@57
    move-result-object v0

    #@58
    .line 275
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5b
    move-result-object v2

    #@5c
    .line 276
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    #@5d
    const/4 v6, 0x3

    #@5e
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@61
    move-result v5

    #@62
    iput v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@64
    .line 277
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@67
    move-result v5

    #@68
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@6a
    .line 282
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_1

    #@70
    .line 283
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@73
    move-result v1

    #@74
    .line 284
    .local v1, "animStyle":I
    const v5, 0x10302f4

    #@77
    if-ne v1, v5, :cond_0

    #@79
    .line 285
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@7b
    .line 294
    .end local v1    # "animStyle":I
    :goto_0
    const/4 v5, 0x4

    #@7c
    .line 293
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7f
    move-result v5

    #@80
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    #@83
    move-result-object v3

    #@84
    .line 296
    .local v3, "enterTransition":Landroid/transition/Transition;
    const/4 v5, 0x5

    #@85
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@88
    move-result v5

    #@89
    if-eqz v5, :cond_2

    #@8b
    .line 298
    const/4 v5, 0x5

    #@8c
    .line 297
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@8f
    move-result v5

    #@90
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    #@93
    move-result-object v4

    #@94
    .line 303
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@97
    .line 305
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    #@9a
    .line 306
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    #@9d
    .line 307
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a0
    .line 269
    return-void

    #@a1
    .line 287
    .end local v3    # "enterTransition":Landroid/transition/Transition;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@a3
    goto :goto_0

    #@a4
    .line 290
    .end local v1    # "animStyle":I
    :cond_1
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@a6
    goto :goto_0

    #@a7
    .line 300
    .restart local v3    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v3, :cond_3

    #@a9
    const/4 v4, 0x0

    #@aa
    .local v4, "exitTransition":Landroid/transition/Transition;
    goto :goto_1

    #@ab
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@ae
    move-result-object v4

    #@af
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
    .line 330
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@4
    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    #@4
    .line 359
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
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 134
    new-array v0, v5, [I

    #@a
    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    #@c
    .line 135
    new-array v0, v5, [I

    #@e
    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    #@10
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    #@12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@15
    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@17
    .line 155
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@19
    .line 156
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1b
    .line 157
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1d
    .line 158
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@1f
    .line 159
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@21
    .line 160
    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@23
    .line 163
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@25
    .line 164
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@27
    .line 166
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@29
    .line 167
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@2b
    .line 172
    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2d
    .line 175
    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2f
    .line 189
    const/16 v0, 0x3e8

    #@31
    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@33
    .line 192
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@35
    .line 194
    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@37
    .line 201
    new-instance v0, Landroid/widget/PopupWindow$1;

    #@39
    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    #@3c
    .line 200
    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@3e
    .line 215
    new-instance v0, Landroid/widget/PopupWindow$2;

    #@40
    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    #@43
    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@45
    .line 376
    if-eqz p1, :cond_0

    #@47
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@4d
    .line 378
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@4f
    const-string/jumbo v1, "window"

    #@52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Landroid/view/WindowManager;

    #@58
    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@5a
    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@5d
    .line 382
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@60
    .line 383
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@63
    .line 384
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@66
    .line 375
    return-void
.end method

.method private attachToAnchor(Landroid/view/View;III)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    #@0
    .prologue
    .line 2209
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    #@3
    .line 2211
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v1

    #@7
    .line 2212
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    #@9
    .line 2213
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@b
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@e
    .line 2216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 2217
    .local v0, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@14
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@17
    .line 2219
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@19
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1c
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@1e
    .line 2220
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@20
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@23
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@25
    .line 2221
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    #@28
    move-result v2

    #@29
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    #@2b
    .line 2223
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@2d
    .line 2224
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@2f
    .line 2225
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@31
    .line 2208
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    #@0
    .prologue
    .line 1500
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 1501
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1502
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1503
    const v0, 0x10302ec

    #@10
    .line 1502
    :goto_0
    return v0

    #@11
    .line 1504
    :cond_0
    const v0, 0x10302eb

    #@14
    goto :goto_0

    #@15
    .line 1506
    :cond_1
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 1508
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
    .line 1453
    const v0, -0x868219

    #@5
    and-int/2addr p1, v0

    #@6
    .line 1461
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1462
    const v0, 0x8000

    #@d
    or-int/2addr p1, v0

    #@e
    .line 1464
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@10
    if-nez v0, :cond_b

    #@12
    .line 1465
    or-int/lit8 p1, p1, 0x8

    #@14
    .line 1466
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@16
    const/4 v1, 0x1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 1467
    or-int/2addr p1, v2

    #@1a
    .line 1472
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1473
    or-int/lit8 p1, p1, 0x10

    #@20
    .line 1475
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 1476
    const/high16 v0, 0x40000

    #@26
    or-int/2addr p1, v0

    #@27
    .line 1478
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@29
    if-eqz v0, :cond_4

    #@2b
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@2d
    if-eqz v0, :cond_5

    #@2f
    .line 1479
    :cond_4
    or-int/lit16 p1, p1, 0x200

    #@31
    .line 1481
    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_6

    #@37
    .line 1482
    const/high16 v0, 0x800000

    #@39
    or-int/2addr p1, v0

    #@3a
    .line 1484
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@3c
    if-eqz v0, :cond_7

    #@3e
    .line 1485
    or-int/lit16 p1, p1, 0x100

    #@40
    .line 1487
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@42
    if-eqz v0, :cond_8

    #@44
    .line 1488
    const/high16 v0, 0x10000

    #@46
    or-int/2addr p1, v0

    #@47
    .line 1490
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    #@49
    if-eqz v0, :cond_9

    #@4b
    .line 1491
    or-int/lit8 p1, p1, 0x20

    #@4d
    .line 1493
    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@4f
    if-eqz v0, :cond_a

    #@51
    .line 1494
    const/high16 v0, 0x40000000    # 2.0f

    #@53
    or-int/2addr p1, v0

    #@54
    .line 1496
    :cond_a
    return p1

    #@55
    .line 1469
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@57
    const/4 v1, 0x2

    #@58
    if-ne v0, v1, :cond_1

    #@5a
    .line 1470
    or-int/2addr p1, v2

    #@5b
    goto :goto_0
.end method

.method private computeGravity()I
    .locals 2

    #@0
    .prologue
    .line 1397
    const v0, 0x800033

    #@3
    .line 1398
    .local v0, "gravity":I
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@5
    if-nez v1, :cond_0

    #@7
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1399
    :cond_0
    const v0, 0x10800033

    #@e
    .line 1401
    :cond_1
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1323
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v2

    #@6
    .line 1325
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    #@8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@a
    const/4 v5, -0x2

    #@b
    if-ne v4, v5, :cond_0

    #@d
    .line 1326
    const/4 v1, -0x2

    #@e
    .line 1331
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    #@10
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@12
    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    #@15
    .line 1332
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@17
    .line 1333
    const/4 v4, -0x1

    #@18
    .line 1332
    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1b
    .line 1334
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1e
    .line 1336
    return-object v0

    #@1f
    .line 1328
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
    .line 1346
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6
    move-result-object v2

    #@7
    .line 1348
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    #@9
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b
    const/4 v4, -0x2

    #@c
    if-ne v3, v4, :cond_0

    #@e
    .line 1349
    const/4 v1, -0x2

    #@f
    .line 1354
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    #@11
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    #@16
    .line 1355
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    #@17
    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    #@1a
    .line 1356
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    #@1d
    .line 1357
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    #@20
    .line 1359
    return-object v0

    #@21
    .line 1351
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
    .line 1412
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@5
    .line 1418
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@b
    .line 1419
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@d
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@10
    move-result v1

    #@11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@13
    .line 1420
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@15
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@17
    .line 1421
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@19
    .line 1422
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@1b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@1d
    .line 1423
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@23
    .line 1425
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 1426
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@2f
    .line 1431
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@31
    if-gez v1, :cond_1

    #@33
    .line 1432
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@35
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@39
    .line 1437
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@3b
    if-gez v1, :cond_2

    #@3d
    .line 1438
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@3f
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@41
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@43
    .line 1443
    :goto_2
    const v1, 0x18000

    #@46
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@48
    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "PopupWindow:"

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    #@57
    move-result v2

    #@58
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@67
    .line 1449
    return-object v0

    #@68
    .line 1428
    :cond_0
    const/4 v1, -0x3

    #@69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@6b
    goto :goto_0

    #@6c
    .line 1434
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@6e
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@72
    goto :goto_1

    #@73
    .line 1440
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@75
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@77
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@79
    goto :goto_2
.end method

.method private detachFromAnchor()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2192
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v3, :cond_2

    #@5
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Landroid/view/View;

    #@d
    move-object v0, v3

    #@e
    .line 2193
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    #@10
    .line 2194
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v2

    #@14
    .line 2195
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@16
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@19
    .line 2198
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@1b
    if-eqz v3, :cond_3

    #@1d
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@1f
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/view/View;

    #@25
    move-object v1, v3

    #@26
    .line 2199
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_1

    #@28
    .line 2200
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    #@2a
    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@2d
    .line 2203
    :cond_1
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@2f
    .line 2204
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@31
    .line 2205
    const/4 v3, 0x0

    #@32
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    #@34
    .line 2191
    return-void

    #@35
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "anchorRoot":Landroid/view/View;
    :cond_2
    move-object v0, v4

    #@36
    .line 2192
    goto :goto_0

    #@37
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_3
    move-object v1, v4

    #@38
    .line 2198
    goto :goto_1
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
    .line 1909
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1910
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@9
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@c
    .line 1913
    :cond_0
    if-eqz p2, :cond_1

    #@e
    .line 1914
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@11
    .line 1919
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@13
    .line 1920
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@15
    .line 1921
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@18
    .line 1905
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z
    .locals 28
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I

    #@0
    .prologue
    .line 1528
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    #@3
    move-result v7

    #@4
    .line 1529
    .local v7, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    #@7
    move-result v18

    #@8
    .line 1530
    .local v18, "anchorWidth":I
    move-object/from16 v0, p0

    #@a
    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1531
    sub-int p4, p4, v7

    #@10
    .line 1535
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    #@14
    move-object/from16 v20, v0

    #@16
    .line 1536
    .local v20, "drawingLocation":[I
    move-object/from16 v0, p1

    #@18
    move-object/from16 v1, v20

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@1d
    .line 1537
    const/4 v3, 0x0

    #@1e
    aget v3, v20, v3

    #@20
    add-int v3, v3, p3

    #@22
    move-object/from16 v0, p2

    #@24
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@26
    .line 1538
    const/4 v3, 0x1

    #@27
    aget v3, v20, v3

    #@29
    add-int/2addr v3, v7

    #@2a
    add-int v3, v3, p4

    #@2c
    move-object/from16 v0, p2

    #@2e
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@30
    .line 1540
    new-instance v19, Landroid/graphics/Rect;

    #@32
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@35
    .line 1541
    .local v19, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    #@37
    move-object/from16 v1, v19

    #@39
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@3c
    .line 1542
    const/4 v3, -0x1

    #@3d
    move/from16 v0, p5

    #@3f
    if-ne v0, v3, :cond_1

    #@41
    .line 1543
    move-object/from16 v0, v19

    #@43
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@45
    move-object/from16 v0, v19

    #@47
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@49
    sub-int p5, v3, v4

    #@4b
    .line 1545
    :cond_1
    const/4 v3, -0x1

    #@4c
    move/from16 v0, p6

    #@4e
    if-ne v0, v3, :cond_2

    #@50
    .line 1546
    move-object/from16 v0, v19

    #@52
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@54
    move-object/from16 v0, v19

    #@56
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@58
    sub-int p6, v3, v4

    #@5a
    .line 1550
    :cond_2
    const/16 v3, 0x33

    #@5c
    move-object/from16 v0, p2

    #@5e
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@60
    .line 1551
    move/from16 v0, p5

    #@62
    move-object/from16 v1, p2

    #@64
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@66
    .line 1552
    move/from16 v0, p6

    #@68
    move-object/from16 v1, p2

    #@6a
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@6c
    .line 1556
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    #@6f
    move-result v3

    #@70
    move/from16 v0, p7

    #@72
    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@75
    move-result v3

    #@76
    and-int/lit8 v23, v3, 0x7

    #@78
    .line 1558
    .local v23, "hgrav":I
    const/4 v3, 0x5

    #@79
    move/from16 v0, v23

    #@7b
    if-ne v0, v3, :cond_3

    #@7d
    .line 1559
    move-object/from16 v0, p2

    #@7f
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@81
    sub-int v4, p5, v18

    #@83
    sub-int/2addr v3, v4

    #@84
    move-object/from16 v0, p2

    #@86
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@88
    .line 1562
    :cond_3
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    #@8c
    move-object/from16 v25, v0

    #@8e
    .line 1563
    .local v25, "screenLocation":[I
    move-object/from16 v0, p1

    #@90
    move-object/from16 v1, v25

    #@92
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@95
    .line 1567
    const/4 v3, 0x1

    #@96
    aget v8, v20, v3

    #@98
    const/4 v3, 0x1

    #@99
    aget v9, v25, v3

    #@9b
    move-object/from16 v0, v19

    #@9d
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@9f
    .line 1568
    move-object/from16 v0, v19

    #@a1
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@a3
    const/4 v12, 0x0

    #@a4
    move-object/from16 v3, p0

    #@a6
    move-object/from16 v4, p2

    #@a8
    move/from16 v5, p4

    #@aa
    move/from16 v6, p6

    #@ac
    .line 1566
    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    #@af
    move-result v22

    #@b0
    .line 1572
    .local v22, "fitsVertical":Z
    const/4 v3, 0x0

    #@b1
    aget v13, v20, v3

    #@b3
    const/4 v3, 0x0

    #@b4
    aget v14, v25, v3

    #@b6
    move-object/from16 v0, v19

    #@b8
    iget v15, v0, Landroid/graphics/Rect;->left:I

    #@ba
    .line 1573
    move-object/from16 v0, v19

    #@bc
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@be
    move/from16 v16, v0

    #@c0
    const/16 v17, 0x0

    #@c2
    move-object/from16 v8, p0

    #@c4
    move-object/from16 v9, p2

    #@c6
    move/from16 v10, p3

    #@c8
    move/from16 v11, p5

    #@ca
    move/from16 v12, v18

    #@cc
    .line 1571
    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    #@cf
    move-result v21

    #@d0
    .line 1576
    .local v21, "fitsHorizontal":Z
    if-eqz v22, :cond_4

    #@d2
    if-eqz v21, :cond_4

    #@d4
    .line 1601
    :goto_0
    move-object/from16 v0, p2

    #@d6
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@d8
    const/4 v4, 0x1

    #@d9
    aget v4, v20, v4

    #@db
    if-ge v3, v4, :cond_6

    #@dd
    const/4 v3, 0x1

    #@de
    :goto_1
    return v3

    #@df
    .line 1577
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    #@e2
    move-result v26

    #@e3
    .line 1578
    .local v26, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    #@e6
    move-result v27

    #@e7
    .line 1579
    .local v27, "scrollY":I
    new-instance v24, Landroid/graphics/Rect;

    #@e9
    add-int v3, v26, p5

    #@eb
    add-int v3, v3, p3

    #@ed
    .line 1580
    add-int v4, v27, p6

    #@ef
    add-int/2addr v4, v7

    #@f0
    add-int v4, v4, p4

    #@f2
    .line 1579
    move-object/from16 v0, v24

    #@f4
    move/from16 v1, v26

    #@f6
    move/from16 v2, v27

    #@f8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@fb
    .line 1581
    .local v24, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@fd
    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@ff
    if-eqz v3, :cond_5

    #@101
    const/4 v3, 0x1

    #@102
    move-object/from16 v0, p1

    #@104
    move-object/from16 v1, v24

    #@106
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    #@109
    move-result v3

    #@10a
    if-eqz v3, :cond_5

    #@10c
    .line 1583
    move-object/from16 v0, p1

    #@10e
    move-object/from16 v1, v20

    #@110
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@113
    .line 1584
    const/4 v3, 0x0

    #@114
    aget v3, v20, v3

    #@116
    add-int v3, v3, p3

    #@118
    move-object/from16 v0, p2

    #@11a
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@11c
    .line 1585
    const/4 v3, 0x1

    #@11d
    aget v3, v20, v3

    #@11f
    add-int/2addr v3, v7

    #@120
    add-int v3, v3, p4

    #@122
    move-object/from16 v0, p2

    #@124
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@126
    .line 1588
    const/4 v3, 0x5

    #@127
    move/from16 v0, v23

    #@129
    if-ne v0, v3, :cond_5

    #@12b
    .line 1589
    move-object/from16 v0, p2

    #@12d
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@12f
    sub-int v4, p5, v18

    #@131
    sub-int/2addr v3, v4

    #@132
    move-object/from16 v0, p2

    #@134
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@136
    .line 1594
    :cond_5
    const/4 v3, 0x1

    #@137
    aget v8, v20, v3

    #@139
    .line 1595
    const/4 v3, 0x1

    #@13a
    aget v9, v25, v3

    #@13c
    move-object/from16 v0, v19

    #@13e
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@140
    move-object/from16 v0, v19

    #@142
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@144
    move-object/from16 v0, p0

    #@146
    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@148
    move-object/from16 v3, p0

    #@14a
    move-object/from16 v4, p2

    #@14c
    move/from16 v5, p4

    #@14e
    move/from16 v6, p6

    #@150
    .line 1594
    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    #@153
    .line 1596
    const/4 v3, 0x0

    #@154
    aget v13, v20, v3

    #@156
    .line 1597
    const/4 v3, 0x0

    #@157
    aget v14, v25, v3

    #@159
    move-object/from16 v0, v19

    #@15b
    iget v15, v0, Landroid/graphics/Rect;->left:I

    #@15d
    move-object/from16 v0, v19

    #@15f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@161
    move/from16 v16, v0

    #@163
    move-object/from16 v0, p0

    #@165
    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@167
    move/from16 v17, v0

    #@169
    move-object/from16 v8, p0

    #@16b
    move-object/from16 v9, p2

    #@16d
    move/from16 v10, p3

    #@16f
    move/from16 v11, p5

    #@171
    move/from16 v12, v18

    #@173
    .line 1596
    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    #@176
    goto/16 :goto_0

    #@178
    .line 1601
    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v26    # "scrollX":I
    .end local v27    # "scrollY":I
    :cond_6
    const/4 v3, 0x0

    #@179
    goto/16 :goto_1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 5
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 454
    if-eqz p1, :cond_1

    #@4
    const/high16 v3, 0x10f0000

    #@6
    if-eq p1, v3, :cond_1

    #@8
    .line 455
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@d
    move-result-object v0

    #@e
    .line 456
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@11
    move-result-object v2

    #@12
    .line 457
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    #@14
    .line 458
    instance-of v3, v2, Landroid/transition/TransitionSet;

    #@16
    if-eqz v3, :cond_0

    #@18
    move-object v3, v2

    #@19
    .line 459
    check-cast v3, Landroid/transition/TransitionSet;

    #@1b
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_0

    #@21
    const/4 v1, 0x1

    #@22
    .line 460
    .local v1, "isEmpty":Z
    :cond_0
    if-nez v1, :cond_1

    #@24
    .line 461
    return-object v2

    #@25
    .line 465
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v4
.end method

.method private getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1877
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@5
    if-eqz v7, :cond_1

    #@7
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@9
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/View;

    #@f
    .line 1878
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@11
    .line 1879
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@13
    if-nez v3, :cond_2

    #@15
    .line 1880
    :cond_0
    return-object v8

    #@16
    .line 1877
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    #@17
    .local v0, "anchor":Landroid/view/View;
    goto :goto_0

    #@18
    .line 1883
    .end local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    #@1b
    move-result-object v1

    #@1c
    .line 1884
    .local v1, "anchorLocation":[I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1e
    invoke-virtual {v7}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    #@21
    move-result-object v6

    #@22
    .line 1887
    .local v6, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    #@24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@27
    move-result v7

    #@28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@2b
    move-result v8

    #@2c
    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2f
    .line 1888
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v7, v1, v9

    #@31
    aget v8, v6, v9

    #@33
    sub-int/2addr v7, v8

    #@34
    aget v8, v1, v10

    #@36
    aget v9, v6, v10

    #@38
    sub-int/2addr v8, v9

    #@39
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    #@3c
    .line 1891
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@3e
    if-eqz v7, :cond_3

    #@40
    .line 1892
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@42
    .line 1893
    .local v4, "offsetX":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    #@44
    .line 1894
    .local v5, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@46
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@49
    .line 1895
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@4c
    .line 1898
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    :cond_3
    return-object v2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1371
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1372
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@c
    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    .line 1376
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    #@13
    .line 1378
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@16
    .line 1380
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@18
    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .line 1382
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 1383
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    #@24
    .line 1370
    :cond_1
    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    #@0
    .prologue
    .line 1687
    const/4 v1, 0x1

    #@1
    .line 1690
    .local v1, "fitsInDisplay":Z
    sub-int v3, p4, p3

    #@3
    .line 1691
    .local v3, "winOffsetX":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@5
    add-int/2addr v4, v3

    #@6
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@8
    .line 1693
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@a
    add-int v2, v4, p2

    #@c
    .line 1694
    .local v2, "right":I
    if-le v2, p6, :cond_0

    #@e
    .line 1696
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@10
    sub-int v5, v2, p6

    #@12
    sub-int/2addr v4, v5

    #@13
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@15
    .line 1699
    :cond_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@17
    if-ge v4, p5, :cond_1

    #@19
    .line 1702
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1b
    .line 1704
    sub-int v0, p6, p5

    #@1d
    .line 1705
    .local v0, "displayFrameWidth":I
    if-eqz p7, :cond_2

    #@1f
    if-le p2, v0, :cond_2

    #@21
    .line 1706
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@23
    .line 1712
    .end local v0    # "displayFrameWidth":I
    :cond_1
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@25
    sub-int/2addr v4, v3

    #@26
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@28
    .line 1714
    return v1

    #@29
    .line 1708
    .restart local v0    # "displayFrameWidth":I
    :cond_2
    const/4 v1, 0x0

    #@2a
    goto :goto_0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    #@0
    .prologue
    .line 1636
    const/4 v2, 0x1

    #@1
    .line 1638
    .local v2, "fitsInDisplay":Z
    sub-int v3, p4, p3

    #@3
    .line 1639
    .local v3, "winOffsetY":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@5
    add-int/2addr v4, v3

    #@6
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@8
    .line 1640
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@a
    .line 1642
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@c
    add-int v0, v4, p2

    #@e
    .line 1643
    .local v0, "bottom":I
    if-le v0, p6, :cond_0

    #@10
    .line 1645
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@12
    sub-int v5, v0, p6

    #@14
    sub-int/2addr v4, v5

    #@15
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@17
    .line 1648
    :cond_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@19
    if-ge v4, p5, :cond_1

    #@1b
    .line 1651
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1d
    .line 1653
    sub-int v1, p6, p5

    #@1f
    .line 1654
    .local v1, "displayFrameHeight":I
    if-eqz p7, :cond_2

    #@21
    if-le p2, v1, :cond_2

    #@23
    .line 1655
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@25
    .line 1661
    .end local v1    # "displayFrameHeight":I
    :cond_1
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@27
    sub-int/2addr v4, v3

    #@28
    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@2a
    .line 1663
    return v2

    #@2b
    .line 1657
    .restart local v1    # "displayFrameHeight":I
    :cond_2
    const/4 v2, 0x0

    #@2c
    goto :goto_0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1283
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 1284
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1283
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1290
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1291
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1c
    invoke-virtual {v1}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    #@1f
    .line 1296
    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 1297
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@25
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@2b
    .line 1298
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@2d
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2f
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@32
    .line 1303
    :goto_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@34
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    #@37
    move-result-object v1

    #@38
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@3a
    .line 1306
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@3c
    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@3e
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    #@41
    .line 1310
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@43
    invoke-virtual {p1, v1, v0, v0}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    #@46
    .line 1313
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@48
    invoke-virtual {v1}, Landroid/view/View;->getRawLayoutDirection()I

    #@4b
    move-result v1

    #@4c
    const/4 v2, 0x2

    #@4d
    if-ne v1, v2, :cond_4

    #@4f
    .line 1312
    :goto_1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    #@51
    .line 1282
    return-void

    #@52
    .line 1300
    :cond_3
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@54
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@56
    goto :goto_0

    #@57
    .line 1313
    :cond_4
    const/4 v0, 0x0

    #@58
    goto :goto_1
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    #@0
    .prologue
    .line 1388
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1389
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/View;

    #@c
    .line 1390
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@e
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1391
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    #@1b
    .line 1387
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 11
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    #@0
    .prologue
    .line 1669
    sub-int v10, p6, p5

    #@2
    .line 1670
    .local v10, "winOffsetX":I
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4
    add-int v8, v0, v10

    #@6
    .line 1671
    .local v8, "anchorLeftInScreen":I
    sub-int v9, p8, v8

    #@8
    .line 1672
    .local v9, "spaceRight":I
    if-ltz v8, :cond_0

    #@a
    if-gt p3, v9, :cond_0

    #@c
    .line 1673
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    :cond_0
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move v2, p3

    #@11
    move/from16 v3, p5

    #@13
    move/from16 v4, p6

    #@15
    move/from16 v5, p7

    #@17
    move/from16 v6, p8

    #@19
    move/from16 v7, p9

    #@1b
    .line 1676
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1678
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 1681
    :cond_1
    const/4 v0, 0x0

    #@24
    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 12
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    #@0
    .prologue
    .line 1607
    sub-int v11, p6, p5

    #@2
    .line 1608
    .local v11, "winOffsetY":I
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4
    add-int v8, v0, v11

    #@6
    .line 1609
    .local v8, "anchorTopInScreen":I
    sub-int v10, p8, v8

    #@8
    .line 1610
    .local v10, "spaceBelow":I
    if-ltz v8, :cond_0

    #@a
    if-gt p3, v10, :cond_0

    #@c
    .line 1611
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 1614
    :cond_0
    sub-int v0, v8, p4

    #@10
    sub-int v9, v0, p7

    #@12
    .line 1615
    .local v9, "spaceAbove":I
    if-gt p3, v9, :cond_2

    #@14
    .line 1617
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1618
    add-int p2, p2, p4

    #@1a
    .line 1620
    :cond_1
    sub-int v0, p5, p3

    #@1c
    add-int/2addr v0, p2

    #@1d
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@1f
    .line 1622
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    :cond_2
    move-object v0, p0

    #@22
    move-object v1, p1

    #@23
    move v2, p3

    #@24
    move/from16 v3, p5

    #@26
    move/from16 v4, p6

    #@28
    move/from16 v5, p7

    #@2a
    move/from16 v6, p8

    #@2c
    move/from16 v7, p9

    #@2e
    .line 1625
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 1627
    const/4 v0, 0x1

    #@35
    return v0

    #@36
    .line 1630
    :cond_3
    const/4 v0, 0x0

    #@37
    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 26
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    #@0
    .prologue
    .line 2137
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
    .line 2138
    :cond_0
    return-void

    #@d
    .line 2141
    :cond_1
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@11
    move-object/from16 v20, v0

    #@13
    .line 2142
    .local v20, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object/from16 v0, p0

    #@15
    iget v11, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    #@17
    .line 2144
    .local v11, "gravity":I
    if-eqz p2, :cond_8

    #@19
    move-object/from16 v0, p0

    #@1b
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@1d
    move/from16 v0, p3

    #@1f
    if-ne v4, v0, :cond_2

    #@21
    move-object/from16 v0, p0

    #@23
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@25
    move/from16 v0, p4

    #@27
    if-eq v4, v0, :cond_8

    #@29
    :cond_2
    const/16 v19, 0x1

    #@2b
    .line 2145
    .local v19, "needsUpdate":Z
    :goto_0
    if-eqz v20, :cond_3

    #@2d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    move-object/from16 v0, p1

    #@33
    if-eq v4, v0, :cond_9

    #@35
    .line 2146
    :cond_3
    move-object/from16 v0, p0

    #@37
    move-object/from16 v1, p1

    #@39
    move/from16 v2, p3

    #@3b
    move/from16 v3, p4

    #@3d
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    #@40
    .line 2153
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    #@42
    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@44
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@47
    move-result-object v6

    #@48
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@4a
    .line 2154
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@4c
    move/from16 v21, v0

    #@4e
    .line 2155
    .local v21, "oldGravity":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@50
    move/from16 v23, v0

    #@52
    .line 2156
    .local v23, "oldWidth":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@54
    move/from16 v22, v0

    #@56
    .line 2157
    .local v22, "oldHeight":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@58
    move/from16 v24, v0

    #@5a
    .line 2158
    .local v24, "oldX":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@5c
    move/from16 v25, v0

    #@5e
    .line 2162
    .local v25, "oldY":I
    if-gez p5, :cond_5

    #@60
    .line 2163
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Landroid/widget/PopupWindow;->mWidth:I

    #@64
    move/from16 p5, v0

    #@66
    .line 2165
    :cond_5
    if-gez p6, :cond_6

    #@68
    .line 2166
    move-object/from16 v0, p0

    #@6a
    iget v0, v0, Landroid/widget/PopupWindow;->mHeight:I

    #@6c
    move/from16 p6, v0

    #@6e
    .line 2169
    :cond_6
    move-object/from16 v0, p0

    #@70
    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@72
    move-object/from16 v0, p0

    #@74
    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@76
    move-object/from16 v4, p0

    #@78
    move-object/from16 v5, p1

    #@7a
    move/from16 v9, p5

    #@7c
    move/from16 v10, p6

    #@7e
    invoke-direct/range {v4 .. v11}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    #@81
    move-result v18

    #@82
    .line 2171
    .local v18, "aboveAnchor":Z
    move-object/from16 v0, p0

    #@84
    move/from16 v1, v18

    #@86
    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@89
    .line 2173
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@8b
    move/from16 v0, v21

    #@8d
    if-ne v0, v4, :cond_7

    #@8f
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@91
    move/from16 v0, v24

    #@93
    if-eq v0, v4, :cond_b

    #@95
    :cond_7
    const/16 v17, 0x1

    #@97
    .line 2178
    .local v17, "paramsChanged":Z
    :goto_2
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@99
    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@9b
    if-gez p5, :cond_d

    #@9d
    move/from16 v15, p5

    #@9f
    :goto_3
    if-gez p6, :cond_e

    #@a1
    move/from16 v16, p6

    #@a3
    :goto_4
    move-object/from16 v12, p0

    #@a5
    invoke-virtual/range {v12 .. v17}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@a8
    .line 2135
    return-void

    #@a9
    .line 2144
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "paramsChanged":Z
    .end local v18    # "aboveAnchor":Z
    .end local v19    # "needsUpdate":Z
    .end local v21    # "oldGravity":I
    .end local v22    # "oldHeight":I
    .end local v23    # "oldWidth":I
    .end local v24    # "oldX":I
    .end local v25    # "oldY":I
    :cond_8
    const/16 v19, 0x0

    #@ab
    .restart local v19    # "needsUpdate":Z
    goto :goto_0

    #@ac
    .line 2145
    :cond_9
    if-eqz v19, :cond_a

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@b2
    if-eqz v4, :cond_3

    #@b4
    .line 2147
    :cond_a
    if-eqz v19, :cond_4

    #@b6
    .line 2149
    move/from16 v0, p3

    #@b8
    move-object/from16 v1, p0

    #@ba
    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    #@bc
    .line 2150
    move/from16 v0, p4

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    #@c2
    goto/16 :goto_1

    #@c4
    .line 2173
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "aboveAnchor":Z
    .restart local v21    # "oldGravity":I
    .restart local v22    # "oldHeight":I
    .restart local v23    # "oldWidth":I
    .restart local v24    # "oldX":I
    .restart local v25    # "oldY":I
    :cond_b
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@c6
    move/from16 v0, v25

    #@c8
    if-ne v0, v4, :cond_7

    #@ca
    .line 2174
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@cc
    move/from16 v0, v23

    #@ce
    if-ne v0, v4, :cond_7

    #@d0
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@d2
    move/from16 v0, v22

    #@d4
    if-eq v0, v4, :cond_c

    #@d6
    const/16 v17, 0x1

    #@d8
    .restart local v17    # "paramsChanged":Z
    goto :goto_2

    #@d9
    .end local v17    # "paramsChanged":Z
    :cond_c
    const/16 v17, 0x0

    #@db
    .restart local v17    # "paramsChanged":Z
    goto :goto_2

    #@dc
    .line 2178
    :cond_d
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@de
    goto :goto_3

    #@df
    :cond_e
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@e1
    move/from16 v16, v0

    #@e3
    goto :goto_4
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    #@0
    .prologue
    .line 1240
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1241
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@6
    .line 1243
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1247
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 1248
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1249
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@18
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 1239
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1251
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@20
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@25
    goto :goto_0

    #@26
    .line 1254
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    #@28
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    #@2b
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 10

    #@0
    .prologue
    .line 1801
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@8
    if-eqz v8, :cond_1

    #@a
    .line 1802
    :cond_0
    return-void

    #@b
    .line 1805
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@d
    .line 1806
    .local v4, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@f
    .line 1809
    .local v3, "contentView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v2

    #@13
    .line 1810
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v8, v2, Landroid/view/ViewGroup;

    #@15
    if-eqz v8, :cond_3

    #@17
    move-object v1, v2

    #@18
    .line 1811
    check-cast v1, Landroid/view/ViewGroup;

    #@1a
    .line 1817
    :goto_0
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    #@1d
    .line 1819
    const/4 v8, 0x0

    #@1e
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@20
    .line 1820
    const/4 v8, 0x1

    #@21
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    #@23
    .line 1827
    iget-object v6, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    #@25
    .line 1828
    .local v6, "exitTransition":Landroid/transition/Transition;
    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    #@27
    if-eqz v8, :cond_5

    #@29
    if-eqz v6, :cond_5

    #@2b
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_5

    #@31
    .line 1830
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@37
    .line 1831
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@39
    or-int/lit8 v8, v8, 0x10

    #@3b
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3d
    .line 1832
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3f
    or-int/lit8 v8, v8, 0x8

    #@41
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@43
    .line 1833
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@45
    const v9, -0x20001

    #@48
    and-int/2addr v8, v9

    #@49
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@4b
    .line 1834
    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@4d
    invoke-interface {v8, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@50
    .line 1839
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@52
    if-eqz v8, :cond_4

    #@54
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    #@56
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Landroid/view/View;

    #@5c
    .line 1840
    :goto_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    #@5f
    move-result-object v5

    #@60
    .line 1841
    .local v5, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    #@62
    invoke-direct {v8, p0, v5}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    #@65
    invoke-virtual {v6, v8}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@68
    .line 1848
    new-instance v8, Landroid/widget/PopupWindow$4;

    #@6a
    invoke-direct {v8, p0, v4, v1, v3}, Landroid/widget/PopupWindow$4;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@6d
    .line 1847
    invoke-virtual {v4, v6, v0, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/transition/Transition$TransitionListener;)V

    #@70
    .line 1859
    .end local v5    # "epicenter":Landroid/graphics/Rect;
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    #@73
    .line 1861
    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@75
    if-eqz v8, :cond_2

    #@77
    .line 1862
    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@79
    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@7c
    .line 1800
    :cond_2
    return-void

    #@7d
    .line 1813
    .end local v6    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    const/4 v1, 0x0

    #@7e
    .local v1, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    #@7f
    .line 1839
    .end local v1    # "contentHolder":Landroid/view/ViewGroup;
    .restart local v6    # "exitTransition":Landroid/transition/Transition;
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v0, 0x0

    #@80
    .local v0, "anchorRoot":Landroid/view/View;
    goto :goto_1

    #@81
    .line 1855
    .end local v0    # "anchorRoot":Landroid/view/View;
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    invoke-direct {p0, v4, v1, v3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@84
    goto :goto_2
.end method

.method public getAnimationStyle()I
    .locals 1

    #@0
    .prologue
    .line 554
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 534
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@2
    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 1014
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2
    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    #@0
    .prologue
    .line 686
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@2
    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 1728
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
    .line 1743
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1763
    new-instance v2, Landroid/graphics/Rect;

    #@3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@6
    .line 1764
    .local v2, "displayFrame":Landroid/graphics/Rect;
    if-eqz p3, :cond_1

    #@8
    .line 1765
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    #@b
    .line 1770
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    #@d
    .line 1771
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@10
    .line 1773
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    #@12
    .line 1776
    .local v1, "bottomEdge":I
    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@14
    if-eqz v6, :cond_2

    #@16
    .line 1777
    aget v6, v0, v8

    #@18
    sub-int v6, v1, v6

    #@1a
    sub-int v3, v6, p2

    #@1c
    .line 1781
    .local v3, "distanceToBottom":I
    :goto_1
    aget v6, v0, v8

    #@1e
    iget v7, v2, Landroid/graphics/Rect;->top:I

    #@20
    sub-int/2addr v6, v7

    #@21
    add-int v4, v6, p2

    #@23
    .line 1784
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v5

    #@27
    .line 1785
    .local v5, "returnedHeight":I
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@29
    if-eqz v6, :cond_0

    #@2b
    .line 1786
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@2d
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@32
    .line 1787
    iget-object v6, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@34
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@36
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    #@38
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@3a
    add-int/2addr v6, v7

    #@3b
    sub-int/2addr v5, v6

    #@3c
    .line 1790
    :cond_0
    return v5

    #@3d
    .line 1767
    .end local v0    # "anchorPos":[I
    .end local v1    # "bottomEdge":I
    .end local v3    # "distanceToBottom":I
    .end local v4    # "distanceToTop":I
    .end local v5    # "returnedHeight":I
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@40
    goto :goto_0

    #@41
    .line 1779
    .restart local v0    # "anchorPos":[I
    .restart local v1    # "bottomEdge":I
    :cond_2
    aget v6, v0, v8

    #@43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@46
    move-result v7

    #@47
    add-int/2addr v6, v7

    #@48
    sub-int v6, v1, v6

    #@4a
    sub-int v3, v6, p2

    #@4c
    .restart local v3    # "distanceToBottom":I
    goto :goto_1
.end method

.method public getOverlapAnchor()Z
    .locals 1

    #@0
    .prologue
    .line 1092
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@2
    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    #@0
    .prologue
    .line 727
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 1046
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2
    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    #@0
    .prologue
    .line 961
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@2
    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    #@0
    .prologue
    .line 1272
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    #@2
    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    #@0
    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@2
    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 801
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@2
    return v0
.end method

.method public isFocusable()Z
    .locals 1

    #@0
    .prologue
    .line 657
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@2
    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 881
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@2
    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    #@0
    .prologue
    .line 769
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@2
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 1101
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
    .line 850
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@4
    if-gez v2, :cond_1

    #@6
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 851
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
    .line 853
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
    .line 738
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@2
    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 839
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    #@2
    .line 838
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    #@0
    .prologue
    .line 587
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    #@2
    .line 586
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 922
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    #@2
    .line 923
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@5
    .line 921
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
    .line 488
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@4
    .line 499
    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@6
    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 500
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    #@c
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    #@e
    .line 503
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    #@10
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    #@13
    move-result v0

    #@14
    .line 507
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    #@17
    move-result v2

    #@18
    .line 508
    .local v2, "count":I
    const/4 v1, -0x1

    #@19
    .line 509
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@1c
    .line 510
    if-eq v3, v0, :cond_2

    #@1e
    .line 511
    move v1, v3

    #@1f
    .line 518
    :cond_0
    if-eq v0, v6, :cond_3

    #@21
    if-eq v1, v6, :cond_3

    #@23
    .line 519
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v5

    #@27
    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    .line 520
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2f
    .line 487
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    #@30
    .line 509
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
    .line 522
    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@35
    .line 523
    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@37
    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 829
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    #@2
    .line 828
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 819
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    #@2
    .line 818
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    #@0
    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 614
    return-void

    #@7
    .line 617
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@9
    .line 619
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@b
    if-nez v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 620
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@19
    .line 623
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@1b
    if-nez v0, :cond_2

    #@1d
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 624
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
    .line 631
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@30
    if-eqz v0, :cond_3

    #@32
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 612
    :cond_3
    :goto_0
    return-void

    #@37
    .line 635
    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3c
    move-result-object v0

    #@3d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3f
    .line 636
    const/16 v1, 0x16

    #@41
    .line 635
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
    .line 545
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    #@2
    .line 544
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 395
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 394
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 450
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    .line 449
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 418
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 417
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    #@0
    .prologue
    .line 677
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    #@2
    .line 676
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 1032
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    #@2
    .line 1031
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    #@0
    .prologue
    .line 569
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    #@3
    .line 568
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 703
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    #@2
    .line 702
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 893
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    #@2
    .line 892
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 939
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    #@2
    .line 938
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 1930
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 1929
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    #@0
    .prologue
    .line 790
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    #@2
    .line 789
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 1080
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    #@2
    .line 1079
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 717
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    #@2
    .line 716
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 870
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    #@5
    .line 869
    return-void

    #@6
    .line 870
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
    .line 646
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    #@2
    .line 645
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    #@0
    .prologue
    .line 970
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    #@5
    .line 969
    return-void

    #@6
    .line 970
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
    .line 757
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    #@2
    .line 756
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    #@0
    .prologue
    .line 1064
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    #@2
    .line 1063
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
    .line 999
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@2
    .line 1000
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@4
    .line 998
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    #@0
    .prologue
    .line 952
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    #@2
    .line 951
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1172
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    #@4
    .line 1171
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    #@0
    .prologue
    .line 1193
    const v0, 0x800033

    #@3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    #@6
    .line 1192
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1217
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
    .line 1218
    :cond_0
    return-void

    #@c
    .line 1221
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@11
    .line 1223
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    #@14
    .line 1225
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@16
    .line 1226
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@18
    .line 1228
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    #@1f
    move-result-object v2

    #@20
    .line 1229
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@23
    .line 1232
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    #@25
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    #@27
    move-object v0, p0

    #@28
    move-object v1, p1

    #@29
    move v3, p2

    #@2a
    move v4, p3

    #@2b
    move v7, p4

    #@2c
    .line 1231
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIII)Z

    #@2f
    move-result v8

    #@30
    .line 1233
    .local v8, "aboveAnchor":Z
    invoke-direct {p0, v8}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    #@33
    .line 1234
    if-eqz p1, :cond_2

    #@35
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@38
    move-result v0

    #@39
    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@3b
    .line 1236
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@3e
    .line 1216
    return-void

    #@3f
    .line 1234
    :cond_2
    const/4 v0, -0x1

    #@40
    goto :goto_0
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
    .line 1134
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
    .line 1135
    :cond_0
    return-void

    #@c
    .line 1138
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@e
    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    #@11
    .line 1140
    invoke-direct {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    #@14
    .line 1142
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    #@17
    .line 1143
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    #@19
    .line 1145
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    #@1c
    move-result-object v0

    #@1d
    .line 1146
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@20
    .line 1149
    if-eqz p2, :cond_2

    #@22
    .line 1150
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@24
    .line 1153
    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@26
    .line 1154
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@28
    .line 1156
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    #@2b
    .line 1133
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
    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    #@7
    .line 1118
    return-void
.end method

.method public update()V
    .locals 7

    #@0
    .prologue
    .line 1948
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    iget-object v5, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@8
    if-nez v5, :cond_1

    #@a
    .line 1949
    :cond_0
    return-void

    #@b
    .line 1953
    :cond_1
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@d
    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    #@13
    .line 1955
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    #@14
    .line 1957
    .local v4, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@17
    move-result v0

    #@18
    .line 1958
    .local v0, "newAnim":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1a
    if-eq v0, v5, :cond_2

    #@1c
    .line 1959
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1e
    .line 1960
    const/4 v4, 0x1

    #@1f
    .line 1963
    :cond_2
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@21
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@24
    move-result v1

    #@25
    .line 1964
    .local v1, "newFlags":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@27
    if-eq v1, v5, :cond_3

    #@29
    .line 1965
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2b
    .line 1966
    const/4 v4, 0x1

    #@2c
    .line 1969
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    #@2f
    move-result v2

    #@30
    .line 1970
    .local v2, "newGravity":I
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@32
    if-eq v2, v5, :cond_4

    #@34
    .line 1971
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@36
    .line 1972
    const/4 v4, 0x1

    #@37
    .line 1975
    :cond_4
    if-eqz v4, :cond_5

    #@39
    .line 1976
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@3c
    .line 1977
    iget-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@3e
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@40
    invoke-interface {v5, v6, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@43
    .line 1947
    :cond_5
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1992
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v6

    #@6
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@8
    .line 1993
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
    .line 1990
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
    .line 2009
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
    .line 2008
    return-void
.end method

.method public update(IIIIZ)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 2028
    if-ltz p3, :cond_0

    #@3
    .line 2029
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@5
    .line 2030
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@8
    .line 2033
    :cond_0
    if-ltz p4, :cond_1

    #@a
    .line 2034
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@c
    .line 2035
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@f
    .line 2038
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_2

    #@15
    iget-object v8, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    #@17
    if-nez v8, :cond_3

    #@19
    .line 2039
    :cond_2
    return-void

    #@1a
    .line 2043
    :cond_3
    iget-object v8, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@1c
    invoke-virtual {v8}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@22
    .line 2045
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    move v7, p5

    #@23
    .line 2047
    .local v7, "update":Z
    iget v8, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@25
    if-gez v8, :cond_d

    #@27
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    #@29
    .line 2048
    .local v1, "finalWidth":I
    :goto_0
    if-eq p3, v9, :cond_4

    #@2b
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2d
    if-eq v8, v1, :cond_4

    #@2f
    .line 2049
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@31
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@33
    .line 2050
    const/4 v7, 0x1

    #@34
    .line 2053
    .end local v7    # "update":Z
    :cond_4
    iget v8, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@36
    if-gez v8, :cond_e

    #@38
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    #@3a
    .line 2054
    .local v0, "finalHeight":I
    :goto_1
    if-eq p4, v9, :cond_5

    #@3c
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@3e
    if-eq v8, v0, :cond_5

    #@40
    .line 2055
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@42
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@44
    .line 2056
    const/4 v7, 0x1

    #@45
    .line 2059
    :cond_5
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@47
    if-eq v8, p1, :cond_6

    #@49
    .line 2060
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4b
    .line 2061
    const/4 v7, 0x1

    #@4c
    .line 2064
    :cond_6
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4e
    if-eq v8, p2, :cond_7

    #@50
    .line 2065
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    #@52
    .line 2066
    const/4 v7, 0x1

    #@53
    .line 2069
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    #@56
    move-result v3

    #@57
    .line 2070
    .local v3, "newAnim":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@59
    if-eq v3, v8, :cond_8

    #@5b
    .line 2071
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@5d
    .line 2072
    const/4 v7, 0x1

    #@5e
    .line 2075
    :cond_8
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@60
    invoke-direct {p0, v8}, Landroid/widget/PopupWindow;->computeFlags(I)I

    #@63
    move-result v4

    #@64
    .line 2076
    .local v4, "newFlags":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@66
    if-eq v4, v8, :cond_9

    #@68
    .line 2077
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6a
    .line 2078
    const/4 v7, 0x1

    #@6b
    .line 2081
    :cond_9
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    #@6e
    move-result v5

    #@6f
    .line 2082
    .local v5, "newGravity":I
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@71
    if-eq v5, v8, :cond_a

    #@73
    .line 2083
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@75
    .line 2084
    const/4 v7, 0x1

    #@76
    .line 2088
    :cond_a
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@78
    if-eqz v8, :cond_f

    #@7a
    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    #@7c
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7f
    move-result-object v8

    #@80
    check-cast v8, Landroid/view/View;

    #@82
    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityViewId()I

    #@85
    move-result v2

    #@86
    .line 2089
    .local v2, "newAccessibilityIdOfAnchor":I
    :goto_2
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@88
    if-eq v2, v8, :cond_b

    #@8a
    .line 2090
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@8c
    .line 2091
    const/4 v7, 0x1

    #@8d
    .line 2094
    :cond_b
    if-eqz v7, :cond_c

    #@8f
    .line 2095
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    #@92
    .line 2096
    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    #@94
    iget-object v9, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    #@96
    invoke-interface {v8, v9, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@99
    .line 2027
    :cond_c
    return-void

    #@9a
    .line 2047
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAccessibilityIdOfAnchor":I
    .end local v3    # "newAnim":I
    .end local v4    # "newFlags":I
    .end local v5    # "newGravity":I
    .restart local v7    # "update":Z
    :cond_d
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    #@9c
    .restart local v1    # "finalWidth":I
    goto :goto_0

    #@9d
    .line 2053
    .end local v7    # "update":Z
    :cond_e
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    #@9f
    .restart local v0    # "finalHeight":I
    goto :goto_1

    #@a0
    .line 2088
    .restart local v3    # "newAnim":I
    .restart local v4    # "newFlags":I
    .restart local v5    # "newGravity":I
    :cond_f
    const/4 v2, -0x1

    #@a1
    .restart local v2    # "newAccessibilityIdOfAnchor":I
    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, v2

    #@4
    move v4, v2

    #@5
    move v5, p2

    #@6
    move v6, p3

    #@7
    .line 2111
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    #@a
    .line 2110
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    #@0
    .prologue
    .line 2131
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
    move v5, p4

    #@6
    move v6, p5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    #@a
    .line 2130
    return-void
.end method
