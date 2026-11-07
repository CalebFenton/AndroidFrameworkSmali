.class public final Landroid/icu/impl/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarUtil$CalendarPreferences;
    }
.end annotation


# static fields
.field private static final blacklist CALKEY:Ljava/lang/String; = "calendar"

.field private static final blacklist DEFCAL:Ljava/lang/String; = "gregorian"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 44
    const-string v0, "calendar"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "calType":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 48
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_f
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 53
    .local v2, "canonical":Landroid/icu/util/ULocale;
    invoke-virtual {v2, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .end local v1    # "calType":Ljava/lang/String;
    .local v0, "calType":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 55
    return-object v0

    .line 60
    :cond_1e
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "region":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->-$$Nest$sfgetINSTANCE()Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
