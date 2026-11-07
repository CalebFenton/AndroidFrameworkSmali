.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintContext;
.super Ljava/lang/Object;
.source "PaintContext.java"


# static fields
.field public static final blacklist TEXT_COMPLEX:I = 0x8

.field public static final blacklist TEXT_MEASURE_FONT_HEIGHT:I = 0x2

.field public static final blacklist TEXT_MEASURE_MONOSPACE_WIDTH:I = 0x1

.field public static final blacklist TEXT_MEASURE_SPACES:I = 0x4


# instance fields
.field protected blacklist mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field private blacklist mNeedsRepaint:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    .line 55
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 56
    return-void
.end method


# virtual methods
.method public abstract blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end method

.method public blacklist clearNeedsRepaint()V
    .registers 2

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    .line 52
    return-void
.end method

.method public abstract blacklist clipPath(II)V
.end method

.method public abstract blacklist clipRect(FFFF)V
.end method

.method public abstract blacklist combinePath(IIIB)V
.end method

.method public blacklist doesNeedsRepaint()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    return v0
.end method

.method public abstract blacklist drawArc(FFFFFF)V
.end method

.method public abstract blacklist drawBitmap(IFFFF)V
.end method

.method public abstract blacklist drawBitmap(IIIIIIIIII)V
.end method

.method public abstract blacklist drawCircle(FFF)V
.end method

.method public abstract blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
.end method

.method public abstract blacklist drawLine(FFFF)V
.end method

.method public abstract blacklist drawOval(FFFF)V
.end method

.method public abstract blacklist drawPath(IFF)V
.end method

.method public abstract blacklist drawRect(FFFF)V
.end method

.method public abstract blacklist drawRoundRect(FFFFFF)V
.end method

.method public abstract blacklist drawSector(FFFFFF)V
.end method

.method public abstract blacklist drawTextOnPath(IIFF)V
.end method

.method public abstract blacklist drawTextRun(IIIIIFFZ)V
.end method

.method public abstract blacklist drawTweenPath(IIFFF)V
.end method

.method public abstract blacklist endGraphicsLayer()V
.end method

.method public blacklist getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object v0
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public abstract blacklist getTextBounds(IIII[F)V
.end method

.method public blacklist isAnimationEnabled()Z
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isDebug()Z
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isDebug()Z

    move-result v0

    return v0
.end method

.method public blacklist isVisualDebug()Z
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isVisualDebug()Z

    move-result v0

    return v0
.end method

.method public abstract blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
.end method

.method public blacklist log(Ljava/lang/String;)V
    .registers 5
    .param p1, "content"    # Ljava/lang/String;

    .line 467
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LOG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public abstract blacklist matrixRestore()V
.end method

.method public abstract blacklist matrixRotate(FFF)V
.end method

.method public abstract blacklist matrixSave()V
.end method

.method public abstract blacklist matrixScale(FFFF)V
.end method

.method public abstract blacklist matrixSkew(FF)V
.end method

.method public abstract blacklist matrixTranslate(FF)V
.end method

.method public blacklist needsRepaint()V
    .registers 2

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    .line 473
    return-void
.end method

.method public abstract blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end method

.method public abstract blacklist reset()V
.end method

.method public blacklist restore()V
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRestore()V

    .line 70
    return-void
.end method

.method public abstract blacklist restorePaint()V
.end method

.method public abstract blacklist roundedClipRect(FFFFFF)V
.end method

.method public blacklist save()V
    .registers 1

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSave()V

    .line 65
    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSave()V

    .line 76
    return-void
.end method

.method public abstract blacklist savePaint()V
.end method

.method public abstract blacklist scale(FF)V
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 59
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 60
    return-void
.end method

.method public abstract blacklist setGraphicsLayer(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist startGraphicsLayer(II)V
.end method

.method public blacklist supportsVersion(III)Z
    .registers 5
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 514
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->supportsVersion(III)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist translate(FF)V
.end method

.method public abstract blacklist tweenPath(IIIF)V
.end method
