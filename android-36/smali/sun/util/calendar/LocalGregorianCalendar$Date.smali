.class public Lsun/util/calendar/LocalGregorianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/LocalGregorianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Date"
.end annotation


# instance fields
.field private blacklist gregorianYear:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 55
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 49
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 52
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    .line 55
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addYear(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "localYear"    # I

    .line 68
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 69
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 70
    return-object p0
.end method

.method public greylist-max-r getNormalizedYear()I
    .registers 2

    .line 84
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    return v0
.end method

.method public bridge synthetic greylist-max-r setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 59
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eq v0, p1, :cond_d

    .line 60
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 63
    :cond_d
    return-object p0
.end method

.method blacklist setLocalEra(Lsun/util/calendar/Era;)V
    .registers 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 93
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 94
    return-void
.end method

.method blacklist setLocalYear(I)V
    .registers 2
    .param p1, "year"    # I

    .line 97
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 98
    return-void
.end method

.method public greylist-max-r setNormalizedYear(I)V
    .registers 2
    .param p1, "normalizedYear"    # I

    .line 89
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 90
    return-void
.end method

.method public bridge synthetic greylist-max-r setYear(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "localYear"    # I

    .line 75
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 76
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 77
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    .line 79
    :cond_d
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 102
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "time":Ljava/lang/String;
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v2

    .line 106
    .local v2, "era":Lsun/util/calendar/Era;
    if-eqz v2, :cond_22

    .line 107
    invoke-virtual {v2}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "abbr":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .end local v3    # "abbr":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v3

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
