.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private greylist-max-o mAssets:Landroid/content/res/AssetManager;

.field private final greylist-max-o mKey:Landroid/content/res/Resources$ThemeKey;

.field private final greylist-max-o mTheme:J

.field private greylist-max-o mThemeResId:I

.field final synthetic blacklist this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesImpl;)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1456
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1454
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1457
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1458
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1459
    invoke-static {}, Landroid/content/res/ResourcesImpl;->-$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1460
    return-void
.end method


# virtual methods
.method greylist-max-o applyStyle(IZ)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1489
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/res/AssetManager;->applyStyleToTheme(JIZ)V

    .line 1490
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1491
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 1492
    return-void
.end method

.method public greylist-max-o dump(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "priority":I
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .local v3, "priority":I
    .local v4, "tag":Ljava/lang/String;
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 1555
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1464
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1465
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1466
    return-void
.end method

.method greylist-max-o getAllAttributes()[I
    .registers 3

    .line 1544
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAppliedStyleResId()I
    .registers 2

    .line 1477
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method public blacklist getAttributeResolutionStack(III)[I
    .registers 10
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "explicitStyleRes"    # I

    .line 1614
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "defStyleAttr":I
    .end local p2    # "defStyleRes":I
    .end local p3    # "explicitStyleRes":I
    .local v3, "defStyleAttr":I
    .local v4, "defStyleRes":I
    .local v5, "explicitStyleRes":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getAttributeResolutionStack(JIII)[I

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getChangingConfigurations()I
    .registers 3

    .line 1548
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1549
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeGetChangingConfigurations(J)I

    move-result v0

    .line 1550
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    return v1
.end method

.method greylist-max-o getKey()Landroid/content/res/Resources$ThemeKey;
    .registers 2

    .line 1469
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method greylist-max-o getNativeTheme()J
    .registers 3

    .line 1473
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method blacklist getParentThemeIdentifier(I)I
    .registers 3
    .param p1, "resId"    # I

    .line 1482
    if-lez p1, :cond_9

    .line 1483
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getParentThemeIdentifier(I)I

    move-result v0

    return v0

    .line 1485
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getTheme()[Ljava/lang/String;
    .registers 9

    .line 1558
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v0, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1559
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1560
    .local v1, "themes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_b
    array-length v4, v1

    if-ge v2, v4, :cond_3b

    .line 1561
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v4, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v3

    .line 1562
    .local v4, "resId":I
    iget-object v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v5, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v3

    .line 1564
    .local v5, "forced":Z
    :try_start_1a
    iget-object v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v6, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_22} :catch_23

    .line 1567
    goto :goto_2a

    .line 1565
    :catch_23
    move-exception v6

    .line 1566
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 1568
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2a
    add-int/lit8 v6, v2, 0x1

    if-eqz v5, :cond_31

    const-string v7, "forced"

    goto :goto_34

    :cond_31
    const-string/jumbo v7, "not forced"

    :goto_34
    aput-object v7, v1, v6

    .line 1560
    .end local v4    # "resId":I
    .end local v5    # "forced":Z
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 1570
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3b
    return-object v1
.end method

.method greylist-max-o obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 19
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 1507
    move-object/from16 v6, p3

    array-length v11, v6

    .line 1508
    .local v11, "len":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1514
    .local v12, "array":Landroid/content/res/TypedArray;
    move-object v5, p2

    check-cast v5, Landroid/content/res/XmlBlock$Parser;

    .line 1515
    .local v5, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v7, v12, Landroid/content/res/TypedArray;->mDataAddress:J

    iget-wide v9, v12, Landroid/content/res/TypedArray;->mIndicesAddress:J

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v10}, Landroid/content/res/AssetManager;->applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V

    .line 1517
    iput-object p1, v12, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1518
    iput-object v5, v12, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1519
    return-object v12
.end method

.method greylist-max-o rebase()V
    .registers 2

    .line 1579
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1580
    return-void
.end method

.method blacklist rebase(Landroid/content/res/AssetManager;)V
    .registers 9
    .param p1, "newAssets"    # Landroid/content/res/AssetManager;

    .line 1590
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v6, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    move-object v3, p1

    .end local p1    # "newAssets":Landroid/content/res/AssetManager;
    .local v3, "newAssets":Landroid/content/res/AssetManager;
    invoke-virtual/range {v0 .. v6}, Landroid/content/res/AssetManager;->rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1591
    return-void
.end method

.method greylist-max-o resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .registers 10
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1540
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "resid":I
    .end local p2    # "outValue":Landroid/util/TypedValue;
    .end local p3    # "resolveRefs":Z
    .local v3, "resid":I
    .local v4, "outValue":Landroid/util/TypedValue;
    .local v5, "resolveRefs":Z
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result p1

    return p1
.end method

.method greylist-max-o resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .registers 15
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    .line 1526
    array-length v0, p3

    .line 1527
    .local v0, "len":I
    if-eqz p2, :cond_23

    array-length v1, p2

    if-ne v0, v1, :cond_23

    .line 1532
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1533
    .local v1, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v9, v1, Landroid/content/res/TypedArray;->mData:[I

    iget-object v10, v1, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    move-object v8, p3

    .end local p2    # "values":[I
    .end local p3    # "attrs":[I
    .local v7, "values":[I
    .local v8, "attrs":[I
    invoke-virtual/range {v2 .. v10}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1534
    iput-object p1, v1, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1535
    const/4 p2, 0x0

    iput-object p2, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1536
    return-object v1

    .line 1527
    .end local v1    # "array":Landroid/content/res/TypedArray;
    .end local v7    # "values":[I
    .end local v8    # "attrs":[I
    .restart local p2    # "values":[I
    .restart local p3    # "attrs":[I
    :cond_23
    move-object v7, p2

    move-object v8, p3

    .line 1528
    .end local p2    # "values":[I
    .end local p3    # "attrs":[I
    .restart local v7    # "values":[I
    .restart local v8    # "attrs":[I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Base attribute values must the same length as attrs"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method greylist-max-o setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .registers 8
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1495
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v4, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->setThemeTo(JLandroid/content/res/AssetManager;J)V

    .line 1497
    iget v0, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1498
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1499
    return-void
.end method
