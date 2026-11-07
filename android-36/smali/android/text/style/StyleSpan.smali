.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mFontWeightAdjustment:I

.field private final greylist-max-o mStyle:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "style"    # I

    .line 61
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 76
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 77
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 78
    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 89
    return-void
.end method

.method private static blacklist apply(Landroid/graphics/Paint;II)V
    .registers 10
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_8

    .line 151
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_c

    .line 153
    .end local v1    # "oldStyle":I
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 156
    .restart local v1    # "oldStyle":I
    :goto_c
    or-int v2, v1, p1

    .line 159
    .local v2, "want":I
    if-nez v0, :cond_15

    .line 160
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_19

    .line 162
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_15
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 166
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    :goto_19
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_40

    .line 167
    if-eqz p2, :cond_40

    const v4, 0x7fffffff

    if-eq p2, v4, :cond_40

    .line 169
    nop

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 169
    const/16 v6, 0x3e8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 172
    .local v4, "newWeight":I
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3b

    move v6, v5

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    .line 173
    .local v6, "italic":Z
    :goto_3c
    invoke-static {v3, v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    .line 177
    .end local v4    # "newWeight":I
    .end local v6    # "italic":Z
    :cond_40
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v2

    .line 179
    .local v4, "fake":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_4d

    .line 180
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 183
    :cond_4d
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_56

    .line 184
    const/high16 v5, -0x41800000    # -0.25f

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 187
    :cond_56
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFontWeightAdjustment()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 93
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 99
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist getStyle()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StyleSpan{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 138
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 139
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 143
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 144
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 110
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method
