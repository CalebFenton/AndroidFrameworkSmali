.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVATED_STATE_SET:[I

.field private static final greylist-max-o CHECKED_STATE_SET:[I


# instance fields
.field private greylist-max-o mAttachedToWindow:Z

.field private final greylist-max-o mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private greylist-max-o mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mIsConnecting:Z

.field private greylist-max-o mMinHeight:I

.field private greylist-max-o mMinWidth:I

.field private greylist-max-o mRemoteActive:Z

.field private greylist-max-o mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mRouteTypes:I

.field private final greylist-max-o mRouter:Landroid/media/MediaRouter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 59
    const v0, 0x10102fe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const v0, 0x10103ad

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 80
    new-instance v0, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton-IA;)V

    iput-object v0, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 82
    sget-object v0, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 90
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 93
    .local v1, "routeTypes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, v2}, Landroid/app/MediaRouteButton;->setClickable(Z)V

    .line 97
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 98
    return-void
.end method

.method private greylist-max-o getActivity()Landroid/app/Activity;
    .registers 4

    .line 165
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_18

    .line 167
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 170
    :cond_10
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 172
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o refreshRoute()V
    .registers 8

    .line 343
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 344
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_18

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 345
    .local v1, "isRemote":Z
    :goto_19
    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_22

    move v2, v3

    .line 346
    .local v2, "isConnecting":Z
    :cond_22
    const/4 v4, 0x0

    .line 347
    .local v4, "needsRefresh":Z
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v1, :cond_2a

    .line 348
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 349
    const/4 v4, 0x1

    .line 351
    :cond_2a
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v2, :cond_31

    .line 352
    iput-boolean v2, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 353
    const/4 v4, 0x1

    .line 356
    :cond_31
    if-eqz v4, :cond_36

    .line 357
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 359
    :cond_36
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_45

    .line 360
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v6, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v5, v6, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setEnabled(Z)V

    .line 363
    :cond_45
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_82

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_82

    .line 365
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 366
    .local v5, "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v6, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v6, :cond_6d

    .line 367
    if-nez v4, :cond_63

    if-eqz v2, :cond_82

    :cond_63
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_82

    .line 368
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_82

    .line 370
    :cond_6d
    if-eqz v1, :cond_82

    if-nez v2, :cond_82

    .line 373
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 374
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 376
    :cond_7a
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 379
    .end local v5    # "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_82
    :goto_82
    return-void
.end method

.method private greylist-max-o setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 221
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_f
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 224
    if-eqz p1, :cond_2a

    .line 225
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 230
    :cond_2a
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 231
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 209
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 211
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 212
    .local v0, "remoteIndicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 213
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1a
    return-void
.end method

.method public whitelist getRouteTypes()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 240
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 242
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 243
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 245
    :cond_c
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 5

    .line 258
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 261
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 265
    :cond_15
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 266
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 193
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 199
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_10

    .line 200
    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_19

    .line 201
    :cond_10
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_19

    .line 202
    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 204
    :cond_19
    :goto_19
    return-object v0
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 3

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 271
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_e

    .line 272
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 275
    :cond_e
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 323
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    return-void

    .line 327
    :cond_8
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 328
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 329
    .local v1, "right":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 330
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 332
    .local v3, "bottom":I
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 333
    .local v4, "drawWidth":I
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 334
    .local v5, "drawHeight":I
    sub-int v6, v1, v0

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    .line 335
    .local v6, "drawLeft":I
    sub-int v7, v3, v2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 337
    .local v7, "drawTop":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v6, v4

    add-int v10, v7, v5

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 281
    .local v0, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 282
    .local v1, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 283
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 285
    .local v3, "heightMode":I
    iget v4, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_28

    .line 286
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_29

    :cond_28
    move v5, v6

    .line 285
    :goto_29
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 287
    .local v4, "width":I
    iget v5, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v7, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_44

    .line 288
    iget-object v6, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_45

    :cond_44
    nop

    .line 287
    :goto_45
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 291
    .local v5, "height":I
    sparse-switch v2, :sswitch_data_66

    .line 300
    move v6, v4

    .local v6, "measuredWidth":I
    goto :goto_55

    .line 293
    .end local v6    # "measuredWidth":I
    :sswitch_4e
    move v6, v0

    .line 294
    .restart local v6    # "measuredWidth":I
    goto :goto_55

    .line 296
    .end local v6    # "measuredWidth":I
    :sswitch_50
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 297
    .restart local v6    # "measuredWidth":I
    nop

    .line 305
    :goto_55
    sparse-switch v3, :sswitch_data_70

    .line 314
    move v7, v5

    .local v7, "measuredHeight":I
    goto :goto_61

    .line 307
    .end local v7    # "measuredHeight":I
    :sswitch_5a
    move v7, v1

    .line 308
    .restart local v7    # "measuredHeight":I
    goto :goto_61

    .line 310
    .end local v7    # "measuredHeight":I
    :sswitch_5c
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 311
    .restart local v7    # "measuredHeight":I
    nop

    .line 318
    :goto_61
    invoke-virtual {p0, v6, v7}, Landroid/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 319
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        -0x80000000 -> :sswitch_50
        0x40000000 -> :sswitch_4e
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        -0x80000000 -> :sswitch_5c
        0x40000000 -> :sswitch_5a
    .end sparse-switch
.end method

.method public whitelist performClick()Z
    .registers 4

    .line 184
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 185
    .local v0, "handled":Z
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 186
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->playSoundEffect(I)V

    .line 188
    :cond_a
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/MediaRouteButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public whitelist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 134
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 135
    return-void
.end method

.method public whitelist setRouteTypes(I)V
    .registers 5
    .param p1, "types"    # I

    .line 117
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eq v0, p1, :cond_27

    .line 118
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 122
    :cond_13
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 124
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 129
    :cond_24
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 131
    :cond_27
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 252
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_16
    return-void
.end method

.method public whitelist showDialog()V
    .registers 1

    .line 150
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    .line 151
    return-void
.end method

.method greylist-max-o showDialogInternal()Z
    .registers 5

    .line 154
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 155
    return v1

    .line 158
    :cond_6
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v3, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 160
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

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
