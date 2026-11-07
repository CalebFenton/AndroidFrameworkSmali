.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Landroid/content/res/ThemedResourceCache;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/res/ThemedResourceCache<",
        "Landroid/content/res/ConstantState<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 33
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist clear()V
    .registers 1

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0}, Landroid/content/res/ThemedResourceCache;->clear()V

    return-void
.end method

.method public bridge synthetic blacklist get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ThemedResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getGeneration()I
    .registers 2

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0}, Landroid/content/res/ThemedResourceCache;->getGeneration()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # J
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 47
    .local v0, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    if-eqz v0, :cond_d

    .line 48
    invoke-virtual {v0, p3, p4}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 51
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic greylist onConfigurationChange(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    return-void
.end method

.method public bridge synthetic blacklist put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super/range {p0 .. p5}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super/range {p0 .. p6}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public greylist-max-o shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z
    .registers 4
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ConstantState<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    .local p1, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p1}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    check-cast p1, Landroid/content/res/ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z

    move-result p1

    return p1
.end method
