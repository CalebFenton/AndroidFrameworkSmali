.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 61
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@5
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 75
    iput-object p2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@5
    .line 73
    return-void
.end method

.method private getResourcesInternal()Landroid/content/res/Resources;
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 126
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 127
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@e
    .line 133
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@10
    return-object v1

    #@11
    .line 129
    :cond_1
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@13
    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    .line 130
    .local v0, "resContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@1d
    goto :goto_0
.end method

.method private initializeTheme()V
    .locals 4

    #@0
    .prologue
    .line 190
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v2, :cond_1

    #@4
    const/4 v0, 0x1

    #@5
    .line 191
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 192
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@11
    .line 193
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@18
    move-result-object v1

    #@19
    .line 194
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    #@1b
    .line 195
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@1d
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@20
    .line 198
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@22
    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@24
    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    #@27
    .line 189
    return-void

    #@28
    .line 190
    .end local v0    # "first":Z
    :cond_1
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 96
    const-string/jumbo v1, "getResources() or getAssets() has already been called"

    #@9
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 98
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Override configuration has already been set"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 101
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    #@1c
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@1f
    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@21
    .line 93
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "newBase"    # Landroid/content/Context;

    #@0
    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 79
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@2
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "layout_inflater"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 166
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 167
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@1b
    .line 169
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@1d
    return-object v0

    #@1e
    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@6
    return-object v0

    #@7
    .line 156
    :cond_0
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@9
    .line 157
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v1

    #@d
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    .line 156
    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@15
    .line 158
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    #@18
    .line 160
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@1a
    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@2
    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resId"    # I
    .param p3, "first"    # Z

    #@0
    .prologue
    .line 186
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@4
    .line 185
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 139
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    #@6
    .line 140
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    #@9
    .line 137
    :cond_0
    return-void
.end method
