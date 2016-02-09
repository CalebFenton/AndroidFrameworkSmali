.class public Landroid/icu/text/ChineseDateFormatSymbols;
.super Landroid/icu/text/DateFormatSymbols;
.source "ChineseDateFormatSymbols.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0x5ec14695eb6891faL


# instance fields
.field isLeapMonth:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 45
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@9
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    #@7
    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 1
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    #@7
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 65
    const-class v0, Landroid/icu/util/ChineseCalendar;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    #@5
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 55
    const-class v0, Landroid/icu/util/ChineseCalendar;

    #@2
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    #@9
    .line 54
    return-void
.end method

.method private initializeIsLeapMonth()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@6
    .line 127
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@8
    const-string/jumbo v1, ""

    #@b
    aput-object v1, v0, v2

    #@d
    .line 128
    iget-object v1, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@f
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@15
    aget-object v0, v0, v2

    #@17
    const-string/jumbo v2, "{0}"

    #@1a
    const-string/jumbo v3, ""

    #@1d
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    :goto_0
    const/4 v2, 0x1

    #@22
    aput-object v0, v1, v2

    #@24
    .line 121
    return-void

    #@25
    .line 128
    :cond_0
    const-string/jumbo v0, ""

    #@28
    goto :goto_0
.end method


# virtual methods
.method public getLeapMonth(I)Ljava/lang/String;
    .locals 1
    .param p1, "leap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "dfs"    # Landroid/icu/text/DateFormatSymbols;

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    #@3
    .line 113
    instance-of v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 115
    check-cast p1, Landroid/icu/text/ChineseDateFormatSymbols;

    #@9
    .end local p1    # "dfs":Landroid/icu/text/DateFormatSymbols;
    iget-object v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    #@d
    .line 111
    :goto_0
    return-void

    #@e
    .line 117
    .restart local p1    # "dfs":Landroid/icu/text/DateFormatSymbols;
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    #@11
    goto :goto_0
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V
    .locals 0
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "calData"    # Landroid/icu/impl/CalendarData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    #@3
    .line 108
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    #@6
    .line 106
    return-void
.end method
