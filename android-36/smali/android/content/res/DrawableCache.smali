.class Landroid/content/res/DrawableCache;
.super Landroid/content/res/ThemedResourceCache;
.source "DrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ThemedResourceCache<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public greylist-max-r getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "key"    # J
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 47
    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/DrawableCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 48
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_d

    .line 49
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 52
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z
    .registers 4
    .param p1, "entry"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "configChanges"    # I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

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

    .line 28
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/DrawableCache;->shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z

    move-result p1

    return p1
.end method
