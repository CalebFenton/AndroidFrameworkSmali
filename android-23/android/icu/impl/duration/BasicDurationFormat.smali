.class public Landroid/icu/impl/duration/BasicDurationFormat;
.super Landroid/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient formatter:Landroid/icu/impl/duration/DurationFormatter;

.field transient pformatter:Landroid/icu/impl/duration/PeriodFormatter;

.field transient pfs:Landroid/icu/impl/duration/PeriodFormatterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/icu/text/DurationFormat;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@6
    .line 49
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@c
    .line 50
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@e
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    #@18
    .line 51
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@1a
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@1d
    move-result-object v0

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@29
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/icu/text/DurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@6
    .line 58
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@c
    .line 59
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@e
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    #@20
    .line 60
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    #@22
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@25
    move-result-object v0

    #@26
    const/4 v1, 0x0

    #@27
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@32
    move-result-object v0

    #@33
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@39
    .line 56
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormat;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "toAppend"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 34
    instance-of v1, p1, Ljava/lang/Long;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 35
    check-cast p1, Ljava/lang/Long;

    #@6
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 36
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 37
    .end local v0    # "res":Ljava/lang/String;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 38
    check-cast p1, Ljava/util/Date;

    #@19
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 39
    .restart local v0    # "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 40
    .end local v0    # "res":Ljava/lang/String;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljavax/xml/datatype/Duration;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 41
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDuration(Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 42
    .restart local v0    # "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 44
    .end local v0    # "res":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v2, "Cannot format given Object as a Duration"

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method public formatDuration(Ljava/lang/Object;)Ljava/lang/String;
    .locals 26
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    const/16 v22, 0x6

    #@2
    move/from16 v0, v22

    #@4
    new-array v12, v0, [Ljavax/xml/datatype/DatatypeConstants$Field;

    #@6
    .line 92
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@8
    const/16 v23, 0x0

    #@a
    aput-object v22, v12, v23

    #@c
    .line 93
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@e
    const/16 v23, 0x1

    #@10
    aput-object v22, v12, v23

    #@12
    .line 94
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@14
    const/16 v23, 0x2

    #@16
    aput-object v22, v12, v23

    #@18
    .line 95
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@1a
    const/16 v23, 0x3

    #@1c
    aput-object v22, v12, v23

    #@1e
    .line 96
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@20
    const/16 v23, 0x4

    #@22
    aput-object v22, v12, v23

    #@24
    .line 97
    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    #@26
    const/16 v23, 0x5

    #@28
    aput-object v22, v12, v23

    #@2a
    .line 99
    .local v12, "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    const/16 v22, 0x6

    #@2c
    move/from16 v0, v22

    #@2e
    new-array v0, v0, [Landroid/icu/impl/duration/TimeUnit;

    #@30
    move-object/from16 v19, v0

    #@32
    .line 100
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@34
    const/16 v23, 0x0

    #@36
    aput-object v22, v19, v23

    #@38
    .line 101
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    #@3a
    const/16 v23, 0x1

    #@3c
    aput-object v22, v19, v23

    #@3e
    .line 102
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    #@40
    const/16 v23, 0x2

    #@42
    aput-object v22, v19, v23

    #@44
    .line 103
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    #@46
    const/16 v23, 0x3

    #@48
    aput-object v22, v19, v23

    #@4a
    .line 104
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    #@4c
    const/16 v23, 0x4

    #@4e
    aput-object v22, v19, v23

    #@50
    .line 105
    sget-object v22, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@52
    const/16 v23, 0x5

    #@54
    aput-object v22, v19, v23

    #@56
    .local v19, "outFields":[Landroid/icu/impl/duration/TimeUnit;
    move-object/from16 v11, p1

    #@58
    .line 108
    check-cast v11, Ljavax/xml/datatype/Duration;

    #@5a
    .line 109
    .local v11, "inDuration":Ljavax/xml/datatype/Duration;
    const/16 v20, 0x0

    #@5c
    .line 110
    .local v20, "p":Landroid/icu/impl/duration/Period;
    move-object v6, v11

    #@5d
    .line 111
    .local v6, "duration":Ljavax/xml/datatype/Duration;
    const/4 v13, 0x0

    #@5e
    .line 112
    .local v13, "inPast":Z
    invoke-virtual {v11}, Ljavax/xml/datatype/Duration;->getSign()I

    #@61
    move-result v22

    #@62
    if-gez v22, :cond_0

    #@64
    .line 113
    invoke-virtual {v11}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    #@67
    move-result-object v6

    #@68
    .line 114
    const/4 v13, 0x1

    #@69
    .line 117
    :cond_0
    const/16 v21, 0x0

    #@6b
    .line 118
    .local v21, "sawNonZero":Z
    const/4 v10, 0x0

    #@6c
    .end local v20    # "p":Landroid/icu/impl/duration/Period;
    .local v10, "i":I
    :goto_0
    array-length v0, v12

    #@6d
    move/from16 v22, v0

    #@6f
    move/from16 v0, v22

    #@71
    if-ge v10, v0, :cond_5

    #@73
    .line 119
    aget-object v22, v12, v10

    #@75
    move-object/from16 v0, v22

    #@77
    invoke-virtual {v6, v0}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    #@7a
    move-result v22

    #@7b
    if-eqz v22, :cond_3

    #@7d
    .line 120
    aget-object v22, v12, v10

    #@7f
    move-object/from16 v0, v22

    #@81
    invoke-virtual {v6, v0}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    #@84
    move-result-object v18

    #@85
    .line 121
    .local v18, "n":Ljava/lang/Number;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    #@88
    move-result v22

    #@89
    if-nez v22, :cond_1

    #@8b
    if-eqz v21, :cond_3

    #@8d
    .line 124
    :cond_1
    const/16 v21, 0x1

    #@8f
    .line 126
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    #@92
    move-result v7

    #@93
    .line 128
    .local v7, "floatVal":F
    const/4 v4, 0x0

    #@94
    .line 129
    .local v4, "alternateUnit":Landroid/icu/impl/duration/TimeUnit;
    const/4 v5, 0x0

    #@95
    .line 132
    .local v5, "alternateVal":F
    aget-object v22, v19, v10

    #@97
    sget-object v23, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@99
    move-object/from16 v0, v22

    #@9b
    move-object/from16 v1, v23

    #@9d
    if-ne v0, v1, :cond_2

    #@9f
    .line 133
    float-to-double v8, v7

    #@a0
    .line 134
    .local v8, "fullSeconds":D
    float-to-double v0, v7

    #@a1
    move-wide/from16 v22, v0

    #@a3
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    #@a6
    move-result-wide v14

    #@a7
    .line 135
    .local v14, "intSeconds":D
    sub-double v22, v8, v14

    #@a9
    const-wide v24, 0x408f400000000000L    # 1000.0

    #@ae
    mul-double v16, v22, v24

    #@b0
    .line 136
    .local v16, "millis":D
    const-wide/16 v22, 0x0

    #@b2
    cmpl-double v22, v16, v22

    #@b4
    if-lez v22, :cond_2

    #@b6
    .line 137
    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@b8
    .line 138
    .local v4, "alternateUnit":Landroid/icu/impl/duration/TimeUnit;
    move-wide/from16 v0, v16

    #@ba
    double-to-float v5, v0

    #@bb
    .line 139
    double-to-float v7, v14

    #@bc
    .line 143
    .end local v4    # "alternateUnit":Landroid/icu/impl/duration/TimeUnit;
    .end local v8    # "fullSeconds":D
    .end local v14    # "intSeconds":D
    .end local v16    # "millis":D
    :cond_2
    if-nez v20, :cond_4

    #@be
    .line 144
    aget-object v22, v19, v10

    #@c0
    move-object/from16 v0, v22

    #@c2
    invoke-static {v7, v0}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@c5
    move-result-object v20

    #@c6
    .line 149
    .local v20, "p":Landroid/icu/impl/duration/Period;
    :goto_1
    if-eqz v4, :cond_3

    #@c8
    .line 150
    move-object/from16 v0, v20

    #@ca
    invoke-virtual {v0, v5, v4}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@cd
    move-result-object v20

    #@ce
    .line 118
    .end local v5    # "alternateVal":F
    .end local v7    # "floatVal":F
    .end local v18    # "n":Ljava/lang/Number;
    .end local v20    # "p":Landroid/icu/impl/duration/Period;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@d0
    goto :goto_0

    #@d1
    .line 146
    .restart local v5    # "alternateVal":F
    .restart local v7    # "floatVal":F
    .restart local v18    # "n":Ljava/lang/Number;
    :cond_4
    aget-object v22, v19, v10

    #@d3
    move-object/from16 v0, v20

    #@d5
    move-object/from16 v1, v22

    #@d7
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@da
    move-result-object v20

    #@db
    .restart local v20    # "p":Landroid/icu/impl/duration/Period;
    goto :goto_1

    #@dc
    .line 155
    .end local v5    # "alternateVal":F
    .end local v7    # "floatVal":F
    .end local v18    # "n":Ljava/lang/Number;
    .end local v20    # "p":Landroid/icu/impl/duration/Period;
    :cond_5
    if-nez v20, :cond_6

    #@de
    .line 157
    const-wide/16 v22, 0x0

    #@e0
    move-object/from16 v0, p0

    #@e2
    move-wide/from16 v1, v22

    #@e4
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    #@e7
    move-result-object v22

    #@e8
    return-object v22

    #@e9
    .line 159
    :cond_6
    if-eqz v13, :cond_7

    #@eb
    .line 160
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/duration/Period;->inPast()Landroid/icu/impl/duration/Period;

    #@ee
    move-result-object v20

    #@ef
    .line 167
    .restart local v20    # "p":Landroid/icu/impl/duration/Period;
    :goto_2
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@f3
    move-object/from16 v22, v0

    #@f5
    move-object/from16 v0, v22

    #@f7
    move-object/from16 v1, v20

    #@f9
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    #@fc
    move-result-object v22

    #@fd
    return-object v22

    #@fe
    .line 162
    .end local v20    # "p":Landroid/icu/impl/duration/Period;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/duration/Period;->inFuture()Landroid/icu/impl/duration/Period;

    #@101
    move-result-object v20

    #@102
    .restart local v20    # "p":Landroid/icu/impl/duration/Period;
    goto :goto_2
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "targetDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
