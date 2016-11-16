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
.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x1

    #@4
    const-wide/16 v2, -0x1

    #@6
    const/16 v1, 0x16d

    #@8
    invoke-virtual {p0, v0, v2, v3, v1}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    #@b
    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    #@3
    .line 55
    const/4 v0, 0x1

    #@4
    const-wide/16 v2, -0x1

    #@6
    const/16 v1, 0x16d

    #@8
    invoke-virtual {p0, v0, v2, v3, v1}, Lsun/util/calendar/JulianCalendar$Date;->setCache(IJI)V

    #@b
    .line 53
    return-void
.end method


# virtual methods
.method public getNormalizedYear()I
    .locals 3

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aget-object v1, v1, v2

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 75
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    #@10
    move-result v0

    #@11
    rsub-int/lit8 v0, v0, 0x1

    #@13
    return v0

    #@14
    .line 77
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 3
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 59
    if-nez p1, :cond_0

    #@2
    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 62
    :cond_0
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    aget-object v0, v0, v1

    #@f
    if-ne p1, v0, :cond_1

    #@11
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x1

    #@16
    aget-object v0, v0, v1

    #@18
    if-eq p1, v0, :cond_2

    #@1a
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "unknown era: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 65
    :cond_2
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    #@37
    .line 66
    return-object p0
.end method

.method protected setKnownEra(Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 70
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    #@3
    .line 69
    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 2
    .param p1, "year"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    if-gtz p1, :cond_0

    #@3
    .line 86
    rsub-int/lit8 v0, p1, 0x1

    #@5
    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    #@8
    .line 87
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    #@b
    move-result-object v0

    #@c
    aget-object v0, v0, v1

    #@e
    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    #@11
    .line 84
    :goto_0
    return-void

    #@12
    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    #@15
    .line 90
    invoke-static {}, Lsun/util/calendar/JulianCalendar;->-get0()[Lsun/util/calendar/Era;

    #@18
    move-result-object v0

    #@19
    const/4 v1, 0x1

    #@1a
    aget-object v0, v0, v1

    #@1c
    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar$Date;->setKnownEra(Lsun/util/calendar/Era;)V

    #@1f
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2d

    #@2
    const/4 v6, 0x2

    #@3
    .line 95
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 96
    .local v3, "time":Ljava/lang/String;
    const/16 v4, 0x54

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v4

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 98
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@19
    move-result-object v0

    #@1a
    .line 99
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    #@1c
    .line 100
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 101
    .local v1, "n":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@22
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v4

    #@26
    const/16 v5, 0x20

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b
    .line 105
    .end local v1    # "n":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getYear()I

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 106
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getMonth()I

    #@39
    move-result v4

    #@3a
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    .line 107
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar$Date;->getDayOfMonth()I

    #@44
    move-result v4

    #@45
    invoke-static {v2, v4, v6}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@48
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    return-object v4
.end method
