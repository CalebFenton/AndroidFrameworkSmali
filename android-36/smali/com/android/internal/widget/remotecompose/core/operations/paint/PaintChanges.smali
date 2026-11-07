.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;
.super Ljava/lang/Object;
.source "PaintChanges.java"


# static fields
.field public static final blacklist CLEAR_ALPHA:I = 0x800

.field public static final blacklist CLEAR_CAP:I = 0x40

.field public static final blacklist CLEAR_COLOR:I = 0x8

.field public static final blacklist CLEAR_COLOR_FILTER:I = 0x1000

.field public static final blacklist CLEAR_IMAGE_FILTER_QUALITY:I = 0x200

.field public static final blacklist CLEAR_RADIENT:I = 0x400

.field public static final blacklist CLEAR_SHADER:I = 0x100

.field public static final blacklist CLEAR_STROKE_MITER:I = 0x20

.field public static final blacklist CLEAR_STROKE_WIDTH:I = 0x10

.field public static final blacklist CLEAR_STYLE:I = 0x80

.field public static final blacklist CLEAR_TEXT_SIZE:I = 0x1

.field public static final blacklist CLEAR_TEXT_STYLE:I = 0x8000

.field public static final blacklist VALID_BITS:I = 0x1fff


# virtual methods
.method public abstract blacklist clear(J)V
.end method

.method public abstract blacklist setAlpha(F)V
.end method

.method public abstract blacklist setAntiAlias(Z)V
.end method

.method public abstract blacklist setBlendMode(I)V
.end method

.method public abstract blacklist setColor(I)V
.end method

.method public abstract blacklist setColorFilter(II)V
.end method

.method public abstract blacklist setFilterBitmap(Z)V
.end method

.method public abstract blacklist setImageFilterQuality(I)V
.end method

.method public abstract blacklist setLinearGradient([I[FFFFFI)V
.end method

.method public abstract blacklist setRadialGradient([I[FFFFI)V
.end method

.method public abstract blacklist setShader(I)V
.end method

.method public abstract blacklist setStrokeCap(I)V
.end method

.method public abstract blacklist setStrokeJoin(I)V
.end method

.method public abstract blacklist setStrokeMiter(F)V
.end method

.method public abstract blacklist setStrokeWidth(F)V
.end method

.method public abstract blacklist setStyle(I)V
.end method

.method public abstract blacklist setSweepGradient([I[FFF)V
.end method

.method public abstract blacklist setTextSize(F)V
.end method

.method public abstract blacklist setTypeFace(IIZ)V
.end method
