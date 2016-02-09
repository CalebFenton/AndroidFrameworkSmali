.class Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


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

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@3
    .line 28
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 33
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 34
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;

    #@6
    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@9
    return-object v0

    #@a
    .line 36
    :cond_0
    return-object p0
.end method
