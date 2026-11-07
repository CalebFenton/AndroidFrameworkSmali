.class public Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChangeAdapter;
.super Ljava/lang/Object;
.source "PaintChangeAdapter.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clear(J)V
    .registers 3
    .param p1, "mask"    # J

    .line 66
    return-void
.end method

.method public blacklist setAlpha(F)V
    .registers 2
    .param p1, "a"    # F

    .line 48
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .registers 2
    .param p1, "aa"    # Z

    .line 63
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .registers 2
    .param p1, "blendmode"    # I

    .line 60
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 33
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 95
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .registers 2
    .param p1, "filter"    # Z

    .line 57
    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .registers 2
    .param p1, "quality"    # I

    .line 45
    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .registers 8
    .param p1, "colorsArray"    # [I
    .param p2, "stopsArray"    # [F
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "endX"    # F
    .param p6, "endY"    # F
    .param p7, "tileMode"    # I

    .line 76
    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .registers 7
    .param p1, "colorsArray"    # [I
    .param p2, "stopsArray"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "radius"    # F
    .param p6, "tileMode"    # I

    .line 85
    return-void
.end method

.method public blacklist setShader(I)V
    .registers 2
    .param p1, "shader"    # I

    .line 42
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 2
    .param p1, "cap"    # I

    .line 36
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .registers 2
    .param p1, "join"    # I

    .line 54
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .registers 2
    .param p1, "miter"    # F

    .line 51
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 2
    .param p1, "width"    # F

    .line 30
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 2
    .param p1, "style"    # I

    .line 39
    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .registers 5
    .param p1, "colorsArray"    # [I
    .param p2, "stopsArray"    # [F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 92
    return-void
.end method

.method public blacklist setTextSize(F)V
    .registers 2
    .param p1, "size"    # F

    .line 24
    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .registers 4
    .param p1, "fontType"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 27
    return-void
.end method
