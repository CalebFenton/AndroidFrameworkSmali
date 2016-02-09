.class Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.source "DrawableWrapperKitKat.java"


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 23
    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    #@5
    .line 28
    return-void
.end method
