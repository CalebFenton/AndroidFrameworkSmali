.class Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final greylist-max-o EXCEED_POINTS:[J


# instance fields
.field final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field final greylist-max-o maxWidth:I

.field final greylist-max-o minWidth:I

.field private final greylist-max-o signStyle:Ljava/time/format/SignStyle;

.field final greylist-max-o subsequentWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsignStyle(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;
    .registers 1

    iget-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2718
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_a
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .line 2746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2748
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2749
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2750
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2751
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2752
    const/4 v0, 0x0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2753
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2767
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2768
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2769
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2770
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2771
    iput p5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2772
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2798
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 2799
    .local v0, "valueLong":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 2800
    const/4 v1, 0x0

    return v1

    .line 2802
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Ljava/time/format/DateTimePrintContext;J)J

    move-result-wide v1

    .line 2803
    .local v1, "value":J
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    .line 2804
    .local v3, "decimalStyle":Ljava/time/format/DecimalStyle;
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v1, v4

    if-nez v4, :cond_1f

    const-string v4, "9223372036854775808"

    goto :goto_27

    :cond_1f
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2805
    .local v4, "str":Ljava/lang/String;
    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v7, " cannot be printed as the value "

    const-string v8, "Field "

    if-gt v5, v6, :cond_c1

    .line 2810
    invoke-virtual {v3, v4}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2812
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_6b

    .line 2813
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$2;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v6}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_ee

    goto :goto_6a

    .line 2820
    :pswitch_4b
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 2815
    :pswitch_53
    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_6a

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget-wide v5, v5, v6

    cmp-long v5, v1, v5

    if-ltz v5, :cond_6a

    .line 2816
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2821
    :cond_6a
    :goto_6a
    goto :goto_a8

    .line 2824
    :cond_6b
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$2;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v6}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_f6

    goto :goto_a8

    .line 2831
    :pswitch_79
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be negative according to the SignStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2828
    :pswitch_a0
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2829
    nop

    .line 2836
    :goto_a8
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a9
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_bc

    .line 2837
    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2836
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 2839
    .end local v5    # "i":I
    :cond_bc
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    const/4 v5, 0x1

    return v5

    .line 2806
    :cond_c1
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds the maximum print width of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4b
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_79
    .end packed-switch
.end method

.method greylist-max-o getValue(Ljava/time/format/DateTimePrintContext;J)J
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .line 2851
    return-wide p2
.end method

