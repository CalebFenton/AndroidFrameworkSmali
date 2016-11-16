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
.field private eras:[Lsun/util/calendar/Era;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eras"    # [Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    #@3
    .line 189
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    #@5
    .line 190
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@7
    .line 191
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->setEras([Lsun/util/calendar/Era;)V

    #@a
    .line 188
    return-void
.end method

.method private adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 10
    .param p1, "ldate"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "millis"    # J
    .param p4, "zoneOffset"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 217
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@3
    array-length v5, v5

    #@4
    add-int/lit8 v1, v5, -0x1

    #@6
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@8
    .line 218
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@a
    aget-object v0, v5, v1

    #@c
    .line 219
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {v0, v8}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    #@f
    move-result-wide v2

    #@10
    .line 220
    .local v2, "since":J
    invoke-virtual {v0}, Lsun/util/calendar/Era;->isLocalTime()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 221
    int-to-long v6, p4

    #@17
    sub-long/2addr v2, v6

    #@18
    .line 223
    :cond_0
    cmp-long v5, p2, v2

    #@1a
    if-ltz v5, :cond_3

    #@1c
    .line 224
    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    #@1f
    .line 225
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    #@22
    move-result v5

    #@23
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@2a
    move-result v6

    #@2b
    sub-int/2addr v5, v6

    #@2c
    add-int/lit8 v4, v5, 0x1

    #@2e
    .line 226
    .local v4, "y":I
    invoke-virtual {p1, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    #@31
    .line 230
    .end local v0    # "era":Lsun/util/calendar/Era;
    .end local v2    # "since":J
    .end local v4    # "y":I
    :cond_1
    if-gez v1, :cond_2

    #@33
    .line 231
    invoke-virtual {p1, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    #@36
    .line 232
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    #@39
    move-result v5

    #@3a
    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    #@3d
    .line 234
    :cond_2
    const/4 v5, 0x1

    #@3e
    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    #@41
    .line 235
    return-object p1

    #@42
    .line 217
    .restart local v0    # "era":Lsun/util/calendar/Era;
    .restart local v2    # "since":J
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@44
    goto :goto_0
.end method

.method static getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .locals 27
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    const/4 v4, 0x0

    #@1
    .line 124
    .local v4, "calendarProps":Ljava/util/Properties;
    :try_start_0
    new-instance v24, Lsun/security/action/GetPropertyAction;

    #@3
    const-string/jumbo v25, "java.home"

    #@6
    invoke-direct/range {v24 .. v25}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@9
    .line 123
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v16

    #@d
    check-cast v16, Ljava/lang/String;

    #@f
    .line 125
    .local v16, "homeDir":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    move-object/from16 v0, v24

    #@16
    move-object/from16 v1, v16

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v24

    #@1c
    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    #@1e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v24

    #@22
    const-string/jumbo v25, "lib"

    #@25
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v24

    #@29
    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    #@2b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v24

    #@2f
    .line 126
    const-string/jumbo v25, "calendars.properties"

    #@32
    .line 125
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v24

    #@36
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v15

    #@3a
    .line 127
    .local v15, "fname":Ljava/lang/String;
    new-instance v24, Lsun/util/calendar/LocalGregorianCalendar$1;

    #@3c
    move-object/from16 v0, v24

    #@3e
    invoke-direct {v0, v15}, Lsun/util/calendar/LocalGregorianCalendar$1;-><init>(Ljava/lang/String;)V

    #@41
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    .end local v4    # "calendarProps":Ljava/util/Properties;
    check-cast v4, Ljava/util/Properties;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 141
    .local v4, "calendarProps":Ljava/util/Properties;
    new-instance v24, Ljava/lang/StringBuilder;

    #@49
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v25, "calendar."

    #@4f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v24

    #@53
    move-object/from16 v0, v24

    #@55
    move-object/from16 v1, p0

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v24

    #@5b
    const-string/jumbo v25, ".eras"

    #@5e
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v24

    #@62
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v24

    #@66
    move-object/from16 v0, v24

    #@68
    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v22

    #@6c
    .line 142
    .local v22, "props":Ljava/lang/String;
    if-nez v22, :cond_0

    #@6e
    .line 143
    const/16 v24, 0x0

    #@70
    return-object v24

    #@71
    .line 136
    .end local v4    # "calendarProps":Ljava/util/Properties;
    .end local v15    # "fname":Ljava/lang/String;
    .end local v16    # "homeDir":Ljava/lang/String;
    .end local v22    # "props":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@72
    .line 137
    .local v11, "e":Ljava/security/PrivilegedActionException;
    new-instance v24, Ljava/lang/RuntimeException;

    #@74
    invoke-virtual {v11}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@77
    move-result-object v25

    #@78
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@7b
    throw v24

    #@7c
    .line 145
    .end local v11    # "e":Ljava/security/PrivilegedActionException;
    .restart local v4    # "calendarProps":Ljava/util/Properties;
    .restart local v15    # "fname":Ljava/lang/String;
    .restart local v16    # "homeDir":Ljava/lang/String;
    .restart local v22    # "props":Ljava/lang/String;
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@81
    .line 146
    .local v14, "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    new-instance v13, Ljava/util/StringTokenizer;

    #@83
    const-string/jumbo v24, ";"

    #@86
    move-object/from16 v0, v22

    #@88
    move-object/from16 v1, v24

    #@8a
    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8d
    .line 147
    .local v13, "eraTokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@90
    move-result v24

    #@91
    if-eqz v24, :cond_7

    #@93
    .line 148
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@96
    move-result-object v24

    #@97
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9a
    move-result-object v20

    #@9b
    .line 149
    .local v20, "items":Ljava/lang/String;
    new-instance v19, Ljava/util/StringTokenizer;

    #@9d
    const-string/jumbo v24, ","

    #@a0
    move-object/from16 v0, v19

    #@a2
    move-object/from16 v1, v20

    #@a4
    move-object/from16 v2, v24

    #@a6
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    .line 150
    .local v19, "itemTokens":Ljava/util/StringTokenizer;
    const/4 v6, 0x0

    #@aa
    .line 151
    .local v6, "eraName":Ljava/lang/String;
    const/4 v10, 0x1

    #@ab
    .line 152
    .local v10, "localTime":Z
    const-wide/16 v8, 0x0

    #@ad
    .line 153
    .local v8, "since":J
    const/4 v7, 0x0

    #@ae
    .line 155
    .end local v6    # "eraName":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@b1
    move-result v24

    #@b2
    if-eqz v24, :cond_6

    #@b4
    .line 156
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@b7
    move-result-object v18

    #@b8
    .line 157
    .local v18, "item":Ljava/lang/String;
    const/16 v24, 0x3d

    #@ba
    move-object/from16 v0, v18

    #@bc
    move/from16 v1, v24

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@c1
    move-result v17

    #@c2
    .line 159
    .local v17, "index":I
    const/16 v24, -0x1

    #@c4
    move/from16 v0, v17

    #@c6
    move/from16 v1, v24

    #@c8
    if-ne v0, v1, :cond_1

    #@ca
    .line 160
    const/16 v24, 0x0

    #@cc
    return-object v24

    #@cd
    .line 162
    :cond_1
    const/16 v24, 0x0

    #@cf
    move-object/from16 v0, v18

    #@d1
    move/from16 v1, v24

    #@d3
    move/from16 v2, v17

    #@d5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d8
    move-result-object v21

    #@d9
    .line 163
    .local v21, "key":Ljava/lang/String;
    add-int/lit8 v24, v17, 0x1

    #@db
    move-object/from16 v0, v18

    #@dd
    move/from16 v1, v24

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e2
    move-result-object v23

    #@e3
    .line 164
    .local v23, "value":Ljava/lang/String;
    const-string/jumbo v24, "name"

    #@e6
    move-object/from16 v0, v24

    #@e8
    move-object/from16 v1, v21

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v24

    #@ee
    if-eqz v24, :cond_2

    #@f0
    .line 165
    move-object/from16 v6, v23

    #@f2
    .local v6, "eraName":Ljava/lang/String;
    goto :goto_1

    #@f3
    .line 166
    .end local v6    # "eraName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v24, "since"

    #@f6
    move-object/from16 v0, v24

    #@f8
    move-object/from16 v1, v21

    #@fa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v24

    #@fe
    if-eqz v24, :cond_4

    #@100
    .line 167
    const-string/jumbo v24, "u"

    #@103
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@106
    move-result v24

    #@107
    if-eqz v24, :cond_3

    #@109
    .line 168
    const/4 v10, 0x0

    #@10a
    .line 169
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@10d
    move-result v24

    #@10e
    add-int/lit8 v24, v24, -0x1

    #@110
    const/16 v25, 0x0

    #@112
    move-object/from16 v0, v23

    #@114
    move/from16 v1, v25

    #@116
    move/from16 v2, v24

    #@118
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11b
    move-result-object v24

    #@11c
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@11f
    move-result-wide v8

    #@120
    goto :goto_1

    #@121
    .line 171
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@124
    move-result-wide v8

    #@125
    goto :goto_1

    #@126
    .line 173
    :cond_4
    const-string/jumbo v24, "abbr"

    #@129
    move-object/from16 v0, v24

    #@12b
    move-object/from16 v1, v21

    #@12d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@130
    move-result v24

    #@131
    if-eqz v24, :cond_5

    #@133
    .line 174
    move-object/from16 v7, v23

    #@135
    .local v7, "abbr":Ljava/lang/String;
    goto/16 :goto_1

    #@137
    .line 176
    .end local v7    # "abbr":Ljava/lang/String;
    :cond_5
    new-instance v24, Ljava/lang/RuntimeException;

    #@139
    new-instance v25, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v26, "Unknown key word: "

    #@141
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v25

    #@145
    move-object/from16 v0, v25

    #@147
    move-object/from16 v1, v21

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v25

    #@14d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v25

    #@151
    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@154
    throw v24

    #@155
    .line 179
    .end local v17    # "index":I
    .end local v18    # "item":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_6
    new-instance v5, Lsun/util/calendar/Era;

    #@157
    invoke-direct/range {v5 .. v10}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    #@15a
    .line 180
    .local v5, "era":Lsun/util/calendar/Era;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15d
    goto/16 :goto_0

    #@15f
    .line 182
    .end local v5    # "era":Lsun/util/calendar/Era;
    .end local v8    # "since":J
    .end local v10    # "localTime":Z
    .end local v19    # "itemTokens":Ljava/util/StringTokenizer;
    .end local v20    # "items":Ljava/lang/String;
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@162
    move-result v24

    #@163
    move/from16 v0, v24

    #@165
    new-array v12, v0, [Lsun/util/calendar/Era;

    #@167
    .line 183
    .local v12, "eraArray":[Lsun/util/calendar/Era;
    invoke-interface {v14, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16a
    .line 185
    new-instance v24, Lsun/util/calendar/LocalGregorianCalendar;

    #@16c
    move-object/from16 v0, v24

    #@16e
    move-object/from16 v1, p0

    #@170
    invoke-direct {v0, v1, v12}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    #@173
    return-object v24
.end method

.method private validateEra(Lsun/util/calendar/Era;)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 263
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@8
    aget-object v1, v1, v0

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 264
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 267
    :cond_1
    const/4 v1, 0x0

    #@12
    return v1
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3

    #@0
    .prologue
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 207
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@6
    .line 212
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getZoneOffset()I

    #@9
    move-result v1

    #@a
    invoke-direct {p0, v0, p1, p2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 377
    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    .line 378
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {p0, v0, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@6
    .line 379
    const-wide/32 v2, 0xaf93b

    #@9
    sub-long v2, p2, v2

    #@b
    const-wide/32 v4, 0x5265c00

    #@e
    mul-long/2addr v2, v4

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, v0, v2, v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@13
    .line 376
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isLeapYear(I)Z
    .locals 1
    .param p1, "gregorianYear"    # I

    #@0
    .prologue
    .line 365
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isLeapYear(Lsun/util/calendar/Era;I)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;
    .param p2, "year"    # I

    #@0
    .prologue
    .line 369
    if-nez p1, :cond_0

    #@2
    .line 370
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 372
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@e
    move-result v1

    #@f
    add-int/2addr v1, p2

    #@10
    add-int/lit8 v0, v1, -0x1

    #@12
    .line 373
    .local v0, "gyear":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    #@0
    .prologue
    .line 239
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@2
    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    #@5
    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 243
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@2
    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    #@5
    return-object v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 24
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 271
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@3
    move-result v22

    #@4
    if-eqz v22, :cond_0

    #@6
    .line 272
    const/16 v22, 0x1

    #@8
    return v22

    #@9
    .line 275
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    #@c
    move-object/from16 v6, p1

    #@e
    .line 276
    check-cast v6, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@10
    .line 279
    .local v6, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move-object/from16 v0, p0

    #@12
    invoke-super {v0, v6}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    #@15
    .line 281
    const/4 v4, 0x0

    #@16
    .line 282
    .local v4, "hasMillis":Z
    const-wide/16 v8, 0x0

    #@18
    .line 283
    .local v8, "millis":J
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    #@1b
    move-result v21

    #@1c
    .line 285
    .local v21, "year":I
    const/4 v3, 0x0

    #@1d
    .line 286
    .local v3, "era":Lsun/util/calendar/Era;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@21
    move-object/from16 v22, v0

    #@23
    move-object/from16 v0, v22

    #@25
    array-length v0, v0

    #@26
    move/from16 v22, v0

    #@28
    add-int/lit8 v5, v22, -0x1

    #@2a
    .end local v3    # "era":Lsun/util/calendar/Era;
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    #@2c
    .line 287
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    #@30
    move-object/from16 v22, v0

    #@32
    aget-object v3, v22, v5

    #@34
    .line 288
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    #@37
    move-result v22

    #@38
    if-eqz v22, :cond_3

    #@3a
    .line 289
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@3d
    move-result-object v12

    #@3e
    .line 290
    .local v12, "sinceDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@41
    move-result v15

    #@42
    .line 291
    .local v15, "sinceYear":I
    move/from16 v0, v21

    #@44
    if-le v0, v15, :cond_2

    #@46
    .line 329
    .end local v3    # "era":Lsun/util/calendar/Era;
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v15    # "sinceYear":I
    :cond_1
    :goto_1
    if-ltz v5, :cond_6

    #@48
    .line 330
    invoke-virtual {v6, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    #@4b
    .line 331
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    #@4e
    move-result v22

    #@4f
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@52
    move-result-object v23

    #@53
    invoke-virtual/range {v23 .. v23}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@56
    move-result v23

    #@57
    sub-int v22, v22, v23

    #@59
    add-int/lit8 v20, v22, 0x1

    #@5b
    .line 332
    .local v20, "y":I
    move/from16 v0, v20

    #@5d
    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    #@60
    .line 339
    .end local v20    # "y":I
    :goto_2
    const/16 v22, 0x1

    #@62
    move/from16 v0, v22

    #@64
    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    #@67
    .line 340
    const/16 v22, 0x1

    #@69
    return v22

    #@6a
    .line 294
    .restart local v3    # "era":Lsun/util/calendar/Era;
    .restart local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .restart local v15    # "sinceYear":I
    :cond_2
    move/from16 v0, v21

    #@6c
    if-ne v0, v15, :cond_5

    #@6e
    .line 295
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    #@71
    move-result v7

    #@72
    .line 296
    .local v7, "month":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@75
    move-result v14

    #@76
    .line 297
    .local v14, "sinceMonth":I
    if-gt v7, v14, :cond_1

    #@78
    .line 300
    if-ne v7, v14, :cond_5

    #@7a
    .line 301
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    #@7d
    move-result v2

    #@7e
    .line 302
    .local v2, "day":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    #@81
    move-result v13

    #@82
    .line 303
    .local v13, "sinceDay":I
    if-gt v2, v13, :cond_1

    #@84
    .line 306
    if-ne v2, v13, :cond_5

    #@86
    .line 307
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    #@89
    move-result-wide v18

    #@8a
    .line 308
    .local v18, "timeOfDay":J
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    #@8d
    move-result-wide v16

    #@8e
    .line 309
    .local v16, "sinceTimeOfDay":J
    cmp-long v22, v18, v16

    #@90
    if-gez v22, :cond_1

    #@92
    .line 312
    add-int/lit8 v5, v5, -0x1

    #@94
    .line 313
    goto :goto_1

    #@95
    .line 318
    .end local v2    # "day":I
    .end local v7    # "month":I
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v13    # "sinceDay":I
    .end local v14    # "sinceMonth":I
    .end local v15    # "sinceYear":I
    .end local v16    # "sinceTimeOfDay":J
    .end local v18    # "timeOfDay":J
    :cond_3
    if-nez v4, :cond_4

    #@97
    .line 319
    invoke-super/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@9a
    move-result-wide v8

    #@9b
    .line 320
    const/4 v4, 0x1

    #@9c
    .line 323
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    #@9f
    move-result-object v22

    #@a0
    move-object/from16 v0, v22

    #@a2
    invoke-virtual {v3, v0}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    #@a5
    move-result-wide v10

    #@a6
    .line 324
    .local v10, "since":J
    cmp-long v22, v8, v10

    #@a8
    if-gez v22, :cond_1

    #@aa
    .line 286
    .end local v10    # "since":J
    :cond_5
    add-int/lit8 v5, v5, -0x1

    #@ac
    goto/16 :goto_0

    #@ae
    .line 335
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_6
    const/16 v22, 0x0

    #@b0
    move-object/from16 v0, v22

    #@b2
    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@b5
    .line 336
    move/from16 v0, v21

    #@b7
    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    #@ba
    .line 337
    move/from16 v0, v21

    #@bc
    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    #@bf
    goto :goto_2
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .locals 0
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    #@3
    .line 345
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    #@6
    .line 343
    return-void
.end method

.method normalizeYear(Lsun/util/calendar/CalendarDate;)V
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 349
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    .line 352
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@6
    move-result-object v0

    #@7
    .line 353
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    #@9
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 356
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    #@1a
    move-result v3

    #@1b
    add-int/2addr v2, v3

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    #@21
    .line 348
    :goto_0
    return-void

    #@22
    .line 354
    :cond_0
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    #@29
    goto :goto_0
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 247
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    #@3
    .line 248
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@6
    move-result-object v0

    #@7
    .line 249
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_1

    #@9
    .line 250
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 251
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 253
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v2, v3

    #@1e
    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    #@21
    .line 257
    :goto_0
    invoke-super {p0, v1}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    #@24
    move-result v2

    #@25
    return v2

    #@26
    .line 255
    :cond_1
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    #@2d
    goto :goto_0
.end method
