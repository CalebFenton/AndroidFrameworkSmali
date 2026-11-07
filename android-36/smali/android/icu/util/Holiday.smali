.class public abstract Landroid/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static greylist-max-o noHolidays:[Landroid/icu/util/Holiday;


# instance fields
.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o rule:Landroid/icu/util/DateRule;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sput-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    .line 139
    return-void
.end method

.method public static greylist-max-o getHolidays()[Landroid/icu/util/Holiday;
    .registers 1

    .line 35
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 51
    sget-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    .line 54
    .local v0, "result":[Landroid/icu/util/Holiday;
    :try_start_2
    const-string v1, "android.icu.impl.data.HolidayBundle"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 56
    .local v1, "bundle":Ljava/util/ResourceBundle;
    const-string v2, "holidays"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/util/Holiday;
    :try_end_10
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 59
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_13

    .line 58
    :catch_12
    move-exception v1

    .line 60
    :goto_13
    return-object v0
.end method

.method public static greylist-max-o getHolidays(Ljava/util/Locale;)[Landroid/icu/util/Holiday;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 43
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 3
    .param p1, "start"    # Ljava/util/Date;

    .line 76
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 94
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayName()Ljava/lang/String;
    .registers 2

    .line 147
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 179
    iget-object v0, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    .line 182
    .local v0, "dispName":Ljava/lang/String;
    :try_start_2
    const-string v1, "android.icu.impl.data.HolidayBundle"

    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 183
    .local v1, "bundle":Ljava/util/ResourceBundle;
    iget-object v2, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_e} :catch_10

    move-object v0, v2

    .line 186
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    goto :goto_11

    .line 185
    :catch_10
    move-exception v1

    .line 187
    :goto_11
    return-object v0
.end method

.method public greylist-max-o getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 163
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRule()Landroid/icu/util/DateRule;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-object v0
.end method

.method public greylist-max-o isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 119
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isOn(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 109
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setRule(Landroid/icu/util/DateRule;)V
    .registers 2
    .param p1, "rule"    # Landroid/icu/util/DateRule;

    .line 201
    iput-object p1, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    .line 202
    return-void
.end method
