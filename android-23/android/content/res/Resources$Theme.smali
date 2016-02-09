.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1763
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1769
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    #@7
    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    #@a
    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@c
    .line 1776
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    #@f
    .line 1764
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@11
    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    #@13
    .line 1765
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    #@15
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@1b
    .line 1763
    return-void
.end method

.method private getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1792
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1441
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    #@5
    .line 1443
    iput p1, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    #@7
    .line 1444
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    #@c
    .line 1440
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1754
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1753
    return-void
.end method

.method public encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1821
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    #@3
    .line 1822
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1823
    .local v1, "properties":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 1824
    aget-object v2, v1, v0

    #@d
    add-int/lit8 v3, v0, 0x1

    #@f
    aget-object v3, v1, v3

    #@11
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 1823
    add-int/lit8 v0, v0, 0x2

    #@16
    goto :goto_0

    #@17
    .line 1826
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    #@1a
    .line 1820
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1759
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3
    .line 1760
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    #@5
    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    #@a
    .line 1758
    return-void
.end method

.method public getAllAttributes()[I
    .locals 2

    #@0
    .prologue
    .line 1706
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    #@2
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    #@0
    .prologue
    .line 1784
    iget v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    #@2
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 4

    #@0
    .prologue
    .line 1742
    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    invoke-static {v2, v3}, Landroid/content/res/AssetManager;->getThemeChangingConfigurations(J)I

    #@5
    move-result v0

    #@6
    .line 1743
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1730
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    #@0
    .prologue
    .line 1788
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    #@0
    .prologue
    .line 1780
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 1715
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getTheme()[Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    #@0
    .prologue
    .line 1804
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@2
    iget v0, v7, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@4
    .line 1805
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    #@6
    new-array v6, v7, [Ljava/lang/String;

    #@8
    .line 1806
    .local v6, "themes":[Ljava/lang/String;
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    add-int/lit8 v4, v0, -0x1

    #@b
    .local v4, "j":I
    :goto_0
    array-length v7, v6

    #@c
    if-ge v3, v7, :cond_1

    #@e
    .line 1807
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@10
    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@12
    aget v5, v7, v4

    #@14
    .line 1808
    .local v5, "resId":I
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@16
    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@18
    aget-boolean v2, v7, v4

    #@1a
    .line 1810
    .local v2, "forced":Z
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@1c
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    aput-object v7, v6, v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1814
    :goto_1
    add-int/lit8 v8, v3, 0x1

    #@24
    if-eqz v2, :cond_0

    #@26
    const-string/jumbo v7, "forced"

    #@29
    :goto_2
    aput-object v7, v6, v8

    #@2b
    .line 1806
    add-int/lit8 v3, v3, 0x2

    #@2d
    add-int/lit8 v4, v4, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1811
    :catch_0
    move-exception v1

    #@31
    .line 1812
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v6, v3

    #@37
    goto :goto_1

    #@38
    .line 1814
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string/jumbo v7, "not forced"

    #@3b
    goto :goto_2

    #@3c
    .line 1816
    .end local v2    # "forced":Z
    .end local v5    # "resId":I
    :cond_1
    return-object v6
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1512
    array-length v10, p2

    #@1
    .line 1513
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@3
    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v9

    #@7
    .line 1514
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@9
    .line 1541
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@b
    const-wide/16 v4, 0x0

    #@d
    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    #@f
    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    #@11
    const/4 v2, 0x0

    #@12
    move v3, p1

    #@13
    move-object v6, p2

    #@14
    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    #@17
    .line 1542
    return-object v9
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 12
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 1595
    array-length v10, p2

    #@1
    .line 1596
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@3
    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v9

    #@7
    .local v9, "array":Landroid/content/res/TypedArray;
    move-object v11, p1

    #@8
    .line 1602
    check-cast v11, Landroid/content/res/XmlBlock$Parser;

    #@a
    .line 1603
    .local v11, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@c
    .line 1604
    if-eqz v11, :cond_0

    #@e
    iget-wide v4, v11, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@10
    :goto_0
    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    #@12
    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    #@14
    move v2, p3

    #@15
    move/from16 v3, p4

    #@17
    move-object v6, p2

    #@18
    .line 1603
    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    #@1b
    .line 1606
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@1d
    .line 1607
    iput-object v11, v9, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@1f
    .line 1638
    return-object v9

    #@20
    .line 1604
    :cond_0
    const-wide/16 v4, 0x0

    #@22
    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "attrs"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1483
    array-length v10, p1

    #@2
    .line 1484
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@4
    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v9

    #@8
    .line 1485
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@a
    .line 1486
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@c
    const-wide/16 v4, 0x0

    #@e
    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    #@10
    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    #@12
    move v3, v2

    #@13
    move-object v6, p1

    #@14
    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    #@17
    .line 1487
    return-object v9
.end method

.method public rebase()V
    .locals 6

    #@0
    .prologue
    .line 1837
    iget-wide v4, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    invoke-static {v4, v5}, Landroid/content/res/AssetManager;->clearTheme(J)V

    #@5
    .line 1840
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@8
    iget v3, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 1841
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@e
    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    #@10
    aget v2, v3, v1

    #@12
    .line 1842
    .local v2, "resId":I
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@14
    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    #@16
    aget-boolean v0, v3, v1

    #@18
    .line 1843
    .local v0, "force":Z
    iget-wide v4, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@1a
    invoke-static {v4, v5, v2, v0}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    #@1d
    .line 1840
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1836
    .end local v0    # "force":Z
    .end local v2    # "resId":I
    :cond_0
    return-void
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 7
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    #@0
    .prologue
    .line 1689
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@4
    move v4, p1

    #@5
    move-object v5, p2

    #@6
    move v6, p3

    #@7
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    #@a
    move-result v0

    #@b
    .line 1696
    .local v0, "got":Z
    return v0
.end method

.method public resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1657
    array-length v9, p2

    #@3
    .line 1658
    .local v9, "len":I
    if-eqz p1, :cond_0

    #@5
    array-length v0, p1

    #@6
    if-eq v9, v0, :cond_1

    #@8
    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 1660
    const-string/jumbo v1, "Base attribute values must the same length as attrs"

    #@d
    .line 1659
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1663
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@13
    invoke-static {v0, v9}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@16
    move-result-object v8

    #@17
    .line 1664
    .local v8, "array":Landroid/content/res/TypedArray;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@19
    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    #@1b
    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    #@1d
    move v3, v2

    #@1e
    move-object v4, p1

    #@1f
    move-object v5, p2

    #@20
    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    #@23
    .line 1665
    iput-object p0, v8, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@25
    .line 1666
    iput-object v10, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@27
    .line 1668
    return-object v8
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1457
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    #@2
    iget-wide v2, p1, Landroid/content/res/Resources$Theme;->mTheme:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    #@7
    .line 1459
    iget v0, p1, Landroid/content/res/Resources$Theme;->mThemeResId:I

    #@9
    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    #@b
    .line 1460
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    #@d
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    #@14
    .line 1456
    return-void
.end method
