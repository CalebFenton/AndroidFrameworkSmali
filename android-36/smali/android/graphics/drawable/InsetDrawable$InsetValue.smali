.class final Landroid/graphics/drawable/InsetDrawable$InsetValue;
.super Ljava/lang/Object;
.source "InsetDrawable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetValue"
.end annotation


# instance fields
.field greylist-max-o mDimension:I

.field final greylist-max-o mFraction:F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    .line 393
    return-void
.end method

.method public constructor greylist-max-o <init>(FI)V
    .registers 3
    .param p1, "fraction"    # F
    .param p2, "dimension"    # I

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 397
    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 398
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .registers 4

    .line 411
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDimension(I)I
    .registers 4
    .param p1, "boundSize"    # I

    .line 400
    int-to-float v0, p1

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o scaleFromDensity(II)V
    .registers 4
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 404
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    if-eqz v0, :cond_c

    .line 405
    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 407
    :cond_c
    return-void
.end method
