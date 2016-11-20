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
.field private mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1350
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1606
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
    .locals 1
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 1375
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->applyStyle(IZ)V

    #@5
    .line 1374
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1586
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->dump(ILjava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1585
    return-void
.end method

.method public encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1623
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    #@3
    .line 1624
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 1625
    .local v1, "properties":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 1626
    aget-object v2, v1, v0

    #@d
    add-int/lit8 v3, v0, 0x1

    #@f
    aget-object v3, v1, v3

    #@11
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 1625
    add-int/lit8 v0, v0, 0x2

    #@16
    goto :goto_0

    #@17
    .line 1628
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    #@1a
    .line 1622
    return-void
.end method

.method public getAllAttributes()[I
    .locals 1

    #@0
    .prologue
    .line 1539
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAllAttributes()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    #@0
    .prologue
    .line 1595
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getChangingConfigurations()I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 1563
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    #@0
    .prologue
    .line 1602
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    #@0
    .prologue
    .line 1591
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getNativeTheme()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 1548
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getTheme()[Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    #@0
    .prologue
    .line 1618
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getTheme()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "resId"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1436
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    move-object v1, p0

    #@5
    move-object v3, p2

    #@6
    move v5, p1

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 1489
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "attrs"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1411
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@3
    const/4 v2, 0x0

    #@4
    move-object v1, p0

    #@5
    move-object v3, p1

    #@6
    move v5, v4

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public rebase()V
    .locals 1

    #@0
    .prologue
    .line 1639
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    #@5
    .line 1638
    return-void
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 1
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    #@0
    .prologue
    .line 1529
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 0
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@0
    .prologue
    .line 1354
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    .line 1353
    return-void
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1388
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2
    iget-object v1, p1, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    #@7
    .line 1387
    return-void
.end method
