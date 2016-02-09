.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;,
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$1;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0
    .param p1, "keyIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 133
    new-array v0, v3, [I

    #@4
    const/4 v1, -0x5

    #@5
    aput v1, v0, v2

    #@7
    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    #@9
    .line 134
    new-array v0, v3, [I

    #@b
    const v1, 0x101023c

    #@e
    aput v1, v0, v2

    #@10
    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    #@12
    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@15
    move-result v0

    #@16
    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    #@18
    .line 228
    const/16 v0, 0xc

    #@1a
    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    #@1c
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 280
    const v0, 0x1160084

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 283
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
    .line 288
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 137
    const/4 v6, -0x1

    #@4
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@6
    .line 151
    const/4 v6, 0x2

    #@7
    new-array v6, v6, [I

    #@9
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@b
    .line 178
    const/4 v6, 0x0

    #@c
    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    #@e
    .line 179
    const/4 v6, 0x1

    #@f
    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    #@11
    .line 180
    const/4 v6, 0x1

    #@12
    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    #@14
    .line 199
    const/4 v6, -0x1

    #@15
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@17
    .line 200
    const/4 v6, -0x1

    #@18
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    #@1a
    .line 203
    const/16 v6, 0xc

    #@1c
    new-array v6, v6, [I

    #@1e
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    #@20
    .line 207
    const/4 v6, -0x1

    #@21
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@23
    .line 211
    new-instance v6, Landroid/graphics/Rect;

    #@25
    const/4 v7, 0x0

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2c
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    #@2e
    .line 213
    new-instance v6, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@30
    const/4 v7, 0x0

    #@31
    invoke-direct {v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$SwipeTracker;)V

    #@34
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@36
    .line 218
    const/4 v6, 0x1

    #@37
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    #@39
    .line 229
    sget v6, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    #@3b
    new-array v6, v6, [I

    #@3d
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@3f
    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    const/4 v7, 0x1

    #@42
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@45
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    #@47
    .line 242
    new-instance v6, Landroid/graphics/Rect;

    #@49
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@4c
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    #@4e
    .line 256
    new-instance v6, Landroid/inputmethodservice/KeyboardView$1;

    #@50
    invoke-direct {v6, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    #@53
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@55
    .line 291
    sget-object v6, Landroid/R$styleable;->KeyboardView:[I

    #@57
    .line 290
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5a
    move-result-object v0

    #@5b
    .line 295
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v6, "layout_inflater"

    #@5e
    .line 294
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/view/LayoutInflater;

    #@64
    .line 297
    .local v3, "inflate":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    #@65
    .line 300
    .local v5, "previewLayout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@68
    move-result v4

    #@69
    .line 302
    .local v4, "n":I
    const/4 v2, 0x0

    #@6a
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@6c
    .line 303
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@6f
    move-result v1

    #@70
    .line 305
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@73
    .line 302
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 307
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@79
    move-result-object v6

    #@7a
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    #@7c
    goto :goto_1

    #@7d
    .line 310
    :pswitch_1
    const/4 v6, 0x0

    #@7e
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@81
    move-result v6

    #@82
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    #@84
    goto :goto_1

    #@85
    .line 313
    :pswitch_2
    const/4 v6, 0x0

    #@86
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@89
    move-result v5

    #@8a
    goto :goto_1

    #@8b
    .line 316
    :pswitch_3
    const/4 v6, 0x0

    #@8c
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@8f
    move-result v6

    #@90
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    #@92
    goto :goto_1

    #@93
    .line 319
    :pswitch_4
    const/16 v6, 0x50

    #@95
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@98
    move-result v6

    #@99
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    #@9b
    goto :goto_1

    #@9c
    .line 322
    :pswitch_5
    const/16 v6, 0x12

    #@9e
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@a1
    move-result v6

    #@a2
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    #@a4
    goto :goto_1

    #@a5
    .line 325
    :pswitch_6
    const/high16 v6, -0x1000000

    #@a7
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@aa
    move-result v6

    #@ab
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    #@ad
    goto :goto_1

    #@ae
    .line 328
    :pswitch_7
    const/16 v6, 0xe

    #@b0
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@b3
    move-result v6

    #@b4
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    #@b6
    goto :goto_1

    #@b7
    .line 331
    :pswitch_8
    const/4 v6, 0x0

    #@b8
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@bb
    move-result v6

    #@bc
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    #@be
    goto :goto_1

    #@bf
    .line 334
    :pswitch_9
    const/4 v6, 0x0

    #@c0
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@c3
    move-result v6

    #@c4
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    #@c6
    goto :goto_1

    #@c7
    .line 337
    :pswitch_a
    const/4 v6, 0x0

    #@c8
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@cb
    move-result v6

    #@cc
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    #@ce
    goto :goto_1

    #@cf
    .line 342
    .end local v1    # "attr":I
    :cond_0
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@d1
    .line 343
    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    #@d3
    .line 342
    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@d6
    move-result-object v0

    #@d7
    .line 344
    const/4 v6, 0x2

    #@d8
    const/high16 v7, 0x3f000000    # 0.5f

    #@da
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@dd
    move-result v6

    #@de
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    #@e0
    .line 346
    new-instance v6, Landroid/widget/PopupWindow;

    #@e2
    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    #@e5
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@e7
    .line 347
    if-eqz v5, :cond_1

    #@e9
    .line 348
    const/4 v6, 0x0

    #@ea
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@ed
    move-result-object v6

    #@ee
    check-cast v6, Landroid/widget/TextView;

    #@f0
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@f2
    .line 349
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@f4
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    #@f7
    move-result v6

    #@f8
    float-to-int v6, v6

    #@f9
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    #@fb
    .line 350
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@fd
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@ff
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@102
    .line 351
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@104
    const/4 v7, 0x0

    #@105
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@108
    .line 356
    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@10a
    const/4 v7, 0x0

    #@10b
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    #@10e
    .line 358
    new-instance v6, Landroid/widget/PopupWindow;

    #@110
    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    #@113
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@115
    .line 359
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@117
    const/4 v7, 0x0

    #@118
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11b
    .line 362
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    #@11d
    .line 365
    new-instance v6, Landroid/graphics/Paint;

    #@11f
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@122
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@124
    .line 366
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@126
    const/4 v7, 0x1

    #@127
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@12a
    .line 367
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@12c
    const/4 v7, 0x0

    #@12d
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    #@130
    .line 368
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@132
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@134
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@137
    .line 369
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@139
    const/16 v7, 0xff

    #@13b
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    #@13e
    .line 371
    new-instance v6, Landroid/graphics/Rect;

    #@140
    const/4 v7, 0x0

    #@141
    const/4 v8, 0x0

    #@142
    const/4 v9, 0x0

    #@143
    const/4 v10, 0x0

    #@144
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    #@147
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    #@149
    .line 372
    new-instance v6, Ljava/util/HashMap;

    #@14b
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@14e
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    #@150
    .line 373
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    #@152
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    #@154
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@157
    .line 375
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    #@15a
    move-result-object v6

    #@15b
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@15e
    move-result-object v6

    #@15f
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    #@161
    const/high16 v7, 0x43fa0000    # 500.0f

    #@163
    mul-float/2addr v6, v7

    #@164
    float-to-int v6, v6

    #@165
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    #@167
    .line 376
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    #@16a
    move-result-object v6

    #@16b
    .line 377
    const v7, 0x1120047

    #@16e
    .line 376
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@171
    move-result v6

    #@172
    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    #@174
    .line 379
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@177
    move-result-object v6

    #@178
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@17a
    .line 380
    const-string/jumbo v6, "audio"

    #@17d
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@180
    move-result-object v6

    #@181
    check-cast v6, Landroid/media/AudioManager;

    #@183
    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    #@185
    .line 382
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    #@188
    .line 383
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    #@18b
    .line 287
    return-void

    #@18c
    .line 353
    :cond_1
    const/4 v6, 0x0

    #@18d
    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    #@18f
    goto/16 :goto_2

    #@191
    .line 305
    nop

    #@192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    if-eqz p1, :cond_0

    #@a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x3

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 582
    const/4 v0, 0x0

    #@12
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    #@19
    move-result v0

    #@1a
    .line 581
    if-eqz v0, :cond_0

    #@1c
    .line 583
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    .line 585
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x320

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v4, -0x1

    #@4
    .line 1439
    if-ne p3, v4, :cond_0

    #@6
    return-void

    #@7
    .line 1440
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@9
    aget-object v0, v1, p3

    #@b
    .line 1441
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@d
    array-length v1, v1

    #@e
    if-le v1, v2, :cond_2

    #@10
    .line 1442
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    #@12
    .line 1443
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    #@14
    add-long/2addr v2, v6

    #@15
    cmp-long v1, p1, v2

    #@17
    if-gez v1, :cond_1

    #@19
    .line 1444
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    #@1b
    if-ne p3, v1, :cond_1

    #@1d
    .line 1445
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@23
    array-length v2, v2

    #@24
    rem-int/2addr v1, v2

    #@25
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@27
    .line 1446
    return-void

    #@28
    .line 1448
    :cond_1
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@2a
    .line 1449
    return-void

    #@2b
    .line 1452
    :cond_2
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    #@2d
    add-long/2addr v2, v6

    #@2e
    cmp-long v1, p1, v2

    #@30
    if-gtz v1, :cond_3

    #@32
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    #@34
    if-eq p3, v1, :cond_4

    #@36
    .line 1453
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    #@39
    .line 1438
    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    #@0
    .prologue
    .line 609
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 610
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@5
    .line 611
    .local v3, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-nez v3, :cond_1

    #@7
    return-void

    #@8
    .line 612
    :cond_1
    array-length v4, v3

    #@9
    .line 613
    .local v4, "length":I
    const/4 v0, 0x0

    #@a
    .line 614
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@d
    .line 615
    aget-object v2, v3, v1

    #@f
    .line 616
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@11
    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@13
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v5

    #@17
    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    #@19
    add-int/2addr v5, v6

    #@1a
    add-int/2addr v0, v5

    #@1b
    .line 614
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 618
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_3

    #@20
    if-nez v4, :cond_4

    #@22
    :cond_3
    return-void

    #@23
    .line 619
    :cond_4
    int-to-float v5, v0

    #@24
    const v6, 0x3fb33333    # 1.4f

    #@27
    mul-float/2addr v5, v6

    #@28
    int-to-float v6, v4

    #@29
    div-float/2addr v5, v6

    #@2a
    float-to-int v5, v5

    #@2b
    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@2d
    .line 620
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@2f
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@31
    mul-int/2addr v5, v6

    #@32
    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@34
    .line 608
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 808
    if-eq p1, v5, :cond_0

    #@4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@6
    array-length v3, v3

    #@7
    if-ge p1, v3, :cond_0

    #@9
    .line 809
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@b
    aget-object v2, v3, p1

    #@d
    .line 810
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 811
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@13
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    #@15
    invoke-interface {v3, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    #@18
    .line 812
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@1a
    invoke-interface {v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    #@1d
    .line 831
    :goto_0
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    #@1f
    .line 832
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    #@21
    .line 807
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    return-void

    #@22
    .line 814
    .restart local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@24
    aget v0, v3, v4

    #@26
    .line 816
    .local v0, "code":I
    sget v3, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    #@28
    new-array v1, v3, [I

    #@2a
    .line 817
    .local v1, "codes":[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    #@2d
    .line 818
    invoke-direct {p0, p2, p3, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    #@30
    .line 820
    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 821
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@36
    if-eq v3, v5, :cond_3

    #@38
    .line 822
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@3a
    sget-object v4, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    #@3c
    const/4 v5, -0x5

    #@3d
    invoke-interface {v3, v5, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    #@40
    .line 826
    :goto_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@42
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@44
    aget v0, v3, v4

    #@46
    .line 828
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@48
    invoke-interface {v3, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    #@4b
    .line 829
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@4d
    invoke-interface {v3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    #@50
    goto :goto_0

    #@51
    .line 824
    :cond_3
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@53
    goto :goto_1
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    #@0
    .prologue
    .line 1416
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1417
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@a
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@d
    .line 1418
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    #@10
    .line 1419
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    #@13
    .line 1415
    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    #@0
    .prologue
    .line 757
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@4
    .line 758
    .local v13, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/16 v16, -0x1

    #@6
    .line 759
    .local v16, "primaryIndex":I
    const/4 v5, -0x1

    #@7
    .line 760
    .local v5, "closestKey":I
    move-object/from16 v0, p0

    #@9
    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@b
    move/from16 v17, v0

    #@d
    add-int/lit8 v6, v17, 0x1

    #@f
    .line 761
    .local v6, "closestKeyDist":I
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@13
    move-object/from16 v17, v0

    #@15
    const v18, 0x7fffffff

    #@18
    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    #@1b
    .line 762
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@1f
    move-object/from16 v17, v0

    #@21
    move-object/from16 v0, v17

    #@23
    move/from16 v1, p1

    #@25
    move/from16 v2, p2

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    #@2a
    move-result-object v15

    #@2b
    .line 763
    .local v15, "nearestKeyIndices":[I
    array-length v12, v15

    #@2c
    .line 764
    .local v12, "keyCount":I
    const/4 v8, 0x0

    #@2d
    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_6

    #@2f
    .line 765
    aget v17, v15, v8

    #@31
    aget-object v11, v13, v17

    #@33
    .line 766
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v7, 0x0

    #@34
    .line 767
    .local v7, "dist":I
    move/from16 v0, p1

    #@36
    move/from16 v1, p2

    #@38
    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    #@3b
    move-result v9

    #@3c
    .line 768
    .local v9, "isInside":Z
    if-eqz v9, :cond_0

    #@3e
    .line 769
    aget v16, v15, v8

    #@40
    .line 772
    :cond_0
    move-object/from16 v0, p0

    #@42
    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    #@44
    move/from16 v17, v0

    #@46
    if-eqz v17, :cond_3

    #@48
    .line 773
    move/from16 v0, p1

    #@4a
    move/from16 v1, p2

    #@4c
    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    #@4f
    move-result v7

    #@50
    move-object/from16 v0, p0

    #@52
    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    #@54
    move/from16 v17, v0

    #@56
    move/from16 v0, v17

    #@58
    if-ge v7, v0, :cond_3

    #@5a
    .line 775
    :goto_1
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@5c
    move-object/from16 v17, v0

    #@5e
    const/16 v18, 0x0

    #@60
    aget v17, v17, v18

    #@62
    const/16 v18, 0x20

    #@64
    move/from16 v0, v17

    #@66
    move/from16 v1, v18

    #@68
    if-le v0, v1, :cond_2

    #@6a
    .line 777
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@6c
    move-object/from16 v17, v0

    #@6e
    move-object/from16 v0, v17

    #@70
    array-length v14, v0

    #@71
    .line 778
    .local v14, "nCodes":I
    if-ge v7, v6, :cond_1

    #@73
    .line 779
    move v6, v7

    #@74
    .line 780
    aget v5, v15, v8

    #@76
    .line 783
    :cond_1
    if-nez p3, :cond_4

    #@78
    .line 764
    .end local v14    # "nCodes":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 772
    :cond_3
    if-eqz v9, :cond_2

    #@7d
    goto :goto_1

    #@7e
    .line 785
    .restart local v14    # "nCodes":I
    :cond_4
    const/4 v10, 0x0

    #@7f
    .local v10, "j":I
    :goto_2
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@83
    move-object/from16 v17, v0

    #@85
    move-object/from16 v0, v17

    #@87
    array-length v0, v0

    #@88
    move/from16 v17, v0

    #@8a
    move/from16 v0, v17

    #@8c
    if-ge v10, v0, :cond_2

    #@8e
    .line 786
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@92
    move-object/from16 v17, v0

    #@94
    aget v17, v17, v10

    #@96
    move/from16 v0, v17

    #@98
    if-le v0, v7, :cond_5

    #@9a
    .line 788
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@9e
    move-object/from16 v17, v0

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@a4
    move-object/from16 v18, v0

    #@a6
    add-int v19, v10, v14

    #@a8
    .line 789
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@ac
    move-object/from16 v20, v0

    #@ae
    move-object/from16 v0, v20

    #@b0
    array-length v0, v0

    #@b1
    move/from16 v20, v0

    #@b3
    sub-int v20, v20, v10

    #@b5
    sub-int v20, v20, v14

    #@b7
    .line 788
    move-object/from16 v0, v17

    #@b9
    move-object/from16 v1, v18

    #@bb
    move/from16 v2, v19

    #@bd
    move/from16 v3, v20

    #@bf
    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@c2
    .line 790
    add-int v17, v10, v14

    #@c4
    .line 791
    move-object/from16 v0, p3

    #@c6
    array-length v0, v0

    #@c7
    move/from16 v18, v0

    #@c9
    sub-int v18, v18, v10

    #@cb
    sub-int v18, v18, v14

    #@cd
    .line 790
    move-object/from16 v0, p3

    #@cf
    move-object/from16 v1, p3

    #@d1
    move/from16 v2, v17

    #@d3
    move/from16 v3, v18

    #@d5
    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@d8
    .line 792
    const/4 v4, 0x0

    #@d9
    .local v4, "c":I
    :goto_3
    if-ge v4, v14, :cond_2

    #@db
    .line 793
    add-int v17, v10, v4

    #@dd
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@df
    move-object/from16 v18, v0

    #@e1
    aget v18, v18, v4

    #@e3
    aput v18, p3, v17

    #@e5
    .line 794
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    #@e9
    move-object/from16 v17, v0

    #@eb
    add-int v18, v10, v4

    #@ed
    aput v7, v17, v18

    #@ef
    .line 792
    add-int/lit8 v4, v4, 0x1

    #@f1
    goto :goto_3

    #@f2
    .line 785
    .end local v4    # "c":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@f4
    goto :goto_2

    #@f5
    .line 801
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v14    # "nCodes":I
    :cond_6
    const/16 v17, -0x1

    #@f7
    move/from16 v0, v16

    #@f9
    move/from16 v1, v17

    #@fb
    if-ne v0, v1, :cond_7

    #@fd
    .line 802
    move/from16 v16, v5

    #@ff
    .line 804
    :cond_7
    return v16
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 840
    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 842
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a
    .line 843
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    #@c
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@e
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@10
    if-gez v3, :cond_0

    #@12
    :goto_0
    aget v0, v2, v0

    #@14
    int-to-char v0, v0

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 844
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    .line 843
    :cond_0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@21
    goto :goto_0

    #@22
    .line 846
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@24
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method private initGestureDetector()V
    .locals 3

    #@0
    .prologue
    .line 388
    new-instance v0, Landroid/view/GestureDetector;

    #@2
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    #@8
    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    #@b
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@e
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    #@10
    .line 440
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    #@16
    .line 387
    return-void
.end method

.method private onBufferDraw()V
    .locals 26

    #@0
    .prologue
    .line 643
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    #@a
    if-eqz v2, :cond_3

    #@c
    .line 644
    :cond_0
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@10
    if-eqz v2, :cond_1

    #@12
    move-object/from16 v0, p0

    #@14
    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    #@16
    if-eqz v2, :cond_2

    #@18
    .line 645
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@1c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@1f
    move-result v2

    #@20
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@23
    move-result v3

    #@24
    if-ne v2, v3, :cond_1

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@2a
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@2d
    move-result v2

    #@2e
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@31
    move-result v3

    #@32
    if-eq v2, v3, :cond_2

    #@34
    .line 647
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@37
    move-result v2

    #@38
    const/4 v3, 0x1

    #@39
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v24

    #@3d
    .line 648
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@40
    move-result v2

    #@41
    const/4 v3, 0x1

    #@42
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v13

    #@46
    .line 649
    .local v13, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@48
    move/from16 v0, v24

    #@4a
    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@4d
    move-result-object v2

    #@4e
    move-object/from16 v0, p0

    #@50
    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@52
    .line 650
    new-instance v2, Landroid/graphics/Canvas;

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@58
    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    #@5f
    .line 652
    .end local v13    # "height":I
    .end local v24    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    #@62
    .line 653
    const/4 v2, 0x0

    #@63
    move-object/from16 v0, p0

    #@65
    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    #@67
    .line 655
    :cond_3
    move-object/from16 v0, p0

    #@69
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    #@6b
    .line 656
    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    #@6f
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    #@71
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@74
    .line 658
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@78
    if-nez v2, :cond_4

    #@7a
    return-void

    #@7b
    .line 660
    :cond_4
    move-object/from16 v0, p0

    #@7d
    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    #@7f
    .line 661
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    #@83
    move-object/from16 v19, v0

    #@85
    .line 662
    .local v19, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    #@87
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    #@89
    .line 663
    .local v8, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    #@8d
    move-object/from16 v23, v0

    #@8f
    .line 664
    .local v23, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@91
    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@93
    move/from16 v16, v0

    #@95
    .line 665
    .local v16, "kbdPaddingLeft":I
    move-object/from16 v0, p0

    #@97
    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@99
    move/from16 v17, v0

    #@9b
    .line 666
    .local v17, "kbdPaddingTop":I
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@9f
    move-object/from16 v21, v0

    #@a1
    .line 667
    .local v21, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    #@a5
    .line 669
    .local v15, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    #@a7
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    #@a9
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@ac
    .line 670
    const/4 v9, 0x0

    #@ad
    .line 671
    .local v9, "drawSingleKey":Z
    if-eqz v15, :cond_5

    #@af
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_5

    #@b5
    .line 673
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@b7
    add-int v2, v2, v16

    #@b9
    add-int/lit8 v2, v2, -0x1

    #@bb
    iget v3, v8, Landroid/graphics/Rect;->left:I

    #@bd
    if-gt v2, v3, :cond_5

    #@bf
    .line 674
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@c1
    add-int v2, v2, v17

    #@c3
    add-int/lit8 v2, v2, -0x1

    #@c5
    iget v3, v8, Landroid/graphics/Rect;->top:I

    #@c7
    if-gt v2, v3, :cond_5

    #@c9
    .line 675
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@cb
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@cd
    add-int/2addr v2, v3

    #@ce
    add-int v2, v2, v16

    #@d0
    add-int/lit8 v2, v2, 0x1

    #@d2
    iget v3, v8, Landroid/graphics/Rect;->right:I

    #@d4
    if-lt v2, v3, :cond_5

    #@d6
    .line 676
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@d8
    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@da
    add-int/2addr v2, v3

    #@db
    add-int v2, v2, v17

    #@dd
    add-int/lit8 v2, v2, 0x1

    #@df
    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    #@e1
    if-lt v2, v3, :cond_5

    #@e3
    .line 677
    const/4 v9, 0x1

    #@e4
    .line 680
    :cond_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@e6
    const/4 v3, 0x0

    #@e7
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@ea
    .line 681
    move-object/from16 v0, v21

    #@ec
    array-length v0, v0

    #@ed
    move/from16 v20, v0

    #@ef
    .line 682
    .local v20, "keyCount":I
    const/4 v14, 0x0

    #@f0
    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    #@f2
    if-ge v14, v0, :cond_d

    #@f4
    .line 683
    aget-object v18, v21, v14

    #@f6
    .line 684
    .local v18, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v9, :cond_6

    #@f8
    move-object/from16 v0, v18

    #@fa
    if-eq v15, v0, :cond_6

    #@fc
    .line 682
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@fe
    goto :goto_0

    #@ff
    .line 687
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    #@102
    move-result-object v10

    #@103
    .line 688
    .local v10, "drawableState":[I
    move-object/from16 v0, v19

    #@105
    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@108
    .line 691
    move-object/from16 v0, v18

    #@10a
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@10c
    if-nez v2, :cond_a

    #@10e
    const/16 v22, 0x0

    #@110
    .line 693
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@113
    move-result-object v7

    #@114
    .line 694
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    #@116
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@118
    iget v3, v7, Landroid/graphics/Rect;->right:I

    #@11a
    if-ne v2, v3, :cond_7

    #@11c
    .line 695
    move-object/from16 v0, v18

    #@11e
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@120
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    #@122
    if-eq v2, v3, :cond_8

    #@124
    .line 696
    :cond_7
    move-object/from16 v0, v18

    #@126
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@128
    move-object/from16 v0, v18

    #@12a
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@12c
    const/4 v4, 0x0

    #@12d
    const/4 v5, 0x0

    #@12e
    move-object/from16 v0, v19

    #@130
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@133
    .line 698
    :cond_8
    move-object/from16 v0, v18

    #@135
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@137
    add-int v2, v2, v16

    #@139
    int-to-float v2, v2

    #@13a
    move-object/from16 v0, v18

    #@13c
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@13e
    add-int v3, v3, v17

    #@140
    int-to-float v3, v3

    #@141
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@144
    .line 699
    move-object/from16 v0, v19

    #@146
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@149
    .line 701
    if-eqz v22, :cond_c

    #@14b
    .line 703
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@14e
    move-result v2

    #@14f
    const/4 v3, 0x1

    #@150
    if-le v2, v3, :cond_b

    #@152
    move-object/from16 v0, v18

    #@154
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@156
    array-length v2, v2

    #@157
    const/4 v3, 0x2

    #@158
    if-ge v2, v3, :cond_b

    #@15a
    .line 704
    move-object/from16 v0, p0

    #@15c
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    #@15e
    int-to-float v2, v2

    #@15f
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@162
    .line 705
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@164
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@167
    .line 711
    :goto_3
    move-object/from16 v0, p0

    #@169
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    #@16b
    const/4 v3, 0x0

    #@16c
    const/4 v4, 0x0

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    #@171
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@174
    .line 714
    move-object/from16 v0, v18

    #@176
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@178
    move-object/from16 v0, v23

    #@17a
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@17c
    sub-int/2addr v2, v3

    #@17d
    move-object/from16 v0, v23

    #@17f
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@181
    sub-int/2addr v2, v3

    #@182
    div-int/lit8 v2, v2, 0x2

    #@184
    .line 715
    move-object/from16 v0, v23

    #@186
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@188
    .line 714
    add-int/2addr v2, v3

    #@189
    int-to-float v2, v2

    #@18a
    .line 716
    move-object/from16 v0, v18

    #@18c
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@18e
    move-object/from16 v0, v23

    #@190
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@192
    sub-int/2addr v3, v4

    #@193
    move-object/from16 v0, v23

    #@195
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@197
    sub-int/2addr v3, v4

    #@198
    div-int/lit8 v3, v3, 0x2

    #@19a
    int-to-float v3, v3

    #@19b
    .line 717
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    #@19e
    move-result v4

    #@19f
    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    #@1a2
    move-result v5

    #@1a3
    sub-float/2addr v4, v5

    #@1a4
    const/high16 v5, 0x40000000    # 2.0f

    #@1a6
    div-float/2addr v4, v5

    #@1a7
    .line 716
    add-float/2addr v3, v4

    #@1a8
    .line 717
    move-object/from16 v0, v23

    #@1aa
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@1ac
    int-to-float v4, v4

    #@1ad
    .line 716
    add-float/2addr v3, v4

    #@1ae
    .line 713
    move-object/from16 v0, v22

    #@1b0
    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@1b3
    .line 720
    const/4 v2, 0x0

    #@1b4
    const/4 v3, 0x0

    #@1b5
    const/4 v4, 0x0

    #@1b6
    const/4 v5, 0x0

    #@1b7
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@1ba
    .line 732
    :cond_9
    :goto_4
    move-object/from16 v0, v18

    #@1bc
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@1be
    neg-int v2, v2

    #@1bf
    sub-int v2, v2, v16

    #@1c1
    int-to-float v2, v2

    #@1c2
    move-object/from16 v0, v18

    #@1c4
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@1c6
    neg-int v3, v3

    #@1c7
    sub-int v3, v3, v17

    #@1c9
    int-to-float v3, v3

    #@1ca
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@1cd
    goto/16 :goto_1

    #@1cf
    .line 691
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, v18

    #@1d1
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    invoke-direct {v0, v2}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1d8
    move-result-object v2

    #@1d9
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v22

    #@1dd
    .local v22, "label":Ljava/lang/String;
    goto/16 :goto_2

    #@1df
    .line 707
    .end local v22    # "label":Ljava/lang/String;
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    #@1e1
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    #@1e3
    int-to-float v2, v2

    #@1e4
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@1e7
    .line 708
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@1e9
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@1ec
    goto/16 :goto_3

    #@1ee
    .line 721
    :cond_c
    move-object/from16 v0, v18

    #@1f0
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@1f2
    if-eqz v2, :cond_9

    #@1f4
    .line 722
    move-object/from16 v0, v18

    #@1f6
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@1f8
    move-object/from16 v0, v23

    #@1fa
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1fc
    sub-int/2addr v2, v3

    #@1fd
    move-object/from16 v0, v23

    #@1ff
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@201
    sub-int/2addr v2, v3

    #@202
    .line 723
    move-object/from16 v0, v18

    #@204
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@206
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@209
    move-result v3

    #@20a
    .line 722
    sub-int/2addr v2, v3

    #@20b
    div-int/lit8 v2, v2, 0x2

    #@20d
    .line 723
    move-object/from16 v0, v23

    #@20f
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@211
    .line 722
    add-int v11, v2, v3

    #@213
    .line 724
    .local v11, "drawableX":I
    move-object/from16 v0, v18

    #@215
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@217
    move-object/from16 v0, v23

    #@219
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@21b
    sub-int/2addr v2, v3

    #@21c
    move-object/from16 v0, v23

    #@21e
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    #@220
    sub-int/2addr v2, v3

    #@221
    .line 725
    move-object/from16 v0, v18

    #@223
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@225
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@228
    move-result v3

    #@229
    .line 724
    sub-int/2addr v2, v3

    #@22a
    div-int/lit8 v2, v2, 0x2

    #@22c
    .line 725
    move-object/from16 v0, v23

    #@22e
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@230
    .line 724
    add-int v12, v2, v3

    #@232
    .line 726
    .local v12, "drawableY":I
    int-to-float v2, v11

    #@233
    int-to-float v3, v12

    #@234
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@237
    .line 727
    move-object/from16 v0, v18

    #@239
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@23b
    .line 728
    move-object/from16 v0, v18

    #@23d
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@23f
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@242
    move-result v3

    #@243
    move-object/from16 v0, v18

    #@245
    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@247
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@24a
    move-result v4

    #@24b
    .line 727
    const/4 v5, 0x0

    #@24c
    const/16 v25, 0x0

    #@24e
    move/from16 v0, v25

    #@250
    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@253
    .line 729
    move-object/from16 v0, v18

    #@255
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@257
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@25a
    .line 730
    neg-int v2, v11

    #@25b
    int-to-float v2, v2

    #@25c
    neg-int v3, v12

    #@25d
    int-to-float v3, v3

    #@25e
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@261
    goto/16 :goto_4

    #@263
    .line 734
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "drawableState":[I
    .end local v11    # "drawableX":I
    .end local v12    # "drawableY":I
    .end local v18    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    const/4 v2, 0x0

    #@264
    move-object/from16 v0, p0

    #@266
    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    #@268
    .line 736
    move-object/from16 v0, p0

    #@26a
    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    #@26c
    if-eqz v2, :cond_e

    #@26e
    .line 737
    move-object/from16 v0, p0

    #@270
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    #@272
    const/high16 v3, 0x437f0000    # 255.0f

    #@274
    mul-float/2addr v2, v3

    #@275
    float-to-int v2, v2

    #@276
    shl-int/lit8 v2, v2, 0x18

    #@278
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@27b
    .line 738
    const/4 v2, 0x0

    #@27c
    const/4 v3, 0x0

    #@27d
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@280
    move-result v4

    #@281
    int-to-float v4, v4

    #@282
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@285
    move-result v5

    #@286
    int-to-float v5, v5

    #@287
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@28a
    .line 752
    :cond_e
    const/4 v2, 0x0

    #@28b
    move-object/from16 v0, p0

    #@28d
    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    #@28f
    .line 753
    move-object/from16 v0, p0

    #@291
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    #@293
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@296
    .line 642
    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    #@0
    .prologue
    .line 1228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@7
    sub-int v2, v0, v1

    #@9
    .line 1229
    .local v2, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v0

    #@d
    float-to-int v0, v0

    #@e
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@10
    sub-int v3, v0, v1

    #@12
    .line 1230
    .local v3, "touchY":I
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    #@14
    neg-int v0, v0

    #@15
    if-lt v3, v0, :cond_0

    #@17
    .line 1231
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    #@19
    add-int/2addr v3, v0

    #@1a
    .line 1232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@1d
    move-result v6

    #@1e
    .line 1233
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@21
    move-result-wide v4

    #@22
    .line 1234
    .local v4, "eventTime":J
    const/4 v0, 0x0

    #@23
    invoke-direct {p0, v2, v3, v0}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    #@26
    move-result v8

    #@27
    .line 1235
    .local v8, "keyIndex":I
    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    #@29
    .line 1238
    if-nez v6, :cond_1

    #@2b
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@2d
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    #@30
    .line 1239
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    #@32
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@35
    .line 1242
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1243
    if-eqz v6, :cond_2

    #@3b
    const/4 v0, 0x3

    #@3c
    if-eq v6, v0, :cond_2

    #@3e
    .line 1244
    const/4 v0, 0x1

    #@3f
    return v0

    #@40
    .line 1247
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    #@42
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 1248
    const/4 v0, -0x1

    #@49
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@4c
    .line 1249
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@4e
    const/4 v1, 0x3

    #@4f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@52
    .line 1250
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@54
    const/4 v1, 0x4

    #@55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@58
    .line 1251
    const/4 v0, 0x1

    #@59
    return v0

    #@5a
    .line 1256
    :cond_3
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    #@5c
    if-eqz v0, :cond_4

    #@5e
    const/4 v0, 0x3

    #@5f
    if-eq v6, v0, :cond_4

    #@61
    .line 1257
    const/4 v0, 0x1

    #@62
    return v0

    #@63
    .line 1260
    :cond_4
    packed-switch v6, :pswitch_data_0

    #@66
    .line 1364
    :goto_0
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    #@68
    .line 1365
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    #@6a
    .line 1366
    const/4 v0, 0x1

    #@6b
    return v0

    #@6c
    .line 1262
    :pswitch_0
    const/4 v0, 0x0

    #@6d
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@6f
    .line 1263
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    #@71
    .line 1264
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    #@73
    .line 1265
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    #@75
    .line 1266
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    #@77
    .line 1267
    const-wide/16 v0, 0x0

    #@79
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    #@7b
    .line 1268
    const-wide/16 v0, 0x0

    #@7d
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@7f
    .line 1269
    const/4 v0, -0x1

    #@80
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    #@82
    .line 1270
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@84
    .line 1271
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    #@86
    .line 1272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@89
    move-result-wide v0

    #@8a
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    #@8c
    .line 1273
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    #@8e
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@90
    .line 1274
    invoke-direct {p0, v4, v5, v8}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    #@93
    .line 1275
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@95
    const/4 v0, -0x1

    #@96
    if-eq v8, v0, :cond_5

    #@98
    .line 1276
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@9a
    aget-object v0, v0, v8

    #@9c
    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@9e
    const/4 v10, 0x0

    #@9f
    aget v0, v0, v10

    #@a1
    .line 1275
    :goto_1
    invoke-interface {v1, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    #@a4
    .line 1277
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@a6
    if-ltz v0, :cond_6

    #@a8
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@aa
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@ac
    aget-object v0, v0, v1

    #@ae
    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    #@b0
    if-eqz v0, :cond_6

    #@b2
    .line 1278
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@b4
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@b6
    .line 1279
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@b8
    const/4 v1, 0x3

    #@b9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@bc
    move-result-object v9

    #@bd
    .line 1280
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@bf
    const-wide/16 v10, 0x190

    #@c1
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c4
    .line 1281
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    #@c7
    .line 1283
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@c9
    if-eqz v0, :cond_6

    #@cb
    .line 1284
    const/4 v0, -0x1

    #@cc
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@ce
    goto :goto_0

    #@cf
    .line 1276
    .end local v9    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v0, 0x0

    #@d0
    goto :goto_1

    #@d1
    .line 1288
    :cond_6
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@d3
    const/4 v1, -0x1

    #@d4
    if-eq v0, v1, :cond_7

    #@d6
    .line 1289
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@d8
    const/4 v1, 0x4

    #@d9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@dc
    move-result-object v9

    #@dd
    .line 1290
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@df
    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    #@e1
    int-to-long v10, v1

    #@e2
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@e5
    .line 1292
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@e8
    goto/16 :goto_0

    #@ea
    .line 1296
    :pswitch_1
    const/4 v7, 0x0

    #@eb
    .line 1297
    .local v7, "continueLongPress":Z
    const/4 v0, -0x1

    #@ec
    if-eq v8, v0, :cond_8

    #@ee
    .line 1298
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@f0
    const/4 v1, -0x1

    #@f1
    if-ne v0, v1, :cond_a

    #@f3
    .line 1299
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@f5
    .line 1300
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    #@f7
    sub-long v0, v4, v0

    #@f9
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@fb
    .line 1317
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    #@fd
    .line 1319
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@ff
    const/4 v1, 0x4

    #@100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@103
    .line 1321
    const/4 v0, -0x1

    #@104
    if-eq v8, v0, :cond_9

    #@106
    .line 1322
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@108
    const/4 v1, 0x4

    #@109
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10c
    move-result-object v9

    #@10d
    .line 1323
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@10f
    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    #@111
    int-to-long v10, v1

    #@112
    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@115
    .line 1326
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@117
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@11a
    .line 1327
    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1302
    :cond_a
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@120
    if-ne v8, v0, :cond_b

    #@122
    .line 1303
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@124
    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@126
    sub-long v10, v4, v10

    #@128
    add-long/2addr v0, v10

    #@129
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@12b
    .line 1304
    const/4 v7, 0x1

    #@12c
    goto :goto_2

    #@12d
    .line 1305
    :cond_b
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@12f
    const/4 v1, -0x1

    #@130
    if-ne v0, v1, :cond_8

    #@132
    .line 1306
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    #@135
    .line 1307
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@137
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    #@139
    .line 1308
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    #@13b
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    #@13d
    .line 1309
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    #@13f
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    #@141
    .line 1311
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@143
    add-long/2addr v0, v4

    #@144
    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@146
    sub-long/2addr v0, v10

    #@147
    .line 1310
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    #@149
    .line 1312
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@14b
    .line 1313
    const-wide/16 v0, 0x0

    #@14d
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@14f
    goto :goto_2

    #@150
    .line 1331
    .end local v7    # "continueLongPress":Z
    :pswitch_2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    #@153
    .line 1332
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@155
    if-ne v8, v0, :cond_e

    #@157
    .line 1333
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@159
    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@15b
    sub-long v10, v4, v10

    #@15d
    add-long/2addr v0, v10

    #@15e
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@160
    .line 1341
    :goto_3
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@162
    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    #@164
    cmp-long v0, v0, v10

    #@166
    if-gez v0, :cond_c

    #@168
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@16a
    const-wide/16 v10, 0x46

    #@16c
    cmp-long v0, v0, v10

    #@16e
    if-gez v0, :cond_c

    #@170
    .line 1342
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    #@172
    const/4 v1, -0x1

    #@173
    if-eq v0, v1, :cond_c

    #@175
    .line 1343
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    #@177
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@179
    .line 1344
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    #@17b
    .line 1345
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    #@17d
    .line 1347
    :cond_c
    const/4 v0, -0x1

    #@17e
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@181
    .line 1348
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    #@183
    const/4 v1, -0x1

    #@184
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@187
    .line 1350
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@189
    const/4 v1, -0x1

    #@18a
    if-ne v0, v1, :cond_d

    #@18c
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    #@18e
    if-eqz v0, :cond_f

    #@190
    .line 1353
    :cond_d
    :goto_4
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    #@193
    .line 1354
    const/4 v0, -0x1

    #@194
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@196
    goto/16 :goto_0

    #@198
    .line 1335
    :cond_e
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    #@19b
    .line 1336
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@19d
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    #@19f
    .line 1337
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@1a1
    add-long/2addr v0, v4

    #@1a2
    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    #@1a4
    sub-long/2addr v0, v10

    #@1a5
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    #@1a7
    .line 1338
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@1a9
    .line 1339
    const-wide/16 v0, 0x0

    #@1ab
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    #@1ad
    goto :goto_3

    #@1ae
    .line 1350
    :cond_f
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@1b0
    if-nez v0, :cond_d

    #@1b2
    .line 1351
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@1b4
    move-object v0, p0

    #@1b5
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    #@1b8
    goto :goto_4

    #@1b9
    .line 1357
    :pswitch_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    #@1bc
    .line 1358
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    #@1bf
    .line 1359
    const/4 v0, 0x1

    #@1c0
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@1c2
    .line 1360
    const/4 v0, -0x1

    #@1c3
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@1c6
    .line 1361
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@1c8
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 1260
    nop

    #@1ce
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1066
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1067
    return v4

    #@6
    .line 1069
    :cond_0
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@8
    if-ltz v2, :cond_1

    #@a
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@c
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@e
    array-length v3, v3

    #@f
    if-lt v2, v3, :cond_2

    #@11
    .line 1070
    :cond_1
    return v4

    #@12
    .line 1073
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@14
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@16
    aget-object v0, v2, v3

    #@18
    .line 1074
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    #@1b
    move-result v1

    #@1c
    .line 1075
    .local v1, "result":Z
    if-eqz v1, :cond_3

    #@1e
    .line 1076
    const/4 v2, 0x1

    #@1f
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@21
    .line 1077
    const/4 v2, -0x1

    #@22
    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@25
    .line 1079
    :cond_3
    return v1
.end method

.method private removeMessages()V
    .locals 2

    #@0
    .prologue
    .line 1404
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 1405
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x4

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 1406
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@12
    .line 1403
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@2
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    #@4
    aget-object v6, v0, v1

    #@6
    .line 1371
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    #@8
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@a
    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@c
    iget-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    #@e
    move-object v0, p0

    #@f
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    #@12
    .line 1372
    const/4 v0, 0x1

    #@13
    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1432
    const/4 v0, -0x1

    #@2
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    #@4
    .line 1433
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    #@6
    .line 1434
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    #@a
    .line 1435
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    #@c
    .line 1431
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 979
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@3
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 980
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@c
    move-result-object v0

    #@d
    .line 981
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@10
    .line 982
    const/4 v2, 0x0

    #@11
    .line 985
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "speak_password"

    #@1a
    .line 986
    const/4 v5, -0x3

    #@1b
    .line 984
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    const/4 v1, 0x1

    #@22
    .line 989
    .local v1, "speakPassword":Z
    :goto_0
    if-nez v1, :cond_0

    #@24
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    #@26
    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 990
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    #@2e
    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    #@31
    move-result v3

    #@32
    .line 989
    if-eqz v3, :cond_3

    #@34
    .line 991
    :cond_0
    sparse-switch p2, :sswitch_data_0

    #@37
    .line 1014
    int-to-char v3, p2

    #@38
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1026
    .local v2, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 1027
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@45
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@48
    .line 978
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "speakPassword":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void

    #@49
    .line 984
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .local v2, "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@4a
    .restart local v1    # "speakPassword":Z
    goto :goto_0

    #@4b
    .line 993
    :sswitch_0
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@4d
    const v4, 0x104046c

    #@50
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 996
    .local v2, "text":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@57
    const v4, 0x104046d

    #@5a
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@5f
    .line 999
    .local v2, "text":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@61
    const v4, 0x104046e

    #@64
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@69
    .line 1002
    .local v2, "text":Ljava/lang/String;
    :sswitch_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@6b
    const v4, 0x104046f

    #@6e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@73
    .line 1005
    .local v2, "text":Ljava/lang/String;
    :sswitch_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@75
    const v4, 0x1040470

    #@78
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@7d
    .line 1008
    .local v2, "text":Ljava/lang/String;
    :sswitch_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@7f
    const v4, 0x1040471

    #@82
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@87
    .line 1011
    .local v2, "text":Ljava/lang/String;
    :sswitch_6
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@89
    const v4, 0x1040472

    #@8c
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@91
    .line 1016
    .local v2, "text":Ljava/lang/String;
    :cond_3
    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    #@93
    if-nez v3, :cond_5

    #@95
    .line 1019
    const/16 v3, 0x100

    #@97
    if-ne p1, v3, :cond_4

    #@99
    .line 1020
    const/4 v3, 0x1

    #@9a
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    #@9c
    .line 1022
    :cond_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@9e
    const v4, 0x1040479

    #@a1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@a6
    .line 1024
    .local v2, "text":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    #@a8
    const v4, 0x104047a

    #@ab
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    .local v2, "text":Ljava/lang/String;
    goto :goto_1

    #@b0
    .line 991
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_5
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method private showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v10, 0x0

    #@6
    .line 905
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@8
    .line 906
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@a
    .line 907
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_0

    #@c
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@e
    array-length v6, v6

    #@f
    if-lt p1, v6, :cond_1

    #@11
    :cond_0
    return-void

    #@12
    .line 908
    :cond_1
    aget-object v0, v1, p1

    #@14
    .line 909
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@16
    if-eqz v6, :cond_5

    #@18
    .line 910
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@1a
    .line 911
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@1c
    if-eqz v6, :cond_4

    #@1e
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    #@20
    .line 910
    :goto_0
    invoke-virtual {v7, v8, v8, v8, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@23
    .line 912
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@25
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@28
    .line 924
    :goto_1
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@2a
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2d
    move-result v7

    #@2e
    .line 925
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@31
    move-result v8

    #@32
    .line 924
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    #@35
    .line 926
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@37
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@3a
    move-result v6

    #@3b
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@3d
    .line 927
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@3f
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    #@42
    move-result v8

    #@43
    .line 926
    add-int/2addr v7, v8

    #@44
    .line 927
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@46
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    #@49
    move-result v8

    #@4a
    .line 926
    add-int/2addr v7, v8

    #@4b
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v4

    #@4f
    .line 928
    .local v4, "popupWidth":I
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    #@51
    .line 929
    .local v3, "popupHeight":I
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@53
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@56
    move-result-object v2

    #@57
    .line 930
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    #@59
    .line 931
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5b
    .line 932
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@5d
    .line 934
    :cond_2
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    #@5f
    if-nez v6, :cond_7

    #@61
    .line 935
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@63
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@65
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    #@68
    move-result v7

    #@69
    sub-int/2addr v6, v7

    #@6a
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@6c
    add-int/2addr v6, v7

    #@6d
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@6f
    .line 936
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@71
    sub-int/2addr v6, v3

    #@72
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    #@74
    add-int/2addr v6, v7

    #@75
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@77
    .line 942
    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@79
    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    #@7c
    .line 943
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@7e
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    #@81
    .line 944
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@83
    aget v7, v6, v10

    #@85
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    #@87
    add-int/2addr v7, v8

    #@88
    aput v7, v6, v10

    #@8a
    .line 945
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@8c
    aget v7, v6, v9

    #@8e
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    #@90
    add-int/2addr v7, v8

    #@91
    aput v7, v6, v9

    #@93
    .line 948
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@95
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@98
    move-result-object v7

    #@99
    .line 949
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    #@9b
    if-eqz v6, :cond_8

    #@9d
    sget-object v6, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    #@9f
    .line 948
    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@a2
    .line 950
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@a4
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@a6
    aget v7, v7, v10

    #@a8
    add-int/2addr v6, v7

    #@a9
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@ab
    .line 951
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@ad
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@af
    aget v7, v7, v9

    #@b1
    add-int/2addr v6, v7

    #@b2
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@b4
    .line 954
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@b6
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    #@b9
    .line 955
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@bb
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@bd
    aget v7, v7, v9

    #@bf
    add-int/2addr v6, v7

    #@c0
    if-gez v6, :cond_3

    #@c2
    .line 958
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@c4
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@c6
    add-int/2addr v6, v7

    #@c7
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@ca
    move-result v7

    #@cb
    div-int/lit8 v7, v7, 0x2

    #@cd
    if-gt v6, v7, :cond_9

    #@cf
    .line 959
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@d1
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@d3
    int-to-double v8, v7

    #@d4
    mul-double/2addr v8, v12

    #@d5
    double-to-int v7, v8

    #@d6
    add-int/2addr v6, v7

    #@d7
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@d9
    .line 963
    :goto_4
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@db
    add-int/2addr v6, v3

    #@dc
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@de
    .line 966
    :cond_3
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    #@e1
    move-result v6

    #@e2
    if-eqz v6, :cond_a

    #@e4
    .line 967
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@e6
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@e8
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    #@eb
    .line 975
    :goto_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@ed
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    #@f0
    .line 904
    return-void

    #@f1
    .line 911
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "popupHeight":I
    .end local v4    # "popupWidth":I
    :cond_4
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    #@f3
    goto/16 :goto_0

    #@f5
    .line 914
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@f7
    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@fa
    .line 915
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@fc
    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    #@ff
    move-result-object v7

    #@100
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@103
    .line 916
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    #@105
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    #@108
    move-result v6

    #@109
    if-le v6, v9, :cond_6

    #@10b
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@10d
    array-length v6, v6

    #@10e
    if-ge v6, v11, :cond_6

    #@110
    .line 917
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@112
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    #@114
    int-to-float v7, v7

    #@115
    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    #@118
    .line 918
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@11a
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@11c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@11f
    goto/16 :goto_1

    #@121
    .line 920
    :cond_6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@123
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    #@125
    int-to-float v7, v7

    #@126
    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    #@129
    .line 921
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@12b
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@12d
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@130
    goto/16 :goto_1

    #@132
    .line 939
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "popupWidth":I
    :cond_7
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@134
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@137
    move-result v6

    #@138
    div-int/lit8 v6, v6, 0x2

    #@13a
    rsub-int v6, v6, 0xa0

    #@13c
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@13e
    .line 940
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@140
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@143
    move-result v6

    #@144
    neg-int v6, v6

    #@145
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@147
    goto/16 :goto_2

    #@149
    .line 949
    :cond_8
    sget-object v6, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    #@14b
    goto/16 :goto_3

    #@14d
    .line 961
    :cond_9
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@14f
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@151
    int-to-double v8, v7

    #@152
    mul-double/2addr v8, v12

    #@153
    double-to-int v7, v8

    #@154
    sub-int/2addr v6, v7

    #@155
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@157
    goto :goto_4

    #@158
    .line 970
    :cond_a
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@15b
    .line 971
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@15e
    .line 972
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    #@160
    .line 973
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    #@162
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    #@164
    .line 972
    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@167
    goto :goto_5
.end method

.method private showPreview(I)V
    .locals 13
    .param p1, "keyIndex"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v12, -0x1

    #@3
    .line 851
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@5
    .line 852
    .local v4, "oldKeyIndex":I
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@7
    .line 854
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@9
    .line 856
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@b
    .line 857
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@d
    if-eq v4, v6, :cond_1

    #@f
    .line 858
    if-eq v4, v12, :cond_0

    #@11
    array-length v6, v1

    #@12
    if-le v6, v4, :cond_0

    #@14
    .line 859
    aget-object v3, v1, v4

    #@16
    .line 860
    .local v3, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@18
    if-ne v6, v12, :cond_4

    #@1a
    move v6, v7

    #@1b
    :goto_0
    invoke-virtual {v3, v6}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    #@1e
    .line 861
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    #@21
    .line 862
    iget-object v6, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@23
    aget v0, v6, v8

    #@25
    .line 863
    .local v0, "keyCode":I
    const/16 v6, 0x100

    #@27
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    #@2a
    .line 867
    const/high16 v6, 0x10000

    #@2c
    .line 866
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    #@2f
    .line 869
    .end local v0    # "keyCode":I
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@31
    if-eq v6, v12, :cond_1

    #@33
    array-length v6, v1

    #@34
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@36
    if-le v6, v9, :cond_1

    #@38
    .line 870
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@3a
    aget-object v2, v1, v6

    #@3c
    .line 871
    .local v2, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    #@3f
    .line 872
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@41
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    #@44
    .line 873
    iget-object v6, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    #@46
    aget v0, v6, v8

    #@48
    .line 874
    .restart local v0    # "keyCode":I
    const/16 v6, 0x80

    #@4a
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    #@4d
    .line 878
    const v6, 0x8000

    #@50
    .line 877
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    #@53
    .line 882
    .end local v0    # "keyCode":I
    .end local v2    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    #@55
    if-eq v4, v6, :cond_3

    #@57
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    #@59
    if-eqz v6, :cond_3

    #@5b
    .line 883
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@5d
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@60
    .line 884
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    #@63
    move-result v6

    #@64
    if-eqz v6, :cond_2

    #@66
    .line 885
    if-ne p1, v12, :cond_2

    #@68
    .line 886
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@6a
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@6c
    .line 887
    const/4 v10, 0x2

    #@6d
    .line 886
    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@70
    move-result-object v9

    #@71
    .line 888
    const-wide/16 v10, 0x46

    #@73
    .line 886
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@76
    .line 891
    :cond_2
    if-eq p1, v12, :cond_3

    #@78
    .line 892
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_5

    #@7e
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    #@80
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    #@83
    move-result v6

    #@84
    if-nez v6, :cond_5

    #@86
    .line 894
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    #@89
    .line 850
    :cond_3
    :goto_1
    return-void

    #@8a
    .restart local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_4
    move v6, v8

    #@8b
    .line 860
    goto :goto_0

    #@8c
    .line 896
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@8e
    .line 897
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    #@90
    invoke-virtual {v9, v7, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@93
    move-result-object v7

    #@94
    .line 898
    const-wide/16 v8, 0x0

    #@96
    .line 896
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@99
    goto :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1392
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1393
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@b
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@e
    .line 1395
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    #@11
    .line 1397
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    #@14
    .line 1398
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@16
    .line 1399
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    #@18
    .line 1400
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    #@1a
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@1d
    .line 1391
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2
    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1425
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    #@b
    .line 1426
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1428
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1038
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    #@e
    .line 1039
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    #@11
    .line 1040
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    #@14
    .line 1037
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    #@0
    .prologue
    .line 1051
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 1052
    :cond_0
    if-ltz p1, :cond_1

    #@7
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@9
    array-length v1, v1

    #@a
    if-lt p1, v1, :cond_2

    #@c
    .line 1053
    :cond_1
    return-void

    #@d
    .line 1055
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@f
    aget-object v0, v1, p1

    #@11
    .line 1056
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    #@13
    .line 1057
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    #@15
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@17
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@19
    add-int/2addr v2, v3

    #@1a
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@1c
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@1e
    add-int/2addr v3, v4

    #@1f
    .line 1058
    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@21
    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@23
    add-int/2addr v4, v5

    #@24
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@26
    add-int/2addr v4, v5

    #@27
    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@29
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@2b
    add-int/2addr v5, v6

    #@2c
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@2e
    add-int/2addr v5, v6

    #@2f
    .line 1057
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    #@32
    .line 1059
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    #@35
    .line 1060
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@37
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@39
    add-int/2addr v1, v2

    #@3a
    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@3c
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@3e
    add-int/2addr v2, v3

    #@3f
    .line 1061
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@41
    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@43
    add-int/2addr v3, v4

    #@44
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@46
    add-int/2addr v3, v4

    #@47
    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@49
    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    #@4b
    add-int/2addr v4, v5

    #@4c
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@4e
    add-int/2addr v4, v5

    #@4f
    .line 1060
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    #@52
    .line 1050
    return-void
.end method

.method public isPreviewEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    #@2
    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    #@2
    return v0
.end method

.method public isShifted()Z
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 516
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@6
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 518
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 577
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    #@3
    .line 576
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1411
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@3
    .line 1412
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    #@6
    .line 1410
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 635
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@5
    .line 636
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@b
    if-nez v0, :cond_2

    #@d
    .line 637
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    #@10
    .line 639
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@12
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@15
    .line 634
    return-void

    #@16
    .line 636
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1167
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@c
    move-result v1

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@12
    move-result v0

    #@13
    .line 1169
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 1180
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 1171
    :pswitch_1
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@1f
    goto :goto_0

    #@20
    .line 1174
    :pswitch_2
    const/4 v1, 0x2

    #@21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@24
    goto :goto_0

    #@25
    .line 1177
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    #@28
    goto :goto_0

    #@29
    .line 1182
    .end local v0    # "action":I
    :cond_0
    return v2

    #@2a
    .line 1169
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 13
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    #@0
    .prologue
    const v5, 0x1020026

    #@3
    const/high16 v12, -0x80000000

    #@5
    const/4 v11, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    const/4 v10, 0x0

    #@8
    .line 1090
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    #@a
    .line 1092
    .local v2, "popupKeyboardId":I
    if-eqz v2, :cond_4

    #@c
    .line 1093
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    #@e
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/view/View;

    #@14
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@16
    .line 1094
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 1095
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    .line 1096
    const-string/jumbo v3, "layout_inflater"

    #@21
    .line 1095
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Landroid/view/LayoutInflater;

    #@27
    .line 1097
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    #@29
    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@2f
    .line 1098
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@31
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    #@37
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@39
    .line 1100
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@3b
    .line 1101
    const v3, 0x1020027

    #@3e
    .line 1100
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v6

    #@42
    .line 1102
    .local v6, "closeButton":Landroid/view/View;
    if-eqz v6, :cond_0

    #@44
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@47
    .line 1103
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@49
    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    #@4b
    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    #@4e
    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    #@51
    .line 1127
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 1128
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    #@57
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v1

    #@5b
    .line 1129
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    #@5d
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    #@60
    move-result v4

    #@61
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    #@64
    move-result v5

    #@65
    add-int/2addr v5, v4

    #@66
    const/4 v4, -0x1

    #@67
    .line 1128
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    #@6a
    .line 1133
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@6c
    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    #@6f
    .line 1134
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@71
    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    #@74
    .line 1135
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@76
    .line 1136
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    #@79
    move-result v3

    #@7a
    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@7d
    move-result v3

    #@7e
    .line 1137
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    #@81
    move-result v4

    #@82
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@85
    move-result v4

    #@86
    .line 1135
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    #@89
    .line 1139
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    #@8b
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@8d
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    .line 1144
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@92
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    #@95
    .line 1145
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    #@97
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@99
    add-int/2addr v1, v3

    #@9a
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    #@9c
    .line 1146
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    #@9e
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@a0
    add-int/2addr v1, v3

    #@a1
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    #@a3
    .line 1147
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    #@a5
    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    #@a7
    add-int/2addr v1, v3

    #@a8
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@aa
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@ad
    move-result v3

    #@ae
    sub-int/2addr v1, v3

    #@af
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    #@b1
    .line 1148
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    #@b3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@b5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@b8
    move-result v3

    #@b9
    sub-int/2addr v1, v3

    #@ba
    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    #@bc
    .line 1149
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    #@be
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@c0
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    #@c3
    move-result v3

    #@c4
    add-int/2addr v1, v3

    #@c5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@c7
    aget v3, v3, v10

    #@c9
    add-int v8, v1, v3

    #@cb
    .line 1150
    .local v8, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    #@cd
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@cf
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@d2
    move-result v3

    #@d3
    add-int/2addr v1, v3

    #@d4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    #@d6
    aget v3, v3, v11

    #@d8
    add-int v9, v1, v3

    #@da
    .line 1151
    .local v9, "y":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@dc
    if-gez v8, :cond_3

    #@de
    move v1, v10

    #@df
    :goto_2
    invoke-virtual {v3, v1, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    #@e2
    .line 1152
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@e4
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    #@e7
    move-result v3

    #@e8
    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    #@eb
    .line 1153
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@ed
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@ef
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@f2
    .line 1154
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@f4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@f6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@f9
    move-result v3

    #@fa
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@fd
    .line 1155
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@ff
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@104
    move-result v3

    #@105
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@108
    .line 1156
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    #@10a
    invoke-virtual {v1, p0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@10d
    .line 1157
    iput-boolean v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    #@10f
    .line 1159
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    #@112
    .line 1160
    return v11

    #@113
    .line 1131
    .end local v8    # "x":I
    .end local v9    # "y":I
    .restart local v6    # "closeButton":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    #@115
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    #@118
    move-result-object v1

    #@119
    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    #@11c
    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_0

    #@11e
    .line 1141
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    #@120
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@123
    move-result-object v1

    #@124
    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    #@126
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    #@128
    goto/16 :goto_1

    #@12a
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_3
    move v1, v8

    #@12b
    .line 1151
    goto :goto_2

    #@12c
    .line 1162
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    return v10
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 591
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 592
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@6
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    #@8
    add-int/2addr v1, v2

    #@9
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@b
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    #@d
    add-int/2addr v2, v3

    #@e
    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    #@11
    .line 589
    :goto_0
    return-void

    #@12
    .line 594
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@14
    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    #@17
    move-result v1

    #@18
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    #@1a
    add-int/2addr v1, v2

    #@1b
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    #@1d
    add-int v0, v1, v2

    #@1f
    .line 595
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@22
    move-result v1

    #@23
    add-int/lit8 v2, v0, 0xa

    #@25
    if-ge v1, v2, :cond_1

    #@27
    .line 596
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2a
    move-result v0

    #@2b
    .line 598
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2d
    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    #@30
    move-result v1

    #@31
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    #@33
    add-int/2addr v1, v2

    #@34
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    #@36
    add-int/2addr v1, v2

    #@37
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    #@3a
    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 625
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    #@4
    .line 626
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 627
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    #@d
    .line 630
    :cond_0
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    #@f
    .line 624
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v13, 0x1

    #@2
    .line 1189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@5
    move-result v10

    #@6
    .line 1190
    .local v10, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@9
    move-result v8

    #@a
    .line 1191
    .local v8, "action":I
    const/4 v11, 0x0

    #@b
    .line 1192
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@e
    move-result-wide v0

    #@f
    .line 1194
    .local v0, "now":J
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    #@11
    if-eq v10, v2, :cond_2

    #@13
    .line 1195
    if-ne v10, v13, :cond_1

    #@15
    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@18
    move-result v5

    #@19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1c
    move-result v6

    #@1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@20
    move-result v7

    #@21
    move-wide v2, v0

    #@22
    .line 1197
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@25
    move-result-object v9

    #@26
    .line 1199
    .local v9, "down":Landroid/view/MotionEvent;
    invoke-direct {p0, v9, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    #@29
    move-result v11

    #@2a
    .line 1200
    .local v11, "result":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    #@2d
    .line 1202
    if-ne v8, v13, :cond_0

    #@2f
    .line 1203
    invoke-direct {p0, p1, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    #@32
    move-result v11

    #@33
    .line 1222
    .end local v9    # "down":Landroid/view/MotionEvent;
    .end local v11    # "result":Z
    :cond_0
    :goto_0
    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    #@35
    .line 1224
    return v11

    #@36
    .line 1208
    .local v11, "result":Z
    :cond_1
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    #@38
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    #@3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@3d
    move-result v7

    #@3e
    move-wide v2, v0

    #@3f
    move v4, v13

    #@40
    .line 1207
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@43
    move-result-object v12

    #@44
    .line 1209
    .local v12, "up":Landroid/view/MotionEvent;
    invoke-direct {p0, v12, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    #@47
    move-result v11

    #@48
    .line 1210
    .local v11, "result":Z
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    #@4b
    goto :goto_0

    #@4c
    .line 1213
    .end local v12    # "up":Landroid/view/MotionEvent;
    .local v11, "result":Z
    :cond_2
    if-ne v10, v13, :cond_3

    #@4e
    .line 1214
    invoke-direct {p0, p1, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    #@51
    move-result v11

    #@52
    .line 1215
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@55
    move-result v2

    #@56
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    #@58
    .line 1216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@5b
    move-result v2

    #@5c
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    #@5e
    goto :goto_0

    #@5f
    .line 1219
    .local v11, "result":Z
    :cond_3
    const/4 v11, 0x1

    #@60
    goto :goto_0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 463
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 464
    const/4 v1, -0x1

    #@6
    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    #@9
    .line 467
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    #@c
    .line 468
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@e
    .line 469
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@10
    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 470
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@17
    move-result v1

    #@18
    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    #@20
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    #@22
    .line 471
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    #@25
    .line 473
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    #@27
    .line 474
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    #@2a
    .line 475
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    #@2d
    .line 476
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    #@2f
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    #@32
    .line 479
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    #@34
    .line 462
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@0
    .prologue
    .line 444
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    .line 443
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 548
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    #@2
    .line 549
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    #@4
    .line 550
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 551
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    #@e
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@11
    .line 547
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 544
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    #@2
    .line 543
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    #@0
    .prologue
    .line 528
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    #@2
    .line 527
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 562
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    #@2
    .line 561
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    #@0
    .prologue
    .line 498
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 499
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    #@6
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 501
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    #@f
    .line 502
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 505
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    #@0
    .prologue
    .line 540
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    #@0
    .prologue
    .line 1388
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    #@5
    .line 1387
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    #@0
    .prologue
    .line 1380
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    #@5
    .line 1379
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    #@0
    .prologue
    .line 1376
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    #@5
    .line 1375
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    #@0
    .prologue
    .line 1384
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@2
    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    #@5
    .line 1383
    return-void
.end method
