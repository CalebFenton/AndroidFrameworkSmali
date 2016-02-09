.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@5
    .line 37
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 34
    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    .line 82
    const/16 v1, 0xe

    #@a
    .line 81
    if-ge v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object v0

    #@a
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    return v0
.end method

.method public getMaxActionButtons()I
    .locals 2

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    const v1, 0x10e0099

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 87
    const v1, 0x1050059

    #@9
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 65
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@3
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@5
    const/4 v5, 0x0

    #@6
    .line 66
    const v6, 0x10102ce

    #@9
    .line 65
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    #@e
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@11
    move-result v1

    #@12
    .line 68
    .local v1, "height":I
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v2

    #@18
    .line 69
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 72
    const v3, 0x1050058

    #@21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@24
    move-result v3

    #@25
    .line 71
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v1

    #@29
    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 75
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    #@0
    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v1

    #@6
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    .line 55
    .local v0, "targetSdk":I
    const/16 v1, 0x10

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 56
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v1

    #@12
    const v2, 0x1120003

    #@15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v1

    #@20
    const v2, 0x1120004

    #@23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@26
    move-result v1

    #@27
    return v1
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x1

    #@1
    return v0
.end method
