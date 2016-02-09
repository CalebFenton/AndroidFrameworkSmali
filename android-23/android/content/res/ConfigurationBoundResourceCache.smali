.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Landroid/content/res/ThemedResourceCache;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/res/ThemedResourceCache",
        "<",
        "Landroid/content/res/ConstantState",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 33
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ThemedResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/content/res/ConstantState;

    #@7
    .line 47
    .local v0, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    if-eqz v0, :cond_0

    #@9
    .line 48
    iget-object v1, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    #@b
    invoke-virtual {v0, v1, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 51
    :cond_0
    return-object v1
.end method

.method public bridge synthetic onConfigurationChange(I)V
    .locals 0
    .param p1, "configChanges"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    #@3
    return-void
.end method

.method public bridge synthetic put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "entry"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "entry"    # Ljava/lang/Object;
    .param p5, "usesTheme"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super/range {p0 .. p5}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z
    .locals 1
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ConstantState",
            "<TT;>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    .local p1, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p1}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    invoke-static {p2, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    check-cast p1, Landroid/content/res/ConstantState;

    #@2
    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
