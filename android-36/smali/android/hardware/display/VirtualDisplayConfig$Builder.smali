.class public final Landroid/hardware/display/VirtualDisplayConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field private blacklist mDefaultBrightness:F

.field private final blacklist mDensityDpi:I

.field private blacklist mDimBrightness:F

.field private blacklist mDisplayCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mDisplayIdToMirror:I

.field private blacklist mFlags:I

.field private final blacklist mHeight:I

.field private blacklist mIgnoreActivitySizeRestrictions:Z

.field private blacklist mIsHomeSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mRequestedRefreshRate:F

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mUniqueId:Ljava/lang/String;

.field private final blacklist mWidth:I

.field private blacklist mWindowManagerMirroringEnabled:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    .line 446
    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    .line 447
    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    .line 448
    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    .line 449
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    .line 450
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    .line 451
    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    .line 452
    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 453
    iput-boolean v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    .line 454
    iput v2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    .line 455
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    .line 456
    iput-object v1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    .line 471
    if-eqz p1, :cond_50

    .line 474
    if-lez p2, :cond_48

    .line 477
    if-lez p3, :cond_40

    .line 480
    if-lez p4, :cond_38

    .line 483
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    .line 484
    iput p2, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    .line 485
    iput p3, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    .line 486
    iput p4, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    .line 487
    return-void

    .line 481
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display density must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display name is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isValidBrightness(F)Z
    .registers 3
    .param p1, "brightness"    # F

    .line 717
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public whitelist addDisplayCategory(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 4
    .param p1, "displayCategory"    # Ljava/lang/String;

    .line 567
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 568
    return-object p0
.end method

.method public whitelist build()Landroid/hardware/display/VirtualDisplayConfig;
    .registers 23

    .line 729
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    invoke-direct {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    iget v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_13

    goto :goto_1b

    .line 730
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dim brightness must not be greater than the default brightness"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_1b
    :goto_1b
    new-instance v3, Landroid/hardware/display/VirtualDisplayConfig;

    iget-object v4, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mName:Ljava/lang/String;

    iget v5, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWidth:I

    iget v6, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mHeight:I

    iget v7, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDensityDpi:I

    iget v8, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    iget-object v9, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    iget-object v10, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    iget v11, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    iget-boolean v12, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    iget-object v13, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    iget v14, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    iget-boolean v15, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    iget-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-boolean v2, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    move-object/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    move/from16 v18, v1

    iget v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    move/from16 v19, v1

    iget-object v1, v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move/from16 v17, v2

    invoke-direct/range {v3 .. v21}, Landroid/hardware/display/VirtualDisplayConfig;-><init>(Ljava/lang/String;IIIILandroid/view/Surface;Ljava/lang/String;IZLandroid/util/ArraySet;FZLandroid/view/DisplayCutout;ZFFLandroid/hardware/display/IBrightnessListener;Landroid/hardware/display/VirtualDisplayConfig-IA;)V

    return-object v3
.end method

.method public whitelist setBrightnessListener(Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    .line 711
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;

    .line 712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;)V

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    .line 713
    return-object p0
.end method

.method public whitelist setDefaultBrightness(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 4
    .param p1, "brightness"    # F

    .line 665
    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 669
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDefaultBrightness:F

    .line 670
    return-object p0

    .line 666
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display default brightness must be in range [0.0, 1.0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDimBrightness(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 4
    .param p1, "brightness"    # F

    .line 692
    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->isValidBrightness(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 696
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDimBrightness:F

    .line 697
    return-object p0

    .line 693
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display dim brightness must be in range [0.0, 1.0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisplayCategories(Ljava/util/Set;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/display/VirtualDisplayConfig$Builder;"
        }
    .end annotation

    .line 555
    .local p1, "displayCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 556
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCategories:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 557
    return-object p0
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 625
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 626
    return-object p0
.end method

.method public blacklist setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "displayIdToMirror"    # I

    .line 531
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mDisplayIdToMirror:I

    .line 532
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 499
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mFlags:I

    .line 500
    return-object p0
.end method

.method public whitelist setHomeSupported(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "isHomeSupported"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 612
    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIsHomeSupported:Z

    .line 613
    return-object p0
.end method

.method public whitelist setIgnoreActivitySizeRestrictions(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 643
    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mIgnoreActivitySizeRestrictions:Z

    .line 644
    return-object p0
.end method

.method public whitelist setRequestedRefreshRate(F)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 4
    .param p1, "requestedRefreshRate"    # F

    .line 584
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 588
    iput p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mRequestedRefreshRate:F

    .line 589
    return-object p0

    .line 585
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual display requested refresh rate must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 511
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mSurface:Landroid/view/Surface;

    .line 512
    return-object p0
.end method

.method public blacklist setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mUniqueId:Ljava/lang/String;

    .line 522
    return-object p0
.end method

.method public blacklist setWindowManagerMirroringEnabled(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;
    .registers 2
    .param p1, "windowManagerMirroringEnabled"    # Z

    .line 542
    iput-boolean p1, p0, Landroid/hardware/display/VirtualDisplayConfig$Builder;->mWindowManagerMirroringEnabled:Z

    .line 543
    return-object p0
.end method
