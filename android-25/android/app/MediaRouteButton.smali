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
.field private static final ACTIVATED_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private mCheatSheetEnabled:Z

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static synthetic -wrap0(Landroid/app/MediaRouteButton;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

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
    .line 59
    new-array v0, v3, [I

    #@4
    .line 60
    const v1, 0x10100a0

    #@7
    aput v1, v0, v2

    #@9
    .line 59
    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    #@b
    .line 64
    new-array v0, v3, [I

    #@d
    .line 65
    const v1, 0x10102fe

    #@10
    aput v1, v0, v2

    #@12
    .line 64
    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    #@14
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 73
    const v0, 0x10103ad

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 84
    const-string/jumbo v2, "media_router"

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/media/MediaRouter;

    #@e
    iput-object v2, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@10
    .line 85
    new-instance v2, Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@12
    const/4 v3, 0x0

    #@13
    invoke-direct {v2, p0, v3}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$MediaRouterCallback;)V

    #@16
    iput-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@18
    .line 88
    sget-object v2, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    #@1a
    .line 87
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1d
    move-result-object v0

    #@1e
    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    #@1f
    .line 89
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v2

    #@23
    invoke-direct {p0, v2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    #@26
    .line 91
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    #@2c
    .line 93
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2f
    move-result v2

    #@30
    iput v2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    #@32
    .line 96
    const/4 v2, 0x2

    #@33
    .line 95
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@36
    move-result v1

    #@37
    .line 98
    .local v1, "routeTypes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3a
    .line 100
    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    #@3d
    .line 101
    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    #@40
    .line 103
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    #@43
    .line 81
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 172
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 173
    instance-of v1, v0, Landroid/app/Activity;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 174
    nop

    #@d
    nop

    #@e
    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    #@f
    .line 176
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    nop

    #@10
    nop

    #@11
    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    #@16
    .line 178
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v2, "The MediaRouteButton\'s Context is not an Activity."

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1
.end method

.method private refreshRoute()V
    .locals 7

    #@0
    .prologue
    .line 392
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@2
    if-eqz v4, :cond_3

    #@4
    .line 393
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@6
    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    #@9
    move-result-object v3

    #@a
    .line 394
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_4

    #@10
    iget v4, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@12
    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@15
    move-result v1

    #@16
    .line 395
    .local v1, "isRemote":Z
    :goto_0
    if-eqz v1, :cond_5

    #@18
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    #@1b
    move-result v0

    #@1c
    .line 397
    :goto_1
    const/4 v2, 0x0

    #@1d
    .line 398
    .local v2, "needsRefresh":Z
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    #@1f
    if-eq v4, v1, :cond_0

    #@21
    .line 399
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    #@23
    .line 400
    const/4 v2, 0x1

    #@24
    .line 402
    :cond_0
    iget-boolean v4, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    #@26
    if-eq v4, v0, :cond_1

    #@28
    .line 403
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    #@2a
    .line 404
    const/4 v2, 0x1

    #@2b
    .line 407
    :cond_1
    if-eqz v2, :cond_2

    #@2d
    .line 408
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    #@30
    .line 411
    :cond_2
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@32
    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@34
    .line 412
    const/4 v6, 0x1

    #@35
    .line 411
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    #@38
    move-result v4

    #@39
    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    #@3c
    .line 391
    .end local v1    # "isRemote":Z
    .end local v2    # "needsRefresh":Z
    .end local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_3
    return-void

    #@3d
    .line 394
    .restart local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    const/4 v1, 0x0

    #@3e
    goto :goto_0

    #@3f
    .line 395
    .restart local v1    # "isRemote":Z
    :cond_5
    const/4 v0, 0x0

    #@40
    .local v0, "isConnecting":Z
    goto :goto_1
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 268
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 269
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@b
    .line 270
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 272
    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@12
    .line 273
    if-eqz p1, :cond_1

    #@14
    .line 274
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@17
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@1e
    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    const/4 v0, 0x1

    #@25
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@28
    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    #@2b
    .line 267
    return-void

    #@2c
    :cond_2
    move v0, v1

    #@2d
    .line 276
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 258
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 260
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@5
    .line 261
    .local v0, "remoteIndicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v1

    #@15
    .line 261
    if-eqz v1, :cond_0

    #@17
    .line 263
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 257
    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@2
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 289
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 291
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 292
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 288
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    #@0
    .prologue
    .line 307
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 309
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@6
    .line 310
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 311
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@c
    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@e
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@10
    .line 312
    const/16 v3, 0x8

    #@12
    .line 311
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@15
    .line 314
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    #@18
    .line 306
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 242
    add-int/lit8 v1, p1, 0x1

    #@2
    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@5
    move-result-object v0

    #@6
    .line 248
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 249
    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    #@c
    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    #@f
    .line 253
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 250
    :cond_1
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 251
    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    #@16
    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    #@19
    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 319
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@3
    .line 320
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 321
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@9
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@b
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@e
    .line 324
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@11
    .line 318
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 374
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@5
    if-nez v8, :cond_0

    #@7
    return-void

    #@8
    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@b
    move-result v5

    #@c
    .line 377
    .local v5, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@f
    move-result v8

    #@10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@13
    move-result v9

    #@14
    sub-int v6, v8, v9

    #@16
    .line 378
    .local v6, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@19
    move-result v7

    #@1a
    .line 379
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@21
    move-result v9

    #@22
    sub-int v0, v8, v9

    #@24
    .line 381
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@29
    move-result v4

    #@2a
    .line 382
    .local v4, "drawWidth":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2f
    move-result v1

    #@30
    .line 383
    .local v1, "drawHeight":I
    sub-int v8, v6, v5

    #@32
    sub-int/2addr v8, v4

    #@33
    div-int/lit8 v8, v8, 0x2

    #@35
    add-int v2, v5, v8

    #@37
    .line 384
    .local v2, "drawLeft":I
    sub-int v8, v0, v7

    #@39
    sub-int/2addr v8, v1

    #@3a
    div-int/lit8 v8, v8, 0x2

    #@3c
    add-int v3, v7, v8

    #@3e
    .line 386
    .local v3, "drawTop":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@40
    .line 387
    add-int v9, v2, v4

    #@42
    add-int v10, v3, v1

    #@44
    .line 386
    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@47
    .line 388
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@49
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4c
    .line 371
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 329
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@4
    move-result v7

    #@5
    .line 330
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v2

    #@9
    .line 331
    .local v2, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@c
    move-result v6

    #@d
    .line 332
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@10
    move-result v1

    #@11
    .line 334
    .local v1, "heightMode":I
    iget v10, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    #@13
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@15
    if-eqz v8, :cond_1

    #@17
    .line 335
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1c
    move-result v8

    #@1d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@20
    move-result v11

    #@21
    add-int/2addr v8, v11

    #@22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@25
    move-result v11

    #@26
    add-int/2addr v8, v11

    #@27
    .line 334
    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    #@2a
    move-result v5

    #@2b
    .line 336
    .local v5, "width":I
    iget v8, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    #@2d
    iget-object v10, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@2f
    if-eqz v10, :cond_0

    #@31
    .line 337
    iget-object v9, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@36
    move-result v9

    #@37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@3a
    move-result v10

    #@3b
    add-int/2addr v9, v10

    #@3c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@3f
    move-result v10

    #@40
    add-int/2addr v9, v10

    #@41
    .line 336
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@44
    move-result v0

    #@45
    .line 340
    .local v0, "height":I
    sparse-switch v6, :sswitch_data_0

    #@48
    .line 349
    :sswitch_0
    move v4, v5

    #@49
    .line 354
    .local v4, "measuredWidth":I
    :goto_1
    sparse-switch v1, :sswitch_data_1

    #@4c
    .line 363
    :sswitch_1
    move v3, v0

    #@4d
    .line 367
    .local v3, "measuredHeight":I
    :goto_2
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    #@50
    .line 328
    return-void

    #@51
    .end local v0    # "height":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v5    # "width":I
    :cond_1
    move v8, v9

    #@52
    .line 335
    goto :goto_0

    #@53
    .line 342
    .restart local v0    # "height":I
    .restart local v5    # "width":I
    :sswitch_2
    move v4, v7

    #@54
    .line 343
    .restart local v4    # "measuredWidth":I
    goto :goto_1

    #@55
    .line 345
    .end local v4    # "measuredWidth":I
    :sswitch_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    #@58
    move-result v4

    #@59
    .restart local v4    # "measuredWidth":I
    goto :goto_1

    #@5a
    .line 356
    :sswitch_4
    move v3, v2

    #@5b
    .line 357
    .restart local v3    # "measuredHeight":I
    goto :goto_2

    #@5c
    .line 359
    .end local v3    # "measuredHeight":I
    :sswitch_5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@5f
    move-result v3

    #@60
    .restart local v3    # "measuredHeight":I
    goto :goto_2

    #@61
    .line 340
    nop

    #@62
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    #@70
    .line 354
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 2

    #@0
    .prologue
    .line 192
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    #@3
    move-result v0

    #@4
    .line 193
    .local v0, "handled":Z
    if-nez v0, :cond_0

    #@6
    .line 194
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    #@a
    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .end local v0    # "handled":Z
    :goto_0
    return v0

    #@11
    .restart local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 201
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    #@5
    move-result v9

    #@6
    if-eqz v9, :cond_0

    #@8
    .line 202
    return v12

    #@9
    .line 205
    :cond_0
    iget-boolean v9, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    #@b
    if-nez v9, :cond_1

    #@d
    .line 206
    return v11

    #@e
    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 210
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_2

    #@18
    .line 212
    return v11

    #@19
    .line 215
    :cond_2
    const/4 v9, 0x2

    #@1a
    new-array v6, v9, [I

    #@1c
    .line 216
    .local v6, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@21
    .line 217
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    #@24
    .line 218
    invoke-virtual {p0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@27
    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v2

    #@2b
    .line 221
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@2e
    move-result v8

    #@2f
    .line 222
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@32
    move-result v4

    #@33
    .line 223
    .local v4, "height":I
    aget v9, v6, v12

    #@35
    div-int/lit8 v10, v4, 0x2

    #@37
    add-int v5, v9, v10

    #@39
    .line 224
    .local v5, "midy":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@40
    move-result-object v9

    #@41
    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@43
    .line 226
    .local v7, "screenWidth":I
    invoke-static {v2, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@46
    move-result-object v0

    #@47
    .line 227
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@4a
    move-result v9

    #@4b
    if-ge v5, v9, :cond_3

    #@4d
    .line 230
    aget v9, v6, v11

    #@4f
    sub-int v9, v7, v9

    #@51
    div-int/lit8 v10, v8, 0x2

    #@53
    sub-int/2addr v9, v10

    #@54
    .line 229
    const v10, 0x800035

    #@57
    invoke-virtual {v0, v10, v9, v4}, Landroid/widget/Toast;->setGravity(III)V

    #@5a
    .line 235
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@5d
    .line 236
    invoke-virtual {p0, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    #@60
    .line 237
    return v12

    #@61
    .line 233
    :cond_3
    const/16 v9, 0x51

    #@63
    invoke-virtual {v0, v9, v11, v4}, Landroid/widget/Toast;->setGravity(III)V

    #@66
    goto :goto_0
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 186
    iput-boolean p1, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    #@2
    .line 185
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@2
    .line 139
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 124
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@e
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@10
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@13
    .line 128
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@15
    .line 130
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    if-eqz p1, :cond_1

    #@1b
    .line 131
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    #@1d
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    #@1f
    .line 132
    const/16 v2, 0x8

    #@21
    .line 131
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@24
    .line 135
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    #@27
    .line 122
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 300
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 301
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    .line 297
    :cond_0
    return-void

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 301
    goto :goto_0
.end method

.method public showDialog()V
    .locals 0

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    #@3
    .line 155
    return-void
.end method

.method showDialogInternal()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    iget-boolean v2, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 161
    return v1

    #@6
    .line 164
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    #@9
    move-result-object v2

    #@a
    .line 165
    iget v3, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    #@c
    iget-object v4, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    #@e
    .line 164
    invoke-static {v2, v3, v4}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    #@11
    move-result-object v0

    #@12
    .line 166
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :cond_1
    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 284
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
