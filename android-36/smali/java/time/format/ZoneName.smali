.class Ljava/time/format/ZoneName;
.super Ljava/lang/Object;
.source "ZoneName.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSystemCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "zid"    # Ljava/lang/String;

    .line 70
    const-string v0, "Etc/Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    return-object p0

    .line 73
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 74
    .local v0, "isSystemID":[Z
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "canonicalID":Ljava/lang/String;
    if-eqz v2, :cond_1b

    aget-boolean v1, v0, v1

    if-nez v1, :cond_1a

    goto :goto_1b

    .line 78
    :cond_1a
    return-object v2

    .line 76
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist toZid(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "zid"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Ljava/time/format/ZoneName;->getSystemCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "canonicalCldrId":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 63
    return-object v0

    .line 65
    :cond_7
    return-object p0
.end method

.method public static blacklist toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "zid"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 45
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    .line 46
    .local v0, "tzNames":Landroid/icu/text/TimeZoneNames;
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 48
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 49
    .local v1, "uLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    .line 51
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_24
    invoke-virtual {v0, p0, v2}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    .end local v1    # "uLocale":Landroid/icu/util/ULocale;
    .end local v2    # "region":Ljava/lang/String;
    :cond_28
    invoke-static {p0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
