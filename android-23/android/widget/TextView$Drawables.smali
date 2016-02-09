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
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 352
    new-instance v3, Landroid/graphics/Rect;

    #@7
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@c
    .line 354
    const/4 v3, 0x4

    #@d
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    #@f
    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@11
    .line 375
    const/4 v3, -0x1

    #@12
    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@14
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v3

    #@18
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1a
    .line 379
    .local v0, "targetSdkVersion":I
    const/16 v3, 0x11

    #@1c
    if-lt v0, v3, :cond_0

    #@1e
    .line 380
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
    .line 379
    :cond_0
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    #@2b
    .line 381
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@2d
    .line 377
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
    .line 466
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 481
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 482
    packed-switch p1, :pswitch_data_1

    #@e
    .line 496
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@10
    .line 498
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@12
    aget-object v0, v0, v3

    #@14
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@16
    .line 499
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@18
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@1a
    .line 500
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@1c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@1e
    .line 502
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@20
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@22
    aput-object v1, v0, v3

    #@24
    .line 503
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@26
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@28
    .line 504
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@2a
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@2c
    .line 464
    :cond_0
    :goto_1
    return-void

    #@2d
    .line 468
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@2f
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@31
    aput-object v1, v0, v2

    #@33
    .line 469
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@35
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@37
    .line 470
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@39
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@3b
    goto :goto_0

    #@3c
    .line 473
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@3e
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@40
    aput-object v1, v0, v3

    #@42
    .line 474
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@44
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@46
    .line 475
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@48
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@4a
    goto :goto_0

    #@4b
    .line 484
    :pswitch_2
    const/4 v0, 0x1

    #@4c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    #@4e
    .line 486
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@50
    aget-object v0, v0, v2

    #@52
    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    #@54
    .line 487
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@56
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    #@58
    .line 488
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@5a
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    #@5c
    .line 490
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5e
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@60
    aput-object v1, v0, v2

    #@62
    .line 491
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@64
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@66
    .line 492
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@68
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@6a
    goto :goto_1

    #@6b
    .line 466
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@74
    .line 482
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDrawablesLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 437
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 438
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@a
    .line 439
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@d
    .line 437
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 436
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public resolveWithLayoutDirection(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 386
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@4
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@6
    aput-object v1, v0, v2

    #@8
    .line 387
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@a
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@c
    aput-object v1, v0, v3

    #@e
    .line 389
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 391
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@18
    aget-object v0, v0, v2

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 392
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@1e
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@20
    aput-object v1, v0, v2

    #@22
    .line 393
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@24
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@26
    .line 394
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@28
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@2a
    .line 397
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@30
    aget-object v0, v0, v3

    #@32
    if-nez v0, :cond_1

    #@34
    .line 398
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@36
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@38
    aput-object v1, v0, v3

    #@3a
    .line 399
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@3c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@3e
    .line 400
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@40
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@42
    .line 432
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    #@45
    .line 433
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->updateDrawablesLayoutDirection(I)V

    #@48
    .line 384
    return-void

    #@49
    .line 405
    :cond_2
    packed-switch p1, :pswitch_data_0

    #@4c
    .line 420
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 421
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@52
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@54
    aput-object v1, v0, v2

    #@56
    .line 422
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@58
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@5a
    .line 423
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@5c
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@5e
    .line 425
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@60
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@62
    aput-object v1, v0, v3

    #@64
    .line 426
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@66
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@68
    .line 427
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@6a
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@6c
    goto :goto_0

    #@6d
    .line 407
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@6f
    if-eqz v0, :cond_1

    #@71
    .line 408
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@73
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@75
    aput-object v1, v0, v3

    #@77
    .line 409
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@79
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@7b
    .line 410
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@7d
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@7f
    .line 412
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@81
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@83
    aput-object v1, v0, v2

    #@85
    .line 413
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@87
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@89
    .line 414
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@8b
    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@8d
    goto :goto_0

    #@8e
    .line 405
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
    .line 445
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@4
    if-eq v2, p1, :cond_0

    #@6
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 446
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@f
    .line 448
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@11
    .line 450
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 451
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@17
    .line 452
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    #@1a
    move-result-object v1

    #@1b
    .line 454
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@1d
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@20
    .line 455
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@25
    .line 456
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2a
    .line 457
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@2d
    move-result v2

    #@2e
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@30
    .line 458
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@33
    move-result v2

    #@34
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@36
    .line 444
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    :goto_0
    return-void

    #@37
    .line 460
    :cond_1
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    #@39
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    #@3b
    goto :goto_0
.end method
