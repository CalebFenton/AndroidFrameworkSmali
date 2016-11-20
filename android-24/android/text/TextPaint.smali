.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    #@3
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/text/TextPaint;->density:F

    #@7
    .line 41
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    #@a
    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    #@3
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/text/TextPaint;->density:F

    #@7
    .line 41
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@3
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/text/TextPaint;->density:F

    #@7
    .line 41
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    #@a
    .line 56
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    #@3
    .line 67
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    #@5
    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    #@7
    .line 68
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    #@9
    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    #@b
    .line 69
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    #@d
    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    #@f
    .line 70
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    #@11
    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    #@13
    .line 71
    iget v0, p1, Landroid/text/TextPaint;->density:F

    #@15
    iput v0, p0, Landroid/text/TextPaint;->density:F

    #@17
    .line 72
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    #@19
    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    #@1b
    .line 73
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    #@1d
    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    #@1f
    .line 64
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    #@0
    .prologue
    .line 83
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    #@2
    .line 84
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    #@4
    .line 82
    return-void
.end method
