.class public Lcom/android/internal/widget/ScrollBarUtils;
.super Ljava/lang/Object;
.source "ScrollBarUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r getThumbLength(IIII)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "thickness"    # I
    .param p2, "extent"    # I
    .param p3, "range"    # I

    .line 27
    mul-int/lit8 v0, p1, 0x2

    .line 28
    .local v0, "minLength":I
    int-to-float v1, p0

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 29
    .local v1, "length":I
    if-ge v1, v0, :cond_e

    .line 30
    move v1, v0

    .line 32
    :cond_e
    return v1
.end method

.method public static blacklist getThumbOffset(IIIII)I
    .registers 7
    .param p0, "size"    # I
    .param p1, "thumbLength"    # I
    .param p2, "extent"    # I
    .param p3, "range"    # I
    .param p4, "offset"    # I

    .line 37
    sub-int v0, p0, p1

    int-to-float v0, v0

    int-to-float v1, p4

    mul-float/2addr v0, v1

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 38
    .local v0, "thumbOffset":I
    sub-int v1, p0, p1

    if-le v0, v1, :cond_13

    .line 39
    sub-int v0, p0, p1

    .line 41
    :cond_13
    return v0
.end method
