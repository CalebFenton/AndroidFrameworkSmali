.class public Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SimpleIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedScaleDrawable"
.end annotation


# static fields
.field private static final blacklist LEGACY_ICON_SCALE:F = 0.46669f


# instance fields
.field private blacklist mScaleX:F

.field private blacklist mScaleY:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 708
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 709
    const v0, 0x3eeef1fe    # 0.46669f

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    .line 710
    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 711
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 716
    .local v0, "saveCount":I
    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 716
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 718
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 719
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 723
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;

    .line 726
    return-void
.end method

.method public blacklist setScale(F)V
    .registers 6
    .param p1, "scale"    # F

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 734
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 735
    .local v1, "w":F
    const v2, 0x3eeef1fe    # 0.46669f

    mul-float v3, p1, v2

    iput v3, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    .line 736
    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 737
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_25

    cmpl-float v2, v1, v3

    if-lez v2, :cond_25

    .line 738
    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    div-float v3, v1, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleX:F

    goto :goto_34

    .line 739
    :cond_25
    cmpl-float v2, v1, v0

    if-lez v2, :cond_34

    cmpl-float v2, v0, v3

    if-lez v2, :cond_34

    .line 740
    iget v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    div-float v3, v0, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->mScaleY:F

    .line 742
    :cond_34
    :goto_34
    return-void
.end method
