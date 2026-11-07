.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final blacklist QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private final blacklist mCheckLongPress:Ljava/lang/Runnable;

.field private blacklist mCode:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDownTime:J

.field private blacklist mGestureAborted:Z

.field private blacklist mHasOvalBg:Z

.field private blacklist mLongClicked:Z

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOvalBgPaint:Landroid/graphics/Paint;

.field private final blacklist mPlaySounds:Z

.field private final blacklist mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mTracking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLongClicked(Landroid/inputmethodservice/navigationbar/KeyButtonView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 79
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 96
    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_23

    .line 93
    :pswitch_1f
    const/4 v1, 0x4

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 94
    nop

    .line 100
    :goto_23
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    .line 102
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    .line 103
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 105
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v2, 0x10501f8

    invoke-direct {v1, p1, p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    .line 107
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    .line 110
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1020384
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 145
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v0

    const v1, 0x102038a

    if-ne v0, v1, :cond_1b

    .line 147
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104051c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private blacklist sendEvent(II)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 303
    return-void
.end method

.method private blacklist sendEvent(IIJ)V
    .registers 23
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .line 307
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_7a

    .line 308
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v4

    :goto_13
    move v12, v2

    .line 309
    .local v12, "repeatCount":I
    new-instance v5, Landroid/view/KeyEvent;

    iget-wide v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v11, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    or-int/lit8 v2, v1, 0x2

    or-int/lit8 v16, v2, 0x40

    const/16 v17, 0x101

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move/from16 v10, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 313
    .local v5, "ev":Landroid/view/KeyEvent;
    const/4 v2, -0x1

    .line 316
    .local v2, "displayId":I
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 317
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 319
    :cond_39
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3f

    .line 320
    invoke-virtual {v5, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 322
    :cond_3f
    iget-object v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/inputmethodservice/InputMethodService;

    .line 324
    .local v6, "ims":Landroid/inputmethodservice/InputMethodService;
    packed-switch p1, :pswitch_data_7c

    .line 334
    const/4 v3, 0x0

    .local v3, "handled":Z
    goto :goto_6f

    .line 331
    .end local v3    # "handled":Z
    :pswitch_48
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v6, v3, v5}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 332
    .restart local v3    # "handled":Z
    goto :goto_6f

    .line 326
    .end local v3    # "handled":Z
    :pswitch_51
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 327
    .local v7, "handled":Z
    if-eqz v7, :cond_6b

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_6b

    .line 328
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v4

    :goto_6c
    iput-boolean v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 329
    move v3, v7

    .line 337
    .end local v7    # "handled":Z
    .restart local v3    # "handled":Z
    :goto_6f
    if-nez v3, :cond_7a

    .line 338
    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 339
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_7a

    .line 340
    invoke-interface {v4, v5}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 344
    .end local v2    # "displayId":I
    .end local v3    # "handled":Z
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "ev":Landroid/view/KeyEvent;
    .end local v6    # "ims":Landroid/inputmethodservice/InputMethodService;
    .end local v12    # "repeatCount":I
    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 367
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1b

    .line 368
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 369
    .local v0, "d":I
    int-to-float v4, v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 367
    .end local v0    # "d":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1b
    move-object v1, p1

    .line 371
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1c
    invoke-super {p0, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method public whitelist isClickable()Z
    .registers 2

    .line 114
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 130
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 131
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 132
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 133
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 135
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 138
    :cond_28
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "showSwipeUI":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 185
    .local v1, "action":I
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 186
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    .line 188
    :cond_a
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_12

    .line 189
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 190
    return v2

    .line 193
    :cond_12
    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_112

    goto/16 :goto_111

    .line 231
    :pswitch_1a
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 232
    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v2, :cond_24

    .line 233
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 235
    :cond_24
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 236
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_111

    .line 217
    :pswitch_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 218
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 220
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v6

    .line 221
    .local v6, "slop":F
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_5d

    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_111

    .line 224
    :cond_5d
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 225
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 226
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_111

    .line 240
    .end local v3    # "x":I
    .end local v5    # "y":I
    .end local v6    # "slop":F
    :pswitch_6d
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_79

    iget-boolean v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v5, :cond_79

    move v5, v4

    goto :goto_7a

    :cond_79
    move v5, v2

    .line 241
    .local v5, "doIt":Z
    :goto_7a
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-lez v6, :cond_8c

    move v6, v4

    goto :goto_8d

    :cond_8c
    move v6, v2

    .line 249
    .local v6, "doHapticFeedback":Z
    :goto_8d
    if-eqz v6, :cond_98

    iget-boolean v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v7, :cond_98

    .line 252
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 254
    :cond_98
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v7, :cond_b3

    .line 255
    if-eqz v5, :cond_af

    .line 256
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_a5

    const/16 v3, 0x200

    goto :goto_a6

    :cond_a5
    move v3, v2

    :goto_a6
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 257
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 258
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_c1

    .line 260
    :cond_af
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_c1

    .line 264
    :cond_b3
    if-eqz v5, :cond_c1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_c1

    .line 265
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 266
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 269
    :cond_c1
    :goto_c1
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 270
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_111

    .line 195
    .end local v5    # "doIt":Z
    .end local v6    # "doHapticFeedback":Z
    :pswitch_cd
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    .line 196
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    .line 197
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    .line 202
    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_f0

    .line 203
    iget-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_f3

    .line 206
    :cond_f0
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 209
    :goto_f3
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 211
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 212
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_111
    :goto_111
    return v4

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_6d
        :pswitch_31
        :pswitch_1a
    .end packed-switch
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 156
    if-eqz p1, :cond_8

    .line 157
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 159
    :cond_8
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 163
    const/16 v0, 0x10

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_25

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_25

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v3, v3, v4, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 165
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 166
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 167
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 168
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 169
    return v2

    .line 170
    :cond_25
    const/16 v0, 0x20

    if-ne p1, v0, :cond_42

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_42

    .line 171
    const/16 v0, 0x80

    invoke-direct {p0, v3, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 172
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 173
    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 174
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 175
    return v2

    .line 177
    :cond_42
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist playSoundEffect(I)V
    .registers 3
    .param p1, "soundConstant"    # I

    .line 297
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_5

    return-void

    .line 298
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 299
    return-void
.end method

.method public blacklist setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 118
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 119
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 4
    .param p1, "darkIntensity"    # F

    .line 348
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    .line 350
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 351
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 352
    move-object v1, v0

    check-cast v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 355
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    .line 357
    :cond_11
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    .line 358
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .registers 3
    .param p1, "shouldDelay"    # Z

    .line 362
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    .line 363
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 280
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    if-nez p1, :cond_6

    .line 283
    return-void

    .line 285
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 286
    .local v0, "keyButtonDrawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 287
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 288
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v1, :cond_21

    .line 289
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    :cond_21
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_2e

    .line 292
    :cond_2c
    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 291
    :goto_2e
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    .line 293
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 125
    return-void
.end method
