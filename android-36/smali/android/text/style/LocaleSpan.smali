.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final greylist-max-o mLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor whitelist <init>(Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 63
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 64
    const-string v0, "locales cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 69
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 53
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 54
    if-nez p1, :cond_a

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_15

    :cond_a
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_15
    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    .line 55
    return-void
.end method

.method private static greylist-max-o apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V
    .registers 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 128
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 79
    const/16 v0, 0x17

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleSpan{locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 119
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    .line 120
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 124
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    .line 125
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LocaleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 90
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    return-void
.end method
