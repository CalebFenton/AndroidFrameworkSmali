.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocalizedOffsetIdPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o style:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .line 3951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3952
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    .line 3953
    return-void
.end method

.method private static greylist-max-o appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "t"    # I

    .line 3956
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3956
    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3962
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3963
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3964
    const/4 v1, 0x0

    return v1

    .line 3969
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getGMTZeroFormatString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3970
    .local v1, "gmtText":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 3971
    const-string v1, "GMT"

    .line 3973
    :cond_16
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 3975
    .local v2, "totalSecs":I
    if-eqz v2, :cond_83

    .line 3976
    div-int/lit16 v3, v2, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3977
    .local v3, "absHours":I
    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3978
    .local v4, "absMinutes":I
    rem-int/lit8 v5, v2, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3979
    .local v5, "absSeconds":I
    if-gez v2, :cond_3e

    const-string v6, "-"

    goto :goto_40

    :cond_3e
    const-string v6, "+"

    :goto_40
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const/16 v8, 0x3a

    if-ne v6, v7, :cond_5d

    .line 3981
    invoke-static {p2, v3}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3982
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3983
    invoke-static {p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3984
    if-eqz v5, :cond_83

    .line 3985
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3986
    invoke-static {p2, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 3989
    :cond_5d
    const/16 v6, 0xa

    if-lt v3, v6, :cond_69

    .line 3990
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3992
    :cond_69
    rem-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3993
    if-nez v4, :cond_75

    if-eqz v5, :cond_83

    .line 3994
    :cond_75
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3995
    invoke-static {p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 3996
    if-eqz v5, :cond_83

    .line 3997
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3998
    invoke-static {p2, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->appendHMS(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 4003
    .end local v3    # "absHours":I
    .end local v4    # "absMinutes":I
    .end local v5    # "absSeconds":I
    :cond_83
    :goto_83
    const/4 v3, 0x1

    return v3
.end method

.method greylist-max-o getDigit(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I

    .line 4007
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4008
    .local v0, "c":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_10

    const/16 v1, 0x39

    if-le v0, v1, :cond_d

    goto :goto_10

    .line 4011
    :cond_d
    add-int/lit8 v1, v0, -0x30

    return v1

    .line 4009
    :cond_10
    :goto_10
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 23
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4016
    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v3, p3

    .line 4017
    .local v3, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 4021
    .local v8, "end":I
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getGMTZeroFormatString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 4022
    .local v1, "gmtText":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 4023
    const-string v1, "GMT"

    move-object v4, v1

    goto :goto_19

    .line 4022
    :cond_18
    move-object v4, v1

    .line 4025
    .end local v1    # "gmtText":Ljava/lang/String;
    .local v4, "gmtText":Ljava/lang/String;
    :goto_19
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    move-object v9, v2

    move-object v10, v4

    .end local v4    # "gmtText":Ljava/lang/String;
    .local v10, "gmtText":Ljava/lang/String;
    if-nez v5, :cond_2c

    .line 4026
    not-int v1, v7

    return v1

    .line 4028
    :cond_2c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v3, v1

    .line 4030
    .end local v3    # "pos":I
    .local v6, "pos":I
    const/4 v11, 0x0

    .line 4031
    .local v11, "negative":I
    if-ne v6, v8, :cond_41

    .line 4032
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 4034
    :cond_41
    move v5, v7

    invoke-interface {v9, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 4035
    .local v7, "sign":C
    const/16 v1, 0x2b

    if-ne v7, v1, :cond_4d

    .line 4036
    const/4 v1, 0x1

    move v11, v1

    .end local v11    # "negative":I
    .local v1, "negative":I
    goto :goto_53

    .line 4037
    .end local v1    # "negative":I
    .restart local v11    # "negative":I
    :cond_4d
    const/16 v1, 0x2d

    if-ne v7, v1, :cond_153

    .line 4038
    const/4 v1, -0x1

    move v11, v1

    .line 4042
    :goto_53
    add-int/lit8 v6, v6, 0x1

    .line 4043
    const/4 v1, 0x0

    .line 4044
    .local v1, "h":I
    const/4 v2, 0x0

    .line 4045
    .local v2, "m":I
    const/4 v3, 0x0

    .line 4046
    .local v3, "s":I
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v12, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const/16 v13, 0x3a

    if-ne v4, v12, :cond_c7

    .line 4047
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0, v9, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 4048
    .local v6, "h1":I
    add-int/lit8 v12, v4, 0x1

    .end local v4    # "pos":I
    .local v12, "pos":I
    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 4049
    .local v4, "h2":I
    if-ltz v6, :cond_c5

    if-ltz v4, :cond_c5

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "pos":I
    .local v14, "pos":I
    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v13, :cond_7a

    move v12, v14

    goto :goto_c5

    .line 4052
    :cond_7a
    mul-int/lit8 v12, v6, 0xa

    add-int/2addr v12, v4

    .line 4053
    .end local v1    # "h":I
    .local v12, "h":I
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "pos":I
    .local v1, "pos":I
    invoke-virtual {v0, v9, v14}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 4054
    .local v14, "m1":I
    add-int/lit8 v15, v1, 0x1

    .end local v1    # "pos":I
    .local v15, "pos":I
    invoke-virtual {v0, v9, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4055
    .local v1, "m2":I
    if-ltz v14, :cond_c1

    if-gez v1, :cond_90

    move/from16 v17, v1

    goto :goto_c3

    .line 4058
    :cond_90
    mul-int/lit8 v16, v14, 0xa

    add-int v2, v16, v1

    .line 4059
    add-int/lit8 v13, v15, 0x2

    if-ge v13, v8, :cond_b9

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    move/from16 v17, v1

    const/16 v1, 0x3a

    .end local v1    # "m2":I
    .local v17, "m2":I
    if-ne v13, v1, :cond_bb

    .line 4060
    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v0, v9, v1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4061
    .local v1, "s1":I
    add-int/lit8 v13, v15, 0x2

    invoke-virtual {v0, v9, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 4062
    .local v13, "s2":I
    if-ltz v1, :cond_bb

    if-ltz v13, :cond_bb

    .line 4063
    mul-int/lit8 v16, v1, 0xa

    add-int v3, v16, v13

    .line 4064
    add-int/lit8 v15, v15, 0x3

    goto :goto_bb

    .line 4059
    .end local v13    # "s2":I
    .end local v17    # "m2":I
    .local v1, "m2":I
    :cond_b9
    move/from16 v17, v1

    .line 4067
    .end local v1    # "m2":I
    .end local v4    # "h2":I
    .end local v6    # "h1":I
    .end local v14    # "m1":I
    :cond_bb
    :goto_bb
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto/16 :goto_13b

    .line 4055
    .restart local v1    # "m2":I
    .restart local v4    # "h2":I
    .restart local v6    # "h1":I
    .restart local v14    # "m1":I
    :cond_c1
    move/from16 v17, v1

    .line 4056
    .end local v1    # "m2":I
    .restart local v17    # "m2":I
    :goto_c3
    not-int v1, v5

    return v1

    .line 4050
    .end local v14    # "m1":I
    .end local v15    # "pos":I
    .end local v17    # "m2":I
    .local v1, "h":I
    .local v12, "pos":I
    :cond_c5
    :goto_c5
    not-int v13, v5

    return v13

    .line 4068
    .end local v4    # "h2":I
    .end local v12    # "pos":I
    .local v6, "pos":I
    :cond_c7
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "pos":I
    .restart local v15    # "pos":I
    invoke-virtual {v0, v9, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v12

    .line 4069
    .end local v1    # "h":I
    .local v12, "h":I
    if-gez v12, :cond_d1

    .line 4070
    not-int v1, v5

    return v1

    .line 4072
    :cond_d1
    if-ge v15, v8, :cond_137

    .line 4073
    invoke-virtual {v0, v9, v15}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4074
    .local v1, "h2":I
    if-ltz v1, :cond_df

    .line 4075
    mul-int/lit8 v4, v12, 0xa

    add-int/2addr v4, v1

    .line 4076
    .end local v12    # "h":I
    .local v4, "h":I
    add-int/lit8 v15, v15, 0x1

    move v12, v4

    .line 4078
    .end local v4    # "h":I
    .restart local v12    # "h":I
    :cond_df
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v8, :cond_132

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_132

    .line 4079
    add-int/lit8 v4, v15, 0x2

    if-ge v4, v8, :cond_132

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_132

    .line 4080
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 4081
    .local v4, "m1":I
    add-int/lit8 v6, v15, 0x2

    invoke-virtual {v0, v9, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 4082
    .local v6, "m2":I
    if-ltz v4, :cond_132

    if-ltz v6, :cond_132

    .line 4083
    mul-int/lit8 v13, v4, 0xa

    add-int v2, v13, v6

    .line 4084
    add-int/lit8 v15, v15, 0x3

    .line 4085
    add-int/lit8 v13, v15, 0x2

    if-ge v13, v8, :cond_132

    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_132

    .line 4086
    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v0, v9, v13}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 4087
    .local v13, "s1":I
    add-int/lit8 v14, v15, 0x2

    invoke-virtual {v0, v9, v14}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->getDigit(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 4088
    .local v14, "s2":I
    if-ltz v13, :cond_132

    if-ltz v14, :cond_132

    .line 4089
    mul-int/lit8 v16, v13, 0xa

    add-int v3, v16, v14

    .line 4090
    add-int/lit8 v15, v15, 0x3

    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto :goto_13b

    .line 4098
    .end local v1    # "h2":I
    .end local v4    # "m1":I
    .end local v6    # "m2":I
    .end local v13    # "s1":I
    .end local v14    # "s2":I
    :cond_132
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    goto :goto_13b

    .line 4072
    :cond_137
    move v13, v3

    move v14, v12

    move v6, v15

    move v12, v2

    .line 4098
    .end local v2    # "m":I
    .end local v3    # "s":I
    .end local v15    # "pos":I
    .local v6, "pos":I
    .local v12, "m":I
    .local v13, "s":I
    .local v14, "h":I
    :goto_13b
    int-to-long v1, v11

    int-to-long v3, v14

    const-wide/16 v15, 0xe10

    mul-long/2addr v3, v15

    move-wide v15, v1

    int-to-long v0, v12

    const-wide/16 v17, 0x3c

    mul-long v0, v0, v17

    add-long/2addr v3, v0

    int-to-long v0, v13

    add-long/2addr v3, v0

    mul-long/2addr v3, v15

    .line 4099
    .local v3, "offsetSecs":J
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    .line 4040
    .end local v3    # "offsetSecs":J
    .end local v12    # "m":I
    .end local v13    # "s":I
    .end local v14    # "h":I
    :cond_153
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalizedOffset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;->style:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
