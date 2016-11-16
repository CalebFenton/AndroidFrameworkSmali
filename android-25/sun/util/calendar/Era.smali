.class public final Lsun/util/calendar/Era;
.super Ljava/lang/Object;
.source "Era.java"


# instance fields
.field private final abbr:Ljava/lang/String;

.field private hash:I

.field private final localTime:Z

.field private final name:Ljava/lang/String;

.field private final since:J

.field private final sinceDate:Lsun/util/calendar/CalendarDate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "abbr"    # Ljava/lang/String;
    .param p3, "since"    # J
    .param p5, "localTime"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    const/4 v2, 0x0

    #@4
    iput v2, p0, Lsun/util/calendar/Era;->hash:I

    #@6
    .line 82
    iput-object p1, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@8
    .line 83
    iput-object p2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@a
    .line 84
    iput-wide p3, p0, Lsun/util/calendar/Era;->since:J

    #@c
    .line 85
    iput-boolean p5, p0, Lsun/util/calendar/Era;->localTime:Z

    #@e
    .line 86
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    #@11
    move-result-object v1

    #@12
    .line 87
    .local v1, "gcal":Lsun/util/calendar/Gregorian;
    const/4 v2, 0x0

    #@13
    invoke-virtual {v1, v2}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    #@16
    move-result-object v0

    #@17
    .line 88
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v1, p3, p4, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    #@1a
    .line 89
    new-instance v2, Lsun/util/calendar/ImmutableGregorianDate;

    #@1c
    invoke-direct {v2, v0}, Lsun/util/calendar/ImmutableGregorianDate;-><init>(Lsun/util/calendar/BaseCalendar$Date;)V

    #@1f
    iput-object v2, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    #@21
    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    instance-of v2, p1, Lsun/util/calendar/Era;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 126
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 128
    check-cast v0, Lsun/util/calendar/Era;

    #@9
    .line 129
    .local v0, "that":Lsun/util/calendar/Era;
    iget-object v2, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 130
    iget-object v2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@15
    iget-object v3, v0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    .line 129
    if-eqz v2, :cond_1

    #@1d
    .line 131
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@1f
    iget-wide v4, v0, Lsun/util/calendar/Era;->since:J

    #@21
    cmp-long v2, v2, v4

    #@23
    if-nez v2, :cond_1

    #@25
    .line 132
    iget-boolean v2, p0, Lsun/util/calendar/Era;->localTime:Z

    #@27
    iget-boolean v3, v0, Lsun/util/calendar/Era;->localTime:Z

    #@29
    if-ne v2, v3, :cond_1

    #@2b
    const/4 v1, 0x1

    #@2c
    .line 129
    :cond_1
    return v1
.end method

.method public getAbbreviation()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDiaplayAbbreviation(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSince(Ljava/util/TimeZone;)J
    .locals 6
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 109
    if-eqz p1, :cond_0

    #@2
    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 112
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@8
    invoke-virtual {p1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@b
    move-result v0

    #@c
    .line 113
    .local v0, "offset":I
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@e
    int-to-long v4, v0

    #@f
    sub-long/2addr v2, v4

    #@10
    return-wide v2

    #@11
    .line 110
    .end local v0    # "offset":I
    :cond_0
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@13
    return-wide v2
.end method

.method public getSinceDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lsun/util/calendar/Era;->sinceDate:Lsun/util/calendar/CalendarDate;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    iget v1, p0, Lsun/util/calendar/Era;->hash:I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 139
    iget-object v1, p0, Lsun/util/calendar/Era;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v1

    #@b
    iget-object v2, p0, Lsun/util/calendar/Era;->abbr:Ljava/lang/String;

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@10
    move-result v2

    #@11
    xor-int/2addr v1, v2

    #@12
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@14
    long-to-int v2, v2

    #@15
    xor-int/2addr v1, v2

    #@16
    iget-wide v2, p0, Lsun/util/calendar/Era;->since:J

    #@18
    const/16 v4, 0x20

    #@1a
    shr-long/2addr v2, v4

    #@1b
    long-to-int v2, v2

    #@1c
    xor-int/2addr v1, v2

    #@1d
    .line 140
    iget-boolean v2, p0, Lsun/util/calendar/Era;->localTime:Z

    #@1f
    if-eqz v2, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 139
    :cond_0
    xor-int/2addr v0, v1

    #@23
    iput v0, p0, Lsun/util/calendar/Era;->hash:I

    #@25
    .line 142
    :cond_1
    iget v0, p0, Lsun/util/calendar/Era;->hash:I

    #@27
    return v0
.end method

.method public isLocalTime()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Lsun/util/calendar/Era;->localTime:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 148
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " ("

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 149
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const/16 v2, 0x29

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 150
    const-string/jumbo v1, " since "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    .line 151
    iget-boolean v1, p0, Lsun/util/calendar/Era;->localTime:Z

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@3a
    move-result v1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@40
    .line 153
    const-string/jumbo v1, " local time"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 155
    :cond_0
    const/16 v1, 0x5d

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    return-object v1
.end method
