.class public Landroid/icu/text/ChineseDateFormatSymbols;
.super Landroid/icu/text/DateFormatSymbols;
.source "ChineseDateFormatSymbols.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x5ec14695eb6891faL


# instance fields
.field greylist-max-o isLeapMonth:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 50
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .registers 4
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    .line 82
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    .line 70
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    .line 60
    return-void
.end method

.method private greylist-max-o initializeIsLeapMonth()V
    .registers 5

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    .line 133
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 134
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v1, v3, v1

    const-string v3, "{0}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1c
    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 135
    return-void
.end method


# virtual methods
.method public greylist-max-o getLeapMonth(I)Ljava/lang/String;
    .registers 3
    .param p1, "leap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method greylist-max-o initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "dfs"    # Landroid/icu/text/DateFormatSymbols;

    .line 118
    invoke-super {p0, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    .line 119
    instance-of v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;

    if-eqz v0, :cond_f

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/icu/text/ChineseDateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    goto :goto_12

    .line 123
    :cond_f
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    .line 125
    :goto_12
    return-void
.end method

.method protected greylist-max-o initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "calendarType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    .line 114
    return-void
.end method
