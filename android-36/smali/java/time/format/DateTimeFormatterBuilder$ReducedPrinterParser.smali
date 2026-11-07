.class final Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final greylist-max-o BASE_DATE:Ljava/time/LocalDate;


# instance fields
.field private final greylist-max-o baseDate:Ljava/time/chrono/ChronoLocalDate;

.field private final greylist-max-o baseValue:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Zl0c7qpNedPhcsUJM8Tw2o1vZLw(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->lambda$setValue$0(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3001
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 3017
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p4    # "baseValue":I
    .end local p5    # "baseDate":Ljava/time/chrono/ChronoLocalDate;
    .local v1, "field":Ljava/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v4, "baseValue":I
    .local v5, "baseDate":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    .line 3018
    const/4 p1, 0x1

    if-lt v2, p1, :cond_7f

    const/16 p2, 0xa

    if-gt v2, p2, :cond_7f

    .line 3021
    if-lt v3, p1, :cond_66

    if-gt v3, p2, :cond_66

    .line 3024
    if-lt v3, v2, :cond_43

    .line 3028
    if-nez v5, :cond_42

    .line 3029
    invoke-interface {v1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object p1

    int-to-long p2, v4

    invoke-virtual {p1, p2, p3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 3032
    int-to-long p1, v4

    sget-object p3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    aget-wide p3, p3, v3

    add-long/2addr p1, p3

    const-wide/32 p3, 0x7fffffff

    cmp-long p1, p1, p3

    if-gtz p1, :cond_32

    goto :goto_42

    .line 3033
    :cond_32
    new-instance p1, Ljava/time/DateTimeException;

    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3030
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3036
    :cond_42
    :goto_42
    return-void

    .line 3025
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3022
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3019
    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The minWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V
    .registers 13
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I

    .line 3051
    sget-object v4, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "minWidth":I
    .end local p3    # "maxWidth":I
    .end local p6    # "subsequentWidth":I
    .local v1, "field":Ljava/time/temporal/TemporalField;
    .local v2, "minWidth":I
    .local v3, "maxWidth":I
    .local v5, "subsequentWidth":I
    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    .line 3052
    iput p4, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 3053
    iput-object p5, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    .line 3054
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;ILjava/time/format/DateTimeFormatterBuilder-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-void
.end method

.method private synthetic blacklist lambda$setValue$0(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "initialValue"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I
    .param p6, "_unused"    # Ljava/time/chrono/Chronology;

    .line 3087
    invoke-virtual/range {p0 .. p5}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    .line 3088
    return-void
.end method


# virtual methods
.method greylist-max-o getValue(Ljava/time/format/DateTimePrintContext;J)J
    .registers 11
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 3058
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3059
    .local v0, "absValue":J
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 3060
    .local v2, "baseValue":I
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v3, :cond_1e

    .line 3061
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    invoke-static {v3}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v3

    .line 3062
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 3064
    .end local v3    # "chrono":Ljava/time/chrono/Chronology;
    :cond_1e
    int-to-long v3, v2

    cmp-long v3, p2, v3

    if-ltz v3, :cond_38

    int-to-long v3, v2

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v5, v5, v6

    add-long/2addr v3, v5

    cmp-long v3, p2, v3

    if-gez v3, :cond_38

    .line 3066
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v3, v3, v4

    rem-long v3, v0, v3

    return-wide v3

    .line 3069
    :cond_38
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget-wide v3, v3, v4

    rem-long v3, v0, v3

    return-wide v3
.end method

.method greylist-max-o isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 3
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 3141
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3142
    const/4 v0, 0x0

    return v0

    .line 3144
    :cond_8
    invoke-super {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .registers 21
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 3074
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 3075
    .local v0, "baseValue":I
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_28

    .line 3076
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    .line 3077
    .local v1, "chrono":Ljava/time/chrono/Chronology;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 3080
    move-wide/from16 v5, p2

    .line 3081
    .local v5, "initialValue":J
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser$$ExternalSyntheticLambda0;-><init>(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;Ljava/time/format/DateTimeParseContext;JII)V

    invoke-virtual {v4, v2}, Ljava/time/format/DateTimeParseContext;->addChronoChangedListener(Ljava/util/function/Consumer;)V

    goto :goto_2a

    .line 3075
    .end local v1    # "chrono":Ljava/time/chrono/Chronology;
    .end local v5    # "initialValue":J
    :cond_28
    move-object/from16 v4, p1

    .line 3090
    :goto_2a
    sub-int v1, p5, p4

    .line 3091
    .local v1, "parseLen":I
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    if-ne v1, v2, :cond_51

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_51

    .line 3092
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[J

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget-wide v5, v2, v5

    .line 3093
    .local v5, "range":J
    int-to-long v7, v0

    rem-long/2addr v7, v5

    .line 3094
    .local v7, "lastPart":J
    int-to-long v9, v0

    sub-long/2addr v9, v7

    .line 3095
    .local v9, "basePart":J
    if-lez v0, :cond_45

    .line 3096
    add-long v11, v9, p2

    .end local p2    # "value":J
    .local v11, "value":J
    goto :goto_47

    .line 3098
    .end local v11    # "value":J
    .restart local p2    # "value":J
    :cond_45
    sub-long v11, v9, p2

    .line 3100
    .end local p2    # "value":J
    .restart local v11    # "value":J
    :goto_47
    int-to-long v13, v0

    cmp-long v2, v11, v13

    if-gez v2, :cond_4f

    .line 3101
    add-long/2addr v11, v5

    move-wide v6, v11

    goto :goto_53

    .line 3100
    :cond_4f
    move-wide v6, v11

    goto :goto_53

    .line 3104
    .end local v5    # "range":J
    .end local v7    # "lastPart":J
    .end local v9    # "basePart":J
    .end local v11    # "value":J
    .restart local p2    # "value":J
    :cond_51
    move-wide/from16 v6, p2

    .end local p2    # "value":J
    .local v6, "value":J
    :goto_53
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 3150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3149
    return-object v0
.end method

.method bridge synthetic blacklist withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2

    .line 2997
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 10

    .line 3114
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 3115
    return-object p0

    .line 3117
    :cond_6
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    const/4 v8, -0x1

    invoke-direct/range {v2 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v2
.end method

.method bridge synthetic blacklist withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2997
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .registers 9
    .param p1, "subsequentWidth"    # I

    .line 3128
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/ChronoLocalDate;

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    invoke-direct/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
