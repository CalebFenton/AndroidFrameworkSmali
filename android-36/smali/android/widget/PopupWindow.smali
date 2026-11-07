.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABOVE_ANCHOR_STATE_SET:[I

.field private static final greylist-max-o ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final greylist-max-o DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private greylist mAboveAnchor:Z

.field private greylist-max-p mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mAllowScrollingAnchorParent:Z

.field private greylist mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorXoff:I

.field private greylist-max-o mAnchorYoff:I

.field private greylist-max-o mAnchoredGravity:I

.field private greylist mAnimationStyle:I

.field private greylist-max-o mAttachedInDecor:Z

.field private greylist-max-o mAttachedInDecorSet:Z

.field private blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private greylist mBackgroundView:Landroid/view/View;

.field private greylist-max-p mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mClipToScreen:Z

.field private greylist-max-o mClippingEnabled:Z

.field private greylist mContentView:Landroid/view/View;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private greylist-max-o mElevation:F

.field private greylist-max-o mEnterTransition:Landroid/transition/Transition;

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mExitTransition:Landroid/transition/Transition;

.field private greylist-max-o mFocusable:Z

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHeight:I

.field private greylist mHeightMode:I

.field private greylist-max-o mIgnoreCheekPress:Z

.field private greylist-max-o mInputMethodMode:I

.field private greylist-max-o mIsAnchorRootAttached:Z

.field private greylist mIsDropdown:Z

.field private greylist mIsShowing:Z

.field private greylist-max-o mIsTransitioningToDismiss:Z

.field private greylist mLastHeight:I

.field private greylist mLastWidth:I

.field private greylist mLayoutInScreen:Z

.field private greylist-max-o mLayoutInsetDecor:Z

.field private greylist-max-r mNotTouchModal:Z

.field private final greylist-max-o mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-p mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private greylist-max-o mOutsideTouchable:Z

.field private greylist-max-p mOverlapAnchor:Z

.field private greylist-max-o mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPopupViewInitialLayoutDirectionInherited:Z

.field private greylist-max-o mSoftInputMode:I

.field private greylist-max-o mSplitTouchEnabled:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpAppLocation:[I

.field private final greylist-max-o mTmpDrawingLocation:[I

.field private final greylist-max-o mTmpScreenLocation:[I

.field private greylist mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private greylist-max-o mTouchable:Z

.field private greylist-max-o mWidth:I

.field private greylist mWidthMode:I

.field private greylist mWindowLayoutType:I

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$0x_ylo_rVcDtWMJ6Hi3r2rqQ1EU(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/widget/PopupWindow;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DcwrQHyoN5xOfp9rZ8TGiebc06c(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissImmediate(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I
    .registers 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    const v0, 0x10100aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 364
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 365
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 299
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 309
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 143
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 177
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 180
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 182
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 186
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 187
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 190
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 191
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 198
    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 203
    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 221
    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 226
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 228
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 231
    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 237
    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 252
    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 268
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 271
    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 317
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 318
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 320
    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 322
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 323
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 324
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 329
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 330
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 331
    .local v0, "animStyle":I
    const v2, 0x1030312

    if-ne v0, v2, :cond_90

    .line 332
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_92

    .line 334
    :cond_90
    iput v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 336
    .end local v0    # "animStyle":I
    :goto_92
    goto :goto_95

    .line 337
    :cond_93
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 340
    :goto_95
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 343
    .local v0, "enterTransition":Landroid/transition/Transition;
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 344
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .local v1, "exitTransition":Landroid/transition/Transition;
    goto :goto_b6

    .line 347
    .end local v1    # "exitTransition":Landroid/transition/Transition;
    :cond_ae
    if-nez v0, :cond_b2

    const/4 v1, 0x0

    goto :goto_b6

    :cond_b2
    invoke-virtual {v0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    .line 350
    .restart local v1    # "exitTransition":Landroid/transition/Transition;
    :goto_b6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 353
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 354
    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 378
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 408
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;IIZ)V
    .registers 8
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 143
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 177
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 180
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 182
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 186
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 187
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 190
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 191
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 198
    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 203
    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 221
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 226
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 228
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 231
    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 237
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 252
    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 268
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 271
    new-instance v0, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 423
    if-eqz p1, :cond_6e

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 425
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 428
    :cond_6e
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 430
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 431
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 432
    return-void
.end method

.method private greylist-max-o alignToAnchor()V
    .registers 11

    .line 2509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move-object v2, v0

    .line 2510
    .local v2, "anchor":Landroid/view/View;
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2511
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2513
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2515
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v7, -0x1

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2517
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_3f
    return-void
.end method

.method private greylist computeAnimationResource()I
    .registers 3

    .line 1703
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1704
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 1705
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    .line 1706
    const v0, 0x1030306

    goto :goto_14

    .line 1707
    :cond_11
    const v0, 0x1030305

    .line 1705
    :goto_14
    return v0

    .line 1709
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 1711
    :cond_17
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private greylist-max-o computeFlags(I)I
    .registers 5
    .param p1, "curFlags"    # I

    .line 1655
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1663
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_c

    .line 1664
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1666
    :cond_c
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1b

    .line 1667
    or-int/lit8 p1, p1, 0x8

    .line 1668
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1669
    or-int/2addr p1, v1

    goto :goto_21

    .line 1671
    :cond_1b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 1672
    or-int/2addr p1, v1

    .line 1674
    :cond_21
    :goto_21
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_27

    .line 1675
    or-int/lit8 p1, p1, 0x10

    .line 1677
    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_2e

    .line 1678
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1680
    :cond_2e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_38

    .line 1681
    :cond_36
    or-int/lit16 p1, p1, 0x200

    .line 1683
    :cond_38
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1684
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1686
    :cond_41
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_47

    .line 1687
    or-int/lit16 p1, p1, 0x100

    .line 1689
    :cond_47
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_4e

    .line 1690
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1692
    :cond_4e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_54

    .line 1693
    or-int/lit8 p1, p1, 0x20

    .line 1695
    :cond_54
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_5b

    .line 1696
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1698
    :cond_5b
    return p1
.end method

.method private greylist-max-o computeGravity()I
    .registers 3

    .line 1597
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_8

    const v0, 0x800033

    goto :goto_a

    :cond_8
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1598
    .local v0, "gravity":I
    :goto_a
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_19

    .line 1599
    :cond_16
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 1601
    :cond_19
    return v0
.end method

.method private greylist-max-o createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 7
    .param p1, "contentView"    # Landroid/view/View;

    .line 1522
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1524
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1525
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1527
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1530
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1531
    .local v2, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1533
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    return-object v2
.end method

.method private greylist-max-o createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 6
    .param p1, "contentView"    # Landroid/view/View;

    .line 1545
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1547
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_f

    .line 1548
    const/4 v1, -0x2

    .local v1, "height":I
    goto :goto_10

    .line 1550
    .end local v1    # "height":I
    :cond_f
    const/4 v1, -0x1

    .line 1553
    .restart local v1    # "height":I
    :goto_10
    new-instance v2, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1554
    .local v2, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1555
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1556
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1558
    return-object v2
.end method

.method private greylist-max-o dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .line 2144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2145
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2148
    :cond_b
    if-eqz p2, :cond_10

    .line 2149
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2154
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2155
    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 2156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2157
    return-void
.end method

.method private greylist-max-o getAppRootView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;

    .line 2520
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2521
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2520
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 2522
    .local v0, "appWindowView":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 2523
    return-object v0

    .line 2525
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getTransition(I)Landroid/transition/Transition;
    .registers 5
    .param p1, "resId"    # I

    .line 519
    if-eqz p1, :cond_25

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_25

    .line 520
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 521
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 522
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_25

    .line 523
    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_21

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    .line 524
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 525
    .local v2, "isEmpty":Z
    :goto_22
    if-nez v2, :cond_25

    .line 526
    return-object v1

    .line 530
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    .end local v2    # "isEmpty":Z
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-p invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1571
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 1572
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1575
    :cond_c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1576
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1578
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1580
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_24

    .line 1583
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1585
    :cond_24
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;IIIIIIII)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 272
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private greylist-max-o positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "width"    # I
    .param p3, "drawingLocationX"    # I
    .param p4, "screenLocationX"    # I
    .param p5, "displayFrameLeft"    # I
    .param p6, "displayFrameRight"    # I
    .param p7, "canResize"    # Z

    .line 1901
    const/4 v0, 0x1

    .line 1904
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1905
    .local v1, "winOffsetX":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1907
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    .line 1908
    .local v2, "right":I
    if-le v2, p6, :cond_14

    .line 1910
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1913
    :cond_14
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_24

    .line 1916
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1918
    sub-int v3, p6, p5

    .line 1919
    .local v3, "displayFrameWidth":I
    if-eqz p7, :cond_23

    if-le p2, v3, :cond_23

    .line 1920
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_24

    .line 1922
    :cond_23
    const/4 v0, 0x0

    .line 1926
    .end local v3    # "displayFrameWidth":I
    :cond_24
    :goto_24
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1928
    return v0
.end method

.method private greylist-max-o positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 13
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "height"    # I
    .param p3, "drawingLocationY"    # I
    .param p4, "screenLocationY"    # I
    .param p5, "displayFrameTop"    # I
    .param p6, "displayFrameBottom"    # I
    .param p7, "canResize"    # Z

    .line 1850
    const/4 v0, 0x1

    .line 1852
    .local v0, "fitsInDisplay":Z
    sub-int v1, p4, p3

    .line 1853
    .local v1, "winOffsetY":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1854
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1856
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    .line 1857
    .local v2, "bottom":I
    if-le v2, p6, :cond_16

    .line 1859
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1862
    :cond_16
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_26

    .line 1865
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1867
    sub-int v3, p6, p5

    .line 1868
    .local v3, "displayFrameHeight":I
    if-eqz p7, :cond_25

    if-le p2, v3, :cond_25

    .line 1869
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_26

    .line 1871
    :cond_25
    const/4 v0, 0x0

    .line 1875
    .end local v3    # "displayFrameHeight":I
    :cond_26
    :goto_26
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1877
    return v0
.end method

.method private greylist preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1477
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_64

    .line 1482
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    .line 1483
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x10408cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1488
    :cond_1b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_24

    .line 1489
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1494
    :cond_24
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_38

    .line 1495
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1496
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 1498
    :cond_38
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1501
    :goto_3c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1502
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    .line 1505
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 1509
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1511
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1512
    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1513
    return-void

    .line 1478
    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setLayoutDirectionFromAnchor()V
    .registers 4

    .line 1588
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    .line 1589
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1590
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1b

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_1b

    .line 1591
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1594
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1b
    return-void
.end method

.method private greylist-max-o tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 23
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "xOffset"    # I
    .param p3, "width"    # I
    .param p4, "anchorWidth"    # I
    .param p5, "drawingLocationX"    # I
    .param p6, "screenLocationX"    # I
    .param p7, "displayFrameLeft"    # I
    .param p8, "displayFrameRight"    # I
    .param p9, "allowResize"    # Z

    .line 1883
    sub-int v0, p6, p5

    .line 1884
    .local v0, "winOffsetX":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v0

    .line 1885
    .local v1, "anchorLeftInScreen":I
    sub-int v2, p8, v1

    .line 1886
    .local v2, "spaceRight":I
    const/4 v3, 0x1

    move/from16 v9, p7

    if-lt v1, v9, :cond_11

    move/from16 v6, p3

    if-gt v6, v2, :cond_13

    .line 1887
    return v3

    .line 1886
    :cond_11
    move/from16 v6, p3

    .line 1890
    :cond_13
    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 1892
    return v3

    .line 1895
    :cond_24
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .registers 24
    .param p1, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "yOffset"    # I
    .param p3, "height"    # I
    .param p4, "anchorHeight"    # I
    .param p5, "drawingLocationY"    # I
    .param p6, "screenLocationY"    # I
    .param p7, "displayFrameTop"    # I
    .param p8, "displayFrameBottom"    # I
    .param p9, "allowResize"    # Z

    .line 1821
    move/from16 v2, p3

    move/from16 v5, p7

    sub-int v8, p6, p5

    .line 1822
    .local v8, "winOffsetY":I
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v9, v0, v8

    .line 1823
    .local v9, "anchorTopInScreen":I
    sub-int v10, p8, v9

    .line 1824
    .local v10, "spaceBelow":I
    const/4 v11, 0x1

    if-lt v9, v5, :cond_12

    if-gt v2, v10, :cond_12

    .line 1825
    return v11

    .line 1828
    :cond_12
    sub-int v0, v9, p4

    sub-int v12, v0, v5

    .line 1829
    .local v12, "spaceAbove":I
    if-gt v2, v12, :cond_27

    .line 1831
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_1f

    .line 1832
    add-int v0, p2, p4

    .end local p2    # "yOffset":I
    .local v0, "yOffset":I
    goto :goto_21

    .line 1831
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_1f
    move/from16 v0, p2

    .line 1834
    .end local p2    # "yOffset":I
    .restart local v0    # "yOffset":I
    :goto_21
    sub-int v1, p5, v2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1836
    return v11

    .line 1839
    .end local v0    # "yOffset":I
    .restart local p2    # "yOffset":I
    :cond_27
    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 1841
    return v11

    .line 1844
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .registers 4
    .param p1, "onBackInvokedDispatcher"    # Landroid/window/OnBackInvokedDispatcher;

    .line 2091
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2092
    .local v0, "backCallback":Landroid/window/OnBackInvokedCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 2093
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    .line 2094
    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 2097
    :cond_c
    return-void
.end method

.method private greylist-max-o update(Landroid/view/View;ZIIII)V
    .registers 28
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 2401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_be

    .line 2405
    :cond_16
    iget-object v11, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2406
    .local v11, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget v7, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2408
    .local v7, "gravity":I
    if-eqz p2, :cond_26

    iget v2, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v2, v9, :cond_24

    iget v2, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v2, v10, :cond_26

    :cond_24
    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v14, v2

    .line 2409
    .local v14, "needsUpdate":Z
    if-eqz v11, :cond_3e

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3e

    if-eqz v14, :cond_37

    iget-boolean v2, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v2, :cond_37

    goto :goto_3e

    .line 2411
    :cond_37
    if-eqz v14, :cond_41

    .line 2413
    iput v9, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2414
    iput v10, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_41

    .line 2410
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v1, v9, v10, v7}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 2417
    :cond_41
    :goto_41
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2418
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2419
    .local v15, "oldGravity":I
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2420
    .local v3, "oldWidth":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2421
    .local v4, "oldHeight":I
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2422
    .local v5, "oldX":I
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2426
    .local v6, "oldY":I
    if-gez p5, :cond_59

    .line 2427
    iget v8, v0, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v20, v8

    move v8, v5

    move/from16 v5, v20

    .end local p5    # "width":I
    .local v8, "width":I
    goto :goto_5c

    .line 2426
    .end local v8    # "width":I
    .restart local p5    # "width":I
    :cond_59
    move v8, v5

    move/from16 v5, p5

    .line 2429
    .end local p5    # "width":I
    .local v5, "width":I
    .local v8, "oldX":I
    :goto_5c
    if-gez p6, :cond_66

    .line 2430
    iget v12, v0, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v20, v12

    move v12, v6

    move/from16 v6, v20

    .end local p6    # "height":I
    .local v12, "height":I
    goto :goto_69

    .line 2429
    .end local v12    # "height":I
    .restart local p6    # "height":I
    :cond_66
    move v12, v6

    move/from16 v6, p6

    .line 2433
    .end local p6    # "height":I
    .local v6, "height":I
    .local v12, "oldY":I
    :goto_69
    move/from16 v17, v3

    .end local v3    # "oldWidth":I
    .local v17, "oldWidth":I
    iget v3, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v18, v4

    .end local v4    # "oldHeight":I
    .local v18, "oldHeight":I
    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v19, v8

    .end local v8    # "oldX":I
    .local v19, "oldX":I
    iget-boolean v8, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move v10, v12

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v9, v19

    .end local v17    # "oldWidth":I
    .end local v18    # "oldHeight":I
    .end local v19    # "oldX":I
    .local v9, "oldX":I
    .local v10, "oldY":I
    .local v12, "oldWidth":I
    .local v13, "oldHeight":I
    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v8

    .line 2435
    move-object v1, v2

    move/from16 v18, v7

    move v7, v6

    move v6, v5

    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "width":I
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    .local v6, "width":I
    .local v7, "height":I
    .local v8, "aboveAnchor":Z
    .local v18, "gravity":I
    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 2437
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v15, v2, :cond_9f

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v9, v2, :cond_9f

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v10, v2, :cond_9f

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v2, :cond_9f

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v13, v2, :cond_9d

    goto :goto_9f

    :cond_9d
    const/4 v5, 0x0

    goto :goto_a0

    :cond_9f
    :goto_9f
    const/4 v5, 0x1

    .line 2444
    .local v5, "paramsChanged":Z
    :goto_a0
    if-gez v6, :cond_a4

    move v3, v6

    goto :goto_a7

    :cond_a4
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v2

    .line 2445
    .local v3, "newWidth":I
    :goto_a7
    if-gez v7, :cond_ab

    move v4, v7

    goto :goto_ae

    :cond_ab
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v2

    .line 2446
    .local v4, "newHeight":I
    :goto_ae
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v20, v16

    move-object/from16 v16, v1

    move/from16 v1, v20

    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v16, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2447
    return-void

    .line 2402
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "paramsChanged":Z
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "aboveAnchor":Z
    .end local v9    # "oldX":I
    .end local v10    # "oldY":I
    .end local v11    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v12    # "oldWidth":I
    .end local v13    # "oldHeight":I
    .end local v14    # "needsUpdate":Z
    .end local v15    # "oldGravity":I
    .end local v16    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "gravity":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    :cond_be
    :goto_be
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .registers 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 2481
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2483
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2484
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_e

    .line 2485
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2487
    :cond_e
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2489
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2490
    .local v1, "anchorRoot":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2491
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2493
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2494
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2495
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2496
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 2498
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2499
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2500
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2501
    return-void
.end method

.method protected final greylist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1615
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1621
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1622
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1623
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1624
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1625
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1626
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1628
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    .line 1629
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_33

    .line 1631
    :cond_30
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1634
    :goto_33
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3e

    .line 1635
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_44

    .line 1637
    :cond_3e
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1640
    :goto_44
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4f

    .line 1641
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_55

    .line 1643
    :cond_4f
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1646
    :goto_55
    const/16 v1, 0x4000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1651
    return-object v0
.end method

.method protected greylist-max-o detachFromAnchor()V
    .registers 5

    .line 2461
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 2462
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 2463
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2464
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2465
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2468
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_14
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_23

    :cond_22
    move-object v1, v2

    .line 2469
    .local v1, "anchorRoot":Landroid/view/View;
    :goto_23
    if-eqz v1, :cond_2f

    .line 2470
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2471
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2474
    :cond_2f
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2475
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    .line 2476
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    .line 2477
    return-void
.end method

.method public whitelist dismiss()V
    .registers 10

    .line 2027
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8b

    .line 2031
    :cond_e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2032
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 2034
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2037
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2038
    .local v2, "contentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_25

    .line 2039
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_26

    .line 2041
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    :cond_25
    const/4 v3, 0x0

    .line 2045
    .restart local v3    # "contentHolder":Landroid/view/ViewGroup;
    :goto_26
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 2047
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 2048
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 2055
    iget-object v4, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2056
    .local v4, "exitTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_7b

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_7b

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_41

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_7b

    .line 2059
    :cond_41
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2060
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2061
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2062
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2063
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2065
    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6d

    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x0

    .line 2066
    .local v6, "anchorRoot":Landroid/view/View;
    :goto_6e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    .line 2071
    .local v7, "epicenter":Landroid/graphics/Rect;
    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    .line 2078
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "anchorRoot":Landroid/view/View;
    .end local v7    # "epicenter":Landroid/graphics/Rect;
    goto :goto_7e

    .line 2079
    :cond_7b
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2083
    :goto_7e
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 2085
    iget-object v5, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v5, :cond_8a

    .line 2086
    iget-object v5, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v5}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2088
    :cond_8a
    return-void

    .line 2028
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "contentParent":Landroid/view/ViewParent;
    .end local v3    # "contentHolder":Landroid/view/ViewGroup;
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_8b
    :goto_8b
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 38
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 1735
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1736
    .local v4, "anchorHeight":I
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1737
    .local v11, "anchorWidth":I
    iget-boolean v2, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v2, :cond_15

    .line 1738
    sub-int v2, p4, v4

    .end local p4    # "yOffset":I
    .local v2, "yOffset":I
    goto :goto_17

    .line 1737
    .end local v2    # "yOffset":I
    .restart local p4    # "yOffset":I
    :cond_15
    move/from16 v2, p4

    .line 1742
    .end local p4    # "yOffset":I
    .restart local v2    # "yOffset":I
    :goto_17
    iget-object v12, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    .line 1743
    .local v12, "appScreenLocation":[I
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 1744
    .local v13, "appRootView":Landroid/view/View;
    invoke-virtual {v13, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1746
    iget-object v14, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    .line 1747
    .local v14, "screenLocation":[I
    invoke-virtual {v10, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1749
    iget-object v15, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1750
    .local v15, "drawingLocation":[I
    const/16 v16, 0x0

    aget v3, v14, v16

    aget v5, v12, v16

    sub-int/2addr v3, v5

    aput v3, v15, v16

    .line 1751
    const/4 v3, 0x1

    aget v5, v14, v3

    aget v6, v12, v3

    sub-int/2addr v5, v6

    aput v5, v15, v3

    .line 1752
    aget v5, v15, v16

    add-int v5, v5, p3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1753
    aget v5, v15, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1755
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1756
    .local v5, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v13, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1757
    const/4 v6, -0x1

    move/from16 v7, p5

    if-ne v7, v6, :cond_57

    .line 1758
    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .line 1760
    .end local p5    # "width":I
    .local v7, "width":I
    :cond_57
    move/from16 v8, p6

    if-ne v8, v6, :cond_61

    .line 1761
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    move v8, v6

    .line 1765
    .end local p6    # "height":I
    .local v8, "height":I
    :cond_61
    invoke-direct {v0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1766
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1767
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1771
    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    move/from16 v9, p7

    invoke-static {v9, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 1773
    .local v6, "hgrav":I
    const/4 v9, 0x5

    if-ne v6, v9, :cond_85

    .line 1774
    move/from16 p4, v3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v17, v7, v11

    sub-int v3, v3, v17

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_87

    .line 1773
    :cond_85
    move/from16 p4, v3

    .line 1778
    :goto_87
    aget v3, v15, p4

    move/from16 v17, v6

    .end local v6    # "hgrav":I
    .local v17, "hgrav":I
    aget v6, v14, p4

    move/from16 v18, v7

    .end local v7    # "width":I
    .local v18, "width":I
    iget v7, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v3

    move v3, v8

    .end local v8    # "height":I
    .local v3, "height":I
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v9

    const/4 v9, 0x0

    move-object/from16 v28, v13

    move/from16 v13, p4

    move-object/from16 p4, v28

    move/from16 v28, v11

    move-object v11, v5

    move/from16 v5, v19

    move/from16 v19, v18

    move-object/from16 v18, v12

    move/from16 v12, v17

    move/from16 v17, v28

    .end local v5    # "displayFrame":Landroid/graphics/Rect;
    .end local v13    # "appRootView":Landroid/view/View;
    .local v11, "displayFrame":Landroid/graphics/Rect;
    .local v12, "hgrav":I
    .local v17, "anchorWidth":I
    .local v18, "appScreenLocation":[I
    .local v19, "width":I
    .local p4, "appRootView":Landroid/view/View;
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v21

    .line 1783
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v22, v4

    .end local v2    # "yOffset":I
    .end local v3    # "height":I
    .end local v4    # "anchorHeight":I
    .local v21, "fitsVertical":Z
    .local v22, "anchorHeight":I
    .local v23, "yOffset":I
    .local v24, "height":I
    aget v5, v15, v16

    aget v6, v14, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v17

    move/from16 v3, v19

    .end local v17    # "anchorWidth":I
    .end local v19    # "width":I
    .local v3, "width":I
    .local v4, "anchorWidth":I
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v17

    .line 1788
    move/from16 v25, v3

    move/from16 v19, v4

    .end local v3    # "width":I
    .end local v4    # "anchorWidth":I
    .local v17, "fitsHorizontal":Z
    .local v19, "anchorWidth":I
    .local v25, "width":I
    if-eqz v21, :cond_e1

    if-nez v17, :cond_d5

    goto :goto_e1

    :cond_d5
    move/from16 v4, v19

    move/from16 v26, v23

    move/from16 v27, v24

    move/from16 v3, v25

    move/from16 v24, v22

    goto/16 :goto_15d

    .line 1789
    :cond_e1
    :goto_e1
    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1790
    .local v2, "scrollX":I
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 1791
    .local v3, "scrollY":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v7, v2, v25

    add-int v7, v7, p3

    add-int v8, v3, v24

    add-int v8, v8, v22

    add-int v8, v8, v23

    invoke-direct {v4, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1793
    .local v4, "r":Landroid/graphics/Rect;
    if-eqz p8, :cond_129

    invoke-virtual {v10, v4, v13}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 1795
    invoke-virtual {v10, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1796
    aget v5, v14, v16

    aget v6, v18, v16

    sub-int/2addr v5, v6

    aput v5, v15, v16

    .line 1797
    aget v5, v14, v13

    aget v6, v18, v13

    sub-int/2addr v5, v6

    aput v5, v15, v13

    .line 1798
    aget v5, v15, v16

    add-int v5, v5, p3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1799
    aget v5, v15, v13

    add-int v5, v5, v22

    add-int v5, v5, v23

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1802
    const/4 v5, 0x5

    if-ne v12, v5, :cond_129

    .line 1803
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v25, v19

    sub-int/2addr v5, v7

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1808
    :cond_129
    aget v5, v15, v13

    aget v6, v14, v13

    iget v7, v11, Landroid/graphics/Rect;->top:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v20, v2

    move/from16 v2, v23

    move-object/from16 v23, v4

    move/from16 v4, v22

    move/from16 v22, v3

    move/from16 v3, v24

    .end local v24    # "height":I
    .local v2, "yOffset":I
    .local v3, "height":I
    .local v4, "anchorHeight":I
    .local v20, "scrollX":I
    .local v22, "scrollY":I
    .local v23, "r":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1810
    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v24, v4

    .end local v2    # "yOffset":I
    .end local v3    # "height":I
    .end local v4    # "anchorHeight":I
    .local v24, "anchorHeight":I
    .local v26, "yOffset":I
    .local v27, "height":I
    aget v5, v15, v16

    aget v6, v14, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v19

    move/from16 v3, v25

    .end local v19    # "anchorWidth":I
    .end local v25    # "width":I
    .local v3, "width":I
    .local v4, "anchorWidth":I
    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    .line 1815
    .end local v20    # "scrollX":I
    .end local v22    # "scrollY":I
    .end local v23    # "r":Landroid/graphics/Rect;
    :goto_15d
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v2, v15, v13

    if-ge v0, v2, :cond_165

    move/from16 v16, v13

    :cond_165
    return v16
.end method

.method protected final greylist-max-o getAllowScrollingAnchorParent()Z
    .registers 2

    .line 955
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected greylist-max-o getAnchor()Landroid/view/View;
    .registers 2

    .line 2505
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .registers 2

    .line 619
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 2361
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 599
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .registers 3

    .line 496
    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1186
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .registers 2

    .line 750
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 1942
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 1957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1977
    const/4 v0, 0x0

    .line 1978
    .local v0, "displayFrame":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1980
    .local v1, "visibleDisplayFrame":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 1981
    .local v2, "appView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1982
    if-eqz p3, :cond_24

    .line 1987
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1988
    .end local v0    # "displayFrame":Landroid/graphics/Rect;
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 1989
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1990
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 1991
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    goto :goto_25

    .line 1993
    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .restart local v0    # "displayFrame":Landroid/graphics/Rect;
    :cond_24
    move-object v3, v1

    .line 1996
    .end local v0    # "displayFrame":Landroid/graphics/Rect;
    .restart local v3    # "displayFrame":Landroid/graphics/Rect;
    :goto_25
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    .line 1997
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1999
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2002
    .local v4, "bottomEdge":I
    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_37

    .line 2003
    aget v5, v0, v6

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .local v5, "distanceToBottom":I
    goto :goto_41

    .line 2005
    .end local v5    # "distanceToBottom":I
    :cond_37
    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    .line 2007
    .restart local v5    # "distanceToBottom":I
    :goto_41
    aget v6, v0, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    .line 2010
    .local v6, "distanceToTop":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2011
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_60

    .line 2012
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2013
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 2016
    :cond_60
    return v7
.end method

.method protected final greylist-max-o getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    .line 2170
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public whitelist getOverlapAnchor()Z
    .registers 2

    .line 1264
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public whitelist getSoftInputMode()I
    .registers 2

    .line 792
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final greylist-max-o getTransitionEpicenter()Landroid/graphics/Rect;
    .registers 9

    .line 2112
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_f

    :cond_e
    move-object v0, v1

    .line 2113
    .local v0, "anchor":Landroid/view/View;
    :goto_f
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2114
    .local v2, "decor":Landroid/view/View;
    if-eqz v0, :cond_4d

    if-nez v2, :cond_16

    goto :goto_4d

    .line 2118
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 2119
    .local v1, "anchorLocation":[I
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    .line 2122
    .local v3, "popupLocation":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2123
    .local v4, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2126
    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_4c

    .line 2127
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 2128
    .local v5, "offsetX":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 2129
    .local v6, "offsetY":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2130
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2133
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_4c
    return-object v4

    .line 2115
    .end local v1    # "anchorLocation":[I
    .end local v3    # "popupLocation":[I
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 1218
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public whitelist getWindowLayoutType()I
    .registers 2

    .line 1113
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected greylist-max-o hasContentView()Z
    .registers 2

    .line 2351
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected greylist-max-o hasDecorView()Z
    .registers 2

    .line 2356
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isAboveAnchor()Z
    .registers 2

    .line 1465
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public whitelist isAttachedInDecor()Z
    .registers 2

    .line 1052
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public greylist isClipToScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippedToScreen()Z
    .registers 2

    .line 924
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return v0
.end method

.method public whitelist isClippingEnabled()Z
    .registers 2

    .line 866
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public whitelist isFocusable()Z
    .registers 2

    .line 721
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public whitelist isLaidOutInScreen()Z
    .registers 2

    .line 1026
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public greylist isLayoutInScreenEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final greylist-max-o isLayoutInsetDecor()Z
    .registers 2

    .line 1091
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public whitelist isOutsideTouchable()Z
    .registers 2

    .line 834
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .registers 2

    .line 1273
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public whitelist isSplitTouchEnabled()Z
    .registers 5

    .line 966
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_18

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 967
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_17

    move v1, v2

    :cond_17
    return v1

    .line 969
    :cond_18
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public whitelist isTouchModal()Z
    .registers 2

    .line 1125
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isTouchable()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final greylist-max-o isTransitioningToDismiss()Z
    .registers 2

    .line 1293
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method greylist setAllowScrollingAnchorParent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 950
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 951
    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .registers 2
    .param p1, "animationStyle"    # I

    .line 651
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 652
    return-void
.end method

.method public whitelist setAttachedInDecor(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1068
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 1070
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 553
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 564
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_38

    .line 565
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 568
    .local v0, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v1

    .line 572
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 573
    .local v2, "count":I
    const/4 v3, -0x1

    .line 574
    .local v3, "belowAnchorStateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v2, :cond_21

    .line 575
    if-eq v4, v1, :cond_1e

    .line 576
    move v3, v4

    .line 577
    goto :goto_21

    .line 574
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 583
    .end local v4    # "i":I
    :cond_21
    :goto_21
    const/4 v4, -0x1

    if-eq v1, v4, :cond_33

    if-eq v3, v4, :cond_33

    .line 584
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_38

    .line 587
    :cond_33
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    .end local v0    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "belowAnchorStateIndex":I
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist setClipToScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 912
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 913
    return-void
.end method

.method public whitelist setClippingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 884
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 885
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 677
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    return-void

    .line 681
    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 683
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 684
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 687
    :cond_19
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 688
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 695
    :cond_2e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_48

    .line 699
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 703
    :cond_48
    return-void
.end method

.method protected final greylist-max-o setDropDown(Z)V
    .registers 2
    .param p1, "isDropDown"    # Z

    .line 1283
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1284
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 610
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 611
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 442
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 443
    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 515
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 516
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 465
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 466
    return-void
.end method

.method public whitelist setFocusable(Z)V
    .registers 2
    .param p1, "focusable"    # Z

    .line 741
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 742
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 1204
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 1205
    return-void
.end method

.method public whitelist setIgnoreCheekPress()V
    .registers 2

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 635
    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 767
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 768
    return-void
.end method

.method public whitelist setIsClippedToScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 939
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 940
    return-void
.end method

.method public whitelist setIsLaidOutInScreen(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1039
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1040
    return-void
.end method

.method public greylist setLayoutInScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 1015
    return-void
.end method

.method public greylist setLayoutInsetDecor(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1086
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 1087
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2165
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2166
    return-void
.end method

.method public whitelist setOutsideTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 855
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 856
    return-void
.end method

.method public whitelist setOverlapAnchor(Z)V
    .registers 2
    .param p1, "overlapAnchor"    # Z

    .line 1252
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 1253
    return-void
.end method

.method protected final greylist-max-o setShowing(Z)V
    .registers 2
    .param p1, "isShowing"    # Z

    .line 1278
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1279
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 781
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 782
    return-void
.end method

.method public whitelist setSplitTouchEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 986
    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 987
    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 710
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 711
    return-void
.end method

.method public whitelist setTouchModal(Z)V
    .registers 3
    .param p1, "touchModal"    # Z

    .line 1142
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 1143
    return-void
.end method

.method public whitelist setTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .line 822
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 823
    return-void
.end method

.method protected final greylist-max-o setTransitioningToDismiss(Z)V
    .registers 2
    .param p1, "transitioningToDismiss"    # Z

    .line 1288
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1289
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 1236
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 1237
    return-void
.end method

.method public whitelist setWindowLayoutMode(II)V
    .registers 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1171
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1172
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1173
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .line 1104
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 1105
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;)V
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 1362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1363
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 1383
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1384
    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1407
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_12

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    goto :goto_52

    .line 1411
    :cond_12
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1413
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1416
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1418
    nop

    .line 1419
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1420
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1422
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .end local p1    # "anchor":Landroid/view/View;
    .end local p2    # "xoff":I
    .end local p3    # "yoff":I
    .end local p4    # "gravity":I
    .local v2, "anchor":Landroid/view/View;
    .local v4, "xoff":I
    .local v5, "yoff":I
    .local v8, "gravity":I
    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    .line 1424
    .local p1, "aboveAnchor":Z
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1425
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p2

    int-to-long p2, p2

    goto :goto_47

    :cond_45
    const-wide/16 p2, -0x1

    :goto_47
    iput-wide p2, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 1427
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1428
    return-void

    .line 1407
    .end local v2    # "anchor":Landroid/view/View;
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "xoff":I
    .end local v5    # "yoff":I
    .end local v8    # "gravity":I
    .local p1, "anchor":Landroid/view/View;
    .restart local p2    # "xoff":I
    .restart local p3    # "yoff":I
    .restart local p4    # "gravity":I
    :cond_4d
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .line 1408
    .end local p1    # "anchor":Landroid/view/View;
    .end local p2    # "xoff":I
    .end local p3    # "yoff":I
    .end local p4    # "gravity":I
    .restart local v2    # "anchor":Landroid/view/View;
    .restart local v4    # "xoff":I
    .restart local v5    # "yoff":I
    .restart local v8    # "gravity":I
    :goto_52
    return-void
.end method

.method public greylist showAtLocation(Landroid/os/IBinder;III)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1328
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2a

    .line 1332
    :cond_b
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1334
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1338
    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    .line 1340
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1341
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1343
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1344
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1346
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1347
    return-void

    .line 1329
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public whitelist showAtLocation(Landroid/view/View;III)V
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 1311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    .line 1312
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1313
    return-void
.end method

.method public whitelist update()V
    .registers 7

    .line 2190
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    .line 2194
    :cond_d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2196
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 2198
    .local v1, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 2199
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1d

    .line 2200
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2201
    const/4 v1, 0x1

    .line 2204
    :cond_1d
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 2205
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2a

    .line 2206
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2207
    const/4 v1, 0x1

    .line 2210
    :cond_2a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    .line 2211
    .local v4, "newGravity":I
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_35

    .line 2212
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2213
    const/4 v1, 0x1

    .line 2216
    :cond_35
    if-eqz v1, :cond_48

    .line 2217
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_44

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    :goto_45
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2219
    :cond_48
    return-void

    .line 2191
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .end local v4    # "newGravity":I
    :cond_49
    :goto_49
    return-void
.end method

.method public whitelist update(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2237
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2238
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .local v4, "width":I
    .local v5, "height":I
    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2239
    return-void
.end method

.method public whitelist update(IIII)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 2254
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v1, "x":I
    .local v2, "y":I
    .local v3, "width":I
    .local v4, "height":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2255
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 2273
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v3, :cond_11

    .line 2274
    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2275
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2278
    :cond_11
    if-ltz v4, :cond_18

    .line 2279
    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2280
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2283
    :cond_18
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_b2

    .line 2287
    :cond_26
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2289
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v6, p5

    .line 2291
    .local v6, "update":Z
    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_33

    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    goto :goto_35

    :cond_33
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 2292
    .local v7, "finalWidth":I
    :goto_35
    const/4 v8, -0x1

    if-eq v3, v8, :cond_41

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_41

    .line 2293
    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2294
    const/4 v6, 0x1

    .line 2297
    :cond_41
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_48

    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    goto :goto_4a

    :cond_48
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 2298
    .local v9, "finalHeight":I
    :goto_4a
    if-eq v4, v8, :cond_55

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_55

    .line 2299
    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2300
    const/4 v6, 0x1

    .line 2303
    :cond_55
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_5c

    .line 2304
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2305
    const/4 v6, 0x1

    .line 2308
    :cond_5c
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_63

    .line 2309
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2310
    const/4 v6, 0x1

    .line 2313
    :cond_63
    invoke-direct {v0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    .line 2314
    .local v8, "newAnim":I
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_6e

    .line 2315
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2316
    const/4 v6, 0x1

    .line 2319
    :cond_6e
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    .line 2320
    .local v10, "newFlags":I
    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_7b

    .line 2321
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2322
    const/4 v6, 0x1

    .line 2325
    :cond_7b
    invoke-direct {v0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    .line 2326
    .local v11, "newGravity":I
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_86

    .line 2327
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2328
    const/4 v6, 0x1

    .line 2331
    :cond_86
    const/4 v12, 0x0

    .line 2332
    .local v12, "anchor":Landroid/view/View;
    const/4 v13, -0x1

    .line 2334
    .local v13, "newAccessibilityIdOfAnchor":I
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_a1

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a1

    .line 2335
    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    .line 2336
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    .line 2339
    :cond_a1
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_ac

    .line 2340
    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 2341
    const/4 v6, 0x1

    .line 2344
    :cond_ac
    if-eqz v6, :cond_b1

    .line 2345
    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2347
    :cond_b1
    return-void

    .line 2284
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "update":Z
    .end local v7    # "finalWidth":I
    .end local v8    # "newAnim":I
    .end local v9    # "finalHeight":I
    .end local v10    # "newFlags":I
    .end local v11    # "newGravity":I
    .end local v12    # "anchor":Landroid/view/View;
    .end local v13    # "newAccessibilityIdOfAnchor":I
    :cond_b2
    :goto_b2
    return-void
.end method

.method public whitelist update(Landroid/view/View;II)V
    .registers 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 2375
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .end local p1    # "anchor":Landroid/view/View;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v1, "anchor":Landroid/view/View;
    .local v5, "width":I
    .local v6, "height":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2376
    return-void
.end method

.method public whitelist update(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 2395
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "anchor":Landroid/view/View;
    .end local p2    # "xoff":I
    .end local p3    # "yoff":I
    .end local p4    # "width":I
    .end local p5    # "height":I
    .local v1, "anchor":Landroid/view/View;
    .local v3, "xoff":I
    .local v4, "yoff":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    .line 2396
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2223
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 2224
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2225
    return-void
.end method

.method protected final greylist updateAboveAnchor(Z)V
    .registers 4
    .param p1, "aboveAnchor"    # Z

    .line 1433
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2b

    .line 1434
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1436
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1440
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 1441
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1e

    .line 1442
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 1444
    :cond_1e
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 1447
    :cond_26
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1451
    :cond_2b
    :goto_2b
    return-void
.end method