.method greylist-max-o isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 2862
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_16

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 27
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2868
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2869
    .local v6, "length":I
    if-ne v1, v6, :cond_c

    .line 2870
    not-int v2, v1

    return v2

    .line 2872
    :cond_c
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2873
    .local v7, "sign":C
    const/4 v2, 0x0

    .line 2874
    .local v2, "negative":Z
    const/4 v3, 0x0

    .line 2875
    .local v3, "positive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-ne v7, v4, :cond_3c

    .line 2876
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_2c

    move v10, v8

    goto :goto_2d

    :cond_2c
    move v10, v5

    :goto_2d
    invoke-virtual {v4, v8, v9, v10}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_35

    .line 2877
    not-int v4, v1

    return v4

    .line 2879
    :cond_35
    const/4 v3, 0x1

    .line 2880
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    .end local p3    # "position":I
    .local v1, "position":I
    goto :goto_75

    .line 2881
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v4

    if-ne v7, v4, :cond_64

    .line 2882
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_54

    move v10, v8

    goto :goto_55

    :cond_54
    move v10, v5

    :goto_55
    invoke-virtual {v4, v5, v9, v10}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 2883
    not-int v4, v1

    return v4

    .line 2885
    :cond_5d
    const/4 v2, 0x1

    .line 2886
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    .end local p3    # "position":I
    .restart local v1    # "position":I
    goto :goto_75

    .line 2888
    .end local v1    # "position":I
    .restart local p3    # "position":I
    :cond_64
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v9, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    if-ne v4, v9, :cond_72

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 2889
    not-int v4, v1

    return v4

    .line 2892
    :cond_72
    move v4, v1

    move v9, v2

    move v10, v3

    .end local v2    # "negative":Z
    .end local v3    # "positive":Z
    .end local p3    # "position":I
    .local v4, "position":I
    .local v9, "negative":Z
    .local v10, "positive":Z
    :goto_75
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_83

    :cond_81
    iget v8, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2893
    .local v8, "effMinWidth":I
    :cond_83
    add-int v11, v4, v8

    .line 2894
    .local v11, "minEndPos":I
    if-le v11, v6, :cond_89

    .line 2895
    not-int v1, v4

    return v1

    .line 2897
    :cond_89
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_99

    :cond_96
    const/16 v1, 0x9

    goto :goto_9b

    :cond_99
    :goto_99
    iget v1, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_9b
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2898
    .local v1, "effMaxWidth":I
    const-wide/16 v2, 0x0

    .line 2899
    .local v2, "total":J
    const/4 v5, 0x0

    .line 2900
    .local v5, "totalBig":Ljava/math/BigInteger;
    move v12, v4

    .line 2901
    .local v12, "pos":I
    const/4 v13, 0x0

    move/from16 v21, v12

    move v12, v1

    move/from16 v1, v21

    .local v1, "pos":I
    .local v12, "effMaxWidth":I
    .local v13, "pass":I
    :goto_ac
    const/4 v14, 0x2

    if-ge v13, v14, :cond_130

    .line 2902
    add-int v14, v1, v12

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2903
    .local v14, "maxEndPos":I
    :goto_b5
    if-ge v1, v14, :cond_108

    .line 2904
    add-int/lit8 v15, v1, 0x1

    move/from16 v16, v6

    move-object/from16 v6, p2

    .end local v1    # "pos":I
    .end local v6    # "length":I
    .local v15, "pos":I
    .local v16, "length":I
    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2905
    .local v1, "ch":C
    move-wide/from16 v17, v2

    .end local v2    # "total":J
    .local v17, "total":J
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v2

    .line 2906
    .local v2, "digit":I
    if-gez v2, :cond_d6

    .line 2907
    add-int/lit8 v15, v15, -0x1

    .line 2908
    if-ge v15, v11, :cond_d3

    .line 2909
    not-int v3, v4

    return v3

    .line 2908
    :cond_d3
    move-object v3, v5

    move v1, v15

    goto :goto_10d

    .line 2913
    :cond_d6
    sub-int v3, v15, v4

    move/from16 p3, v1

    .end local v1    # "ch":C
    .local p3, "ch":C
    const/16 v1, 0x12

    if-le v3, v1, :cond_f7

    .line 2914
    if-nez v5, :cond_e4

    .line 2915
    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 2917
    :cond_e4
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v5

    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .local v3, "totalBig":Ljava/math/BigInteger;
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-wide/from16 v2, v17

    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v5    # "totalBig":Ljava/math/BigInteger;
    goto :goto_104

    .line 2919
    :cond_f7
    const-wide/16 v19, 0xa

    mul-long v19, v19, v17

    move-object v3, v5

    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    int-to-long v5, v2

    add-long v5, v19, v5

    move-wide/from16 v21, v5

    move-object v5, v3

    move-wide/from16 v2, v21

    .line 2921
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v17    # "total":J
    .end local p3    # "ch":C
    .local v2, "total":J
    .restart local v5    # "totalBig":Ljava/math/BigInteger;
    :goto_104
    move v1, v15

    move/from16 v6, v16

    goto :goto_b5

    .line 2903
    .end local v15    # "pos":I
    .end local v16    # "length":I
    .local v1, "pos":I
    .restart local v6    # "length":I
    :cond_108
    move-wide/from16 v17, v2

    move-object v3, v5

    move/from16 v16, v6

    .line 2922
    .end local v2    # "total":J
    .end local v5    # "totalBig":Ljava/math/BigInteger;
    .end local v6    # "length":I
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v16    # "length":I
    .restart local v17    # "total":J
    :goto_10d
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_12b

    if-nez v13, :cond_12b

    .line 2924
    sub-int v2, v1, v4

    .line 2925
    .local v2, "parseLen":I
    iget v5, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v5, v2, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2926
    move v1, v4

    .line 2927
    const-wide/16 v5, 0x0

    .line 2928
    .end local v17    # "total":J
    .local v5, "total":J
    const/4 v2, 0x0

    .line 2901
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v14    # "maxEndPos":I
    .local v2, "totalBig":Ljava/math/BigInteger;
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v21, v5

    move-object v5, v2

    move-wide/from16 v2, v21

    move/from16 v6, v16

    goto :goto_ac

    .line 2933
    .end local v2    # "totalBig":Ljava/math/BigInteger;
    .end local v5    # "total":J
    .end local v13    # "pass":I
    .restart local v3    # "totalBig":Ljava/math/BigInteger;
    .restart local v17    # "total":J
    :cond_12b
    move v5, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto :goto_137

    .line 2901
    .end local v3    # "totalBig":Ljava/math/BigInteger;
    .end local v16    # "length":I
    .end local v17    # "total":J
    .local v2, "total":J
    .local v5, "totalBig":Ljava/math/BigInteger;
    .restart local v6    # "length":I
    .restart local v13    # "pass":I
    :cond_130
    move/from16 v16, v6

    .end local v6    # "length":I
    .restart local v16    # "length":I
    move-object/from16 v21, v5

    move v5, v1

    move-object/from16 v1, v21

    .line 2933
    .end local v13    # "pass":I
    .local v1, "totalBig":Ljava/math/BigInteger;
    .local v5, "pos":I
    :goto_137
    if-eqz v9, :cond_168

    .line 2934
    if-eqz v1, :cond_154

    .line 2935
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 2936
    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    .line 2938
    :cond_14d
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    move-object v6, v1

    move-wide v13, v2

    goto :goto_188

    .line 2940
    :cond_154
    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-nez v6, :cond_164

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_164

    .line 2941
    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    .line 2943
    :cond_164
    neg-long v2, v2

    move-object v6, v1

    move-wide v13, v2

    goto :goto_188

    .line 2945
    :cond_168
    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v13, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    if-ne v6, v13, :cond_186

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_186

    .line 2946
    sub-int v6, v5, v4

    .line 2947
    .local v6, "parseLen":I
    if-eqz v10, :cond_180

    .line 2948
    iget v13, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-gt v6, v13, :cond_186

    .line 2949
    add-int/lit8 v13, v4, -0x1

    not-int v13, v13

    return v13

    .line 2952
    :cond_180
    iget v13, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-le v6, v13, :cond_186

    .line 2953
    not-int v13, v4

    return v13

    .line 2957
    .end local v6    # "parseLen":I
    :cond_186
    move-object v6, v1

    move-wide v13, v2

    .end local v1    # "totalBig":Ljava/math/BigInteger;
    .end local v2    # "total":J
    .local v6, "totalBig":Ljava/math/BigInteger;
    .local v13, "total":J
    :goto_188
    if-eqz v6, :cond_1a5

    .line 2958
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_19a

    .line 2960
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 2961
    add-int/lit8 v5, v5, -0x1

    .line 2963
    :cond_19a
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v2

    return v2

    .line 2965
    :cond_1a5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    .end local v13    # "total":J
    .restart local v2    # "total":J
    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v13

    return v13
.end method

.method greylist-max-o setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .line 2978
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .end local p1    # "context":Ljava/time/format/DateTimeParseContext;
    .end local p2    # "value":J
    .end local p4    # "errorPos":I
    .end local p5    # "successPos":I
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    .local v2, "value":J
    .local v4, "errorPos":I
    .local v5, "successPos":I
    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2983
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "Value("

    if-ne v0, v1, :cond_2d

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_2d

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2986
    :cond_2d
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_5d

    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2989
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 9

    .line 2780
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 2781
    return-object p0

    .line 2783
    :cond_6
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v2
.end method

.method greylist-max-o withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 8
    .param p1, "subsequentWidth"    # I

    .line 2793
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0
.end method
