.class public Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AospExtendedDateFormatSymbols"
.end annotation


# instance fields
.field private final blacklist dfs:Landroid/icu/text/DateFormatSymbols;

.field private blacklist narrowQuarters:[Ljava/lang/String;

.field private blacklist standaloneNarrowQuarters:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdfs(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->dfs:Landroid/icu/text/DateFormatSymbols;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputnarrowQuarters(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstandaloneNarrowQuarters(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 10
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "calendarType"    # Ljava/lang/String;

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "desiredLocale":Landroid/icu/util/ULocale;
    .end local p2    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local p3    # "calendarType":Ljava/lang/String;
    .local v1, "desiredLocale":Landroid/icu/util/ULocale;
    .local v2, "b":Landroid/icu/impl/ICUResourceBundle;
    .local v3, "calendarType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;Landroid/icu/text/DateFormatSymbols-IA;)V

    iput-object v0, v4, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->dfs:Landroid/icu/text/DateFormatSymbols;

    .line 1622
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .registers 2

    .line 1595
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->dfs:Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public blacklist getNarrowQuarters(I)[Ljava/lang/String;
    .registers 5
    .param p1, "context"    # I

    .line 1606
    const/4 v0, 0x0

    .line 1607
    .local v0, "returnValue":[Ljava/lang/String;
    if-nez p1, :cond_6

    .line 1608
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    goto :goto_b

    .line 1609
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 1610
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 1612
    :cond_b
    :goto_b
    if-eqz v0, :cond_14

    .line 1615
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1613
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad context or no data exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
