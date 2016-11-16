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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@5
    .line 38
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 35
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
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    .line 106
    const/16 v1, 0xe

    #@a
    .line 105
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
    .line 70
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
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x3c0

    #@2
    const/16 v7, 0x2d0

    #@4
    const/16 v6, 0x280

    #@6
    const/16 v5, 0x1e0

    #@8
    .line 48
    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@11
    move-result-object v0

    #@12
    .line 49
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@14
    .line 50
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@16
    .line 51
    .local v1, "height":I
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@18
    .line 52
    .local v2, "smallest":I
    const/16 v4, 0x258

    #@1a
    if-gt v2, v4, :cond_0

    #@1c
    if-le v3, v8, :cond_1

    #@1e
    if-le v1, v7, :cond_1

    #@20
    .line 54
    :cond_0
    const/4 v4, 0x5

    #@21
    return v4

    #@22
    .line 52
    :cond_1
    if-le v3, v7, :cond_2

    #@24
    if-gt v1, v8, :cond_0

    #@26
    .line 55
    :cond_2
    const/16 v4, 0x1f4

    #@28
    if-ge v3, v4, :cond_3

    #@2a
    if-le v3, v6, :cond_4

    #@2c
    if-le v1, v5, :cond_4

    #@2e
    .line 57
    :cond_3
    const/4 v4, 0x4

    #@2f
    return v4

    #@30
    .line 55
    :cond_4
    if-le v3, v5, :cond_5

    #@32
    if-gt v1, v6, :cond_3

    #@34
    .line 58
    :cond_5
    const/16 v4, 0x168

    #@36
    if-lt v3, v4, :cond_6

    #@38
    .line 60
    const/4 v4, 0x3

    #@39
    return v4

    #@3a
    .line 62
    :cond_6
    const/4 v4, 0x2

    #@3b
    return v4
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 111
    const v1, 0x1050070

    #@9
    .line 110
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
    .line 89
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@3
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    #@5
    const/4 v5, 0x0

    #@6
    .line 90
    const v6, 0x10102ce

    #@9
    .line 89
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    #@e
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@11
    move-result v1

    #@12
    .line 92
    .local v1, "height":I
    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v2

    #@18
    .line 93
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 96
    const v3, 0x105006f

    #@21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@24
    move-result v3

    #@25
    .line 95
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v1

    #@29
    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 99
    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x1e0

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 74
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v6

    #@a
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@c
    .line 75
    .local v2, "targetSdk":I
    const/16 v6, 0x10

    #@e
    if-lt v2, v6, :cond_0

    #@10
    .line 76
    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v4

    #@16
    const v5, 0x1120003

    #@19
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1c
    move-result v4

    #@1d
    return v4

    #@1e
    .line 81
    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@27
    move-result-object v0

    #@28
    .line 82
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2a
    .line 83
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@2c
    .line 84
    .local v1, "height":I
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    #@2e
    const/4 v7, 0x2

    #@2f
    if-eq v6, v7, :cond_1

    #@31
    .line 85
    if-lt v3, v8, :cond_2

    #@33
    .line 84
    :cond_1
    :goto_0
    return v4

    #@34
    .line 85
    :cond_2
    const/16 v6, 0x280

    #@36
    if-lt v3, v6, :cond_3

    #@38
    if-ge v1, v8, :cond_1

    #@3a
    :cond_3
    move v4, v5

    #@3b
    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x1

    #@1
    return v0
.end method
