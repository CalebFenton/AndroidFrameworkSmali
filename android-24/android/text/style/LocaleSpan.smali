.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/os/LocaleList;)V
    .locals 1
    .param p1, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 63
    const-string/jumbo v0, "locales cannot be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 64
    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@b
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 68
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/LocaleList;

    #@b
    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@d
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    #@3
    .line 53
    if-nez p1, :cond_0

    #@5
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@8
    move-result-object v0

    #@9
    :goto_0
    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@b
    .line 52
    return-void

    #@c
    .line 53
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    #@e
    const/4 v1, 0x1

    #@f
    new-array v1, v1, [Ljava/util/Locale;

    #@11
    const/4 v2, 0x0

    #@12
    aput-object p1, v1, v2

    #@14
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@17
    goto :goto_0
.end method

.method private static apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V
    .locals 0
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    #@3
    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 73
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
    .line 78
    const/16 v0, 0x17

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    #@5
    .line 117
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@2
    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    #@5
    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LocaleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 87
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 92
    return-void
.end method
