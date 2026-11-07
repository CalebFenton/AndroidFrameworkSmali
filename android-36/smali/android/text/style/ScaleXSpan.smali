.class public Landroid/text/style/ScaleXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ScaleXSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final greylist-max-o mProportion:F


# direct methods
.method public constructor whitelist <init>(F)V
    .registers 2
    .param p1, "proportion"    # F

    .line 50
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 51
    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getScaleX()F
    .registers 2

    .line 94
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 69
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleXSpan{scaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 99
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 100
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 104
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 105
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ScaleXSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 80
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    return-void
.end method
