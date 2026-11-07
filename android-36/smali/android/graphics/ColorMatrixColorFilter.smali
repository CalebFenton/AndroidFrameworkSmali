.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final greylist mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/ColorMatrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .line 42
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 43
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .registers 4
    .param p1, "array"    # [F

    .line 53
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 54
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_15

    .line 57
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 58
    return-void

    .line 55
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nativeColorMatrixFilter([F)J
.end method

.method private static native blacklist nativeSetColorMatrix(J[F)V
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .registers 3
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;

    .line 66
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 67
    return-void
.end method

.method public greylist setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .registers 5
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .line 85
    if-nez p1, :cond_8

    .line 86
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_d

    .line 88
    :cond_8
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 90
    :goto_d
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->getNativeInstance()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/ColorMatrixColorFilter;->nativeSetColorMatrix(J[F)V

    .line 91
    return-void
.end method

.method public greylist-max-r setColorMatrixArray([F)V
    .registers 5
    .param p1, "array"    # [F

    .line 115
    if-nez p1, :cond_8

    .line 116
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    goto :goto_12

    .line 118
    :cond_8
    array-length v0, p1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_20

    .line 121
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 123
    :goto_12
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->getNativeInstance()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/ColorMatrixColorFilter;->nativeSetColorMatrix(J[F)V

    .line 124
    return-void

    .line 119
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
