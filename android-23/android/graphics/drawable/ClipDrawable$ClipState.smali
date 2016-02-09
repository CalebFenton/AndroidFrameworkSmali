.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field mGravity:I

.field mOrientation:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@0
    .prologue
    .line 208
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    #@3
    .line 204
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@6
    .line 205
    const/4 v0, 0x3

    #@7
    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@9
    .line 210
    if-eqz p1, :cond_0

    #@b
    .line 211
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@d
    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@f
    .line 212
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@11
    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@13
    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable;)V

    #@6
    return-object v0
.end method
