.class public Landroid/icu/impl/duration/BasicDurationFormat;
.super Landroid/icu/text/DurationFormat;
.source "BasicDurationFormat.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x2bac5567544cfb24L


# instance fields
.field transient blacklist formatter:Landroid/icu/impl/duration/DurationFormatter;

.field transient blacklist pformatter:Landroid/icu/impl/duration/PeriodFormatter;

.field transient blacklist pfs:Landroid/icu/impl/duration/PeriodFormatterService;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/icu/text/DurationFormat;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 53
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 54
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    .line 55
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 61
    invoke-direct {p0, p1}, Landroid/icu/text/DurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 62
    invoke-static {}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    .line 63
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DurationFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/DurationFormatterFactory;->getFormatter()Landroid/icu/impl/duration/DurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    .line 64
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pfs:Landroid/icu/impl/duration/PeriodFormatterService;

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setDisplayPastFuture(Z)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 65
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 34
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormat;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "toAppend"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "res":Ljava/lang/String;
    :cond_14
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_24

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .restart local v0    # "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    .line 44
    .end local v0    # "res":Ljava/lang/String;
    :cond_24
    instance-of v0, p1, Ljavax/xml/datatype/Duration;

    if-eqz v0, :cond_31

    .line 45
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDuration(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .restart local v0    # "res":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    .line 48
    .end local v0    # "res":Ljava/lang/String;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist formatDuration(Ljava/lang/Object;)Ljava/lang/String;
    .registers 25
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v2, v1, [Ljavax/xml/datatype/DatatypeConstants$Field;

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 103
    .local v2, "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    new-array v1, v1, [Landroid/icu/impl/duration/TimeUnit;

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v4

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v5

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v6

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v7

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v8

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    aput-object v3, v1, v9

    .line 112
    .local v1, "outFields":[Landroid/icu/impl/duration/TimeUnit;
    move-object/from16 v3, p1

    check-cast v3, Ljavax/xml/datatype/Duration;

    .line 113
    .local v3, "inDuration":Ljavax/xml/datatype/Duration;
    const/4 v4, 0x0

    .line 114
    .local v4, "p":Landroid/icu/impl/duration/Period;
    move-object v5, v3

    .line 115
    .local v5, "duration":Ljavax/xml/datatype/Duration;
    const/4 v6, 0x0

    .line 116
    .local v6, "inPast":Z
    invoke-virtual {v3}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    if-gez v7, :cond_4f

    .line 117
    invoke-virtual {v3}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v5

    .line 118
    const/4 v6, 0x1

    .line 121
    :cond_4f
    const/4 v7, 0x0

    .line 122
    .local v7, "sawNonZero":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    array-length v9, v2

    if-ge v8, v9, :cond_d1

    .line 123
    aget-object v9, v2, v8

    invoke-virtual {v5, v9}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 124
    aget-object v9, v2, v8

    invoke-virtual {v5, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    .line 125
    .local v9, "n":Ljava/lang/Number;
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-nez v10, :cond_72

    if-nez v7, :cond_72

    .line 126
    move-object/from16 v16, v1

    move-object v15, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    goto :goto_c7

    .line 128
    :cond_72
    const/4 v7, 0x1

    .line 130
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 132
    .local v10, "floatVal":F
    const/4 v11, 0x0

    .line 133
    .local v11, "alternateUnit":Landroid/icu/impl/duration/TimeUnit;
    const/4 v12, 0x0

    .line 136
    .local v12, "alternateVal":F
    aget-object v13, v1, v8

    sget-object v14, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    if-ne v13, v14, :cond_a0

    .line 137
    float-to-double v13, v10

    .line 138
    .local v13, "fullSeconds":D
    move-object/from16 v16, v1

    move-object v15, v2

    .end local v1    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .local v15, "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .local v16, "outFields":[Landroid/icu/impl/duration/TimeUnit;
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 139
    .local v1, "intSeconds":D
    sub-double v17, v13, v1

    const-wide v19, 0x408f400000000000L    # 1000.0

    move-object/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "duration":Ljavax/xml/datatype/Duration;
    .end local v6    # "inPast":Z
    .local v21, "duration":Ljavax/xml/datatype/Duration;
    .local v22, "inPast":Z
    mul-double v5, v17, v19

    .line 140
    .local v5, "millis":D
    const-wide/16 v17, 0x0

    cmpl-double v17, v5, v17

    if-lez v17, :cond_a7

    .line 141
    sget-object v11, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    .line 142
    double-to-float v12, v5

    .line 143
    double-to-float v10, v1

    goto :goto_a7

    .line 136
    .end local v13    # "fullSeconds":D
    .end local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v21    # "duration":Ljavax/xml/datatype/Duration;
    .end local v22    # "inPast":Z
    .local v1, "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .local v5, "duration":Ljavax/xml/datatype/Duration;
    .restart local v6    # "inPast":Z
    :cond_a0
    move-object/from16 v16, v1

    move-object v15, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    .line 147
    .end local v1    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v5    # "duration":Ljavax/xml/datatype/Duration;
    .end local v6    # "inPast":Z
    .restart local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .restart local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v21    # "duration":Ljavax/xml/datatype/Duration;
    .restart local v22    # "inPast":Z
    :cond_a7
    :goto_a7
    if-nez v4, :cond_b0

    .line 148
    aget-object v1, v16, v8

    invoke-static {v10, v1}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v1

    .end local v4    # "p":Landroid/icu/impl/duration/Period;
    .local v1, "p":Landroid/icu/impl/duration/Period;
    goto :goto_b6

    .line 150
    .end local v1    # "p":Landroid/icu/impl/duration/Period;
    .restart local v4    # "p":Landroid/icu/impl/duration/Period;
    :cond_b0
    aget-object v1, v16, v8

    invoke-virtual {v4, v10, v1}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v1

    .line 153
    .end local v4    # "p":Landroid/icu/impl/duration/Period;
    .restart local v1    # "p":Landroid/icu/impl/duration/Period;
    :goto_b6
    if-eqz v11, :cond_be

    .line 154
    invoke-virtual {v1, v12, v11}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v1

    move-object v4, v1

    goto :goto_c7

    .line 153
    :cond_be
    move-object v4, v1

    goto :goto_c7

    .line 123
    .end local v9    # "n":Ljava/lang/Number;
    .end local v10    # "floatVal":F
    .end local v11    # "alternateUnit":Landroid/icu/impl/duration/TimeUnit;
    .end local v12    # "alternateVal":F
    .end local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v21    # "duration":Ljavax/xml/datatype/Duration;
    .end local v22    # "inPast":Z
    .local v1, "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .restart local v4    # "p":Landroid/icu/impl/duration/Period;
    .restart local v5    # "duration":Ljavax/xml/datatype/Duration;
    .restart local v6    # "inPast":Z
    :cond_c0
    move-object/from16 v16, v1

    move-object v15, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    .line 122
    .end local v1    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v5    # "duration":Ljavax/xml/datatype/Duration;
    .end local v6    # "inPast":Z
    .restart local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .restart local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v21    # "duration":Ljavax/xml/datatype/Duration;
    .restart local v22    # "inPast":Z
    :goto_c7
    add-int/lit8 v8, v8, 0x1

    move-object v2, v15

    move-object/from16 v1, v16

    move-object/from16 v5, v21

    move/from16 v6, v22

    goto :goto_51

    .end local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v21    # "duration":Ljavax/xml/datatype/Duration;
    .end local v22    # "inPast":Z
    .restart local v1    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .restart local v5    # "duration":Ljavax/xml/datatype/Duration;
    .restart local v6    # "inPast":Z
    :cond_d1
    move-object/from16 v16, v1

    move-object v15, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    .line 159
    .end local v1    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .end local v2    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .end local v5    # "duration":Ljavax/xml/datatype/Duration;
    .end local v6    # "inPast":Z
    .end local v8    # "i":I
    .restart local v15    # "inFields":[Ljavax/xml/datatype/DatatypeConstants$Field;
    .restart local v16    # "outFields":[Landroid/icu/impl/duration/TimeUnit;
    .restart local v21    # "duration":Ljavax/xml/datatype/Duration;
    .restart local v22    # "inPast":Z
    if-nez v4, :cond_e1

    .line 161
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/duration/BasicDurationFormat;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_e1
    if-eqz v22, :cond_e8

    .line 164
    invoke-virtual {v4}, Landroid/icu/impl/duration/Period;->inPast()Landroid/icu/impl/duration/Period;

    move-result-object v1

    .end local v4    # "p":Landroid/icu/impl/duration/Period;
    .local v1, "p":Landroid/icu/impl/duration/Period;
    goto :goto_ec

    .line 166
    .end local v1    # "p":Landroid/icu/impl/duration/Period;
    .restart local v4    # "p":Landroid/icu/impl/duration/Period;
    :cond_e8
    invoke-virtual {v4}, Landroid/icu/impl/duration/Period;->inFuture()Landroid/icu/impl/duration/Period;

    move-result-object v1

    .line 171
    .end local v4    # "p":Landroid/icu/impl/duration/Period;
    .restart local v1    # "p":Landroid/icu/impl/duration/Period;
    :goto_ec
    iget-object v2, v0, Landroid/icu/impl/duration/BasicDurationFormat;->pformatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v2, v1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist formatDurationFrom(JJ)Ljava/lang/String;
    .registers 6
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    .line 71
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatDurationFromNow(J)Ljava/lang/String;
    .registers 4
    .param p1, "duration"    # J

    .line 78
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1, p2}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .param p1, "targetDate"    # Ljava/util/Date;

    .line 85
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormat;->formatter:Landroid/icu/impl/duration/DurationFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DurationFormatter;->formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
