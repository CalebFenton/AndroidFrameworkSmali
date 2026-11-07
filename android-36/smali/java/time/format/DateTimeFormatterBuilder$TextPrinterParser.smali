.class final Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
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
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field private volatile greylist-max-o numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final greylist-max-o provider:Ljava/time/format/DateTimeTextProvider;

.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;
    .param p3, "provider"    # Ljava/time/format/DateTimeTextProvider;

    .line 3389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3391
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 3392
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3393
    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    .line 3394
    return-void
.end method

.method private greylist-max-o numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 6

    .line 3460
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_12

    .line 3461
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    const/16 v2, 0x13

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 3463
    :cond_12
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 13
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3398
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3399
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3400
    const/4 v1, 0x0

    return v1

    .line 3403
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/Chronology;

    .line 3404
    .local v3, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v3, :cond_33

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v3, v1, :cond_20

    goto :goto_33

    .line 3407
    :cond_20
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    goto :goto_45

    .line 3405
    .end local v1    # "text":Ljava/lang/String;
    :cond_33
    :goto_33
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3409
    .restart local v1    # "text":Ljava/lang/String;
    :goto_45
    if-nez v1, :cond_50

    .line 3410
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v2

    return v2

    .line 3412
    :cond_50
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    const/4 v2, 0x1

    return v2
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 18
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "parseText"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3418
    move/from16 v4, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 3419
    .local v6, "length":I
    if-ltz v4, :cond_e3

    if-gt v4, v6, :cond_e3

    .line 3422
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move-object v7, v0

    .line 3423
    .local v7, "style":Ljava/time/format/TextStyle;
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v8

    .line 3425
    .local v8, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v8, :cond_2e

    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v8, v0, :cond_20

    goto :goto_2e

    .line 3428
    :cond_20
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v7, v2}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_3b

    .line 3426
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2e
    :goto_2e
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    .line 3430
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_3b
    if-eqz v9, :cond_d8

    .line 3431
    :goto_3d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3432
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 3433
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3434
    .local v1, "itText":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v11, v1

    .end local v1    # "itText":Ljava/lang/String;
    .local v11, "itText":Ljava/lang/String;
    if-eqz v2, :cond_7a

    .line 3435
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3437
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "itText":Ljava/lang/String;
    :cond_7a
    move/from16 v4, p3

    goto :goto_3d

    .line 3438
    :cond_7d
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v0, v1, :cond_ce

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 3440
    invoke-interface {v8}, Ljava/time/chrono/Chronology;->eras()Ljava/util/List;

    move-result-object v10

    .line 3441
    .local v10, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_91
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/time/chrono/Era;

    .line 3442
    .local v12, "era":Ljava/time/chrono/Era;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3443
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    move-object v13, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v13, "name":Ljava/lang/String;
    if-eqz v2, :cond_c8

    .line 3444
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v12}, Ljava/time/chrono/Era;->getValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3443
    :cond_c8
    move/from16 v4, p3

    .line 3446
    .end local v12    # "era":Ljava/time/chrono/Era;
    .end local v13    # "name":Ljava/lang/String;
    goto :goto_91

    .line 3441
    :cond_cb
    move/from16 v4, p3

    goto :goto_d0

    .line 3438
    .end local v10    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    :cond_ce
    move/from16 v4, p3

    .line 3448
    :goto_d0
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 3449
    not-int v1, v4

    return v1

    .line 3452
    :cond_d8
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v1, p1, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 3419
    .end local v7    # "style":Ljava/time/format/TextStyle;
    .end local v8    # "chrono":Ljava/time/chrono/Chronology;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_e3
    move-object/from16 v3, p2

    .line 3420
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3468
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_22

    .line 3469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3471
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
