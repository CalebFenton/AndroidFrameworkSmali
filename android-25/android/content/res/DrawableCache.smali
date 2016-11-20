.class Landroid/content/res/DrawableCache;
.super Landroid/content/res/ThemedResourceCache;
.source "DrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ThemedResourceCache",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "key"    # J
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 35
    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/DrawableCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@7
    .line 36
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    #@9
    .line 37
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 40
    :cond_0
    return-object v1
.end method

.method public shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z
    .locals 1
    .param p1, "entry"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

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
    .line 44
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    #@2
    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/res/DrawableCache;->shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
