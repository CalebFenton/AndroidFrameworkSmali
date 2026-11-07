.class public Landroid/graphics/LightingColorFilter;
.super Landroid/graphics/ColorFilter;
.source "LightingColorFilter.java"


# instance fields
.field private greylist-max-o mAdd:I

.field private greylist-max-o mMul:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "mul"    # I
    .param p2, "add"    # I

    .line 55
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 56
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 57
    iput p2, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 58
    return-void
.end method

.method private static native greylist-max-o native_CreateLightingFilter(II)J
.end method

.method private static native blacklist native_SetLightingFilterAdd(JI)V
.end method

.method private static native blacklist native_SetLightingFilterMul(JI)V
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .registers 3

    .line 114
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    iget v1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    invoke-static {v0, v1}, Landroid/graphics/LightingColorFilter;->native_CreateLightingFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getColorAdd()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    return v0
.end method

.method public whitelist getColorMultiply()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    return v0
.end method

.method public greylist-max-r setColorAdd(I)V
    .registers 4
    .param p1, "add"    # I

    .line 106
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    if-eq v0, p1, :cond_d

    .line 107
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mAdd:I

    .line 108
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/LightingColorFilter;->native_SetLightingFilterAdd(JI)V

    .line 110
    :cond_d
    return-void
.end method

.method public greylist-max-r setColorMultiply(I)V
    .registers 4
    .param p1, "mul"    # I

    .line 80
    iget v0, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    if-eq v0, p1, :cond_d

    .line 81
    iput p1, p0, Landroid/graphics/LightingColorFilter;->mMul:I

    .line 82
    invoke-virtual {p0}, Landroid/graphics/LightingColorFilter;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/LightingColorFilter;->native_SetLightingFilterMul(JI)V

    .line 84
    :cond_d
    return-void
.end method
