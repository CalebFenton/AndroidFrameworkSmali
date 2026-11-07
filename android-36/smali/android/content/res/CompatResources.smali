.class public Landroid/content/res/CompatResources;
.super Landroid/content/res/Resources;
.source "CompatResources.java"


# instance fields
.field private greylist-max-o mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "cls"    # Ljava/lang/ClassLoader;

    .line 33
    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/res/CompatResources;->mContext:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method private greylist-max-o getTheme()Landroid/content/res/Resources$Theme;
    .registers 3

    .line 66
    iget-object v0, p0, Landroid/content/res/CompatResources;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 67
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method


# virtual methods
.method public whitelist getColor(I)I
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/content/res/CompatResources;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/CompatResources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/content/res/CompatResources;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/CompatResources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/content/res/CompatResources;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/CompatResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/content/res/CompatResources;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/CompatResources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/res/CompatResources;->mContext:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method
