.class public Landroid/text/style/ScaleXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ScaleXSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "proportion"    # F

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 29
    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@9
    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getScaleX()F
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@2
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@6
    mul-float/2addr v0, v1

    #@7
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@a
    .line 63
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@6
    mul-float/2addr v0, v1

    #@7
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@a
    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ScaleXSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 49
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 54
    return-void
.end method
