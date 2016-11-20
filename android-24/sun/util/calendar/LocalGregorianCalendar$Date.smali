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
.field private gregorianYear:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    #@3
    .line 61
    const/high16 v0, -0x80000000

    #@5
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@7
    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    #@3
    .line 61
    const/high16 v0, -0x80000000

    #@5
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@7
    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "localYear"    # I

    #@0
    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "localYear"    # I

    #@0
    .prologue
    .line 72
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->addYear(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 73
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@8
    .line 74
    return-object p0
.end method

.method public getNormalizedYear()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@2
    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 65
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    #@9
    .line 66
    const/high16 v0, -0x80000000

    #@b
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@d
    .line 68
    :cond_0
    return-object p0
.end method

.method setLocalEra(Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 94
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    #@3
    .line 93
    return-void
.end method

.method setLocalYear(I)V
    .locals 0
    .param p1, "year"    # I

    #@0
    .prologue
    .line 98
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    #@3
    .line 97
    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 0
    .param p1, "normalizedYear"    # I

    #@0
    .prologue
    .line 90
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@2
    .line 89
    return-void
.end method

.method public bridge synthetic setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "localYear"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "localYear"    # I

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 79
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setYear(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 80
    const/high16 v0, -0x80000000

    #@b
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->gregorianYear:I

    #@d
    .line 82
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x2e

    #@2
    const/4 v5, 0x2

    #@3
    .line 102
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 103
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
    .line 104
    new-instance v2, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 105
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    #@19
    move-result-object v1

    #@1a
    .line 106
    .local v1, "era":Lsun/util/calendar/Era;
    if-eqz v1, :cond_0

    #@1c
    .line 107
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 108
    .local v0, "abbr":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@22
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 112
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@28
    move-result v4

    #@29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 113
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@33
    move-result v4

    #@34
    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b
    .line 114
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    #@3e
    move-result v4

    #@3f
    invoke-static {v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@42
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    return-object v4
.end method
