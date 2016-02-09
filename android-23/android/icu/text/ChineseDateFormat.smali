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
.field static final serialVersionUID:J = -0x3ffb141bc87c5a3bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@4
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 89
    new-instance v2, Landroid/icu/text/ChineseDateFormatSymbols;

    #@2
    invoke-direct {v2, p3}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    .line 90
    new-instance v3, Landroid/icu/util/ChineseCalendar;

    #@7
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    invoke-direct {v3, v0, p3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@e
    const/4 v5, 0x1

    #@f
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move-object v4, p3

    #@12
    move-object v6, p2

    #@13
    .line 89
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    #@16
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@7
    .line 59
    return-void
.end method


# virtual methods
.method protected patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .locals 1
    .param p1, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V
    .locals 0
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "ch"    # C
    .param p3, "count"    # I
    .param p4, "beginOffset"    # I
    .param p5, "fieldNum"    # I
    .param p6, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p7, "pos"    # Ljava/text/FieldPosition;
    .param p8, "cal"    # Landroid/icu/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-super/range {p0 .. p8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    #@3
    .line 126
    return-void
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .locals 1
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

    #@0
    .prologue
    .line 154
    invoke-super/range {p0 .. p8}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I

    #@3
    move-result v0

    #@4
    return v0
.end method
