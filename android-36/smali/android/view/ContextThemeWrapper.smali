.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private greylist mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mOverrideConfiguration:Landroid/content/res/Configuration;

.field private greylist mResources:Landroid/content/res/Resources;

.field private greylist-max-p mTheme:Landroid/content/res/Resources$Theme;

.field private greylist mThemeResource:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 67
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 68
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 81
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 83
    return-void
.end method

.method private greylist-max-o getResourcesInternal()Landroid/content/res/Resources;
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1b

    .line 133
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_f

    .line 134
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_1b

    .line 136
    :cond_f
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 137
    .local v0, "resContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 140
    .end local v0    # "resContext":Landroid/content/Context;
    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private greylist initializeTheme()V
    .registers 4

    .line 208
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 209
    .local v0, "first":Z
    :goto_7
    if-eqz v0, :cond_22

    .line 210
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 211
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 212
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_22

    .line 213
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 216
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_22
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 101
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_18

    .line 105
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_10

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 109
    return-void

    .line 106
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() or getAssets() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "newBase"    # Landroid/content/Context;

    .line 87
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 182
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 183
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1a

    .line 184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 186
    :cond_1a
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0

    .line 188
    :cond_1d
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0

    .line 173
    :cond_7
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 174
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 173
    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 175
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 177
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public greylist getThemeResId()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected whitelist onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resId"    # I
    .param p3, "first"    # Z

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 204
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 145
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    if-eq v0, p1, :cond_9

    .line 146
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 147
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 149
    :cond_9
    return-void
.end method

.method public whitelist setTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 157
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 158
    return-void
.end method
