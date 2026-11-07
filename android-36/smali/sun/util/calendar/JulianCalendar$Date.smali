.class Lsun/util/calendar/JulianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "JulianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Date"
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 5

    .line 49
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    const/16 v2, 0x16d

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    .line 51
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/util/TimeZone;)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 54
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    .line 55
    const-wide/16 v0, -0x1

    const/16 v2, 0x16d

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist getNormalizedYear()I
    .registers 4

    .line 74
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-$$Nest$sfgeteras()[Lsun/util/calendar/Era;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_14

    .line 75
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0

    .line 77
    :cond_14
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 5
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 59
    if-eqz p1, :cond_31

    .line 62
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-$$Nest$sfgeteras()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_18

    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-$$Nest$sfgeteras()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_18

    .line 65
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 66
    return-object p0

    .line 63
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected blacklist setKnownEra(Lsun/util/calendar/Era;)V
    .registers 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 70
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 71
    return-void
.end method

.method public blacklist setNormalizedYear(I)V
    .registers 4
    .param p1, "year"    # I

    .line 85
    if-gtz p1, :cond_12

    .line 86
    rsub-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 87
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-$$Nest$sfgeteras()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    goto :goto_1f

    .line 89
    :cond_12
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 90
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-$$Nest$sfgeteras()[Lsun/util/calendar/Era;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    .line 92
    :goto_1f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 95
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "time":Ljava/lang/String;
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v2

    .line 99
    .local v2, "era":Lsun/util/calendar/Era;
    if-eqz v2, :cond_28

    .line 100
    invoke-virtual {v2}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "n":Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    .end local v3    # "n":Ljava/lang/String;
    :cond_28
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getMonth()I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getDayOfMonth()I

    move-result v3

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
