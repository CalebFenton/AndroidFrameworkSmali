.class public Lsun/util/calendar/LocalGregorianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/LocalGregorianCalendar$Date;
    }
.end annotation


# instance fields
.field private blacklist eras:[Lsun/util/calendar/Era;

.field private blacklist name:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eras"    # [Lsun/util/calendar/Era;

    .line 181
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 182
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    .line 184
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 185
    return-void
.end method

.method private blacklist adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 13
    .param p1, "ldate"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "millis"    # J
    .param p4, "zoneOffset"    # I

    .line 215
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5
    const/4 v2, 0x0

    if-ltz v0, :cond_34

    .line 216
    iget-object v3, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v0

    .line 217
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3, v2}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v4

    .line 218
    .local v4, "since":J
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 219
    int-to-long v6, p4

    sub-long/2addr v4, v6

    .line 221
    :cond_18
    cmp-long v6, p2, v4

    if-ltz v6, :cond_31

    .line 222
    invoke-virtual {p1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 223
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v7

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 224
    .local v6, "y":I
    invoke-virtual {p1, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 225
    goto :goto_34

    .line 215
    .end local v3    # "era":Lsun/util/calendar/Era;
    .end local v4    # "since":J
    .end local v6    # "y":I
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 228
    :cond_34
    :goto_34
    if-gez v0, :cond_40

    .line 229
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 230
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 232
    :cond_40
    invoke-virtual {p1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 233
    return-object p1
.end method

.method static blacklist getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .registers 20
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    move-object/from16 v1, p0

    :try_start_2
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getCalendarProperties()Ljava/util/Properties;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_103

    .line 126
    .local v0, "calendarProps":Ljava/util/Properties;
    nop

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".eras"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "props":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 130
    return-object v3

    .line 132
    :cond_28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v4, "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ";"

    invoke-direct {v5, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v5, "eraTokens":Ljava/util/StringTokenizer;
    :goto_34
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 135
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "items":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v7, "itemTokens":Ljava/util/StringTokenizer;
    const/4 v8, 0x0

    .line 138
    .local v8, "eraName":Ljava/lang/String;
    const/4 v9, 0x1

    .line 139
    .local v9, "localTime":Z
    const-wide/16 v10, 0x0

    .line 140
    .local v10, "since":J
    const/4 v12, 0x0

    move-object v14, v8

    move/from16 v18, v9

    move-wide/from16 v16, v10

    move-object v15, v12

    .line 142
    .end local v8    # "eraName":Ljava/lang/String;
    .end local v9    # "localTime":Z
    .end local v10    # "since":J
    .local v14, "eraName":Ljava/lang/String;
    .local v15, "abbr":Ljava/lang/String;
    .local v16, "since":J
    .local v18, "localTime":Z
    :goto_54
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 143
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "item":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 146
    .local v9, "index":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_68

    .line 147
    return-object v3

    .line 149
    :cond_68
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "key":Ljava/lang/String;
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "value":Ljava/lang/String;
    const-string v13, "name"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 152
    move-object v10, v12

    move-object v14, v10

    .end local v14    # "eraName":Ljava/lang/String;
    .local v10, "eraName":Ljava/lang/String;
    goto :goto_af

    .line 153
    .end local v10    # "eraName":Ljava/lang/String;
    .restart local v14    # "eraName":Ljava/lang/String;
    :cond_7e
    const-string v13, "since"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a5

    .line 154
    const-string v13, "u"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 155
    const/4 v13, 0x0

    .line 156
    .end local v18    # "localTime":Z
    .local v13, "localTime":Z
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    invoke-virtual {v12, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move/from16 v18, v13

    goto :goto_af

    .line 158
    .end local v13    # "localTime":Z
    .restart local v18    # "localTime":Z
    :cond_a0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_af

    .line 160
    :cond_a5
    const-string v3, "abbr"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 161
    move-object v3, v12

    move-object v15, v3

    .line 165
    .end local v8    # "item":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :goto_af
    const/4 v3, 0x0

    goto :goto_54

    .line 163
    .restart local v8    # "item":Ljava/lang/String;
    .restart local v9    # "index":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_b1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown key word: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    .end local v8    # "item":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_ca
    new-instance v13, Lsun/util/calendar/Era;

    invoke-direct/range {v13 .. v18}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 167
    .local v13, "era":Lsun/util/calendar/Era;
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v6    # "items":Ljava/lang/String;
    .end local v7    # "itemTokens":Ljava/util/StringTokenizer;
    .end local v13    # "era":Lsun/util/calendar/Era;
    .end local v14    # "eraName":Ljava/lang/String;
    .end local v15    # "abbr":Ljava/lang/String;
    .end local v16    # "since":J
    .end local v18    # "localTime":Z
    const/4 v3, 0x0

    goto/16 :goto_34

    .line 171
    :cond_d5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ea

    .line 175
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lsun/util/calendar/Era;

    .line 176
    .local v3, "eraArray":[Lsun/util/calendar/Era;
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    new-instance v6, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-direct {v6, v1, v3}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    return-object v6

    .line 172
    .end local v3    # "eraArray":[Lsun/util/calendar/Era;
    :cond_ea
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No eras for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    .end local v0    # "calendarProps":Ljava/util/Properties;
    .end local v2    # "props":Ljava/lang/String;
    .end local v4    # "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    .end local v5    # "eraTokens":Ljava/util/StringTokenizer;
    :catch_103
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist validateEra(Lsun/util/calendar/Era;)Z
    .registers 4
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 273
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_e

    .line 274
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic blacklist getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4
    .param p1, "millis"    # J

    .line 199
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .line 204
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 6
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .line 209
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 210
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getZoneOffset()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .registers 9
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .line 391
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 392
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {p0, v0, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 393
    const-wide/32 v1, 0xaf93b

    sub-long v1, p2, v1

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 394
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isLeapYear(I)Z
    .registers 3
    .param p1, "gregorianYear"    # I

    .line 378
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLeapYear(Lsun/util/calendar/Era;I)Z
    .registers 5
    .param p1, "era"    # Lsun/util/calendar/Era;
    .param p2, "year"    # I

    .line 382
    if-nez p1, :cond_7

    .line 383
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v0

    return v0

    .line 385
    :cond_7
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 386
    .local v0, "gyear":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic blacklist newCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-r newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 2

    .line 238
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public greylist-max-r newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 243
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public greylist-max-r normalize(Lsun/util/calendar/CalendarDate;)Z
    .registers 22
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 282
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 283
    return v2

    .line 286
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    .line 287
    move-object/from16 v1, p1

    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 290
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {v0, v1}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "hasMillis":Z
    const-wide/16 v4, 0x0

    .line 294
    .local v4, "millis":J
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    .line 296
    .local v6, "year":I
    const/4 v7, 0x0

    .line 297
    .local v7, "era":Lsun/util/calendar/Era;
    iget-object v8, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v8, v8

    sub-int/2addr v8, v2

    .local v8, "i":I
    :goto_20
    if-ltz v8, :cond_7b

    .line 298
    iget-object v9, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v7, v9, v8

    .line 299
    invoke-virtual {v7}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 300
    invoke-virtual {v7}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 301
    .local v9, "sinceDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v10

    .line 302
    .local v10, "sinceYear":I
    if-le v6, v10, :cond_37

    .line 303
    goto :goto_7b

    .line 305
    :cond_37
    if-ne v6, v10, :cond_63

    .line 306
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v11

    .line 307
    .local v11, "month":I
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v12

    .line 308
    .local v12, "sinceMonth":I
    if-le v11, v12, :cond_44

    .line 309
    goto :goto_7b

    .line 311
    :cond_44
    if-ne v11, v12, :cond_63

    .line 312
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v13

    .line 313
    .local v13, "day":I
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v14

    .line 314
    .local v14, "sinceDay":I
    if-le v13, v14, :cond_51

    .line 315
    goto :goto_7b

    .line 317
    :cond_51
    if-ne v13, v14, :cond_63

    .line 318
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v15

    .line 319
    .local v15, "timeOfDay":J
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v17

    .line 320
    .local v17, "sinceTimeOfDay":J
    cmp-long v19, v15, v17

    if-ltz v19, :cond_60

    .line 321
    goto :goto_7b

    .line 323
    :cond_60
    add-int/lit8 v8, v8, -0x1

    .line 324
    goto :goto_7b

    .line 328
    .end local v9    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v10    # "sinceYear":I
    .end local v11    # "month":I
    .end local v12    # "sinceMonth":I
    .end local v13    # "day":I
    .end local v14    # "sinceDay":I
    .end local v15    # "timeOfDay":J
    .end local v17    # "sinceTimeOfDay":J
    :cond_63
    goto :goto_78

    .line 329
    :cond_64
    if-nez v3, :cond_6b

    .line 330
    invoke-super/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 331
    const/4 v3, 0x1

    .line 334
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v9

    .line 335
    .local v9, "since":J
    cmp-long v11, v4, v9

    if-ltz v11, :cond_78

    .line 336
    goto :goto_7b

    .line 297
    .end local v9    # "since":J
    :cond_78
    :goto_78
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    .line 340
    :cond_7b
    :goto_7b
    if-ltz v8, :cond_92

    .line 341
    invoke-virtual {v1, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 342
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-virtual {v7}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v10

    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v2

    .line 343
    .local v9, "y":I
    invoke-virtual {v1, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 344
    .end local v9    # "y":I
    goto :goto_9c

    .line 346
    :cond_92
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 347
    invoke-virtual {v1, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 348
    invoke-virtual {v1, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 350
    :goto_9c
    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 351
    return v2
.end method

.method blacklist normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .registers 2
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 356
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    .line 357
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 358
    return-void
.end method

.method blacklist normalizeYear(Lsun/util/calendar/CalendarDate;)V
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 361
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 364
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    .line 365
    .local v1, "era":Lsun/util/calendar/Era;
    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_23

    .line 368
    :cond_10
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_2a

    .line 366
    :cond_23
    :goto_23
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 370
    :goto_2a
    return-void
.end method

.method public greylist-max-r validate(Lsun/util/calendar/CalendarDate;)Z
    .registers 10
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 248
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 249
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    .line 250
    .local v1, "era":Lsun/util/calendar/Era;
    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 251
    invoke-direct {p0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 252
    return v2

    .line 254
    :cond_11
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 255
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 256
    .local v3, "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v5

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v6

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 257
    invoke-virtual {p0, v3}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 258
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    if-eq v4, v1, :cond_48

    .line 259
    return v2

    .line 261
    .end local v3    # "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_48
    goto :goto_63

    .line 262
    :cond_49
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    iget-object v4, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    if-lt v3, v4, :cond_5c

    .line 263
    return v2

    .line 265
    :cond_5c
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 267
    :goto_63
    invoke-super {p0, v0}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v2

    return v2
.end method
