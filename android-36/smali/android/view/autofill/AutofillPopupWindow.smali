.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private greylist-max-o mFullScreen:Z

.field private final greylist-max-o mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist-max-o mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 4
    .param p1, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 80
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 52
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 81
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    .line 85
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    .line 87
    return-void
.end method

.method static synthetic blacklist lambda$update$0([ILandroid/view/View;IIII)V
    .registers 9
    .param p0, "mLocationOnScreen"    # [I
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 213
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int v2, p2, p4

    sub-int/2addr v1, v2

    aput v1, p0, v0

    .line 214
    const/4 v0, 0x1

    aget v1, p0, v0

    sub-int v2, p3, p5

    sub-int/2addr v1, v2

    aput v1, p0, v0

    .line 215
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .registers 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 291
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 292
    return-void
.end method

.method protected greylist-max-o detachFromAnchor()V
    .registers 3

    .line 296
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 298
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 300
    :cond_b
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    .line 301
    return-void
.end method

.method public whitelist dismiss()V
    .registers 3

    .line 305
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2f

    .line 309
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    .line 312
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    .line 314
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 315
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 317
    :cond_2e
    return-void

    .line 306
    :cond_2f
    :goto_2f
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "gravity"    # I
    .param p8, "allowScroll"    # Z

    .line 251
    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_10

    .line 253
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 255
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 256
    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 257
    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_10
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public whitelist getAnimationStyle()I
    .registers 3

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .registers 3

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public whitelist getElevation()F
    .registers 3

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 3

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o hasContentView()Z
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o hasDecorView()Z
    .registers 2

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .line 356
    if-nez p1, :cond_3

    .line 359
    return-void

    .line 357
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setElevation(F)V
    .registers 4
    .param p1, "elevation"    # F

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .registers 15
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 266
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3f

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showAsDropDown(): anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "AutofillPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3f
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 271
    return-void

    .line 274
    :cond_46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 277
    nop

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    .line 279
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 280
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    .line 279
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
    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p1

    .line 281
    .local p1, "aboveAnchor":Z
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 283
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 284
    iget-object p2, v1, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p4

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 284
    invoke-virtual {p2, v3, p3, p4, v0}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 286
    return-void
.end method

.method public greylist-max-o update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .registers 16
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "virtualBounds"    # Landroid/graphics/Rect;

    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p4, v2, :cond_7

    move v3, v0

    goto :goto_8

    :cond_7
    move v3, v1

    :goto_8
    iput-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    .line 117
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_11

    const/16 v3, 0x7d8

    goto :goto_13

    .line 118
    :cond_11
    const/16 v3, 0x3ed

    .line 117
    :goto_13
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    .line 124
    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_43

    .line 125
    const/4 p2, 0x0

    .line 126
    const/4 p3, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/view/WindowManager;

    .line 131
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 132
    .local v0, "windowManager":Landroid/view/WindowManager;
    nop

    .line 133
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v3

    .line 134
    .local v3, "windowBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 135
    if-eq p5, v2, :cond_3d

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, p5

    move p3, v4

    .line 138
    :cond_3d
    move-object v0, p1

    .line 139
    .end local v3    # "windowBounds":Landroid/graphics/Rect;
    .local v0, "actualAnchor":Landroid/view/View;
    move v5, p2

    move v6, p3

    move v7, p4

    move-object v4, v0

    goto :goto_83

    .end local v0    # "actualAnchor":Landroid/view/View;
    :cond_43
    if-eqz p6, :cond_7e

    .line 140
    iget v3, p6, Landroid/graphics/Rect;->left:I

    iget v4, p6, Landroid/graphics/Rect;->top:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 141
    .local v3, "mLocationOnScreen":[I
    new-instance v4, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    .line 206
    .local v4, "actualAnchor":Landroid/view/View;
    iget v5, p6, Landroid/graphics/Rect;->left:I

    iget v6, p6, Landroid/graphics/Rect;->top:I

    iget v7, p6, Landroid/graphics/Rect;->right:I

    iget v8, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollX(I)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollY(I)V

    .line 212
    new-instance v5, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 216
    invoke-virtual {v4, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 217
    .end local v3    # "mLocationOnScreen":[I
    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_83

    .line 218
    .end local v4    # "actualAnchor":Landroid/view/View;
    :cond_7e
    move-object v0, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v4, v0

    .line 221
    .end local p2    # "offsetX":I
    .end local p3    # "offsetY":I
    .end local p4    # "width":I
    .restart local v4    # "actualAnchor":Landroid/view/View;
    .local v5, "offsetX":I
    .local v6, "offsetY":I
    .local v7, "width":I
    :goto_83
    iget-boolean p2, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez p2, :cond_8b

    .line 223
    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_97

    .line 224
    :cond_8b
    if-ne p5, v2, :cond_91

    .line 226
    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_97

    .line 229
    :cond_91
    const p2, 0x1030321

    invoke-virtual {p0, p2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    .line 231
    :goto_97
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result p2

    if-nez p2, :cond_a8

    .line 232
    invoke-virtual {p0, v7}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    .line 233
    invoke-virtual {p0, p5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    .line 234
    invoke-virtual {p0, v4, v5, v6}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    move v8, p5

    goto :goto_ad

    .line 236
    :cond_a8
    move-object v3, p0

    move v8, p5

    .end local p5    # "height":I
    .local v8, "height":I
    invoke-virtual/range {v3 .. v8}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    .line 238
    :goto_ad
    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 242
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    goto :goto_8

    .line 243
    :cond_7
    const/4 v0, 0x3

    :goto_8
    nop

    .line 244
    .local v0, "layoutDirection":I
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 246
    return-void
.end method
