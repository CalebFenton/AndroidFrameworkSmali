.class public Landroid/view/InsetsAnimationControlImpl;
.super Ljava/lang/Object;
.source "InsetsAnimationControlImpl.java"

# interfaces
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimationCtrlImpl"


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private final blacklist mAnimationType:I

.field private blacklist mCancelled:Z

.field private blacklist mCancelling:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mControllingTypes:I

.field private final blacklist mControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAlpha:F

.field private blacklist mCurrentInsets:Landroid/graphics/Insets;

.field private final blacklist mDurationMs:J

.field private blacklist mFinished:Z

.field private final blacklist mHasZeroInsetsIme:Z

.field private final blacklist mHiddenInsets:Landroid/graphics/Insets;

.field private final blacklist mInitialInsetsState:Landroid/view/InsetsState;

.field private final blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mLayoutInsetsDuringAnimation:I

.field private final blacklist mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mPendingAlpha:F

.field private blacklist mPendingFraction:F

.field private blacklist mPendingInsets:Landroid/graphics/Insets;

.field private blacklist mPerceptible:Ljava/lang/Boolean;

.field private blacklist mReadyDispatched:Z

.field private final blacklist mShownInsets:Landroid/graphics/Insets;

.field private blacklist mShownOnFinish:Z

.field private final blacklist mSideControlsMap:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private final blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 35
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p4, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p5, "types"    # I
    .param p6, "controller"    # Landroid/view/InsetsAnimationControlCallbacks;
    .param p7, "surfaceParamsApplier"    # Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .param p8, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p9, "animationType"    # I
    .param p10, "layoutInsetsDuringAnimation"    # I
    .param p11, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p12, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;",
            "Landroid/view/InsetsAnimationSpec;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")V"
        }
    .end annotation

    .line 131
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    .line 95
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 118
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 119
    iput v1, v0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 132
    iput-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    .line 133
    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 134
    iput v6, v0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 135
    iput v6, v0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 136
    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    .line 137
    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 138
    new-instance v1, Landroid/view/InsetsState;

    const/4 v11, 0x1

    move-object/from16 v12, p3

    invoke-direct {v1, v12, v11}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    .line 139
    const/4 v13, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_93

    .line 140
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move-object v14, v5

    .line 141
    .local v14, "idSideMap":Landroid/util/SparseIntArray;
    iget-object v4, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {v0, v4, v2, v1}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 142
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 144
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object v5, v14

    .end local v14    # "idSideMap":Landroid/util/SparseIntArray;
    .local v5, "idSideMap":Landroid/util/SparseIntArray;
    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v1

    move-object v14, v3

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 146
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-nez v1, :cond_80

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    move v11, v13

    :goto_81
    iput-boolean v11, v0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 147
    iget-boolean v1, v0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    if-eqz v1, :cond_8d

    .line 150
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    const/4 v2, 0x4

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    :cond_8d
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {v5, v1, v14}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 153
    .end local v5    # "idSideMap":Landroid/util/SparseIntArray;
    goto :goto_c1

    .line 156
    :cond_93
    move-object v14, v3

    iget-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {v0, v2, v14, v11}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 157
    invoke-direct {v0, v1, v14, v13}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 158
    invoke-direct {v0, v1, v14, v11}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 159
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-nez v1, :cond_b9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    goto :goto_ba

    :cond_b9
    move v11, v13

    :goto_ba
    iput-boolean v11, v0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 160
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {v1, v14}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 162
    :goto_c1
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 164
    iget-boolean v1, v0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    invoke-interface {v7, v1}, Landroid/view/InsetsAnimationSpec;->getDurationMs(Z)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    .line 165
    iget-boolean v1, v0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    invoke-interface {v7, v1}, Landroid/view/InsetsAnimationSpec;->getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 167
    new-instance v1, Landroid/view/WindowInsetsAnimation;

    iget v2, v0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    iget-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-wide v4, v0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    .line 168
    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 169
    move/from16 v11, p9

    iput v11, v0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 170
    move/from16 v13, p10

    iput v13, v0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    .line 171
    move-object/from16 v15, p11

    iput-object v15, v0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 172
    move-object/from16 v1, p12

    iput-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 173
    sget-boolean v2, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v2, :cond_16a

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_16a

    .line 174
    nop

    .line 175
    iget-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v2, :cond_112

    iget-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_114

    :cond_112
    const-string v2, "TOKEN_NONE"

    :goto_114
    move-object/from16 v16, v2

    iget v2, v0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v2, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hidden:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v2

    .line 174
    const/16 v3, 0x7d06

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 179
    :cond_16a
    iget-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-object v4, v0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    new-instance v5, Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v3, v0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v1, v0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-direct {v5, v3, v1}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object v1, v0

    move-object v0, v2

    move v3, v6

    move-object v2, v8

    invoke-interface/range {v0 .. v5}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 181
    return-void
