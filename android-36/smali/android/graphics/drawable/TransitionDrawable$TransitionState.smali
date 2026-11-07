.class Landroid/graphics/drawable/TransitionDrawable$TransitionState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "TransitionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/TransitionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionState"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "orig"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "owner"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    .line 266
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 270
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 275
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable-IA;)V

    return-object v0
.end method
