.class Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;
.super Ljava/lang/Object;
.source "DrawableCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@3
    .line 27
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 37
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;

    #@6
    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-object v0

    #@a
    .line 39
    :cond_0
    return-object p0
.end method
