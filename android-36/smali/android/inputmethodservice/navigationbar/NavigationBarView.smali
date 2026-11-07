.class public final Landroid/inputmethodservice/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarView"


# instance fields
.field private blacklist mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private final blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mCurrentRotation:I

.field blacklist mCurrentView:Landroid/view/View;

.field private final blacklist mDarkIconColor:I

.field private final blacklist mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

.field private blacklist mDeadZoneConsuming:Z

.field blacklist mDisabledFlags:I

.field private blacklist mHorizontal:Landroid/view/View;

.field private blacklist mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private blacklist mLightContext:Landroid/content/Context;

.field private final blacklist mLightIconColor:I

.field private final blacklist mNavBarMode:I

.field private blacklist mNavbarFlags:I

.field private blacklist mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

.field private blacklist mTmpLastConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 71
    const/4 v2, 0x2

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 80
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 82
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 113
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 114
    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 115
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 117
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 119
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 121
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x1020384

    invoke-direct {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x102038a

    invoke-direct {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x1020388

    invoke-direct {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 129
    return-void
.end method

.method private blacklist getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 2

    .line 235
    const v0, 0x108044c

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    .line 236
    .local v0, "drawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 237
    return-object v0
.end method

.method private blacklist getContextDisplay()Landroid/view/Display;
    .registers 2

    .line 334
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 8
    .param p1, "icon"    # I

    .line 274
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    .end local p1    # "icon":I
    .local v3, "icon":I
    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist isGesturalMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .line 244
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic blacklist lambda$prepareNavButtons$0(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 148
    nop

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method

.method static synthetic blacklist lambda$reorient$1(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 376
    instance-of v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return v0
.end method

.method private blacklist orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .registers 11
    .param p1, "drawable"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 248
    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavbarFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 249
    .local v0, "isBackDismissIme":Z
    :goto_a
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 250
    .local v3, "isRtl":Z
    :goto_15
    const/4 v4, 0x0

    if-eqz v0, :cond_21

    if-eqz v3, :cond_1d

    const/16 v5, 0x5a

    goto :goto_1f

    :cond_1d
    const/16 v5, -0x5a

    :goto_1f
    int-to-float v5, v5

    goto :goto_22

    :cond_21
    move v5, v4

    .line 251
    .local v5, "degrees":F
    :goto_22
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_2b

    .line 252
    return-void

    .line 255
    :cond_2b
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 256
    invoke-virtual {p1, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setRotation(F)V

    .line 257
    return-void

    .line 262
    :cond_36
    if-eqz v0, :cond_45

    .line 263
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_46

    .line 264
    :cond_45
    nop

    :goto_46
    nop

    .line 265
    .local v4, "targetY":F
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v5, v8, v2

    .line 266
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v4, v8, v2

    .line 267
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v1

    .line 265
    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 268
    .local v1, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 271
    return-void
.end method

.method private blacklist reloadNavIcons()V
    .registers 2

    .line 213
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method private blacklist reorient()V
    .registers 4

    .line 373
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 375
    nop

    .line 376
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 377
    .local v0, "frame":Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    .line 378
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    .line 386
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_28

    .line 387
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resolveLayoutDirection()Z

    .line 389
    :cond_28
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 390
    return-void
.end method

.method private blacklist resetViews()V
    .registers 3

    .line 369
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    return-void
.end method

.method private blacklist shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 165
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 166
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 168
    :cond_9
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v2, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v2, :cond_16

    goto :goto_17

    .line 180
    :cond_16
    return v1

    .line 169
    :cond_17
    :goto_17
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_24

    :pswitch_1b
    goto :goto_22

    .line 175
    :pswitch_1c
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_22

    .line 171
    :pswitch_1f
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 172
    nop

    .line 178
    :goto_22
    return v2

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist updateCurrentView()V
    .registers 5

    .line 360
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resetViews()V

    .line 361
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 362
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 364
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    move v1, v3

    :cond_1f
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 365
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 366
    return-void
.end method

.method private blacklist updateIcons(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;

    .line 217
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v3

    .line 218
    .local v0, "orientationChange":Z
    :goto_d
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    .line 219
    .local v1, "densityChange":Z
    :goto_18
    nop

    .line 220
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    .line 222
    .local v2, "dirChange":Z
    :goto_27
    if-nez v1, :cond_2b

    if-eqz v2, :cond_3f

    .line 223
    :cond_2b
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 224
    const v3, 0x108044e

    goto :goto_38

    .line 225
    :cond_35
    const v3, 0x108044d

    :goto_38
    nop

    .line 227
    .local v3, "switcherResId":I
    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 229
    .end local v3    # "switcherResId":I
    :cond_3f
    if-nez v0, :cond_45

    if-nez v1, :cond_45

    if-eqz v2, :cond_4b

    .line 230
    :cond_45
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 232
    :cond_4b
    return-void
.end method

.method private blacklist updateNavButtonIcons()V
    .registers 7

    .line 313
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 314
    .local v0, "backIcon":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 315
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 317
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 321
    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavbarFlags:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v3

    .line 323
    .local v1, "isImeSwitcherButtonVisible":Z
    :goto_1f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    .line 324
    if-eqz v1, :cond_27

    move v5, v3

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 327
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 331
    return-void
.end method

.method private blacklist updateOrientationViews()V
    .registers 2

    .line 354
    const v0, 0x1020389

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 356
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 357
    return-void
.end method


# virtual methods
.method public blacklist forEachView(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    :cond_9
    return-void
.end method

.method public blacklist getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    .line 197
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020384

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getButtonDispatchers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getCurrentView()Landroid/view/View;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020388

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    .line 201
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102038a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 409
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 412
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->requestApplyInsets()V

    .line 413
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reorient()V

    .line 414
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 415
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 398
    .local v0, "changes":I
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 399
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 400
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 401
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_30

    .line 403
    :cond_2d
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 405
    :cond_30
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 419
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 421
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->onDestroy()V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 423
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 349
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    return-void
.end method

.method public whitelist onFinishInflate()V
    .registers 3

    .line 339
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 340
    const v0, 0x102038b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    .line 341
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 343
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 344
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 345
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 154
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 159
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist prepareNavButtons(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;

    .line 137
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setLongClickable(Z)V

    .line 139
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 140
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    .line 141
    .local v0, "imeSwitchButton":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setLongClickable(Z)V

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    .end local v0    # "imeSwitchButton":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    goto :goto_3c

    .line 145
    :cond_2d
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    .line 146
    .restart local v0    # "imeSwitchButton":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setLongClickable(Z)V

    .line 147
    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .end local v0    # "imeSwitchButton":Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    :goto_3c
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .registers 4
    .param p1, "intensity"    # F

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 432
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setDarkIntensity(F)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist setLayoutDirection(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 280
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 283
    return-void
.end method

.method public blacklist setNavbarFlags(I)V
    .registers 6
    .param p1, "flags"    # I

    .line 291
    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavbarFlags:I

    if-ne p1, v0, :cond_5

    .line 292
    return-void

    .line 294
    :cond_5
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 295
    .local v0, "backDismissIme":Z
    :goto_e
    iget v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavbarFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_14

    move v1, v2

    .line 297
    .local v1, "oldBackDismissIme":Z
    :cond_14
    nop

    .line 305
    iput p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavbarFlags:I

    .line 306
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 307
    return-void
.end method
