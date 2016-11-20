.class public Landroid/text/style/SuperscriptSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SuperscriptSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/text/style/SuperscriptSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 37
    const/16 v0, 0xe

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 54
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    #@2
    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    #@5
    move-result v1

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    div-float/2addr v1, v2

    #@9
    float-to-int v1, v1

    #@a
    add-int/2addr v0, v1

    #@b
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    #@d
    .line 53
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 59
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    #@2
    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    #@5
    move-result v1

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    div-float/2addr v1, v2

    #@9
    float-to-int v1, v1

    #@a
    add-int/2addr v0, v1

    #@b
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    #@d
    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuperscriptSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 44
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 49
    return-void
.end method
