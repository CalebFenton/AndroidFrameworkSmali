.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public whitelist baselineShift:I

.field public whitelist bgColor:I

.field public whitelist density:F

.field public whitelist drawableState:[I

.field public whitelist linkColor:I

.field public whitelist underlineColor:I

.field public whitelist underlineThickness:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 55
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 59
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist getUnderlineThickness()F
    .registers 2

    .line 95
    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v0, :cond_7

    .line 96
    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    return v0

    .line 98
    :cond_7
    invoke-super {p0}, Landroid/graphics/Paint;->getUnderlineThickness()F

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 67
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 70
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 71
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 72
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 73
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 74
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 75
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 76
    return-void
.end method

.method public greylist setUnderlineText(IF)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .line 86
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 87
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 88
    return-void
.end method
