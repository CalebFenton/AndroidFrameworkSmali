.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist oops()V
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postConcat(Landroid/graphics/Matrix;)Z
    .registers 3
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(F)Z
    .registers 3
    .param p1, "degrees"    # F

    .line 191
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(FFF)Z
    .registers 5
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FF)Z
    .registers 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FFFF)Z
    .registers 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FF)Z
    .registers 4
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FFFF)Z
    .registers 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postTranslate(FF)Z
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preConcat(Landroid/graphics/Matrix;)Z
    .registers 3
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 161
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(F)Z
    .registers 3
    .param p1, "degrees"    # F

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(FFF)Z
    .registers 5
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FF)Z
    .registers 4
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FFFF)Z
    .registers 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FF)Z
    .registers 4
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FFFF)Z
    .registers 6
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preTranslate(FF)Z
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reset()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 64
    return-void
.end method

.method public whitelist set(Landroid/graphics/Matrix;)V
    .registers 2
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 59
    return-void
.end method

.method public whitelist setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 4
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 113
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPolyToPoly([FI[FII)Z
    .registers 7
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 5
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 215
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRotate(F)V
    .registers 2
    .param p1, "degrees"    # F

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 89
    return-void
.end method

.method public whitelist setRotate(FFF)V
    .registers 4
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 84
    return-void
.end method

.method public whitelist setScale(FF)V
    .registers 3
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 79
    return-void
.end method

.method public whitelist setScale(FFFF)V
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 74
    return-void
.end method

.method public whitelist setSinCos(FF)V
    .registers 3
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 99
    return-void
.end method

.method public whitelist setSinCos(FFFF)V
    .registers 5
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 94
    return-void
.end method

.method public whitelist setSkew(FF)V
    .registers 3
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 109
    return-void
.end method

.method public whitelist setSkew(FFFF)V
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 104
    return-void
.end method

.method public whitelist setTranslate(FF)V
    .registers 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 69
    return-void
.end method

.method public whitelist setValues([F)V
    .registers 2
    .param p1, "values"    # [F

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 229
    return-void
.end method
