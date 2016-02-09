.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/util/Locale;

    #@5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14
    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@16
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@5
    .line 37
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Ljava/util/Locale;)V
    .locals 0
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    #@3
    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 52
    const/16 v0, 0x17

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Ljava/util/Locale;)V

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
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Ljava/util/Locale;)V

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
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LocaleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 61
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 68
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@b
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 69
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    #@14
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 66
    return-void
.end method
