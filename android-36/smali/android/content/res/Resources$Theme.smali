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


# static fields
.field private static final blacklist MAX_NUMBER_OF_TRACING_PARENT_THEME:I = 0x64


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1552
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    .line 1553
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/Resources;Landroid/content/res/Resources-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "hexString"    # Ljava/lang/String;

    .line 1857
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist applyStyle(IZ)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1579
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1580
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->applyStyle(IZ)V

    .line 1581
    monitor-exit v0

    .line 1582
    return-void

    .line 1581
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist dump(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1822
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1823
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->dump(ILjava/lang/String;Ljava/lang/String;)V

    .line 1824
    monitor-exit v0

    .line 1825
    return-void

    .line 1824
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o encode(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1876
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 1877
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v0

    .line 1878
    .local v0, "properties":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 1879
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 1881
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 1882
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1978
    if-ne p0, p1, :cond_4

    .line 1979
    const/4 v0, 0x1

    return v0

    .line 1982
    :cond_4
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1b

    goto :goto_2b

    .line 1986
    :cond_1b
    move-object v0, p1

    check-cast v0, Landroid/content/res/Resources$Theme;

    .line 1987
    .local v0, "other":Landroid/content/res/Resources$Theme;
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$ThemeKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1983
    .end local v0    # "other":Landroid/content/res/Resources$Theme;
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAllAttributes()[I
    .registers 3

    .line 1770
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAllAttributes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1772
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method greylist-max-o getAppliedStyleResId()I
    .registers 3

    .line 1835
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1836
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1837
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getAttributeResolutionStack(III)[I
    .registers 7
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "explicitStyleRes"    # I

    .line 1960
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1961
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAttributeResolutionStack(III)[I

    move-result-object v1

    .line 1963
    .local v1, "stack":[I
    if-nez v1, :cond_10

    .line 1964
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v0

    return-object v2

    .line 1966
    :cond_10
    monitor-exit v0

    return-object v1

    .line 1968
    .end local v1    # "stack":[I
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1809
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1810
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getChangingConfigurations()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1811
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExplicitStyle(Landroid/util/AttributeSet;)I
    .registers 7
    .param p1, "set"    # Landroid/util/AttributeSet;

    .line 1919
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1920
    return v0

    .line 1922
    :cond_4
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    .line 1923
    .local v1, "styleAttr":I
    if-nez v1, :cond_b

    .line 1924
    return v0

    .line 1926
    :cond_b
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1927
    .local v2, "styleAttrType":Ljava/lang/String;
    const-string v3, "attr"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1928
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1929
    .local v3, "explicitStyle":Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 1930
    .local v4, "resolved":Z
    if-eqz v4, :cond_2a

    .line 1931
    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    return v0

    .line 1930
    .end local v3    # "explicitStyle":Landroid/util/TypedValue;
    .end local v4    # "resolved":Z
    :cond_2a
    goto :goto_35

    .line 1933
    :cond_2b
    const-string/jumbo v3, "style"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1934
    return v1

    .line 1933
    :cond_35
    :goto_35
    nop

    .line 1936
    return v0
.end method

.method public greylist-max-o getKey()Landroid/content/res/Resources$ThemeKey;
    .registers 3

    .line 1851
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1853
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method greylist-max-o getNativeTheme()J
    .registers 4

    .line 1829
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1830
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getNativeTheme()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1831
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method blacklist getParentThemeIdentifier(I)I
    .registers 4
    .param p1, "resId"    # I

    .line 1842
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1843
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getParentThemeIdentifier(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1844
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1781
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public greylist-max-o getTheme()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .line 1869
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1870
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getTheme()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1871
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1973
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 11
    .param p1, "resId"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1653
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1654
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p1

    move-object v5, p2

    .end local p1    # "resId":I
    .end local p2    # "attrs":[I
    .local v5, "attrs":[I
    .local v7, "resId":I
    :try_start_a
    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1655
    :catchall_10
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v5    # "attrs":[I
    .end local v7    # "resId":I
    .restart local p1    # "resId":I
    .restart local p2    # "attrs":[I
    :catchall_13
    move-exception v0

    move v7, p1

    move-object v5, p2

    move-object p1, v0

    .end local p1    # "resId":I
    .end local p2    # "attrs":[I
    .restart local v5    # "attrs":[I
    .restart local v7    # "resId":I
    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_10

    throw p1
.end method

.method public whitelist obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 13
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1711
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1712
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "set":Landroid/util/AttributeSet;
    .end local p2    # "attrs":[I
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "set":Landroid/util/AttributeSet;
    .local v5, "attrs":[I
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    :try_start_a
    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1714
    :catchall_10
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v4    # "set":Landroid/util/AttributeSet;
    .end local v5    # "attrs":[I
    .end local v6    # "defStyleAttr":I
    .end local v7    # "defStyleRes":I
    .restart local p1    # "set":Landroid/util/AttributeSet;
    .restart local p2    # "attrs":[I
    .restart local p3    # "defStyleAttr":I
    .restart local p4    # "defStyleRes":I
    :catchall_13
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "set":Landroid/util/AttributeSet;
    .end local p2    # "attrs":[I
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .restart local v4    # "set":Landroid/util/AttributeSet;
    .restart local v5    # "attrs":[I
    .restart local v6    # "defStyleAttr":I
    .restart local v7    # "defStyleRes":I
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_10

    throw p1
.end method

.method public whitelist obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .registers 10
    .param p1, "attrs"    # [I

    .line 1623
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1624
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    .end local p1    # "attrs":[I
    .local v5, "attrs":[I
    :try_start_a
    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1625
    :catchall_10
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v5    # "attrs":[I
    .restart local p1    # "attrs":[I
    :catchall_13
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "attrs":[I
    .restart local v5    # "attrs":[I
    :goto_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_10

    throw p1
.end method

.method public whitelist rebase()V
    .registers 3

    .line 1890
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    .line 1892
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist rebase(Landroid/content/res/ResourcesImpl;)V
    .registers 5
    .param p1, "resImpl"    # Landroid/content/res/ResourcesImpl;

    .line 1896
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object v2, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1898
    monitor-exit v0

    .line 1899
    return-void

    .line 1898
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .registers 6
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1758
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1759
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1760
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public greylist resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    .line 1735
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1736
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1737
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method greylist-max-o setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1556
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_3
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1558
    monitor-exit v0

    .line 1559
    return-void

    .line 1558
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist setTo(Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .line 1594
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    :try_start_3
    iget-object v1, p1, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 1596
    :try_start_6
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object v3, p1, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v2, v3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1597
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 1598
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_13

    .line 1599
    return-void

    .line 1597
    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    .end local p0    # "this":Landroid/content/res/Resources$Theme;
    .end local p1    # "other":Landroid/content/res/Resources$Theme;
    :try_start_12
    throw v2

    .line 1598
    .restart local p0    # "this":Landroid/content/res/Resources$Theme;
    .restart local p1    # "other":Landroid/content/res/Resources$Theme;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1993
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1994
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    move-result v1

    .line 1995
    .local v1, "themeResId":I
    const/4 v2, 0x0

    .line 1996
    .local v2, "i":I
    const-string v3, "InheritanceMap=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :goto_14
    if-lez v1, :cond_65

    .line 1998
    const/16 v3, 0x64

    if-le v2, v3, :cond_20

    .line 1999
    const-string v3, ",..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    goto :goto_65

    .line 2003
    :cond_20
    if-lez v2, :cond_27

    .line 2004
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    :cond_27
    const-string/jumbo v3, "id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2008
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2009
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    add-int/lit8 v2, v2, 0x1

    .line 2012
    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->getParentThemeIdentifier(I)I

    move-result v1

    goto :goto_14

    .line 2014
    :cond_65
    :goto_65
    const-string v3, "], Themes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
