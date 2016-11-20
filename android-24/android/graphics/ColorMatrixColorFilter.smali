.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    #@3
    .line 26
    new-instance v0, Landroid/graphics/ColorMatrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@a
    .line 36
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    #@f
    .line 37
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    #@12
    .line 35
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    #@3
    .line 26
    new-instance v0, Landroid/graphics/ColorMatrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@a
    .line 48
    array-length v0, p1

    #@b
    const/16 v1, 0x14

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 49
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@11
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@14
    throw v0

    #@15
    .line 51
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@17
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    #@1a
    .line 52
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    #@1d
    .line 47
    return-void
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method

.method private update()V
    .locals 4

    #@0
    .prologue
    .line 122
    iget-object v1, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@2
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    #@5
    move-result-object v0

    #@6
    .line 123
    .local v0, "colorMatrix":[F
    iget-wide v2, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:J

    #@8
    invoke-static {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;->destroyFilter(J)V

    #@b
    .line 124
    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:J

    #@11
    .line 121
    return-void
.end method


# virtual methods
.method public getColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@2
    return-object v0
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    .line 82
    if-nez p1, :cond_1

    #@2
    .line 83
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@4
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    #@7
    .line 87
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    #@a
    .line 81
    return-void

    #@b
    .line 84
    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 85
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    #@14
    goto :goto_0
.end method

.method public setColorMatrix([F)V
    .locals 2
    .param p1, "array"    # [F

    #@0
    .prologue
    .line 109
    if-nez p1, :cond_0

    #@2
    .line 110
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@4
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    #@7
    .line 118
    :goto_0
    invoke-direct {p0}, Landroid/graphics/ColorMatrixColorFilter;->update()V

    #@a
    .line 108
    return-void

    #@b
    .line 112
    :cond_0
    array-length v0, p1

    #@c
    const/16 v1, 0x14

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 113
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@12
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@15
    throw v0

    #@16
    .line 116
    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    #@18
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    #@1b
    goto :goto_0
.end method
