.class public Landroid/support/v4/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 52
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 53
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompatApi21;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 85
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 86
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/content/res/ResourcesCompatApi21;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 87
    :cond_0
    const/16 v1, 0xf

    #@d
    if-lt v0, v1, :cond_1

    #@f
    .line 88
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompatIcsMr1;->getDrawableForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method
