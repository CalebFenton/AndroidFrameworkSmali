.class public Landroid/text/style/SubscriptSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SubscriptSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/text/style/SubscriptSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 63
    const/16 v0, 0xf

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 93
    const-string v0, "SubscriptSpan{}"

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 83
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 84
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 5
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 88
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 89
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SubscriptSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 74
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    return-void
.end method
