.class public final Landroid/timezone/CountryTimeZones$TimeZoneMapping;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeZoneMapping"
.end annotation


# instance fields
.field private blacklist mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V
    .registers 3
    .param p1, "delegate"    # Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iput-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_4

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 76
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    .line 77
    .local v0, "that":Landroid/timezone/CountryTimeZones$TimeZoneMapping;
    iget-object v1, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    iget-object v2, v0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 74
    .end local v0    # "that":Landroid/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
