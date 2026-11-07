.class Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SimpleIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeBitmapDrawable"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 753
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 754
    return-void
.end method


# virtual methods
.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 758
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
