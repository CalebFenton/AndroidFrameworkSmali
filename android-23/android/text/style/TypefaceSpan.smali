.class public Landroid/text/style/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFamily:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@9
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@5
    .line 36
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "family"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    #@3
    move-result-object v1

    #@4
    .line 87
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    #@6
    .line 88
    const/4 v2, 0x0

    #@7
    .line 93
    .local v2, "oldStyle":I
    :goto_0
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@a
    move-result-object v3

    #@b
    .line 94
    .local v3, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    #@e
    move-result v4

    #@f
    not-int v4, v4

    #@10
    and-int v0, v2, v4

    #@12
    .line 96
    .local v0, "fake":I
    and-int/lit8 v4, v0, 0x1

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 97
    const/4 v4, 0x1

    #@17
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    #@1a
    .line 100
    :cond_0
    and-int/lit8 v4, v0, 0x2

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 101
    const/high16 v4, -0x41800000    # -0.25f

    #@20
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    #@23
    .line 104
    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@26
    .line 83
    return-void

    #@27
    .line 90
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    #@2a
    move-result v2

    #@2b
    .restart local v2    # "oldStyle":I
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 50
    const/16 v0, 0xd

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    #@5
    .line 74
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    #@5
    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TypefaceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 57
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 62
    return-void
.end method
