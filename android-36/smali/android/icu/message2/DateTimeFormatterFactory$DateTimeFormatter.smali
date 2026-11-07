.class Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/DateTimeFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeFormatter"
.end annotation


# instance fields
.field private final blacklist icuFormatter:Landroid/icu/text/DateFormat;

.field private final blacklist locale:Ljava/util/Locale;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/DateFormat;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "df"    # Landroid/icu/text/DateFormat;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 336
    iput-object p2, p0, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;->icuFormatter:Landroid/icu/text/DateFormat;

    .line 337
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/DateFormat;Landroid/icu/message2/DateTimeFormatterFactory-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;-><init>(Ljava/util/Locale;Landroid/icu/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;
    .registers 8
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/FormattedPlaceholder;"
        }
    .end annotation

    .line 345
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_4

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_4
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_38

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/message2/DateTimeFormatterFactory;->-$$Nest$smparseIso8601(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 351
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_43

    .line 352
    new-instance v0, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v1, Landroid/icu/message2/PlainStringFormattedValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v0

    .line 355
    :cond_38
    instance-of v0, p1, Ljava/time/temporal/Temporal;

    if-eqz v0, :cond_43

    .line 356
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/Temporal;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 359
    :cond_43
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_67

    .line 360
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 361
    .local v0, "tz":Ljava/util/TimeZone;
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 362
    .local v1, "milis":J
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v3

    .line 363
    .local v3, "icuTz":Landroid/icu/util/TimeZone;
    iget-object v4, p0, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 364
    invoke-static {v3, v4}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v4

    .line 365
    .local v4, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v4, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 366
    move-object p1, v4

    .line 368
    .end local v0    # "tz":Ljava/util/TimeZone;
    .end local v1    # "milis":J
    .end local v3    # "icuTz":Landroid/icu/util/TimeZone;
    .end local v4    # "calendar":Landroid/icu/util/Calendar;
    :cond_67
    iget-object v0, p0, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;->icuFormatter:Landroid/icu/text/DateFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v2, Landroid/icu/message2/PlainStringFormattedValue;

    invoke-direct {v2, v0}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v1
.end method

.method public blacklist formatToString(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 377
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;->format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v0

    .line 378
    .local v0, "result":Landroid/icu/message2/FormattedPlaceholder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/icu/message2/FormattedPlaceholder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method
