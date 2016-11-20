.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@5
    .line 32
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "dip"    # Z

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 42
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@5
    .line 43
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@4
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@a
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@13
    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDip()Z
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@2
    return v0
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@2
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 57
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 85
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@6
    int-to-float v0, v0

    #@7
    iget v1, p1, Landroid/text/TextPaint;->density:F

    #@9
    mul-float/2addr v0, v1

    #@a
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@d
    .line 83
    :goto_0
    return-void

    #@e
    .line 87
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@10
    int-to-float v0, v0

    #@11
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@14
    goto :goto_0
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 94
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@6
    int-to-float v0, v0

    #@7
    iget v1, p1, Landroid/text/TextPaint;->density:F

    #@9
    mul-float/2addr v0, v1

    #@a
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@d
    .line 92
    :goto_0
    return-void

    #@e
    .line 96
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@10
    int-to-float v0, v0

    #@11
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    #@14
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 64
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 71
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 69
    return-void

    #@e
    .line 71
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
