.class public Lcom/android/internal/widget/ScrollBarUtils;
.super Ljava/lang/Object;
.source "ScrollBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getThumbLength(IIII)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "thickness"    # I
    .param p2, "extent"    # I
    .param p3, "range"    # I

    #@0
    .prologue
    .line 23
    mul-int/lit8 v1, p1, 0x2

    #@2
    .line 24
    .local v1, "minLength":I
    int-to-float v2, p0

    #@3
    int-to-float v3, p2

    #@4
    mul-float/2addr v2, v3

    #@5
    int-to-float v3, p3

    #@6
    div-float/2addr v2, v3

    #@7
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@a
    move-result v0

    #@b
    .line 25
    .local v0, "length":I
    if-ge v0, v1, :cond_0

    #@d
    .line 26
    move v0, v1

    #@e
    .line 28
    :cond_0
    return v0
.end method

.method public static getThumbOffset(IIIII)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "thumbLength"    # I
    .param p2, "extent"    # I
    .param p3, "range"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 33
    sub-int v1, p0, p1

    #@2
    int-to-float v1, v1

    #@3
    int-to-float v2, p4

    #@4
    mul-float/2addr v1, v2

    #@5
    sub-int v2, p3, p2

    #@7
    int-to-float v2, v2

    #@8
    div-float/2addr v1, v2

    #@9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@c
    move-result v0

    #@d
    .line 34
    .local v0, "thumbOffset":I
    sub-int v1, p0, p1

    #@f
    if-le v0, v1, :cond_0

    #@11
    .line 35
    sub-int v0, p0, p1

    #@13
    .line 37
    :cond_0
    return v0
.end method
