.class public abstract Landroid/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static noHolidays:[Landroid/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Landroid/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@3
    sput-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    #@5
    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    iput-object p1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    #@5
    .line 139
    iput-object p2, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@7
    .line 136
    return-void
.end method

.method public static getHolidays()[Landroid/icu/util/Holiday;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 51
    sget-object v3, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    #@2
    .line 54
    .local v3, "result":[Landroid/icu/util/Holiday;
    :try_start_0
    const-string/jumbo v4, "android.icu.impl.data.HolidayBundle"

    #@5
    invoke-static {v4, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v1

    #@9
    .line 56
    .local v1, "bundle":Ljava/util/ResourceBundle;
    const-string/jumbo v4, "holidays"

    #@c
    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    move-object v0, v4

    #@11
    check-cast v0, [Landroid/icu/util/Holiday;

    #@13
    move-object v3, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 60
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    :goto_0
    return-object v3

    #@15
    .line 58
    :catch_0
    move-exception v2

    #@16
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getHolidays(Ljava/util/Locale;)[Landroid/icu/util/Holiday;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 42
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 183
    iget-object v1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    #@2
    .line 186
    .local v1, "dispName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "android.icu.impl.data.HolidayBundle"

    #@5
    invoke-static {v3, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8
    move-result-object v0

    #@9
    .line 187
    .local v0, "bundle":Ljava/util/ResourceBundle;
    iget-object v3, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    .line 191
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    :goto_0
    return-object v1

    #@10
    .line 189
    :catch_0
    move-exception v2

    #@11
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 166
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRule()Landroid/icu/util/DateRule;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setRule(Landroid/icu/util/DateRule;)V
    .locals 0
    .param p1, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    #@2
    .line 206
    return-void
.end method
