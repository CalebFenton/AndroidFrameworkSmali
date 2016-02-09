.class Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanMr1DrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    #@4
    move-result v0

    #@5
    .line 126
    .local v0, "dir":I
    if-gez v0, :cond_0

    #@7
    .end local v0    # "dir":I
    :goto_0
    return v0

    #@8
    .restart local v0    # "dir":I
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    #@0
    .prologue
    .line 120
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    #@3
    .line 119
    return-void
.end method
