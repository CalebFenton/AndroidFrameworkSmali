.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 362
    new-instance v3, Landroid/graphics/Rect;

    #@7
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@c
    .line 364
    const/4 v3, 0x4

    #@d
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    #@f
    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@11
    .line 385
    const/4 v3, -0x1

    #@12
    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@14
    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v3

    #@18
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1a
    .line 389
    .local v0, "targetSdkVersion":I
    const/16 v3, 0x11

    #@1c
    if-lt v0, v3, :cond_0

    #@1e
    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    move v1, v2

    #@29
    .line 389
    :cond_0
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    #@2b
    .line 391
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@2d
    .line 387
    return-void
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 489
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 504
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 505
    packed-switch p1, :pswitch_data_1

    #@e
    .line 519
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@10
    .line 521
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@12
    aget-object v0, v0, v3

    #@14
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@16
    .line 522
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@18
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@1a
    .line 523
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@1c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@1e
    .line 525
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@20
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@22
    aput-object v1, v0, v3

    #@24
    .line 526
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@26
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@28
    .line 527
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@2a
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@2c
    .line 487
    :cond_0
    :goto_1
    return-void

    #@2d
    .line 491
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@2f
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@31
    aput-object v1, v0, v2

    #@33
    .line 492
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@35
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@37
    .line 493
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@39
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@3b
    goto :goto_0

    #@3c
    .line 496
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@3e
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@40
    aput-object v1, v0, v3

    #@42
    .line 497
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@44
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@46
    .line 498
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@48
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@4a
    goto :goto_0

    #@4b
    .line 507
    :pswitch_2
    const/4 v0, 0x1

    #@4c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@4e
    .line 509
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@50
    aget-object v0, v0, v2

    #@52
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@54
    .line 510
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@56
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@58
    .line 511
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@5a
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@5c
    .line 513
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5e
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@60
    aput-object v1, v0, v2

    #@62
    .line 514
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@64
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@66
    .line 515
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@68
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@6a
    goto :goto_1

    #@6b
    .line 489
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@74
    .line 505
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hasMetadata()Z
    .locals 1

    #@0
    .prologue
    .line 399
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public resolveWithLayoutDirection(I)Z
    .locals 7
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 410
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5
    aget-object v0, v4, v3

    #@7
    .line 411
    .local v0, "previousLeft":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@9
    aget-object v1, v4, v6

    #@b
    .line 414
    .local v1, "previousRight":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@f
    aput-object v5, v4, v3

    #@11
    .line 415
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@13
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@15
    aput-object v5, v4, v6

    #@17
    .line 417
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    #@19
    if-eqz v4, :cond_3

    #@1b
    .line 419
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@21
    aget-object v4, v4, v3

    #@23
    if-nez v4, :cond_0

    #@25
    .line 420
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@27
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@29
    aput-object v5, v4, v3

    #@2b
    .line 421
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@2d
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@2f
    .line 422
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@31
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@33
    .line 425
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@35
    if-eqz v4, :cond_1

    #@37
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@39
    aget-object v4, v4, v6

    #@3b
    if-nez v4, :cond_1

    #@3d
    .line 426
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@3f
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@41
    aput-object v5, v4, v6

    #@43
    .line 427
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@45
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@47
    .line 428
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@49
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@4b
    .line 461
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    #@4e
    .line 463
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@50
    aget-object v4, v4, v3

    #@52
    if-ne v4, v0, :cond_2

    #@54
    .line 464
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@56
    aget-object v4, v4, v6

    #@58
    if-eq v4, v1, :cond_4

    #@5a
    .line 463
    :cond_2
    :goto_1
    return v2

    #@5b
    .line 433
    :cond_3
    packed-switch p1, :pswitch_data_0

    #@5e
    .line 448
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 449
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@64
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@66
    aput-object v5, v4, v3

    #@68
    .line 450
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@6a
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@6c
    .line 451
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@6e
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@70
    .line 453
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@72
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@74
    aput-object v5, v4, v6

    #@76
    .line 454
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@78
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@7a
    .line 455
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@7c
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@7e
    goto :goto_0

    #@7f
    .line 435
    :pswitch_0
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@81
    if-eqz v4, :cond_1

    #@83
    .line 436
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@85
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@87
    aput-object v5, v4, v6

    #@89
    .line 437
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@8b
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@8d
    .line 438
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@8f
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@91
    .line 440
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@93
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@95
    aput-object v5, v4, v3

    #@97
    .line 441
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@99
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@9b
    .line 442
    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@9d
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@9f
    goto :goto_0

    #@a0
    :cond_4
    move v2, v3

    #@a1
    .line 464
    goto :goto_1

    #@a2
    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 468
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@4
    if-eq v2, p1, :cond_0

    #@6
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 469
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 471
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@11
    .line 473
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 474
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@17
    .line 475
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    #@1a
    move-result-object v1

    #@1b
    .line 477
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 478
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@25
    .line 479
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2a
    .line 480
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@30
    .line 481
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@33
    move-result v2

    #@34
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@36
    .line 467
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    :goto_0
    return-void

    #@37
    .line 483
    :cond_1
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@39
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@3b
    goto :goto_0
.end method
