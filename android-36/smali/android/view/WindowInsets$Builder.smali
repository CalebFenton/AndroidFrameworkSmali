.class public final Landroid/view/WindowInsets$Builder;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayCutout:Landroid/view/DisplayCutout;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mForceConsumingOpaqueCaptionBar:Z

.field private blacklist mForceConsumingTypes:I

.field private blacklist mFrameHeight:I

.field private blacklist mFrameWidth:I

.field private blacklist mIsRound:Z

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mStableInsetsConsumed:Z

.field private blacklist mSuppressScrimTypes:I

.field private blacklist mSystemInsetsConsumed:Z

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1380
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1383
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1384
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1391
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1399
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1400
    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1401
    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1402
    new-array v1, v0, [[Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1403
    new-array v0, v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1404
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .registers 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1380
    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1383
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1384
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1391
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1412
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1413
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1414
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z

    move-result-object v0

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    .line 1415
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1416
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1417
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1418
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1419
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1420
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    .line 1421
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    .line 1422
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    .line 1423
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1424
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1425
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1426
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1427
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    .line 1428
    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    .line 1429
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/WindowInsets;
    .registers 20

    .line 1793
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v3

    goto :goto_d

    :cond_b
    iget-object v2, v0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1794
    :goto_d
    iget-boolean v4, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v4, :cond_13

    move-object v4, v3

    goto :goto_15

    :cond_13
    iget-object v4, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    :goto_15
    move-object v5, v3

    move-object v3, v4

    iget-object v4, v0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    move-object v6, v5

    iget-boolean v5, v0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    move-object v7, v6

    iget v6, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    move-object v8, v7

    iget-boolean v7, v0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    move-object v9, v8

    iget v8, v0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    move-object v10, v9

    iget-object v9, v0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    move-object v11, v10

    iget-object v10, v0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object v12, v11

    iget-object v11, v0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object v13, v12

    iget-object v12, v0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1797
    move-object v14, v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v13

    .line 1798
    iget-boolean v15, v0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    if-eqz v15, :cond_3c

    move-object v15, v14

    goto :goto_3e

    :cond_3c
    iget-object v15, v0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1799
    :goto_3e
    iget-boolean v14, v0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v14, :cond_45

    const/16 v16, 0x0

    goto :goto_49

    :cond_45
    iget-object v14, v0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v14

    :goto_49
    iget v14, v0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    move-object/from16 v17, v1

    iget v1, v0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    move/from16 v18, v1

    move-object/from16 v1, v17

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 1793
    return-object v1
.end method

.method public blacklist setAlwaysConsumeSystemBars(Z)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "alwaysConsumeSystemBars"    # Z

    .line 1698
    return-object p0
.end method

.method public whitelist setBoundingRects(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .registers 7
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    .line 1732
    .local p2, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1e

    .line 1733
    and-int v1, p1, v0

    if-nez v1, :cond_b

    .line 1734
    goto :goto_1b

    .line 1736
    :cond_b
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    aput-object v2, v1, v3

    .line 1732
    :goto_1b
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1738
    .end local v0    # "i":I
    :cond_1e
    iput-boolean v2, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1739
    return-object p0
.end method

.method public whitelist setBoundingRectsIgnoringVisibility(ILjava/util/List;)Landroid/view/WindowInsets$Builder;
    .registers 7
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/WindowInsets$Builder;"
        }
    .end annotation

    .line 1758
    .local p2, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/16 v0, 0x8

    if-eq p1, v0, :cond_25

    .line 1761
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_5
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_22

    .line 1762
    and-int v1, p1, v0

    if-nez v1, :cond_f

    .line 1763
    goto :goto_1f

    .line 1765
    :cond_f
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    aput-object v2, v1, v3

    .line 1761
    :goto_1f
    shl-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1767
    .end local v0    # "i":I
    :cond_22
    iput-boolean v2, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1768
    return-object p0

    .line 1759
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum bounding rects not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;
    .registers 6
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 1619
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :goto_6
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1620
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1621
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    .line 1622
    .local v0, "safeInsets":Landroid/graphics/Insets;
    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    .line 1623
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    .line 1624
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    .line 1625
    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 1627
    .end local v0    # "safeInsets":Landroid/graphics/Insets;
    .end local v1    # "index":I
    :cond_2d
    return-object p0
.end method

.method public whitelist setDisplayShape(Landroid/view/DisplayShape;)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "displayShape"    # Landroid/view/DisplayShape;

    .line 1682
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1683
    return-object p0
.end method

.method public blacklist setForceConsumingOpaqueCaptionBar(Z)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "forceConsumingOpaqueCaptionBar"    # Z

    .line 1711
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingOpaqueCaptionBar:Z

    .line 1712
    return-object p0
.end method

.method public blacklist setForceConsumingTypes(I)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "forceConsumingTypes"    # I

    .line 1704
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mForceConsumingTypes:I

    .line 1705
    return-object p0
.end method

.method public whitelist setFrame(II)Landroid/view/WindowInsets$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1781
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mFrameWidth:I

    .line 1782
    iput p2, p0, Landroid/view/WindowInsets$Builder;->mFrameHeight:I

    .line 1783
    return-object p0
.end method

.method public whitelist setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;

    .line 1525
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1528
    return-object p0
.end method

.method public whitelist setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1556
    const/16 v0, 0x8

    if-eq p1, v0, :cond_10

    .line 1559
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1562
    return-object p0

    .line 1557
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1489
    return-object p0
.end method

.method public whitelist setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/WindowInsets$Builder;
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1668
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    aput-object p1, v0, v2

    .line 1669
    .local v0, "boundsArr":[Landroid/graphics/Rect;
    new-instance v2, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v2, v0, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v2, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1670
    return-object p0
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "bounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 1656
    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1657
    return-object p0
.end method

.method public blacklist setRound(Z)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "round"    # Z

    .line 1689
    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    .line 1690
    return-object p0
.end method

.method public whitelist setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroid/view/RoundedCorner;

    .line 1649
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1, p2}, Landroid/view/RoundedCorners;->setRoundedCorner(ILandroid/view/RoundedCorner;)V

    .line 1650
    return-object p0
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;
    .registers 3
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 1633
    if-eqz p1, :cond_4

    .line 1634
    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    :goto_6
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1635
    return-object p0
.end method

.method public whitelist setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "stableInsets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1604
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    .line 1607
    return-object p0
.end method

.method public blacklist setSuppressScrimTypes(I)Landroid/view/WindowInsets$Builder;
    .registers 2
    .param p1, "suppressScrimTypes"    # I

    .line 1718
    iput p1, p0, Landroid/view/WindowInsets$Builder;->mSuppressScrimTypes:I

    .line 1719
    return-object p0
.end method

.method public whitelist setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1466
    return-object p0
.end method

.method public whitelist setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "systemWindowInsets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1445
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    .line 1448
    return-object p0
.end method

.method public whitelist setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    .line 1506
    return-object p0
.end method

.method public whitelist setVisible(IZ)Landroid/view/WindowInsets$Builder;
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1578
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x200

    if-gt v0, v1, :cond_15

    .line 1579
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 1580
    goto :goto_12

    .line 1582
    :cond_a
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aput-boolean p2, v1, v2

    .line 1578
    :goto_12
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1584
    .end local v0    # "i":I
    :cond_15
    return-object p0
.end method
