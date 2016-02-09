.class public Landroid/icu/impl/duration/impl/YMDDateFormatter;
.super Ljava/lang/Object;
.source "YMDDateFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/DateFormatter;


# instance fields
.field private df:Ljava/text/SimpleDateFormat;

.field private localeName:Ljava/lang/String;

.field private requestedFields:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestedFields"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 35
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@b
    move-result-object v1

    #@c
    .line 34
    invoke-direct {p0, p1, v0, v1}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    #@f
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "requestedFields"    # Ljava/lang/String;
    .param p2, "localeName"    # Ljava/lang/String;
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    #@5
    .line 49
    iput-object p2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    #@7
    .line 50
    iput-object p3, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    #@9
    .line 52
    invoke-static {p2}, Landroid/icu/impl/duration/impl/Utils;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    .line 53
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@f
    const-string/jumbo v2, "yyyy/mm/dd"

    #@12
    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@15
    iput-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    #@17
    .line 54
    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    #@19
    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1c
    .line 47
    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/impl/YMDDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->df:Ljava/text/SimpleDateFormat;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;
    .locals 3
    .param p1, "locName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 84
    new-instance v0, Landroid/icu/impl/duration/impl/YMDDateFormatter;

    #@a
    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    #@c
    iget-object v2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    #@e
    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    #@11
    return-object v0

    #@12
    .line 86
    :cond_0
    return-object p0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->timeZone:Ljava/util/TimeZone;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 94
    new-instance v0, Landroid/icu/impl/duration/impl/YMDDateFormatter;

    #@a
    iget-object v1, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->requestedFields:Ljava/lang/String;

    #@c
    iget-object v2, p0, Landroid/icu/impl/duration/impl/YMDDateFormatter;->localeName:Ljava/lang/String;

    #@e
    invoke-direct {v0, v1, v2, p1}, Landroid/icu/impl/duration/impl/YMDDateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    #@11
    return-object v0

    #@12
    .line 96
    :cond_0
    return-object p0
.end method
