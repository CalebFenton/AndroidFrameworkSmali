.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field protected static final blacklist ANIMATION_STATE_HIDE:I = 0x2

.field protected static final blacklist ANIMATION_STATE_NONE:I = 0x0

.field protected static final blacklist ANIMATION_STATE_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected blacklist mAnimationState:I

.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mId:I

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field private blacklist mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final blacklist mState:Landroid/view/InsetsState;

.field private blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p4, "controller"    # Landroid/view/InsetsController;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 98
    sget-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 117
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    .line 118
    iput p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    .line 119
    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    .line 120
    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 121
    return-void
.end method

.method private blacklist applyRequestedVisibilityAndPositionToControl()V
    .registers 9

    .line 456
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_5

    .line 457
    return-void

    .line 459
    :cond_5
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 460
    .local v0, "leash":Landroid/view/SurfaceControl;
    if-nez v0, :cond_e

    .line 461
    return-void

    .line 464
    :cond_e
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v1

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    .line 465
    .local v1, "visible":Z
    :goto_1e
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v4

    .line 470
    .local v4, "surfacePosition":Landroid/graphics/Point;
    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 471
    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v6, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v6, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 473
    invoke-virtual {v6, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    .line 474
    if-eqz v1, :cond_41

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v6, v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 475
    invoke-virtual {v6, v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v6

    .line 476
    invoke-virtual {v6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v6

    aput-object v6, v2, v3

    .line 471
    invoke-interface {v5, v2}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 478
    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    .line 479
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .registers 7

    .line 324
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 325
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 326
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 328
    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 326
    const-string v2, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 331
    :cond_22
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 332
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 333
    return v1

    .line 335
    :cond_2e
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v2

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v1

    .line 339
    .local v2, "requestedVisible":Z
    :goto_3d
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v4, :cond_42

    .line 347
    return v1

    .line 349
    :cond_42
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 352
    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v4, v5, :cond_5e

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_5e

    .line 360
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    .line 361
    .local v3, "wasVisible":Z
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 364
    return v3

    .line 367
    .end local v3    # "wasVisible":Z
    :cond_5e
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v2, :cond_65

    .line 368
    return v1

    .line 372
    :cond_65
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 373
    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 482
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 483
    .local v0, "token":J
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 484
    const-wide v2, 0x10800000003L

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 485
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_28

    .line 486
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 488
    :cond_28
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_36

    .line 489
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 491
    :cond_36
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_44

    .line 492
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 494
    :cond_44
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 495
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 497
    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method blacklist getId()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return v0
.end method

.method blacklist getType()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .registers 3

    .line 231
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method protected blacklist isShowRequested()Z
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .registers 9
    .param p1, "running"    # Z

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "insetsChanged":Z
    if-nez p1, :cond_21

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_21

    .line 262
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 263
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_1c

    .line 264
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 265
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 266
    const/4 v0, 0x1

    .line 268
    :cond_1c
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 269
    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 272
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_21
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    .line 274
    .local v1, "showRequested":Z
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3d

    .line 275
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    .line 276
    invoke-virtual {v2}, Landroid/view/InsetsController;->getCancelledForNewAnimationTypes()I

    move-result v2

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_3b

    move v2, v5

    goto :goto_3c

    :cond_3b
    move v2, v4

    .local v2, "cancelledForNewAnimation":Z
    :goto_3c
    goto :goto_51

    .line 278
    .end local v2    # "cancelledForNewAnimation":Z
    :cond_3d
    if-nez p1, :cond_49

    if-eqz v1, :cond_49

    .line 279
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v2, v3, :cond_47

    move v2, v5

    goto :goto_50

    :cond_47
    move v2, v4

    goto :goto_50

    .line 280
    :cond_49
    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v2, v5, :cond_4f

    move v2, v5

    goto :goto_50

    :cond_4f
    move v2, v4

    :goto_50
    nop

    .line 283
    .restart local v2    # "cancelledForNewAnimation":Z
    :goto_51
    if-eqz p1, :cond_57

    .line 284
    if-eqz v1, :cond_58

    move v3, v5

    goto :goto_58

    .line 285
    :cond_57
    move v3, v4

    :cond_58
    :goto_58
    iput v3, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    .line 293
    if-nez v2, :cond_61

    .line 294
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v3

    or-int/2addr v0, v3

    .line 296
    :cond_61
    return v0
.end method

.method public blacklist onPerceptible(Z)V
    .registers 4
    .param p1, "perceptible"    # Z

    .line 406
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 407
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 408
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 409
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_27

    .line 410
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    .line 415
    .end local v0    # "window":Landroid/os/IBinder;
    :cond_27
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .registers 3
    .param p1, "hasViewFocus"    # Z

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 308
    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    .line 309
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .registers 2

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    .line 316
    return-void
.end method

.method public blacklist removeSurface()V
    .registers 3

    .line 422
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 423
    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 424
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 425
    .local v0, "window":Landroid/os/IBinder;
    if-eqz v0, :cond_27

    .line 426
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    .line 430
    .end local v0    # "window":Landroid/os/IBinder;
    :cond_27
    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3
    .param p1, "fromController"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 397
    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .registers 4
    .param p1, "fromController"    # Z
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z
    .registers 14
    .param p1, "control"    # Landroid/view/InsetsSourceControl;
    .param p2, "showTypes"    # [I
    .param p3, "hideTypes"    # [I
    .param p4, "cancelTypes"    # [I
    .param p5, "transientTypes"    # [I

    .line 137
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 138
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eq v0, p1, :cond_1d

    .line 139
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 140
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 142
    :cond_1d
    return v1

    .line 145
    :cond_1e
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 146
    .local v0, "lastControl":Landroid/view/InsetsSourceControl;
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    .line 147
    nop

    .line 152
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    if-nez v2, :cond_68

    .line 154
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    .line 157
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 158
    .local v2, "localSource":Landroid/view/InsetsSource;
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 159
    .local v4, "serverSource":Landroid/view/InsetsSource;
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4b

    move v5, v3

    goto :goto_4c

    :cond_4b
    move v5, v1

    .line 160
    .local v5, "localVisible":Z
    :goto_4c
    if-eqz v4, :cond_55

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_55

    move v1, v3

    .line 161
    .local v1, "serverVisible":Z
    :cond_55
    if-eqz v2, :cond_5a

    .line 162
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 164
    :cond_5a
    if-eq v5, v1, :cond_61

    .line 165
    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 169
    :cond_61
    sget-object v6, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    invoke-virtual {p0, v6}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    .line 170
    .end local v1    # "serverVisible":Z
    .end local v2    # "localSource":Landroid/view/InsetsSource;
    .end local v4    # "serverSource":Landroid/view/InsetsSource;
    .end local v5    # "localVisible":Z
    goto/16 :goto_ef

    .line 171
    :cond_68
    if-eqz v0, :cond_8f

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 172
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    .line 173
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v4

    if-eq v2, v4, :cond_8f

    .line 176
    aget v2, p4, v1

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v2, v4

    aput v2, p4, v1

    .line 178
    :cond_8f
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v2

    .line 179
    .local v2, "requestedVisible":Z
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    goto :goto_9b

    :cond_9a
    const/4 v4, 0x0

    .line 180
    .local v4, "oldLeash":Landroid/view/SurfaceControl;
    :goto_9b
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 181
    .local v5, "newLeash":Landroid/view/SurfaceControl;
    if-eqz v5, :cond_d0

    if-eqz v4, :cond_a9

    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v6

    if-nez v6, :cond_d0

    .line 182
    :cond_a9
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    move-result v6

    if-eq v2, v6, :cond_d0

    .line 187
    if-eqz v2, :cond_b9

    .line 188
    aget v6, p2, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v6, v7

    aput v6, p2, v1

    goto :goto_c0

    .line 190
    :cond_b9
    aget v6, p3, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v6, v7

    aput v6, p3, v1

    .line 192
    :goto_c0
    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->isFake()Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 193
    aget v6, p5, v1

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v6, v7

    aput v6, p5, v1

    goto :goto_ef

    .line 198
    :cond_d0
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 199
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    .line 204
    :cond_db
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v1, v6}, Landroid/view/InsetsController;->hasSurfaceAnimation(I)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 205
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityAndPositionToControl()V

    .line 209
    :cond_e8
    if-nez v2, :cond_ef

    if-nez v0, :cond_ef

    .line 210
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    .line 214
    .end local v2    # "requestedVisible":Z
    .end local v4    # "oldLeash":Landroid/view/SurfaceControl;
    .end local v5    # "newLeash":Landroid/view/SurfaceControl;
    :cond_ef
    :goto_ef
    if-eqz v0, :cond_f9

    .line 215
    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 217
    :cond_f9
    return v3
.end method

.method blacklist setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 239
    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    .line 240
    return-void
.end method

.method blacklist setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V
    .registers 2
    .param p1, "applier"    # Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 252
    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 253
    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .registers 7
    .param p1, "newSource"    # Landroid/view/InsetsSource;
    .param p2, "animationType"    # I

    .line 434
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 435
    .local v0, "source":Landroid/view/InsetsSource;
    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4f

    .line 436
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_4f

    .line 445
    :cond_1d
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 446
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 447
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_39

    .line 448
    :cond_38
    nop

    :goto_39
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 449
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 450
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 451
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 453
    return-void

    .line 437
    :cond_4f
    :goto_4f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    .line 438
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    .line 439
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 440
    return-void
.end method