.end method

.method private blacklist addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "side"    # I
    .param p2, "offset"    # I
    .param p3, "m"    # Landroid/graphics/Matrix;
    .param p4, "frame"    # Landroid/graphics/Rect;

    .line 539
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_c

    .line 540
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateLengthInAppWindowToScreen(F)F

    move-result v0

    goto :goto_d

    :cond_c
    int-to-float v0, p2

    .line 541
    .local v0, "surfaceOffset":F
    :goto_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_34

    goto :goto_33

    .line 555
    :pswitch_13
    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 556
    invoke-virtual {p4, v1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_33

    .line 551
    :pswitch_1a
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 552
    invoke-virtual {p4, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 553
    goto :goto_33

    .line 547
    :pswitch_21
    neg-float v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 548
    neg-int v2, p2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 549
    goto :goto_33

    .line 543
    :pswitch_2a
    neg-float v3, v0

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 544
    neg-int v2, p2

    invoke-virtual {p4, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 545
    nop

    .line 559
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_21
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .registers 7
    .param p0, "idSideMap"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "sideControlsMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Landroid/view/InsetsSourceControl;>;"
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 565
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 566
    .local v1, "type":I
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 567
    .local v2, "side":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    .line 568
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-nez v3, :cond_19

    .line 571
    goto :goto_1c

    .line 573
    :cond_19
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 564
    .end local v1    # "type":I
    .end local v2    # "side":I
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 575
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p0, "sideControlsMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Landroid/view/InsetsSourceControl;>;"
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2c

    .line 581
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 582
    .local v1, "control":Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_11

    .line 584
    goto :goto_29

    .line 586
    :cond_11
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    .line 587
    .local v2, "side":I
    if-nez v2, :cond_26

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_26

    .line 589
    const/4 v2, 0x4

    .line 591
    :cond_26
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 580
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    .end local v2    # "side":I
    :goto_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 593
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .registers 9
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p4, "shown"    # Z
    .param p5, "idSideMap"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 444
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1b

    .line 445
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 446
    .local v1, "control":Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_11

    .line 448
    goto :goto_18

    .line 450
    :cond_11
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    invoke-virtual {p1, v2, p4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 444
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    :goto_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 452
    .end local v0    # "i":I
    :cond_1b
    invoke-direct {p0, p1, p2, p5}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;
    .registers 9
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p3, "shownOrCurrent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 458
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 459
    .local v0, "insets":Landroid/graphics/Insets;
    if-nez p3, :cond_5

    .line 460
    return-object v0

    .line 462
    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_31

    .line 463
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 464
    .local v2, "control":Landroid/view/InsetsSourceControl;
    if-nez v2, :cond_16

    .line 466
    goto :goto_2e

    .line 468
    :cond_16
    if-eqz p1, :cond_26

    .line 469
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 470
    :cond_26
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 462
    .end local v2    # "control":Landroid/view/InsetsSourceControl;
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 473
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method private blacklist calculatePerceptible(Landroid/graphics/Insets;F)Z
    .registers 6
    .param p1, "currentInsets"    # Landroid/graphics/Insets;
    .param p2, "currentAlpha"    # F

    .line 184
    iget v0, p1, Landroid/graphics/Insets;->left:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget v0, p1, Landroid/graphics/Insets;->top:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget v0, p1, Landroid/graphics/Insets;->right:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4c

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    return v0
.end method

.method private blacklist getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .registers 14
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "idSideMap"    # Landroid/util/SparseIntArray;

    .line 434
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v9, p3

    .end local p1    # "state":Landroid/view/InsetsState;
    .end local p2    # "frame":Landroid/graphics/Rect;
    .end local p3    # "idSideMap":Landroid/util/SparseIntArray;
    .local v0, "state":Landroid/view/InsetsState;
    .local v1, "frame":Landroid/graphics/Rect;
    .local v9, "idSideMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p1

    iget p2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 437
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 434
    return-object p1
.end method

.method private blacklist releaseLeashes()V
    .registers 5

    .line 339
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25

    .line 340
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 341
    .local v1, "c":Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_15

    goto :goto_22

    .line 342
    :cond_15
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationControlCallbacks;)V

    invoke-virtual {v1, v3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 339
    .end local v1    # "c":Landroid/view/InsetsSourceControl;
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 344
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private static blacklist sanitize(F)F
    .registers 3
    .param p0, "alpha"    # F

    .line 487
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_7

    :goto_6
    goto :goto_e

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_d

    goto :goto_6

    :cond_d
    move v0, p0

    :goto_e
    return v0
.end method

.method private blacklist sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 477
    if-nez p1, :cond_6

    .line 478
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    .line 480
    :cond_6
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->hasZeroInsetsIme()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 481
    return-object p1

    .line 483
    :cond_d
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V
    .registers 8
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F
    .param p4, "allowWhenFinished"    # Z

    .line 287
    if-nez p4, :cond_f

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_7

    goto :goto_f

    .line 288
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_f
    :goto_f
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_4c

    .line 295
    invoke-static {p3}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    .line 296
    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationControlImpl;->sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 297
    invoke-static {p2}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 298
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 299
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsAnimationControlImpl;->calculatePerceptible(Landroid/graphics/Insets;F)Z

    move-result v0

    .line 300
    .local v0, "perceptible":Z
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 301
    :cond_3e
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-interface {v1, v2, v0}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    .line 302
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    .line 304
    :cond_4b
    return-void

    .line 292
    .end local v0    # "perceptible":Z
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V
    .registers 15
    .param p1, "side"    # I
    .param p2, "offset"    # I
    .param p4, "outState"    # Landroid/view/InsetsState;
    .param p5, "alpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;",
            ">;",
            "Landroid/view/InsetsState;",
            "F)V"
        }
    .end annotation

    .line 492
    .local p3, "surfaceParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;>;"
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 493
    .local v0, "controls":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/InsetsSourceControl;>;"
    if-nez v0, :cond_9

    .line 494
    return-void

    .line 497
    :cond_9
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 498
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    goto :goto_2d

    .line 499
    :cond_11
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelling:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 502
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_2d

    :cond_1c
    move v1, v3

    goto :goto_2d

    .line 505
    :cond_1e
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    if-nez v1, :cond_2c

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v1, v2

    :goto_2d
    nop

    .line 508
    .local v1, "visible":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_33
    if-ltz v3, :cond_a3

    .line 509
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 510
    .local v2, "control":Landroid/view/InsetsSourceControl;
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 511
    .local v4, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 513
    .local v5, "leash":Landroid/view/SurfaceControl;
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 514
    if-eqz v4, :cond_67

    .line 515
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 517
    :cond_67
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v6, v7}, Landroid/view/InsetsAnimationControlImpl;->addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V

    .line 519
    if-eqz p4, :cond_84

    if-eqz v4, :cond_84

    .line 520
    new-instance v6, Landroid/view/InsetsSource;

    invoke-direct {v6, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 521
    invoke-virtual {v6, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    move-result-object v6

    iget-object v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    .line 522
    invoke-virtual {v6, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v6

    .line 520
    invoke-virtual {p4, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 526
    :cond_84
    if-eqz v5, :cond_a0

    .line 527
    new-instance v6, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v6, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 528
    invoke-virtual {v6, p5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 529
    invoke-virtual {v6, v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    .line 530
    invoke-virtual {v6, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    .line 531
    invoke-virtual {v6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v6

    .line 532
    .local v6, "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v2    # "control":Landroid/view/InsetsSourceControl;
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "leash":Landroid/view/SurfaceControl;
    .end local v6    # "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    :cond_a0
    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    .line 535
    .end local v3    # "i":I
    :cond_a3
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .registers 10
    .param p1, "outState"    # Landroid/view/InsetsState;

    .line 311
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-eqz v0, :cond_6

    .line 313
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_6
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 316
    .local v0, "offset":Landroid/graphics/Insets;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 317
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;>;"
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v7, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x1

    move-object v2, p0

    move-object v6, p1

    .end local p1    # "outState":Landroid/view/InsetsState;
    .local v6, "outState":Landroid/view/InsetsState;
    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 318
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 319
    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 320
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget v7, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v3, 0x4

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 322
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-interface {p1, v1}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 323
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iput-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 324
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {p1, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 325
    iget p1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput p1, v2, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 326
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v1, v2, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {p1, v1}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 327
    iget-boolean p1, v2, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz p1, :cond_6b

    .line 331
    iget-object p1, v2, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-boolean v1, v2, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-interface {p1, p0, v1}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 332
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 335
    :cond_6b
    iget-boolean p1, v2, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return p1
.end method

.method public blacklist cancel()V
    .registers 4

    .line 374
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_5

    .line 375
    return-void

    .line 377
    :cond_5
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v0, :cond_c

    .line 378
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_e
    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 379
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelling:Z

    .line 381
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    .line 382
    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    .line 383
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    if-eqz v2, :cond_24

    move-object v1, p0

    :cond_24
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 385
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_57

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_57

    .line 386
    nop

    .line 387
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_40
    const-string v0, "TOKEN_NONE"

    :goto_42
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 386
    const/16 v1, 0x7d08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 390
    :cond_57
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 391
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 416
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 417
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 418
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 419
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 420
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 421
    const-wide v2, 0x10200000005L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 422
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 423
    const-wide v2, 0x10200000007L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 424
    const-wide v2, 0x10200000008L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 425
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 426
    return-void
.end method

.method public whitelist finish(Z)V
    .registers 8
    .param p1, "shown"    # Z

    .line 348
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_5a

    .line 352
    :cond_9
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    .line 354
    if-eqz p1, :cond_13

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_15

    :cond_13
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 355
    .local v1, "insets":Landroid/graphics/Insets;
    :goto_15
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 358
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 359
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_59

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_59

    .line 360
    nop

    .line 361
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_3a
    const-string v0, "TOKEN_NONE"

    :goto_3c
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 362
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 360
    const/16 v2, 0x7d07

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 364
    :cond_59
    return-void

    .line 350
    .end local v1    # "insets":Landroid/graphics/Insets;
    :cond_5a
    :goto_5a
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    return v0
.end method

.method public blacklist getControllingTypes()I
    .registers 2

    .line 238
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    return v0
.end method

.method blacklist getControls()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getCurrentAlpha()F
    .registers 2

    .line 228
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .registers 3

    .line 198
    iget-wide v0, p0, Landroid/view/InsetsAnimationControlImpl;->mDurationMs:J

    return-wide v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-object v0
.end method

.method public whitelist getTypes()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .registers 4
    .param p1, "types"    # I

    .line 243
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 244
    return-void
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .registers 5
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 283
    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .registers 2
    .param p1, "dispatched"    # Z

    .line 208
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    .line 209
    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .registers 2
    .param p1, "layoutInsetsDuringAnimation"    # I

    .line 411
    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    .line 412
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2b

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 250
    .local v1, "control":Landroid/view/InsetsSourceControl;
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 251
    .local v2, "c":Landroid/view/InsetsSourceControl;
    if-nez v2, :cond_1d

    .line 252
    goto :goto_28

    .line 254
    :cond_1d
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    .line 255
    .local v3, "position":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    .line 248
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    .end local v2    # "c":Landroid/view/InsetsSourceControl;
    .end local v3    # "position":Landroid/graphics/Point;
    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 257
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method public blacklist willUpdateSurface()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
