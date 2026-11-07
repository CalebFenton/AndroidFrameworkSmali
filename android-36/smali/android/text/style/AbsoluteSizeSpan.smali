.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final greylist-max-o mDip:Z

.field private final greylist-max-o mSize:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 46
    return-void
.end method

.method public constructor whitelist <init>(IZ)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "dip"    # Z

    .line 52
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 53
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 54
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDip()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public whitelist getSize()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 67
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 73
    const/16 v0, 0x10

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsoluteSizeSpan{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 119
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_e

    .line 120
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_14

    .line 122
    :cond_e
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 124
    :goto_14
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 128
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_e

    .line 129
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_14

    .line 131
    :cond_e
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    :goto_14
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 84
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
