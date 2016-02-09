.class public final Lorg/apache/http/impl/cookie/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 75
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    .line 76
    const-string/jumbo v4, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    #@8
    aput-object v4, v1, v2

    #@a
    .line 77
    const-string/jumbo v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@d
    aput-object v4, v1, v3

    #@f
    .line 78
    const-string/jumbo v4, "EEE MMM d HH:mm:ss yyyy"

    #@12
    const/4 v5, 0x2

    #@13
    aput-object v4, v1, v5

    #@15
    .line 75
    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    #@17
    .line 83
    const-string/jumbo v1, "GMT"

    #@1a
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1d
    move-result-object v1

    #@1e
    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    #@20
    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@23
    move-result-object v0

    #@24
    .line 87
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@29
    .line 88
    const/16 v1, 0x7d0

    #@2b
    move v4, v2

    #@2c
    move v5, v2

    #@2d
    move v6, v2

    #@2e
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    #@31
    .line 89
    const/16 v1, 0xe

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@36
    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@39
    move-result-object v1

    #@3a
    sput-object v1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    #@3c
    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 185
    const-string/jumbo v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@3
    invoke-static {p0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    if-nez p0, :cond_0

    #@2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "date is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 203
    :cond_0
    if-nez p1, :cond_1

    #@d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "pattern is null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 205
    :cond_1
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@19
    move-result-object v0

    #@1a
    .line 206
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-static {p0, v0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # [Ljava/lang/String;
    .param p2, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/cookie/DateParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 143
    if-nez p0, :cond_0

    #@3
    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "dateValue is null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 146
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 147
    sget-object p1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    #@10
    .line 149
    :cond_1
    if-nez p2, :cond_2

    #@12
    .line 150
    sget-object p2, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    #@14
    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v3

    #@18
    if-le v3, v4, :cond_3

    #@1a
    .line 155
    const-string/jumbo v3, "\'"

    #@1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v3

    #@21
    .line 154
    if-eqz v3, :cond_3

    #@23
    .line 156
    const-string/jumbo v3, "\'"

    #@26
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@29
    move-result v3

    #@2a
    .line 154
    if-eqz v3, :cond_3

    #@2c
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2f
    move-result v3

    #@30
    add-int/lit8 v3, v3, -0x1

    #@32
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object p0

    #@36
    .line 161
    :cond_3
    const/4 v3, 0x0

    #@37
    array-length v4, p1

    #@38
    :goto_0
    if-ge v3, v4, :cond_4

    #@3a
    aget-object v0, p1, v3

    #@3c
    .line 162
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    #@3f
    move-result-object v1

    #@40
    .line 163
    .local v1, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    #@43
    .line 166
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result-object v3

    #@47
    return-object v3

    #@48
    .line 167
    :catch_0
    move-exception v2

    #@49
    .line 161
    .local v2, "pe":Ljava/text/ParseException;
    add-int/lit8 v3, v3, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 173
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "dateParser":Ljava/text/SimpleDateFormat;
    .end local v2    # "pe":Ljava/text/ParseException;
    :cond_4
    new-instance v3, Lorg/apache/http/impl/cookie/DateParseException;

    #@4e
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Unable to parse the date "

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-direct {v3, v4}, Lorg/apache/http/impl/cookie/DateParseException;-><init>(Ljava/lang/String;)V

    #@65
    throw v3
.end method
