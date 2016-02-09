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


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/content/res/DrawableCache;->mResources:Landroid/content/res/Resources;

    #@5
    .line 32
    return-void
.end method


# virtual methods
.method public getInstance(JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/DrawableCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@7
    .line 46
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    #@9
    .line 47
    iget-object v1, p0, Landroid/content/res/DrawableCache;->mResources:Landroid/content/res/Resources;

    #@b
    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 50
    :cond_0
    return-object v1
.end method

.method public shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z
    .locals 1
    .param p1, "entry"    # Landroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 55
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
    .line 54
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    #@2
    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/res/DrawableCache;->shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
