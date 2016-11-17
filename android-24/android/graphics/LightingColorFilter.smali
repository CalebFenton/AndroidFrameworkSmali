.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private mAdd:I

.field private mMul:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "mul"    # I
    .param p2, "add"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    #@3
    .line 49
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    #@5
    .line 50
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    #@7
    .line 51
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    #@a
    .line 48
    return-void
.end method

.method private static native native_CreateLightingFilter(II)J
.end method

.method private update()V
    .locals 2

    #@0
    .prologue
    .line 107
    iget-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->destroyFilter(J)V

    #@5
    .line 108
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    #@7
    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    #@9
    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/graphics/LightingColorFilter;->native_instance:J

    #@f
    .line 106
    return-void
.end method


# virtual methods
.method public getColorAdd()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    #@2
    return v0
.end method

.method public getColorMultiply()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    #@2
    return v0
.end method

.method public setColorAdd(I)V
    .locals 0
    .param p1, "add"    # I

    #@0
    .prologue
    .line 102
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    #@2
    .line 103
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    #@5
    .line 101
    return-void
.end method

.method public setColorMultiply(I)V
    .locals 0
    .param p1, "mul"    # I

    #@0
    .prologue
    .line 76
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    #@2
    .line 77
    invoke-direct {p0}, Landroid/graphics/LightingColorFilter;->update()V

    #@5
    .line 75
    return-void
.end method
