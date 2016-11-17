.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "style"    # I

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 45
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@5
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@9
    .line 48
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .locals 6
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    #@3
    move-result-object v1

    #@4
    .line 95
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    #@6
    .line 96
    const/4 v2, 0x0

    #@7
    .line 101
    .local v2, "oldStyle":I
    :goto_0
    or-int v4, v2, p1

    #@9
    .line 104
    .local v4, "want":I
    if-nez v1, :cond_3

    #@b
    .line 105
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@e
    move-result-object v3

    #@f
    .line 110
    .local v3, "tf":Landroid/graphics/Typeface;
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    #@12
    move-result v5

    #@13
    not-int v5, v5

    #@14
    and-int v0, v4, v5

    #@16
    .line 112
    .local v0, "fake":I
    and-int/lit8 v5, v0, 0x1

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 113
    const/4 v5, 0x1

    #@1b
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    #@1e
    .line 116
    :cond_0
    and-int/lit8 v5, v0, 0x2

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 117
    const/high16 v5, -0x41800000    # -0.25f

    #@24
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    #@27
    .line 120
    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@2a
    .line 91
    return-void

    #@2b
    .line 98
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    .end local v3    # "tf":Landroid/graphics/Typeface;
    .end local v4    # "want":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    #@2e
    move-result v2

    #@2f
    .restart local v2    # "oldStyle":I
    goto :goto_0

    #@30
    .line 107
    .restart local v4    # "want":I
    :cond_3
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@33
    move-result-object v3

    #@34
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public getStyle()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@2
    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    #@5
    .line 82
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@2
    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    #@5
    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 65
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 70
    return-void
.end method
