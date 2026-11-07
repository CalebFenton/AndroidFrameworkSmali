.class public Landroid/icu/text/ChineseDateFormat;
.super Landroid/icu/text/SimpleDateFormat;
.source "ChineseDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ChineseDateFormat$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0x3ffb141bc87c5a3bL


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 76
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    new-instance v2, Landroid/icu/text/ChineseDateFormatSymbols;

    invoke-direct {v2, p3}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    new-instance v3, Landroid/icu/util/ChineseCalendar;

    .line 94
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 93
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v4, p3

    .end local p1    # "pattern":Ljava/lang/String;
    .end local p2    # "override":Ljava/lang/String;
    .end local p3    # "locale":Landroid/icu/util/ULocale;
    .local v1, "pattern":Ljava/lang/String;
    .local v4, "locale":Landroid/icu/util/ULocale;
    .local v6, "override":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected whitelist test-api patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .registers 3
    .param p1, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-super {p0, p1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V
    .registers 10
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "ch"    # C
    .param p3, "count"    # I
    .param p4, "beginOffset"    # I
    .param p5, "fieldNum"    # I
    .param p6, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p7, "pos"    # Ljava/text/FieldPosition;
    .param p8, "patternCharToOutput"    # C
    .param p9, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-super/range {p0 .. p9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;CLandroid/icu/util/Calendar;)V

    .line 144
    return-void
.end method

.method protected whitelist test-api subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "ch"    # C
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "allowNegative"    # Z
    .param p7, "ambiguousYear"    # [Z
    .param p8, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-super/range {p0 .. p8}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method
