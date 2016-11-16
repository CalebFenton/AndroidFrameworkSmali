.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    #@4
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 56
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@5
    .line 61
    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@7
    .line 60
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    #@c
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@f
    move-result-object v2

    #@10
    .line 65
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    const/4 v4, 0x6

    #@11
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@14
    move-result-object v4

    #@15
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@17
    .line 68
    const/4 v4, -0x1

    #@18
    .line 67
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1b
    move-result v4

    #@1c
    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@1e
    .line 70
    const/4 v4, 0x2

    #@1f
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@22
    move-result v4

    #@23
    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@25
    .line 71
    const/16 v4, 0xc

    #@27
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 72
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2d
    .line 73
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@2f
    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 98
    if-ltz p3, :cond_0

    #@34
    .line 100
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    #@36
    .line 99
    const v5, 0x1030005

    #@39
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@3c
    move-result-object v0

    #@3d
    .line 102
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@40
    move-result-object v2

    #@41
    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@44
    .line 106
    :cond_0
    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@46
    .line 56
    return-void

    #@47
    .line 75
    :cond_1
    const/4 v4, 0x1

    #@48
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4b
    move-result v3

    #@4c
    .line 77
    .local v3, "tf":I
    packed-switch v3, :pswitch_data_0

    #@4f
    .line 91
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@51
    goto :goto_0

    #@52
    .line 79
    :pswitch_0
    const-string/jumbo v4, "sans"

    #@55
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@57
    goto :goto_0

    #@58
    .line 83
    :pswitch_1
    const-string/jumbo v4, "serif"

    #@5b
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@5d
    goto :goto_0

    #@5e
    .line 87
    :pswitch_2
    const-string/jumbo v4, "monospace"

    #@61
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@63
    goto :goto_0

    #@64
    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 122
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@4
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@a
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@10
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@16
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 127
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/res/ColorStateList;

    #@24
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@26
    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 132
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/content/res/ColorStateList;

    #@34
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@36
    .line 122
    :goto_1
    return-void

    #@37
    .line 129
    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@39
    goto :goto_0

    #@3a
    .line 134
    :cond_1
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@3c
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@5
    .line 116
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@7
    .line 117
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@9
    .line 118
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@b
    .line 119
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@d
    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 144
    const/16 v0, 0x11

    #@2
    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@2
    return v0
.end method

.method public getTextStyle()I
    .locals 1

    #@0
    .prologue
    .line 211
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 216
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    #@4
    .line 218
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 219
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@a
    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@f
    move-result v0

    #@10
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@13
    .line 222
    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 223
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@19
    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1e
    move-result v0

    #@1f
    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    #@21
    .line 215
    :cond_1
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 229
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@2
    if-nez v3, :cond_0

    #@4
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@6
    if-eqz v3, :cond_4

    #@8
    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@b
    move-result-object v2

    #@c
    .line 231
    .local v2, "tf":Landroid/graphics/Typeface;
    const/4 v1, 0x0

    #@d
    .line 233
    .local v1, "style":I
    if-eqz v2, :cond_1

    #@f
    .line 234
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    #@12
    move-result v1

    #@13
    .line 237
    :cond_1
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@15
    or-int/2addr v1, v3

    #@16
    .line 239
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@18
    if-eqz v3, :cond_6

    #@1a
    .line 240
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@1c
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@1f
    move-result-object v2

    #@20
    .line 247
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    #@23
    move-result v3

    #@24
    not-int v3, v3

    #@25
    and-int v0, v1, v3

    #@27
    .line 249
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 250
    const/4 v3, 0x1

    #@2c
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@2f
    .line 253
    :cond_2
    and-int/lit8 v3, v0, 0x2

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 254
    const/high16 v3, -0x41800000    # -0.25f

    #@35
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@38
    .line 257
    :cond_3
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@3b
    .line 260
    .end local v0    # "fake":I
    .end local v1    # "style":I
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_4
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@3d
    if-lez v3, :cond_5

    #@3f
    .line 261
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@41
    int-to-float v3, v3

    #@42
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    #@45
    .line 228
    :cond_5
    return-void

    #@46
    .line 241
    .restart local v1    # "style":I
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    :cond_6
    if-nez v2, :cond_7

    #@48
    .line 242
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@4b
    move-result-object v2

    #@4c
    goto :goto_0

    #@4d
    .line 244
    :cond_7
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@50
    move-result-object v2

    #@51
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 151
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 157
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 158
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 159
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 160
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 162
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    #@1a
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d
    .line 166
    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 167
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 168
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    #@26
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    #@29
    .line 156
    :goto_1
    return-void

    #@2a
    .line 164
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 170
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    goto :goto_1
.end method
