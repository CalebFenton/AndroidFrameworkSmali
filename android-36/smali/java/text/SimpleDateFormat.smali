.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o GMT:Ljava/lang/String; = "GMT"

.field private static final greylist-max-o MILLIS_PER_MINUTE:I = 0xea60

.field private static final greylist-max-o PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final greylist-max-o PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

.field private static final blacklist REST_OF_STYLES:[I

.field private static final greylist-max-o TAG_QUOTE_ASCII_CHAR:I = 0x64

.field private static final greylist-max-o TAG_QUOTE_CHARS:I = 0x65

.field private static final greylist-max-o cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient greylist-max-o compiledPattern:[C

.field private greylist-max-o defaultCenturyStart:Ljava/util/Date;

.field private transient greylist-max-o defaultCenturyStartYear:I

.field private greylist-max-o formatData:Ljava/text/DateFormatSymbols;

.field private transient greylist-max-o hasFollowingMinusSign:Z

.field private greylist-max-o locale:Ljava/util/Locale;

.field private transient greylist-max-o minusSign:C

.field private transient greylist-max-o originalNumberFormat:Ljava/text/NumberFormat;

.field private transient greylist-max-o originalNumberPattern:Ljava/lang/String;

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o serialVersionOnStream:I

.field private transient blacklist timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

.field transient greylist-max-o useDateFormatSymbols:Z

.field private transient greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 478
    nop

    .line 589
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    .line 1165
    const/16 v0, 0x1a

    new-array v2, v0, [I

    fill-array-data v2, :array_be

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    .line 1198
    new-array v2, v0, [I

    fill-array-data v2, :array_f6

    sput-object v2, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    .line 1231
    new-array v0, v0, [Ljava/text/DateFormat$Field;

    sget-object v2, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    sget-object v2, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    .line 3015
    const v0, 0x8001

    const v1, 0x8002

    filled-new-array {v0, v3, v1}, [I

    move-result-object v0

    sput-object v0, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    return-void

    nop

    :array_be
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0xf
        0x11
        0x3e8
        0xf
        0x2
        0x7
        0x9
        0x9
    .end array-data

    :array_f6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x1
        0x9
        0x11
        0x2
        0x9
        0xe
        0xe
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 633
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V

    .line 635
    return-void
.end method

.method constructor greylist-max-o <init>(IILjava/util/Locale;)V
    .registers 5
    .param p1, "timeStyle"    # I
    .param p2, "dateStyle"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 645
    invoke-static {p1, p2, p3}, Ljava/text/SimpleDateFormat;->getDateTimeFormat(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 646
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 685
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 686
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 723
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 504
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 523
    const/16 v1, 0x2d

    iput-char v1, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 529
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 724
    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    .line 728
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 729
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 730
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 731
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 732
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 733
    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 734
    return-void

    .line 725
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 701
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 504
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 523
    const/16 v0, 0x2d

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 702
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 706
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initializeCalendar(Ljava/util/Locale;)V

    .line 707
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 708
    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 709
    iput-object p2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    .line 710
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;->initialize(Ljava/util/Locale;)V

    .line 711
    return-void

    .line 703
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist applyPatternImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2928
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2929
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2930
    return-void
.end method

.method private greylist-max-o checkNegativeNumberExpression()V
    .registers 5

    .line 3094
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v0, v0, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_59

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 3095
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 3096
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 3097
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 3098
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 3100
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3103
    .local v1, "separatorIndex":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_53

    .line 3104
    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3105
    .local v2, "minusIndex":I
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    .line 3106
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v2, v3, :cond_53

    .line 3107
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    .line 3108
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    iput-char v3, p0, Ljava/text/SimpleDateFormat;->minusSign:C

    .line 3111
    .end local v2    # "minusIndex":I
    :cond_53
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->originalNumberPattern:Ljava/lang/String;

    .line 3113
    .end local v1    # "separatorIndex":I
    :cond_55
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->originalNumberFormat:Ljava/text/NumberFormat;

    .line 3115
    .end local v0    # "numberPattern":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method private greylist-max-o compile(Ljava/lang/String;)[C
    .registers 19
    .param p1, "pattern"    # Ljava/lang/String;

    .line 831
    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 832
    .local v1, "length":I
    const/4 v2, 0x0

    .line 833
    .local v2, "inQuote":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    .local v3, "compiledCode":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 841
    .local v4, "tmpBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 842
    .local v5, "count":I
    const/4 v6, -0x1

    .line 845
    .local v6, "lastTag":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12
    const/4 v8, 0x0

    if-ge v7, v1, :cond_124

    .line 846
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 848
    .local v9, "c":C
    const/16 v10, 0x80

    const/16 v11, 0x65

    const/16 v12, 0x27

    const/4 v13, 0x1

    if-ne v9, v12, :cond_89

    .line 851
    add-int/lit8 v14, v7, 0x1

    if-ge v14, v1, :cond_48

    .line 852
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 853
    if-ne v9, v12, :cond_48

    .line 854
    add-int/lit8 v7, v7, 0x1

    .line 855
    if-eqz v5, :cond_37

    .line 856
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 864
    const/4 v6, -0x1

    .line 865
    const/4 v5, 0x0

    .line 867
    :cond_37
    if-eqz v2, :cond_3d

    .line 868
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 870
    :cond_3d
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 872
    nop

    .line 845
    .end local v9    # "c":C
    :goto_44
    move/from16 v16, v13

    goto/16 :goto_120

    .line 875
    .restart local v9    # "c":C
    :cond_48
    if-nez v2, :cond_62

    .line 876
    if-eqz v5, :cond_51

    .line 877
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 885
    const/4 v6, -0x1

    .line 886
    const/4 v5, 0x0

    .line 888
    :cond_51
    if-nez v4, :cond_5a

    .line 889
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v8

    goto :goto_5d

    .line 891
    :cond_5a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 893
    :goto_5d
    const/4 v2, 0x1

    move/from16 v16, v13

    goto/16 :goto_120

    .line 895
    :cond_62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 896
    .local v12, "len":I
    if-ne v12, v13, :cond_7e

    .line 897
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 898
    .local v8, "ch":C
    if-ge v8, v10, :cond_75

    .line 899
    or-int/lit16 v10, v8, 0x6400

    int-to-char v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 901
    :cond_75
    const/16 v10, 0x6501

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    .end local v8    # "ch":C
    :goto_7d
    goto :goto_84

    .line 905
    :cond_7e
    invoke-static {v11, v12, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 906
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 908
    :goto_84
    const/4 v2, 0x0

    .line 910
    .end local v12    # "len":I
    move/from16 v16, v13

    goto/16 :goto_120

    .line 912
    :cond_89
    if-eqz v2, :cond_92

    .line 913
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    move/from16 v16, v13

    goto/16 :goto_120

    .line 916
    :cond_92
    const/16 v8, 0x7a

    const/16 v14, 0x61

    if-lt v9, v14, :cond_9e

    if-le v9, v8, :cond_9b

    goto :goto_9e

    :cond_9b
    move/from16 v16, v13

    goto :goto_a9

    :cond_9e
    :goto_9e
    const/16 v15, 0x5a

    move/from16 v16, v13

    const/16 v13, 0x41

    if-lt v9, v13, :cond_e1

    if-le v9, v15, :cond_a9

    goto :goto_e1

    .line 952
    :cond_a9
    :goto_a9
    const-string v8, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v10, v8

    .local v10, "tag":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_c2

    .line 956
    if-eq v6, v11, :cond_be

    if-ne v6, v10, :cond_b8

    goto :goto_be

    .line 961
    :cond_b8
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 969
    move v6, v10

    .line 970
    const/4 v5, 0x1

    goto :goto_120

    .line 957
    :cond_be
    :goto_be
    move v6, v10

    .line 958
    add-int/lit8 v5, v5, 0x1

    .line 959
    goto :goto_120

    .line 953
    :cond_c2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal pattern character \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 917
    .end local v10    # "tag":I
    :cond_e1
    :goto_e1
    if-eqz v5, :cond_e8

    .line 918
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 926
    const/4 v6, -0x1

    .line 927
    const/4 v5, 0x0

    .line 929
    :cond_e8
    if-ge v9, v10, :cond_f1

    .line 931
    or-int/lit16 v8, v9, 0x6400

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_120

    .line 936
    :cond_f1
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_f3
    if-ge v10, v1, :cond_109

    .line 937
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 938
    .local v11, "d":C
    if-eq v11, v12, :cond_109

    if-lt v11, v14, :cond_ff

    if-le v11, v8, :cond_109

    :cond_ff
    if-lt v11, v13, :cond_104

    if-gt v11, v15, :cond_104

    .line 939
    goto :goto_109

    .line 936
    .end local v11    # "d":C
    :cond_104
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x65

    goto :goto_f3

    .line 942
    :cond_109
    :goto_109
    sub-int v8, v10, v7

    const/16 v11, 0x65

    invoke-static {v11, v8, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 943
    :goto_110
    if-ge v7, v10, :cond_11c

    .line 944
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    add-int/lit8 v7, v7, 0x1

    goto :goto_110

    .line 946
    :cond_11c
    nop

    .end local v10    # "j":I
    add-int/lit8 v7, v7, -0x1

    .line 948
    nop

    .line 845
    .end local v9    # "c":C
    :goto_120
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_12

    .line 973
    .end local v7    # "i":I
    :cond_124
    if-nez v2, :cond_135

    .line 977
    if-eqz v5, :cond_12b

    .line 978
    invoke-static {v6, v5, v3}, Ljava/text/SimpleDateFormat;->encode(IILjava/lang/StringBuilder;)V

    .line 993
    :cond_12b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 994
    .local v7, "len":I
    new-array v9, v7, [C

    .line 995
    .local v9, "r":[C
    invoke-virtual {v3, v8, v7, v9, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 996
    return-object v9

    .line 974
    .end local v7    # "len":I
    .end local v9    # "r":[C
    :cond_135
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unterminated quote"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static greylist-max-o encode(IILjava/lang/StringBuilder;)V
    .registers 6
    .param p0, "tag"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .line 1003
    const/16 v0, 0x15

    if-ne p0, v0, :cond_21

    const/4 v0, 0x4

    if-ge p1, v0, :cond_8

    goto :goto_21

    .line 1004
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ISO 8601 format: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_21
    :goto_21
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2d

    .line 1007
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 1009
    :cond_2d
    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1011
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1013
    :goto_42
    return-void
.end method

.method private greylist-max-o format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;

    .line 1094
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1096
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v6

    .line 1098
    .local v6, "useDateFormatSymbols":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v1, v1

    if-ge v0, v1, :cond_52

    .line 1099
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v1, v1, v0

    ushr-int/lit8 v2, v1, 0x8

    .line 1100
    .local v2, "tag":I
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-char v0, v1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 1101
    .local v0, "count":I
    if-ne v0, v1, :cond_33

    .line 1102
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v1, v1, v3

    shl-int/lit8 v0, v1, 0x10

    .line 1103
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v1, v1, v4

    or-int/2addr v0, v1

    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_36

    .line 1101
    :cond_33
    move v7, v3

    move v3, v0

    move v0, v7

    .line 1106
    .local v0, "i":I
    .local v3, "count":I
    :goto_36
    packed-switch v2, :pswitch_data_54

    .line 1117
    move-object v1, p0

    move-object v5, p2

    move-object v4, p3

    .end local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .end local p3    # "delegate":Ljava/text/Format$FieldDelegate;
    .local v4, "delegate":Ljava/text/Format$FieldDelegate;
    .local v5, "toAppendTo":Ljava/lang/StringBuffer;
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V

    goto :goto_4f

    .line 1112
    .end local v4    # "delegate":Ljava/text/Format$FieldDelegate;
    .end local v5    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local p3    # "delegate":Ljava/text/Format$FieldDelegate;
    :pswitch_40
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    invoke-virtual {p2, v1, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1113
    add-int/2addr v0, v3

    .line 1114
    move-object v5, p2

    move-object v4, p3

    goto :goto_4f

    .line 1108
    :pswitch_49
    int-to-char v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1109
    move-object v5, p2

    move-object v4, p3

    .line 1120
    .end local v2    # "tag":I
    .end local v3    # "count":I
    .end local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .end local p3    # "delegate":Ljava/text/Format$FieldDelegate;
    .restart local v4    # "delegate":Ljava/text/Format$FieldDelegate;
    .restart local v5    # "toAppendTo":Ljava/lang/StringBuffer;
    :goto_4f
    move-object p3, v4

    move-object p2, v5

    goto :goto_a

    .line 1098
    .end local v4    # "delegate":Ljava/text/Format$FieldDelegate;
    .end local v5    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local p3    # "delegate":Ljava/text/Format$FieldDelegate;
    :cond_52
    move-object v5, p2

    .line 1121
    .end local v0    # "i":I
    .end local p2    # "toAppendTo":Ljava/lang/StringBuffer;
    .restart local v5    # "toAppendTo":Ljava/lang/StringBuffer;
    return-object v5

    :pswitch_data_54
    .packed-switch 0x64
        :pswitch_49
        :pswitch_40
    .end packed-switch
.end method

.method private blacklist formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;
    .registers 12
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "maxIntCount"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z
    .param p6, "standalone"    # Z
    .param p7, "field"    # I
    .param p8, "style"    # I

    .line 1632
    const/4 v0, 0x0

    .line 1633
    .local v0, "current":Ljava/lang/String;
    const/4 v1, 0x3

    if-eqz p5, :cond_3c

    .line 1635
    const/4 v2, 0x4

    if-ne p1, v2, :cond_15

    .line 1636
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_10

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    .local v1, "months":[Ljava/lang/String;
    :goto_14
    goto :goto_37

    .line 1637
    .end local v1    # "months":[Ljava/lang/String;
    :cond_15
    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    .line 1638
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_21

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getTinyMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    :goto_25
    goto :goto_37

    .line 1639
    .end local v1    # "months":[Ljava/lang/String;
    :cond_26
    if-ne p1, v1, :cond_36

    .line 1640
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p6, :cond_31

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "months":[Ljava/lang/String;
    :goto_35
    goto :goto_37

    .line 1642
    .end local v1    # "months":[Ljava/lang/String;
    :cond_36
    const/4 v1, 0x0

    .line 1645
    .restart local v1    # "months":[Ljava/lang/String;
    :goto_37
    if-eqz v1, :cond_3b

    .line 1646
    aget-object v0, v1, p2

    .line 1648
    .end local v1    # "months":[Ljava/lang/String;
    :cond_3b
    goto :goto_4e

    .line 1649
    :cond_3c
    if-ge p1, v1, :cond_40

    .line 1650
    const/4 v0, 0x0

    goto :goto_4e

    .line 1652
    :cond_40
    if-eqz p6, :cond_46

    .line 1653
    invoke-static {p8}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result p8

    .line 1655
    :cond_46
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p7, p8, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    :goto_4e
    if-nez v0, :cond_55

    .line 1660
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, p1, p3, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    .line 1663
    :cond_55
    return-object v0
.end method

.method private greylist-max-o formatWeekday(IIZZ)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "value"    # I
    .param p3, "useDateFormatSymbols"    # Z
    .param p4, "standalone"    # Z

    .line 1611
    if-eqz p3, :cond_34

    .line 1613
    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1614
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_e

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .local v0, "weekdays":[Ljava/lang/String;
    :goto_12
    goto :goto_31

    .line 1615
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_13
    const/4 v0, 0x5

    if-ne p1, v0, :cond_24

    .line 1617
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_1f

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getTinyStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getTinyWeekdays()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "weekdays":[Ljava/lang/String;
    :goto_23
    goto :goto_31

    .line 1620
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p4, :cond_2d

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 1623
    .restart local v0    # "weekdays":[Ljava/lang/String;
    :goto_31
    aget-object v1, v0, p2

    return-object v1

    .line 1626
    .end local v0    # "weekdays":[Ljava/lang/String;
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o getDateTimeFormat(IILjava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 649
    invoke-static {p2}, Llibcore/icu/SimpleDateFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/SimpleDateFormatData;

    move-result-object v0

    .line 650
    .local v0, "data":Llibcore/icu/SimpleDateFormatData;
    if-ltz p0, :cond_1c

    if-ltz p1, :cond_1c

    .line 651
    nop

    .line 652
    invoke-virtual {v0, p1}, Llibcore/icu/SimpleDateFormatData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v0, p0}, Llibcore/icu/SimpleDateFormatData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 655
    .local v1, "dateTimeArgs":[Ljava/lang/Object;
    const-string v2, "{0} {1}"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 656
    .end local v1    # "dateTimeArgs":[Ljava/lang/Object;
    :cond_1c
    if-ltz p0, :cond_23

    .line 657
    invoke-virtual {v0, p0}, Llibcore/icu/SimpleDateFormatData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 658
    :cond_23
    if-ltz p1, :cond_2a

    .line 659
    invoke-virtual {v0, p1}, Llibcore/icu/SimpleDateFormatData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 661
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No date or time style specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;
    .registers 9
    .param p1, "field"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3019
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 3021
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Ljava/text/SimpleDateFormat;->REST_OF_STYLES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget v4, v1, v3

    .line 3022
    .local v4, "style":I
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, p1, v4, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 3023
    .local v5, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1a

    .line 3024
    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3021
    .end local v4    # "style":I
    .end local v5    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3027
    :cond_1d
    return-object v0
.end method

.method private blacklist getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;
    .registers 2

    .line 2076
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    if-nez v0, :cond_10

    .line 2077
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    .line 2079
    :cond_10
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->timeZoneNames:Lcom/android/icu/text/ExtendedTimeZoneNames;

    return-object v0
.end method

.method private greylist-max-o getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .registers 2

    .line 2083
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o initialize(Ljava/util/Locale;)V
    .registers 4
    .param p1, "loc"    # Ljava/util/Locale;

    .line 739
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 742
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 743
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_29

    .line 744
    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 745
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 748
    sget-object v0, Ljava/text/SimpleDateFormat;->cachedNumberFormatData:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_29
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 752
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    .line 753
    return-void
.end method

.method private greylist-max-o initializeCalendar(Ljava/util/Locale;)V
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 756
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_b

    .line 757
    nop

    .line 762
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 764
    :cond_b
    return-void
.end method

.method private greylist-max-o initializeDefaultCentury()V
    .registers 4

    .line 1019
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1020
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/16 v2, -0x50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1021
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1022
    return-void
.end method

.method private greylist-max-o isDigit(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 2276
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p5, "calb"    # Ljava/text/CalendarBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/CalendarBuilder;",
            ")I"
        }
    .end annotation

    .line 1979
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v6, p5

    if-eqz p4, :cond_91

    .line 1987
    instance-of v0, p4, Ljava/util/NavigableMap;

    if-eqz v0, :cond_4c

    move-object v0, p4

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 1988
    move-object v0, p4

    check-cast v0, Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1990
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1991
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1992
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 1994
    .end local v3    # "name":Ljava/lang/String;
    :cond_49
    goto :goto_1b

    .line 1995
    :cond_4a
    neg-int v0, p2

    return v0

    .line 1998
    :cond_4c
    const/4 v0, 0x0

    .line 2000
    .local v0, "bestMatch":Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v0

    .end local v0    # "bestMatch":Ljava/lang/String;
    .local v8, "bestMatch":Ljava/lang/String;
    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 2001
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2002
    .local v5, "length":I
    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_7b

    .line 2003
    :cond_6f
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 2004
    move-object v0, v3

    move-object v8, v0

    .line 2007
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "length":I
    :cond_7b
    goto :goto_56

    .line 2009
    :cond_7c
    if-eqz v8, :cond_91

    .line 2010
    invoke-interface {p4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p5, p3, v0}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2011
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    return v0

    .line 2014
    .end local v8    # "bestMatch":Ljava/lang/String;
    :cond_91
    neg-int v0, p2

    return v0
.end method

.method private greylist-max-o matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I
    .registers 19
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "data"    # [Ljava/lang/String;
    .param p5, "calb"    # Ljava/text/CalendarBuilder;

    .line 1929
    move/from16 v6, p3

    move-object/from16 v7, p4

    const/4 v0, 0x0

    .line 1930
    .local v0, "i":I
    array-length v8, v7

    .line 1932
    .local v8, "count":I
    const/4 v1, 0x7

    if-ne v6, v1, :cond_a

    .line 1933
    const/4 v0, 0x1

    .line 1940
    :cond_a
    const/4 v1, 0x0

    .local v1, "bestMatchLength":I
    const/4 v2, -0x1

    move v9, v0

    move v10, v1

    move v11, v2

    .line 1941
    .end local v0    # "i":I
    .end local v1    # "bestMatchLength":I
    .local v9, "i":I
    .local v10, "bestMatchLength":I
    .local v11, "bestMatch":I
    :goto_f
    if-ge v9, v8, :cond_50

    .line 1943
    aget-object v0, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1946
    .local v5, "length":I
    if-le v5, v10, :cond_29

    aget-object v3, v7, v9

    .line 1947
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    move v12, v5

    .end local v5    # "length":I
    .local v12, "length":I
    if-eqz v1, :cond_2a

    .line 1949
    move v11, v9

    .line 1950
    move v10, v12

    goto :goto_2a

    .line 1946
    .end local v12    # "length":I
    .restart local v5    # "length":I
    :cond_29
    move v12, v5

    .line 1956
    .end local v5    # "length":I
    .restart local v12    # "length":I
    :cond_2a
    :goto_2a
    aget-object v0, v7, v9

    add-int/lit8 v5, v12, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4d

    add-int/lit8 v5, v12, -0x1

    if-le v5, v10, :cond_4d

    aget-object v3, v7, v9

    add-int/lit8 v5, v12, -0x1

    .line 1958
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1959
    move v0, v9

    .line 1960
    .end local v11    # "bestMatch":I
    .local v0, "bestMatch":I
    add-int/lit8 v5, v12, -0x1

    move v11, v0

    move v10, v5

    .line 1941
    .end local v0    # "bestMatch":I
    .end local v12    # "length":I
    .restart local v11    # "bestMatch":I
    :cond_4d
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 1964
    :cond_50
    if-ltz v11, :cond_5a

    .line 1966
    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v11}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 1967
    add-int v1, p2, v10

    return v1

    .line 1969
    :cond_5a
    move-object/from16 v0, p5

    neg-int v1, p2

    return v1
.end method

.method private greylist-max-o matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "zoneNames"    # [Ljava/lang/String;

    .line 2018
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1b

    .line 2021
    aget-object v5, p3, v0

    .line 2033
    .local v5, "zoneName":Ljava/lang/String;
    nop

    .line 2034
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 2033
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .local v2, "text":Ljava/lang/String;
    .local v4, "start":I
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2035
    return v0

    .line 2018
    .end local v5    # "zoneName":Ljava/lang/String;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    move p2, v4

    goto :goto_1

    .end local v2    # "text":Ljava/lang/String;
    .end local v4    # "start":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    :cond_1b
    move-object v2, p1

    .line 2038
    .end local v0    # "i":I
    .end local p1    # "text":Ljava/lang/String;
    .restart local v2    # "text":Ljava/lang/String;
    const/4 p1, -0x1

    return p1
.end method

.method private greylist-max-o parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1028
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1029
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1030
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    .line 1031
    return-void
.end method

.method private greylist-max-o parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 23
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1775
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;->checkNegativeNumberExpression()V

    .line 1777
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    .line 1778
    .local v0, "start":I
    move v11, v0

    .line 1779
    .local v11, "oldStart":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    .line 1781
    .local v12, "textLength":I
    const/4 v3, 0x1

    new-array v7, v3, [Z

    const/4 v13, 0x0

    aput-boolean v13, v7, v13

    .line 1783
    .local v7, "ambiguousYear":[Z
    new-instance v10, Ljava/text/CalendarBuilder;

    invoke-direct {v10}, Ljava/text/CalendarBuilder;-><init>()V

    .line 1785
    .local v10, "calb":Ljava/text/CalendarBuilder;
    const/4 v3, 0x0

    move/from16 v19, v3

    move v3, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v3, "start":I
    :goto_21
    iget-object v4, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v4, v4

    const/16 v5, 0x64

    const/4 v14, 0x0

    if-ge v0, v4, :cond_d8

    .line 1786
    iget-object v4, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v4, v4, v0

    ushr-int/lit8 v4, v4, 0x8

    .line 1787
    .local v4, "tag":I
    iget-object v6, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "i":I
    .local v9, "i":I
    aget-char v0, v6, v0

    const/16 v6, 0xff

    and-int/2addr v0, v6

    .line 1788
    .local v0, "count":I
    if-ne v0, v6, :cond_4a

    .line 1789
    iget-object v15, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v16, v9, 0x1

    .end local v9    # "i":I
    .local v16, "i":I
    aget-char v9, v15, v9

    shl-int/lit8 v0, v9, 0x10

    .line 1790
    iget-object v9, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .local v15, "i":I
    aget-char v9, v9, v16

    or-int/2addr v0, v9

    goto :goto_4b

    .line 1788
    .end local v15    # "i":I
    .restart local v9    # "i":I
    :cond_4a
    move v15, v9

    .line 1793
    .end local v9    # "i":I
    .restart local v15    # "i":I
    :goto_4b
    packed-switch v4, :pswitch_data_10c

    .line 1820
    const/4 v9, 0x0

    .line 1830
    .local v9, "obeyCount":Z
    const/16 v16, 0x0

    .line 1832
    .local v16, "useFollowingMinusSignAsDelimiter":Z
    move/from16 v17, v13

    iget-object v13, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    array-length v13, v13

    if-ge v15, v13, :cond_c1

    .line 1833
    iget-object v13, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v13, v13, v15

    ushr-int/lit8 v13, v13, 0x8

    .line 1834
    .local v13, "nextTag":I
    move-object/from16 v18, v14

    iget-object v14, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    aget-char v14, v14, v15

    and-int/2addr v6, v14

    .line 1835
    .local v6, "nextCount":I
    invoke-direct {v1, v13, v6}, Ljava/text/SimpleDateFormat;->shouldObeyCount(II)Z

    move-result v9

    .line 1837
    iget-boolean v14, v1, Ljava/text/SimpleDateFormat;->hasFollowingMinusSign:Z

    if-eqz v14, :cond_bd

    if-eq v13, v5, :cond_ab

    const/16 v14, 0x65

    if-ne v13, v14, :cond_bd

    goto :goto_ab

    .line 1804
    .end local v6    # "nextCount":I
    .end local v9    # "obeyCount":Z
    .end local v13    # "nextTag":I
    .end local v16    # "useFollowingMinusSignAsDelimiter":Z
    :goto_74
    :pswitch_74
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "count":I
    .local v5, "count":I
    if-lez v0, :cond_92

    .line 1805
    if-ge v3, v12, :cond_8d

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v6, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v9, v15, 0x1

    .end local v15    # "i":I
    .local v9, "i":I
    aget-char v6, v6, v15

    if-eq v0, v6, :cond_88

    move v15, v9

    goto :goto_8d

    .line 1810
    :cond_88
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    move v15, v9

    goto :goto_74

    .line 1806
    .end local v9    # "i":I
    .restart local v15    # "i":I
    :cond_8d
    :goto_8d
    iput v11, v8, Ljava/text/ParsePosition;->index:I

    .line 1807
    iput v3, v8, Ljava/text/ParsePosition;->errorIndex:I

    .line 1808
    return-object v14

    .line 1804
    :cond_92
    move/from16 v17, v13

    move v0, v15

    goto :goto_d2

    .line 1795
    .end local v5    # "count":I
    .restart local v0    # "count":I
    :pswitch_96
    if-ge v3, v12, :cond_a6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-char v6, v0

    if-eq v5, v6, :cond_a0

    goto :goto_a6

    .line 1800
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    .line 1801
    move/from16 v17, v13

    move v0, v15

    goto :goto_d2

    .line 1796
    :cond_a6
    :goto_a6
    iput v11, v8, Ljava/text/ParsePosition;->index:I

    .line 1797
    iput v3, v8, Ljava/text/ParsePosition;->errorIndex:I

    .line 1798
    return-object v14

    .line 1841
    .restart local v6    # "nextCount":I
    .local v9, "obeyCount":Z
    .restart local v13    # "nextTag":I
    .restart local v16    # "useFollowingMinusSignAsDelimiter":Z
    :cond_ab
    :goto_ab
    if-eq v13, v5, :cond_b3

    .line 1842
    iget-object v5, v1, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    add-int/lit8 v14, v15, 0x1

    aget-char v6, v5, v14

    .line 1845
    :cond_b3
    iget-char v5, v1, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v6, v5, :cond_bd

    .line 1846
    const/16 v16, 0x1

    move v6, v9

    move/from16 v9, v16

    goto :goto_c6

    .line 1850
    .end local v6    # "nextCount":I
    .end local v13    # "nextTag":I
    :cond_bd
    move v6, v9

    move/from16 v9, v16

    goto :goto_c6

    .line 1832
    :cond_c1
    move-object/from16 v18, v14

    move v6, v9

    move/from16 v9, v16

    .line 1850
    .end local v16    # "useFollowingMinusSignAsDelimiter":Z
    .local v6, "obeyCount":Z
    .local v9, "useFollowingMinusSignAsDelimiter":Z
    :goto_c6
    move v5, v0

    .end local v0    # "count":I
    .restart local v5    # "count":I
    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 1853
    .end local v3    # "start":I
    .local v0, "start":I
    if-gez v0, :cond_d0

    .line 1854
    iput v11, v8, Ljava/text/ParsePosition;->index:I

    .line 1855
    return-object v18

    .line 1853
    :cond_d0
    move v3, v0

    move v0, v15

    .line 1858
    .end local v4    # "tag":I
    .end local v5    # "count":I
    .end local v6    # "obeyCount":Z
    .end local v9    # "useFollowingMinusSignAsDelimiter":Z
    .end local v15    # "i":I
    .local v0, "i":I
    .restart local v3    # "start":I
    :goto_d2
    move-object/from16 v2, p1

    move/from16 v13, v17

    goto/16 :goto_21

    .line 1785
    :cond_d8
    move/from16 v17, v13

    move-object/from16 v18, v14

    .line 1864
    .end local v0    # "i":I
    iput v3, v8, Ljava/text/ParsePosition;->index:I

    .line 1868
    :try_start_de
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10, v0}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1871
    .local v0, "parsedDate":Ljava/util/Date;
    aget-boolean v2, v7, v17

    if-eqz v2, :cond_103

    .line 1872
    iget-object v2, v1, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 1873
    invoke-virtual {v10, v5}, Ljava/text/CalendarBuilder;->addYear(I)Ljava/text/CalendarBuilder;

    move-result-object v2

    iget-object v4, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/text/CalendarBuilder;->establish(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_de .. :try_end_102} :catch_105

    move-object v0, v2

    .line 1883
    :cond_103
    nop

    .line 1885
    return-object v0

    .line 1879
    .end local v0    # "parsedDate":Ljava/util/Date;
    :catch_105
    move-exception v0

    .line 1880
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput v3, v8, Ljava/text/ParsePosition;->errorIndex:I

    .line 1881
    iput v11, v8, Ljava/text/ParsePosition;->index:I

    .line 1882
    return-object v18

    nop

    :pswitch_data_10c
    .packed-switch 0x64
        :pswitch_96
        :pswitch_74
    .end packed-switch
.end method

.method private greylist-max-o parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "value"    # I
    .param p4, "start"    # I
    .param p5, "field"    # I
    .param p6, "pos"    # Ljava/text/ParsePosition;
    .param p7, "useDateFormatSymbols"    # Z
    .param p8, "standalone"    # Z
    .param p9, "out"    # Ljava/text/CalendarBuilder;

    .line 2767
    const/4 v0, 0x2

    if-gt p2, v0, :cond_d

    .line 2772
    add-int/lit8 v1, p3, -0x1

    move-object/from16 v7, p9

    invoke-virtual {v7, v0, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2773
    iget v0, p6, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2776
    :cond_d
    move-object/from16 v7, p9

    const/4 v0, -0x1

    .line 2777
    .local v0, "index":I
    if-eqz p7, :cond_4a

    .line 2781
    nop

    .line 2783
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p8, :cond_1c

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    :goto_20
    move-object v6, v1

    .line 2781
    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v2 .. v7}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_2d

    .line 2785
    return v0

    .line 2788
    :cond_2d
    nop

    .line 2790
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p8, :cond_37

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortStandAloneMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    :goto_3b
    move-object v6, v1

    .line 2788
    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_5e

    .line 2792
    return v0

    .line 2795
    :cond_4a
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {p0, p5, v1}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 2796
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_5e

    .line 2797
    return v0

    .line 2801
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5e
    return v0
.end method

.method private greylist-max-o parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "field"    # I
    .param p4, "useDateFormatSymbols"    # Z
    .param p5, "standalone"    # Z
    .param p6, "out"    # Ljava/text/CalendarBuilder;

    .line 2806
    const/4 v0, -0x1

    .line 2807
    .local v0, "index":I
    if-eqz p4, :cond_3d

    .line 2810
    nop

    .line 2812
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p5, :cond_d

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getStandAloneWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object v6, v1

    .line 2810
    const/4 v5, 0x7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p6

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p6    # "out":Ljava/text/CalendarBuilder;
    .local v3, "text":Ljava/lang/String;
    .local v4, "start":I
    .local v7, "out":Ljava/text/CalendarBuilder;
    invoke-direct/range {v2 .. v7}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v6, v7

    .end local v4    # "start":I
    .end local v7    # "out":Ljava/text/CalendarBuilder;
    .local v2, "text":Ljava/lang/String;
    .local v3, "start":I
    .local v6, "out":Ljava/text/CalendarBuilder;
    move p2, p1

    .end local v0    # "index":I
    .local p2, "index":I
    if-lez p1, :cond_23

    .line 2814
    return p2

    .line 2818
    :cond_23
    nop

    .line 2820
    iget-object p1, v1, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    if-eqz p5, :cond_2d

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortStandAloneWeekdays()[Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p1

    :goto_31
    move-object v5, p1

    .line 2818
    const/4 v4, 0x7

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result p1

    move p2, p1

    if-lez p1, :cond_3b

    .line 2822
    return p2

    .line 2818
    :cond_3b
    move v4, p3

    goto :goto_65

    .line 2825
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v6    # "out":Ljava/text/CalendarBuilder;
    .restart local v0    # "index":I
    .restart local p1    # "text":Ljava/lang/String;
    .local p2, "start":I
    .restart local p6    # "out":Ljava/text/CalendarBuilder;
    :cond_3d
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p6

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p6    # "out":Ljava/text/CalendarBuilder;
    .restart local v2    # "text":Ljava/lang/String;
    .restart local v3    # "start":I
    .restart local v6    # "out":Ljava/text/CalendarBuilder;
    const/4 p1, 0x2

    const/4 p2, 0x1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 2826
    .local p1, "styles":[I
    array-length p2, p1

    const/4 p6, 0x0

    :goto_49
    if-ge p6, p2, :cond_63

    aget v7, p1, p6

    .line 2827
    .local v7, "style":I
    iget-object v4, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v5, v1, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p3, v7, v5}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2828
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v4, p3

    .end local p3    # "field":I
    .local v4, "field":I
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result p3

    move v0, p3

    if-lez p3, :cond_5e

    .line 2829
    return v0

    .line 2826
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "style":I
    :cond_5e
    add-int/lit8 p6, p6, 0x1

    move-object v1, p0

    move p3, v4

    goto :goto_49

    .end local v4    # "field":I
    .restart local p3    # "field":I
    :cond_63
    move v4, p3

    .end local p3    # "field":I
    .restart local v4    # "field":I
    move p2, v0

    .line 2834
    .end local v0    # "index":I
    .end local p1    # "styles":[I
    .local p2, "index":I
    :goto_65
    return p2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3057
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3060
    :try_start_3
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_42

    .line 3063
    nop

    .line 3065
    iget v0, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    .line 3067
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->initializeDefaultCentury()V

    goto :goto_1a

    .line 3071
    :cond_15
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 3073
    :goto_1a
    iput v1, p0, Ljava/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 3079
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 3080
    .local v0, "tz":Ljava/util/TimeZone;
    instance-of v1, v0, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_41

    .line 3081
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 3082
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3083
    .local v2, "zi":Ljava/util/TimeZone;
    if-eqz v2, :cond_41

    invoke-virtual {v2, v0}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3084
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3087
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "zi":Ljava/util/TimeZone;
    :cond_41
    return-void

    .line 3061
    .end local v0    # "tz":Ljava/util/TimeZone;
    :catch_42
    move-exception v0

    .line 3062
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid pattern"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist shouldObeyCount(II)Z
    .registers 6
    .param p1, "tag"    # I
    .param p2, "count"    # I

    .line 1893
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_c

    .line 1914
    :pswitch_5
    return v0

    .line 1896
    :pswitch_6
    const/4 v2, 0x2

    if-gt p2, v2, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 1912
    :pswitch_b
    return v1

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o subFormat(IILjava/text/Format$FieldDelegate;Ljava/lang/StringBuffer;Z)V
    .registers 26
    .param p1, "patternCharIndex"    # I
    .param p2, "count"    # I
    .param p3, "delegate"    # Ljava/text/Format$FieldDelegate;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "useDateFormatSymbols"    # Z

    .line 1270
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v5, p5

    const v3, 0x7fffffff

    .line 1271
    .local v3, "maxIntCount":I
    const/4 v2, 0x0

    .line 1272
    .local v2, "current":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 1274
    .local v9, "beginOffset":I
    sget-object v4, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v4, v4, p1

    .line 1276
    .local v4, "field":I
    const/16 v6, 0x11

    const/16 v7, 0x3e8

    if-ne v4, v6, :cond_37

    .line 1277
    iget-object v6, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1278
    iget-object v6, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getWeekYear()I

    move-result v6

    move/from16 v10, p1

    .local v6, "value":I
    goto :goto_4f

    .line 1281
    .end local v6    # "value":I
    :cond_29
    const/4 v6, 0x1

    .line 1282
    .end local p1    # "patternCharIndex":I
    .local v6, "patternCharIndex":I
    sget-object v8, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v4, v8, v6

    .line 1283
    iget-object v8, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move v10, v6

    move v6, v8

    .local v8, "value":I
    goto :goto_4f

    .line 1285
    .end local v6    # "patternCharIndex":I
    .end local v8    # "value":I
    .restart local p1    # "patternCharIndex":I
    :cond_37
    if-ne v4, v7, :cond_47

    .line 1286
    iget-object v6, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/text/CalendarBuilder;->toISODayOfWeek(I)I

    move-result v6

    move/from16 v10, p1

    .local v6, "value":I
    goto :goto_4f

    .line 1288
    .end local v6    # "value":I
    :cond_47
    iget-object v6, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move/from16 v10, p1

    .line 1291
    .end local p1    # "patternCharIndex":I
    .restart local v6    # "value":I
    .local v10, "patternCharIndex":I
    :goto_4f
    const/4 v8, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lt v1, v8, :cond_56

    move v13, v11

    goto :goto_57

    :cond_56
    move v13, v12

    .line 1292
    .local v13, "style":I
    :goto_57
    if-nez v5, :cond_65

    if-eq v4, v7, :cond_65

    .line 1293
    iget-object v7, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v14, v0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v4, v13, v14}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_66

    .line 1300
    :cond_65
    move-object v14, v2

    .end local v2    # "current":Ljava/lang/String;
    .local v14, "current":Ljava/lang/String;
    :goto_66
    const/16 v2, 0xf

    const/16 v7, 0x10

    packed-switch v10, :pswitch_data_31e

    .line 1592
    :pswitch_6d
    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move v2, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    move v9, v3

    .end local v3    # "maxIntCount":I
    .end local v4    # "field":I
    .end local v6    # "value":I
    .end local v10    # "patternCharIndex":I
    .local v2, "value":I
    .local v9, "maxIntCount":I
    .local v16, "field":I
    .local v18, "beginOffset":I
    .local v19, "patternCharIndex":I
    if-nez v14, :cond_301

    .line 1593
    invoke-direct {v8, v2, v7, v9, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_301

    .line 1438
    .end local v2    # "value":I
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v3    # "maxIntCount":I
    .restart local v4    # "field":I
    .restart local v6    # "value":I
    .local v9, "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_80
    const-string v14, ""

    .line 1439
    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1421
    :pswitch_90
    if-nez v14, :cond_a4

    .line 1422
    invoke-direct {v0, v1, v6, v5, v12}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v14

    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1421
    :cond_a4
    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move v2, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    move v9, v3

    goto/16 :goto_301

    .line 1382
    :pswitch_b2
    move v2, v6

    .end local v6    # "value":I
    .restart local v2    # "value":I
    const/4 v6, 0x1

    move v7, v4

    move v8, v13

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v13    # "style":I
    .local v7, "field":I
    .local v8, "style":I
    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v14

    .line 1385
    move v6, v2

    move/from16 v16, v7

    .end local v2    # "value":I
    .end local v7    # "field":I
    .end local v8    # "style":I
    .restart local v6    # "value":I
    .restart local v13    # "style":I
    .restart local v16    # "field":I
    move-object v8, v0

    move v7, v1

    move/from16 v18, v9

    move/from16 v19, v10

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1539
    .end local v16    # "field":I
    .restart local v4    # "field":I
    :pswitch_c9
    move/from16 v16, v4

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .restart local v16    # "field":I
    iget-object v8, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1540
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int v6, v2, v7

    .line 1542
    if-nez v6, :cond_ec

    .line 1543
    const/16 v2, 0x5a

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1544
    move-object v8, v0

    move v7, v1

    move/from16 v18, v9

    move/from16 v19, v10

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1547
    :cond_ec
    const v2, 0xea60

    div-int/2addr v6, v2

    .line 1548
    if-ltz v6, :cond_f8

    .line 1549
    const/16 v2, 0x2b

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ff

    .line 1551
    :cond_f8
    const/16 v2, 0x2d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1552
    neg-int v2, v6

    move v6, v2

    .line 1555
    :goto_ff
    div-int/lit8 v2, v6, 0x3c

    invoke-static {v4, v2, v11}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1556
    if-ne v1, v12, :cond_107

    .line 1557
    goto :goto_115

    .line 1560
    :cond_107
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10f

    .line 1561
    const/16 v2, 0x3a

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1563
    :cond_10f
    rem-int/lit8 v2, v6, 0x3c

    invoke-static {v4, v2, v11}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 1564
    nop

    .line 1598
    :goto_115
    move-object v8, v0

    move v7, v1

    move/from16 v18, v9

    move/from16 v19, v10

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1530
    .end local v16    # "field":I
    .restart local v4    # "field":I
    :pswitch_11f
    move/from16 v16, v4

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .restart local v16    # "field":I
    iget-object v11, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v11, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int v6, v2, v7

    .line 1531
    if-lt v1, v8, :cond_135

    move v2, v12

    goto :goto_136

    :cond_135
    const/4 v2, 0x0

    .line 1532
    .local v2, "includeSeparator":Z
    :goto_136
    if-ne v1, v8, :cond_139

    goto :goto_13a

    :cond_139
    const/4 v12, 0x0

    .line 1533
    .local v12, "includeGmt":Z
    :goto_13a
    invoke-static {v12, v2, v6}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1535
    move-object v8, v0

    move v7, v1

    move/from16 v18, v9

    move/from16 v19, v10

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1453
    .end local v2    # "includeSeparator":Z
    .end local v12    # "includeGmt":Z
    .end local v16    # "field":I
    .restart local v4    # "field":I
    :pswitch_14b
    move/from16 v16, v4

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .restart local v16    # "field":I
    if-nez v14, :cond_1d3

    .line 1479
    iget-object v11, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 1480
    .local v11, "tz":Ljava/util/TimeZone;
    iget-object v15, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eqz v15, :cond_161

    move v15, v12

    goto :goto_162

    :cond_161
    const/4 v15, 0x0

    .line 1482
    .local v15, "daylight":Z
    :goto_162
    iget-object v12, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v12, v12, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v12, :cond_180

    .line 1485
    if-ge v1, v8, :cond_16c

    const/4 v8, 0x0

    goto :goto_16d

    :cond_16c
    const/4 v8, 0x1

    .line 1486
    .local v8, "tzstyle":I
    :goto_16d
    iget-object v12, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1487
    invoke-virtual {v12}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 1486
    invoke-static {v12, v7, v15, v8}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    .line 1488
    .end local v8    # "tzstyle":I
    .local v7, "zoneString":Ljava/lang/String;
    move/from16 v18, v9

    move/from16 v19, v10

    goto :goto_1ae

    .line 1490
    .end local v7    # "zoneString":Ljava/lang/String;
    :cond_180
    if-ge v1, v8, :cond_18b

    .line 1491
    if-eqz v15, :cond_187

    .line 1492
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_189

    .line 1493
    :cond_187
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_189
    nop

    .local v7, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_193

    .line 1495
    .end local v7    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_18b
    if-eqz v15, :cond_190

    .line 1496
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_192

    .line 1497
    :cond_190
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_192
    nop

    .line 1499
    .restart local v7    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_193
    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1500
    .local v8, "canonicalID":Ljava/lang/String;
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v12

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1501
    move/from16 v18, v9

    move/from16 v19, v10

    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v12, v8, v7, v9, v10}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    .line 1503
    .end local v8    # "canonicalID":Ljava/lang/String;
    .local v7, "zoneString":Ljava/lang/String;
    :goto_1ae
    if-eqz v7, :cond_1b4

    .line 1504
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1cd

    .line 1506
    :cond_1b4
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xf

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 1507
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 1508
    .local v2, "offsetMillis":I
    const/4 v8, 0x1

    invoke-static {v8, v8, v2}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1511
    .end local v2    # "offsetMillis":I
    .end local v7    # "zoneString":Ljava/lang/String;
    .end local v11    # "tz":Ljava/util/TimeZone;
    .end local v15    # "daylight":Z
    :goto_1cd
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1453
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :cond_1d3
    move/from16 v18, v9

    move/from16 v19, v10

    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1442
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_1dd
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-nez v14, :cond_207

    .line 1443
    if-nez v6, :cond_1fe

    .line 1444
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1447
    :cond_1fe
    invoke-direct {v0, v6, v1, v3, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1442
    :cond_207
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1428
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_20d
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-eqz v5, :cond_225

    .line 1429
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 1430
    .local v2, "ampm":[Ljava/lang/String;
    aget-object v14, v2, v6

    .line 1431
    .end local v2    # "ampm":[Ljava/lang/String;
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1428
    :cond_225
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1413
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_22b
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-nez v14, :cond_240

    .line 1414
    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v5, v2}, Ljava/text/SimpleDateFormat;->formatWeekday(IIZZ)Ljava/lang/String;

    move-result-object v14

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1413
    :cond_240
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1572
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_246
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-nez v14, :cond_269

    .line 1573
    int-to-double v7, v6

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    int-to-double v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v6, v7

    .line 1574
    invoke-direct {v0, v6, v1, v1, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v10, v6

    goto/16 :goto_302

    .line 1572
    :cond_269
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1388
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_26f
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-nez v14, :cond_299

    .line 1389
    if-nez v6, :cond_290

    .line 1390
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1393
    :cond_290
    invoke-direct {v0, v6, v1, v3, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1388
    :cond_299
    move-object v8, v0

    move v7, v1

    move v9, v3

    move v2, v6

    goto/16 :goto_301

    .line 1355
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v4    # "field":I
    .restart local v9    # "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_29f
    move/from16 v16, v4

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    .end local v4    # "field":I
    .end local v9    # "beginOffset":I
    .end local v10    # "patternCharIndex":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    move v2, v6

    .end local v6    # "value":I
    .local v2, "value":I
    const/4 v6, 0x0

    move v8, v13

    move/from16 v7, v16

    .end local v13    # "style":I
    .end local v16    # "field":I
    .local v7, "field":I
    .local v8, "style":I
    invoke-direct/range {v0 .. v8}, Ljava/text/SimpleDateFormat;->formatMonth(IIILjava/lang/StringBuffer;ZZII)Ljava/lang/String;

    move-result-object v14

    .line 1358
    move v9, v3

    move-object v8, v0

    move v7, v1

    .end local v3    # "maxIntCount":I
    .end local v7    # "field":I
    .end local v8    # "style":I
    .local v9, "maxIntCount":I
    .restart local v13    # "style":I
    .restart local v16    # "field":I
    move v10, v2

    goto/16 :goto_302

    .line 1315
    .end local v2    # "value":I
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v3    # "maxIntCount":I
    .restart local v4    # "field":I
    .restart local v6    # "value":I
    .local v9, "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_2b6
    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move v2, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v17, v12

    move-object/from16 v4, p4

    move v9, v3

    .end local v3    # "maxIntCount":I
    .end local v4    # "field":I
    .end local v6    # "value":I
    .end local v10    # "patternCharIndex":I
    .restart local v2    # "value":I
    .local v9, "maxIntCount":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    iget-object v0, v8, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_2d4

    .line 1316
    if-eq v7, v11, :cond_2d0

    .line 1317
    invoke-direct {v8, v2, v7, v9, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_301

    .line 1319
    :cond_2d0
    invoke-direct {v8, v2, v11, v11, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_301

    .line 1322
    :cond_2d4
    if-nez v14, :cond_301

    .line 1323
    if-ne v13, v11, :cond_2db

    move/from16 v1, v17

    goto :goto_2dc

    :cond_2db
    move v1, v7

    :goto_2dc
    invoke-direct {v8, v2, v1, v9, v4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V

    goto :goto_301

    .line 1302
    .end local v2    # "value":I
    .end local v16    # "field":I
    .end local v18    # "beginOffset":I
    .end local v19    # "patternCharIndex":I
    .restart local v3    # "maxIntCount":I
    .restart local v4    # "field":I
    .restart local v6    # "value":I
    .local v9, "beginOffset":I
    .restart local v10    # "patternCharIndex":I
    :pswitch_2e0
    move-object v8, v0

    move v7, v1

    move/from16 v16, v4

    move v2, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v4, p4

    move v9, v3

    .end local v3    # "maxIntCount":I
    .end local v4    # "field":I
    .end local v6    # "value":I
    .end local v10    # "patternCharIndex":I
    .restart local v2    # "value":I
    .local v9, "maxIntCount":I
    .restart local v16    # "field":I
    .restart local v18    # "beginOffset":I
    .restart local v19    # "patternCharIndex":I
    if-eqz p5, :cond_2f9

    .line 1303
    iget-object v0, v8, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "eras":[Ljava/lang/String;
    array-length v1, v0

    if-ge v2, v1, :cond_2f9

    .line 1305
    aget-object v14, v0, v2

    .line 1308
    .end local v0    # "eras":[Ljava/lang/String;
    :cond_2f9
    if-nez v14, :cond_2ff

    .line 1309
    const-string v14, ""

    move v10, v2

    goto :goto_302

    .line 1308
    :cond_2ff
    move v10, v2

    goto :goto_302

    .line 1598
    :cond_301
    :goto_301
    move v10, v2

    .end local v2    # "value":I
    .local v10, "value":I
    :goto_302
    if-eqz v14, :cond_307

    .line 1599
    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    :cond_307
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v1, v0, v19

    .line 1603
    .local v1, "fieldID":I
    sget-object v0, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD_ID:[Ljava/text/DateFormat$Field;

    aget-object v2, v0, v19

    .line 1605
    .local v2, "f":Ljava/text/DateFormat$Field;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object v3, v2

    move-object/from16 v0, p3

    move-object v6, v4

    move/from16 v4, v18

    .end local v18    # "beginOffset":I
    .local v4, "beginOffset":I
    invoke-interface/range {v0 .. v6}, Ljava/text/Format$FieldDelegate;->formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V

    .line 1606
    return-void

    nop

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_2e0
        :pswitch_2b6
        :pswitch_29f
        :pswitch_6d
        :pswitch_26f
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_246
        :pswitch_22b
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_20d
        :pswitch_1dd
        :pswitch_6d
        :pswitch_14b
        :pswitch_11f
        :pswitch_2b6
        :pswitch_6d
        :pswitch_c9
        :pswitch_b2
        :pswitch_90
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method private greylist-max-o subParse(Ljava/lang/String;IIIZ[ZLjava/text/ParsePosition;ZLjava/text/CalendarBuilder;)I
    .registers 32
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "patternCharIndex"    # I
    .param p4, "count"    # I
    .param p5, "obeyCount"    # Z
    .param p6, "ambiguousYear"    # [Z
    .param p7, "origPos"    # Ljava/text/ParsePosition;
    .param p8, "useFollowingMinusSignAsDelimiter"    # Z
    .param p9, "calb"    # Ljava/text/CalendarBuilder;

    .line 2301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v8, p4

    move-object/from16 v11, p7

    const-string v0, "GMT"

    const/4 v4, 0x0

    .line 2302
    .local v4, "value":I
    new-instance v7, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v10, v7

    .line 2303
    .local v10, "pos":Ljava/text/ParsePosition;
    iput v3, v10, Ljava/text/ParsePosition;->index:I

    .line 2304
    const/16 v5, 0x13

    move/from16 v6, p3

    if-ne v6, v5, :cond_27

    iget-object v7, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v7

    if-nez v7, :cond_27

    .line 2306
    const/4 v6, 0x1

    move v12, v6

    .end local p3    # "patternCharIndex":I
    .local v6, "patternCharIndex":I
    goto :goto_28

    .line 2308
    .end local v6    # "patternCharIndex":I
    .restart local p3    # "patternCharIndex":I
    :cond_27
    move v12, v6

    .end local p3    # "patternCharIndex":I
    .local v12, "patternCharIndex":I
    :goto_28
    sget-object v6, Ljava/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v6, v6, v12

    .line 2313
    .local v6, "field":I
    :goto_2c
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, -0x1

    if-lt v7, v13, :cond_38

    .line 2314
    iput v3, v11, Ljava/text/ParsePosition;->errorIndex:I

    .line 2315
    return v14

    .line 2317
    :cond_38
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2318
    .local v7, "c":C
    const/16 v13, 0x20

    const/4 v15, 0x1

    if-eq v7, v13, :cond_4d6

    const/16 v13, 0x9

    if-eq v7, v13, :cond_4d6

    .line 2319
    nop

    .line 2324
    .end local v7    # "c":C
    iget v13, v10, Ljava/text/ParsePosition;->index:I

    .line 2332
    .local v13, "actualStart":I
    const/4 v7, 0x4

    move/from16 p3, v14

    const/16 v14, 0xf

    const/4 v9, 0x2

    if-eq v12, v7, :cond_62

    if-eq v12, v14, :cond_62

    if-ne v12, v9, :cond_58

    if-le v8, v9, :cond_62

    :cond_58
    const/16 v7, 0x16

    if-ne v12, v7, :cond_5e

    if-le v8, v9, :cond_62

    :cond_5e
    if-eq v12, v15, :cond_62

    if-ne v12, v5, :cond_c6

    .line 2340
    :cond_62
    if-eqz p5, :cond_7b

    .line 2341
    add-int v5, v3, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v5, v7, :cond_6d

    .line 2342
    goto :goto_8c

    .line 2344
    :cond_6d
    iget-object v5, v1, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v7, v3, v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v10}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v5

    .local v5, "number":Ljava/lang/Number;
    goto :goto_81

    .line 2346
    .end local v5    # "number":Ljava/lang/Number;
    :cond_7b
    iget-object v5, v1, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v5, v2, v10}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v5

    .line 2348
    .restart local v5    # "number":Ljava/lang/Number;
    :goto_81
    if-nez v5, :cond_91

    .line 2349
    if-ne v12, v15, :cond_8c

    iget-object v7, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v7, v7, Ljava/util/GregorianCalendar;

    if-eqz v7, :cond_c6

    .line 2350
    nop

    .line 2758
    .end local v5    # "number":Ljava/lang/Number;
    :cond_8c
    :goto_8c
    move v14, v6

    move-object/from16 v6, p9

    goto/16 :goto_4d1

    .line 2353
    .restart local v5    # "number":Ljava/lang/Number;
    :cond_91
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2355
    if-eqz p8, :cond_c6

    if-gez v4, :cond_c6

    iget v7, v10, Ljava/text/ParsePosition;->index:I

    .line 2356
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_ab

    iget v7, v10, Ljava/text/ParsePosition;->index:I

    .line 2357
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v9, v1, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v7, v9, :cond_be

    :cond_ab
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    .line 2358
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v7, v9, :cond_c6

    iget v7, v10, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v7, v15

    .line 2359
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v9, v1, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v7, v9, :cond_c6

    .line 2360
    :cond_be
    neg-int v4, v4

    .line 2361
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v7, v15

    iput v7, v10, Ljava/text/ParsePosition;->index:I

    move v9, v4

    goto :goto_c7

    .line 2366
    .end local v5    # "number":Ljava/lang/Number;
    :cond_c6
    move v9, v4

    .end local v4    # "value":I
    .local v9, "value":I
    :goto_c7
    invoke-direct {v1}, Ljava/text/SimpleDateFormat;->useDateFormatSymbols()Z

    move-result v5

    .line 2369
    .local v5, "useDateFormatSymbols":Z
    const/16 v7, 0x10

    const/16 v4, 0x2d

    move/from16 v19, v15

    const/16 v15, 0x2b

    packed-switch v12, :pswitch_data_4ea

    .line 2710
    :pswitch_d6
    move v7, v5

    move v14, v6

    move-object/from16 v6, p9

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .local v7, "useDateFormatSymbols":Z
    .local v14, "field":I
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2712
    .local v0, "parseStart":I
    if-eqz p5, :cond_45d

    .line 2713
    add-int v3, p2, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_44f

    .line 2714
    goto/16 :goto_4d0

    .line 2548
    .end local v0    # "parseStart":I
    .end local v7    # "useDateFormatSymbols":Z
    .end local v14    # "field":I
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    :pswitch_ea
    move v4, v6

    .end local v6    # "field":I
    .local v4, "field":I
    const/4 v6, 0x1

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2550
    .local v0, "idx":I
    if-lez v0, :cond_f5

    .line 2551
    return v0

    .line 2550
    :cond_f5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v4

    goto/16 :goto_4d0

    .line 2484
    .end local v0    # "idx":I
    .end local v4    # "field":I
    .restart local v6    # "field":I
    :pswitch_fe
    move v4, v6

    .end local v6    # "field":I
    .restart local v4    # "field":I
    move v4, v9

    .end local v9    # "value":I
    .local v4, "value":I
    .restart local v6    # "field":I
    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v8

    move-object v7, v10

    move-object/from16 v10, p9

    move v8, v5

    move/from16 v5, p2

    .end local v5    # "useDateFormatSymbols":Z
    .end local v10    # "pos":Ljava/text/ParsePosition;
    .local v7, "pos":Ljava/text/ParsePosition;
    .local v8, "useDateFormatSymbols":Z
    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2486
    move-object v9, v10

    move v10, v6

    move-object v6, v9

    move v9, v4

    move/from16 v17, v8

    move-object v8, v7

    .end local v4    # "value":I
    .end local v6    # "field":I
    .end local v7    # "pos":Ljava/text/ParsePosition;
    .restart local v0    # "idx":I
    .local v8, "pos":Ljava/text/ParsePosition;
    .restart local v9    # "value":I
    .local v10, "field":I
    .local v17, "useDateFormatSymbols":Z
    if-lez v0, :cond_11a

    .line 2487
    return v0

    .line 2486
    :cond_11a
    move-object/from16 v1, p0

    move v14, v10

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2665
    .end local v0    # "idx":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v17    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    .local v10, "pos":Ljava/text/ParsePosition;
    :pswitch_120
    move/from16 v17, v5

    move v3, v8

    move-object v8, v10

    move v10, v6

    move-object/from16 v6, p9

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .local v10, "field":I
    .restart local v17    # "useDateFormatSymbols":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, v8, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_136

    .line 2666
    move-object/from16 v1, p0

    move v14, v10

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2670
    :cond_136
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2671
    .local v0, "c":C
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_14f

    .line 2672
    const/4 v1, 0x0

    invoke-virtual {v6, v14, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2673
    iget v1, v8, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Ljava/text/ParsePosition;->index:I

    return v1

    .line 2677
    :cond_14f
    if-ne v0, v15, :cond_154

    .line 2678
    const/4 v1, 0x1

    move v4, v1

    .local v1, "sign":I
    goto :goto_158

    .line 2679
    .end local v1    # "sign":I
    :cond_154
    if-ne v0, v4, :cond_17d

    .line 2680
    const/4 v1, -0x1

    move v4, v1

    .line 2685
    .local v4, "sign":I
    :goto_158
    iget v1, v8, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Ljava/text/ParsePosition;->index:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_164

    move/from16 v6, v19

    goto :goto_165

    :cond_164
    const/4 v6, 0x0

    :goto_165
    move-object/from16 v7, p9

    move v5, v3

    move v3, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v3

    .line 2687
    .local v3, "i":I
    if-lez v3, :cond_172

    .line 2688
    return v3

    .line 2690
    :cond_172
    neg-int v1, v3

    iput v1, v8, Ljava/text/ParsePosition;->index:I

    .line 2692
    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "sign":I
    move-object/from16 v1, p0

    move-object/from16 v6, p9

    move v14, v10

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2682
    .restart local v0    # "c":C
    :cond_17d
    iget v1, v8, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Ljava/text/ParsePosition;->index:I

    .line 2683
    move-object/from16 v1, p0

    move-object/from16 v6, p9

    move v14, v10

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2589
    .end local v0    # "c":C
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v17    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    .local v10, "pos":Ljava/text/ParsePosition;
    :pswitch_18b
    move/from16 v17, v5

    move-object v8, v10

    move v10, v6

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .local v10, "field":I
    .restart local v17    # "useDateFormatSymbols":Z
    const/4 v1, 0x0

    .line 2591
    .restart local v1    # "sign":I
    :try_start_190
    iget v3, v8, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_196
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_190 .. :try_end_196} :catch_2a8

    .line 2592
    .local v3, "c":C
    if-ne v3, v15, :cond_19c

    .line 2593
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_1a4

    .line 2594
    :cond_19c
    if-ne v3, v4, :cond_1a2

    .line 2595
    const/4 v1, -0x1

    move/from16 v18, v1

    goto :goto_1a4

    .line 2594
    :cond_1a2
    move/from16 v18, v1

    .line 2597
    .end local v1    # "sign":I
    .local v18, "sign":I
    :goto_1a4
    if-nez v18, :cond_27a

    .line 2599
    const/16 v1, 0x47

    if-eq v3, v1, :cond_1b7

    const/16 v1, 0x67

    if-ne v3, v1, :cond_1af

    goto :goto_1b7

    :cond_1af
    move-object/from16 v1, p0

    move-object/from16 v6, p9

    move/from16 v20, v3

    goto/16 :goto_25f

    .line 2600
    :cond_1b7
    :goto_1b7
    :try_start_1b7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_259

    move v1, v4

    const-string v4, "GMT"

    .line 2601
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_1ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b7 .. :try_end_1ca} :catch_271

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v7, p9

    move v14, v1

    move/from16 v20, v3

    move-object/from16 v1, p1

    move/from16 v3, p2

    .end local v3    # "c":C
    .local v20, "c":C
    :try_start_1d5
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_24e

    .line 2602
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, p2, v0

    iput v0, v8, Ljava/text/ParsePosition;->index:I

    .line 2604
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, v8, Ljava/text/ParsePosition;->index:I
    :try_end_1e9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d5 .. :try_end_1e9} :catch_253

    sub-int/2addr v0, v2

    if-lez v0, :cond_20c

    .line 2605
    :try_start_1ec
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1ec .. :try_end_1f2} :catch_206

    move v3, v0

    .line 2606
    .end local v20    # "c":C
    .restart local v3    # "c":C
    if-ne v3, v15, :cond_1fa

    .line 2607
    const/4 v0, 0x1

    move v4, v0

    move/from16 v20, v3

    .end local v18    # "sign":I
    .local v0, "sign":I
    goto :goto_20e

    .line 2608
    .end local v0    # "sign":I
    .restart local v18    # "sign":I
    :cond_1fa
    if-ne v3, v14, :cond_201

    .line 2609
    const/4 v0, -0x1

    move v4, v0

    move/from16 v20, v3

    .end local v18    # "sign":I
    .restart local v0    # "sign":I
    goto :goto_20e

    .line 2608
    .end local v0    # "sign":I
    .restart local v18    # "sign":I
    :cond_201
    move/from16 v20, v3

    move/from16 v4, v18

    goto :goto_20e

    .line 2658
    .end local v3    # "c":C
    :catch_206
    move-exception v0

    move-object/from16 v2, p0

    move-object v6, v7

    goto/16 :goto_277

    .line 2604
    .restart local v20    # "c":C
    :cond_20c
    move/from16 v4, v18

    .line 2613
    .end local v18    # "sign":I
    .restart local v4    # "sign":I
    :goto_20e
    if-nez v4, :cond_226

    .line 2614
    const/16 v0, 0xf

    const/4 v2, 0x0

    :try_start_213
    invoke-virtual {v7, v0, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v0

    .line 2615
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2616
    iget v0, v8, Ljava/text/ParsePosition;->index:I
    :try_end_21e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_213 .. :try_end_21e} :catch_21f

    return v0

    .line 2658
    .end local v20    # "c":C
    :catch_21f
    move-exception v0

    move-object/from16 v2, p0

    move v1, v4

    move-object v6, v7

    goto/16 :goto_2ad

    .line 2626
    .restart local v20    # "c":C
    :cond_226
    :try_start_226
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v8, Ljava/text/ParsePosition;->index:I
    :try_end_22c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_226 .. :try_end_22c} :catch_246

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object/from16 v1, p0

    :try_start_231
    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v0
    :try_end_235
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_231 .. :try_end_235} :catch_243

    move-object v6, v7

    .line 2629
    .local v0, "i":I
    if-lez v0, :cond_239

    .line 2630
    return v0

    .line 2632
    :cond_239
    neg-int v3, v0

    :try_start_23a
    iput v3, v8, Ljava/text/ParsePosition;->index:I
    :try_end_23c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23a .. :try_end_23c} :catch_241

    .line 2633
    .end local v0    # "i":I
    move-object v2, v1

    move/from16 v18, v4

    goto/16 :goto_29a

    .line 2658
    .end local v20    # "c":C
    :catch_241
    move-exception v0

    goto :goto_24b

    :catch_243
    move-exception v0

    move-object v6, v7

    goto :goto_24b

    :catch_246
    move-exception v0

    move-object v2, v1

    move-object v6, v7

    move-object/from16 v1, p0

    :goto_24b
    move-object v2, v1

    goto/16 :goto_2a0

    .line 2601
    .end local v4    # "sign":I
    .restart local v18    # "sign":I
    .restart local v20    # "c":C
    :cond_24e
    move-object v2, v1

    move-object v6, v7

    move-object/from16 v1, p0

    goto :goto_25f

    .line 2658
    .end local v20    # "c":C
    :catch_253
    move-exception v0

    move-object v2, v1

    move-object v6, v7

    move-object/from16 v1, p0

    goto :goto_276

    .line 2600
    .restart local v3    # "c":C
    :cond_259
    move-object/from16 v1, p0

    move-object/from16 v6, p9

    move/from16 v20, v3

    .line 2636
    .end local v3    # "c":C
    .restart local v20    # "c":C
    :goto_25f
    :try_start_25f
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    invoke-direct {v1, v2, v0, v6}, Ljava/text/SimpleDateFormat;->subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    .line 2637
    .restart local v0    # "i":I
    if-lez v0, :cond_268

    .line 2638
    return v0

    .line 2640
    :cond_268
    neg-int v3, v0

    iput v3, v8, Ljava/text/ParsePosition;->index:I
    :try_end_26b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25f .. :try_end_26b} :catch_26f

    .line 2641
    .end local v0    # "i":I
    move-object v2, v1

    move/from16 v4, v18

    goto :goto_298

    .line 2658
    .end local v20    # "c":C
    :catch_26f
    move-exception v0

    goto :goto_276

    :catch_271
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, p9

    :goto_276
    move-object v2, v1

    :goto_277
    move/from16 v1, v18

    goto :goto_2ad

    .line 2650
    .restart local v3    # "c":C
    :cond_27a
    move-object/from16 v1, p0

    move-object/from16 v6, p9

    move/from16 v20, v3

    .end local v3    # "c":C
    .restart local v20    # "c":C
    :try_start_280
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v8, Ljava/text/ParsePosition;->index:I
    :try_end_286
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_280 .. :try_end_286} :catch_2a2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p9

    move/from16 v4, v18

    .end local v18    # "sign":I
    .restart local v4    # "sign":I
    :try_start_28c
    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I

    move-result v0
    :try_end_290
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28c .. :try_end_290} :catch_29d

    move-object v2, v1

    move-object v6, v7

    .line 2653
    .restart local v0    # "i":I
    if-lez v0, :cond_295

    .line 2654
    return v0

    .line 2656
    :cond_295
    neg-int v1, v0

    :try_start_296
    iput v1, v8, Ljava/text/ParsePosition;->index:I
    :try_end_298
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_296 .. :try_end_298} :catch_29b

    .line 2659
    .end local v0    # "i":I
    .end local v20    # "c":C
    :goto_298
    move/from16 v18, v4

    .end local v4    # "sign":I
    .restart local v18    # "sign":I
    :goto_29a
    goto :goto_2ad

    .line 2658
    .end local v18    # "sign":I
    .restart local v4    # "sign":I
    :catch_29b
    move-exception v0

    goto :goto_2a0

    :catch_29d
    move-exception v0

    move-object v2, v1

    move-object v6, v7

    :goto_2a0
    move v1, v4

    goto :goto_2ad

    .end local v4    # "sign":I
    .restart local v18    # "sign":I
    :catch_2a2
    move-exception v0

    move-object v2, v1

    move/from16 v4, v18

    move v1, v4

    .end local v18    # "sign":I
    .restart local v4    # "sign":I
    goto :goto_2ad

    .end local v4    # "sign":I
    .restart local v1    # "sign":I
    :catch_2a8
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v6, p9

    .line 2661
    .end local v1    # "sign":I
    :goto_2ad
    move-object v1, v2

    move v14, v10

    move-object/from16 v2, p1

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2573
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v17    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    .local v10, "pos":Ljava/text/ParsePosition;
    :pswitch_2b4
    move-object v2, v1

    move/from16 v17, v5

    move-object v8, v10

    move v10, v6

    move-object/from16 v6, p9

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .local v10, "field":I
    .restart local v17    # "useDateFormatSymbols":Z
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2d7

    .line 2575
    move/from16 v0, v19

    if-lt v9, v0, :cond_2d0

    const/16 v0, 0xc

    if-le v9, v0, :cond_2d7

    .line 2576
    move-object v1, v2

    move v14, v10

    move-object/from16 v2, p1

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2575
    :cond_2d0
    move-object v1, v2

    move v14, v10

    move-object/from16 v2, p1

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2580
    :cond_2d7
    iget-object v0, v2, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    if-ne v9, v0, :cond_2e6

    .line 2581
    const/4 v9, 0x0

    .line 2583
    :cond_2e6
    invoke-virtual {v6, v1, v9}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2584
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2559
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v17    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    .local v10, "pos":Ljava/text/ParsePosition;
    :pswitch_2ec
    move-object v2, v1

    move/from16 v17, v5

    move-object v8, v10

    move v10, v6

    move-object/from16 v6, p9

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .local v10, "field":I
    .restart local v17    # "useDateFormatSymbols":Z
    if-eqz v17, :cond_312

    .line 2560
    iget-object v0, v2, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2561
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 2560
    const/16 v4, 0x9

    move/from16 v3, p2

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v2, v0

    .local v2, "index":I
    if-lez v0, :cond_30a

    .line 2562
    return v2

    .line 2560
    :cond_30a
    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v10

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2565
    .end local v2    # "index":I
    :cond_312
    move-object v1, v2

    iget-object v0, v1, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {v1, v10, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2566
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    move v4, v10

    .end local v10    # "field":I
    .local v4, "field":I
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v1, v0

    .local v1, "index":I
    if-lez v0, :cond_328

    .line 2567
    return v1

    .line 2570
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_328
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v4

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2536
    .end local v1    # "index":I
    .end local v4    # "field":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .end local v17    # "useDateFormatSymbols":Z
    .local v5, "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    .local v10, "pos":Ljava/text/ParsePosition;
    :pswitch_332
    move/from16 v17, v5

    move v4, v6

    move-object v8, v10

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .end local v10    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v17    # "useDateFormatSymbols":Z
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p9

    .end local v17    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    invoke-direct/range {v1 .. v7}, Ljava/text/SimpleDateFormat;->parseWeekday(Ljava/lang/String;IIZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2538
    move-object v6, v7

    .local v0, "idx":I
    if-lez v0, :cond_347

    .line 2539
    return v0

    .line 2538
    :cond_347
    move-object/from16 v2, p1

    move v14, v4

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2494
    .end local v0    # "idx":I
    .end local v4    # "field":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v6    # "field":I
    .restart local v10    # "pos":Ljava/text/ParsePosition;
    :pswitch_34d
    move v4, v6

    move-object v8, v10

    move-object/from16 v6, p9

    .end local v6    # "field":I
    .end local v10    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result v0

    if-nez v0, :cond_36a

    .line 2496
    const/4 v0, 0x1

    if-lt v9, v0, :cond_364

    const/16 v0, 0x18

    if-le v9, v0, :cond_36a

    .line 2497
    move-object/from16 v2, p1

    move v14, v4

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2496
    :cond_364
    move-object/from16 v2, p1

    move v14, v4

    move-object v10, v8

    goto/16 :goto_4d0

    .line 2501
    :cond_36a
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    if-ne v9, v0, :cond_379

    .line 2502
    const/4 v9, 0x0

    .line 2504
    :cond_379
    invoke-virtual {v6, v2, v9}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2505
    iget v0, v8, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2473
    .end local v4    # "field":I
    .end local v8    # "pos":Ljava/text/ParsePosition;
    .restart local v6    # "field":I
    .restart local v10    # "pos":Ljava/text/ParsePosition;
    :pswitch_37f
    move v4, v6

    move-object v8, v10

    move-object/from16 v6, p9

    .end local v6    # "field":I
    .end local v10    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "field":I
    .restart local v8    # "pos":Ljava/text/ParsePosition;
    move v10, v4

    move v4, v9

    .end local v9    # "value":I
    .local v4, "value":I
    .local v10, "field":I
    const/4 v9, 0x0

    move v2, v10

    move-object v10, v6

    move v6, v2

    move-object/from16 v2, p1

    move/from16 v3, p4

    move-object v7, v8

    move v8, v5

    move/from16 v5, p2

    .end local v5    # "useDateFormatSymbols":Z
    .end local v10    # "field":I
    .restart local v6    # "field":I
    .restart local v7    # "pos":Ljava/text/ParsePosition;
    .local v8, "useDateFormatSymbols":Z
    invoke-direct/range {v1 .. v10}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIILjava/text/ParsePosition;ZZLjava/text/CalendarBuilder;)I

    move-result v0

    .line 2475
    move v9, v4

    move v4, v6

    move-object v10, v7

    move v7, v8

    move v8, v3

    .end local v6    # "field":I
    .end local v8    # "useDateFormatSymbols":Z
    .restart local v0    # "idx":I
    .local v4, "field":I
    .local v7, "useDateFormatSymbols":Z
    .restart local v9    # "value":I
    .local v10, "pos":Ljava/text/ParsePosition;
    if-lez v0, :cond_39d

    .line 2476
    return v0

    .line 2475
    :cond_39d
    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v4

    goto/16 :goto_4d0

    .line 2385
    .end local v0    # "idx":I
    .end local v4    # "field":I
    .end local v7    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    :pswitch_3a4
    move v7, v5

    move v4, v6

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v4    # "field":I
    .restart local v7    # "useDateFormatSymbols":Z
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-nez v0, :cond_3d6

    .line 2388
    const/4 v0, 0x4

    if-lt v8, v0, :cond_3b1

    const/4 v15, 0x2

    goto :goto_3b2

    :cond_3b1
    const/4 v15, 0x1

    .line 2389
    .local v15, "style":I
    :goto_3b2
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    iget-object v2, v1, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v4, v15, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2390
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_3cb

    .line 2391
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v14, v4

    .end local v4    # "field":I
    .restart local v14    # "field":I
    move v3, v0

    .local v3, "index":I
    if-lez v0, :cond_3d0

    .line 2392
    return v3

    .line 2390
    .end local v3    # "index":I
    .end local v14    # "field":I
    .restart local v4    # "field":I
    :cond_3cb
    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v4

    .line 2395
    .end local v4    # "field":I
    .restart local v14    # "field":I
    :cond_3d0
    invoke-virtual {v6, v14, v9}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2396
    iget v0, v10, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2405
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "field":I
    .end local v15    # "style":I
    .restart local v4    # "field":I
    :cond_3d6
    move-object/from16 v2, p1

    move-object/from16 v6, p9

    move v14, v4

    .end local v4    # "field":I
    .restart local v14    # "field":I
    const/4 v0, 0x2

    if-gt v8, v0, :cond_415

    iget v3, v10, Ljava/text/ParsePosition;->index:I

    sub-int/2addr v3, v13

    if-ne v3, v0, :cond_415

    .line 2406
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_415

    add-int/lit8 v0, v13, 0x1

    .line 2407
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_415

    .line 2416
    iget v0, v1, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    const/16 v3, 0x64

    rem-int/2addr v0, v3

    .line 2417
    .local v0, "ambiguousTwoDigitYear":I
    if-ne v9, v0, :cond_402

    const/4 v15, 0x1

    goto :goto_403

    :cond_402
    const/4 v15, 0x0

    :goto_403
    const/16 v16, 0x0

    aput-boolean v15, p6, v16

    .line 2418
    iget v4, v1, Ljava/text/SimpleDateFormat;->defaultCenturyStartYear:I

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    .line 2419
    if-ge v9, v0, :cond_410

    move/from16 v16, v3

    goto :goto_412

    :cond_410
    const/16 v16, 0x0

    :goto_412
    add-int v4, v4, v16

    add-int/2addr v9, v4

    .line 2421
    .end local v0    # "ambiguousTwoDigitYear":I
    :cond_415
    invoke-virtual {v6, v14, v9}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2422
    iget v0, v10, Ljava/text/ParsePosition;->index:I

    return v0

    .line 2371
    .end local v7    # "useDateFormatSymbols":Z
    .end local v14    # "field":I
    .local v5, "useDateFormatSymbols":Z
    .restart local v6    # "field":I
    :pswitch_41b
    move v7, v5

    move v14, v6

    move-object/from16 v6, p9

    .end local v5    # "useDateFormatSymbols":Z
    .end local v6    # "field":I
    .restart local v7    # "useDateFormatSymbols":Z
    .restart local v14    # "field":I
    if-eqz v7, :cond_438

    .line 2372
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/text/CalendarBuilder;)I

    move-result v0

    move v2, v0

    .restart local v2    # "index":I
    if-lez v0, :cond_432

    .line 2373
    return v2

    .line 2372
    :cond_432
    move-object/from16 v2, p1

    move-object/from16 v6, p9

    goto/16 :goto_4d0

    .line 2376
    .end local v2    # "index":I
    :cond_438
    iget-object v0, v1, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    invoke-direct {v1, v14, v0}, Ljava/text/SimpleDateFormat;->getDisplayNamesMap(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 2377
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p9

    move v4, v14

    .end local v14    # "field":I
    .restart local v4    # "field":I
    invoke-direct/range {v1 .. v6}, Ljava/text/SimpleDateFormat;->matchString(Ljava/lang/String;IILjava/util/Map;Ljava/text/CalendarBuilder;)I

    move-result v0

    .end local v4    # "field":I
    .restart local v14    # "field":I
    move v3, v0

    .restart local v3    # "index":I
    if-lez v0, :cond_44d

    .line 2378
    return v3

    .line 2381
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_44d
    goto/16 :goto_4d0

    .line 2716
    .end local v3    # "index":I
    .local v0, "parseStart":I
    :cond_44f
    iget-object v3, v1, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int v4, p2, v8

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .local v3, "number":Ljava/lang/Number;
    goto :goto_463

    .line 2718
    .end local v3    # "number":Ljava/lang/Number;
    :cond_45d
    iget-object v3, v1, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v2, v10}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    .line 2720
    .restart local v3    # "number":Ljava/lang/Number;
    :goto_463
    if-eqz v3, :cond_4cd

    .line 2725
    const/16 v4, 0x8

    if-ne v12, v4, :cond_489

    .line 2732
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 2733
    .local v4, "doubleValue":D
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    sub-int/2addr v15, v0

    .line 2734
    .local v15, "width":I
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    .end local v3    # "number":Ljava/lang/Number;
    .end local v4    # "doubleValue":D
    .local v16, "number":Ljava/lang/Number;
    .local v17, "doubleValue":D
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    move v5, v7

    .end local v7    # "useDateFormatSymbols":Z
    .local v5, "useDateFormatSymbols":Z
    int-to-double v7, v15

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 2735
    .local v3, "divisor":D
    div-double v7, v17, v3

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v20

    double-to-int v3, v7

    .line 2736
    .end local v9    # "value":I
    .end local v15    # "width":I
    .end local v17    # "doubleValue":D
    .local v3, "value":I
    goto :goto_490

    .line 2737
    .end local v5    # "useDateFormatSymbols":Z
    .end local v16    # "number":Ljava/lang/Number;
    .local v3, "number":Ljava/lang/Number;
    .restart local v7    # "useDateFormatSymbols":Z
    .restart local v9    # "value":I
    :cond_489
    move-object/from16 v16, v3

    move v5, v7

    .end local v3    # "number":Ljava/lang/Number;
    .end local v7    # "useDateFormatSymbols":Z
    .restart local v5    # "useDateFormatSymbols":Z
    .restart local v16    # "number":Ljava/lang/Number;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 2741
    .end local v9    # "value":I
    .local v3, "value":I
    :goto_490
    if-eqz p8, :cond_4c7

    if-gez v3, :cond_4c7

    iget v4, v10, Ljava/text/ParsePosition;->index:I

    .line 2742
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4aa

    iget v4, v10, Ljava/text/ParsePosition;->index:I

    .line 2743
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v7, v1, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v7, :cond_4a7

    goto :goto_4aa

    :cond_4a7
    const/16 v19, 0x1

    goto :goto_4c0

    :cond_4aa
    :goto_4aa
    iget v4, v10, Ljava/text/ParsePosition;->index:I

    .line 2744
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_4c7

    iget v4, v10, Ljava/text/ParsePosition;->index:I

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 2745
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v7, v1, Ljava/text/SimpleDateFormat;->minusSign:C

    if-ne v4, v7, :cond_4c7

    .line 2746
    :goto_4c0
    neg-int v3, v3

    .line 2747
    iget v4, v10, Ljava/text/ParsePosition;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v10, Ljava/text/ParsePosition;->index:I

    .line 2750
    :cond_4c7
    invoke-virtual {v6, v14, v3}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2751
    iget v4, v10, Ljava/text/ParsePosition;->index:I

    return v4

    .line 2720
    .end local v5    # "useDateFormatSymbols":Z
    .end local v16    # "number":Ljava/lang/Number;
    .local v3, "number":Ljava/lang/Number;
    .restart local v7    # "useDateFormatSymbols":Z
    .restart local v9    # "value":I
    :cond_4cd
    move-object/from16 v16, v3

    move v5, v7

    .line 2758
    .end local v0    # "parseStart":I
    .end local v3    # "number":Ljava/lang/Number;
    .end local v7    # "useDateFormatSymbols":Z
    .end local v14    # "field":I
    .local v4, "field":I
    :goto_4d0
    move v4, v9

    .end local v9    # "value":I
    .local v4, "value":I
    .restart local v14    # "field":I
    :goto_4d1
    iget v0, v10, Ljava/text/ParsePosition;->index:I

    iput v0, v11, Ljava/text/ParsePosition;->errorIndex:I

    .line 2759
    return p3

    .line 2318
    .end local v13    # "actualStart":I
    .end local v14    # "field":I
    .restart local v6    # "field":I
    .local v7, "c":C
    :cond_4d6
    move v14, v6

    move v15, v9

    move-object/from16 v6, p9

    .line 2321
    .end local v6    # "field":I
    .restart local v14    # "field":I
    iget v3, v10, Ljava/text/ParsePosition;->index:I

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Ljava/text/ParsePosition;->index:I

    .line 2322
    .end local v7    # "c":C
    move/from16 v3, p2

    move/from16 v8, p4

    move v6, v14

    move v9, v15

    goto/16 :goto_2c

    :pswitch_data_4ea
    .packed-switch 0x0
        :pswitch_41b
        :pswitch_3a4
        :pswitch_37f
        :pswitch_d6
        :pswitch_34d
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_332
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_2ec
        :pswitch_2b4
        :pswitch_d6
        :pswitch_18b
        :pswitch_18b
        :pswitch_3a4
        :pswitch_d6
        :pswitch_120
        :pswitch_fe
        :pswitch_ea
    .end packed-switch
.end method

.method private greylist-max-o subParseNumericZone(Ljava/lang/String;IIIZLjava/text/CalendarBuilder;)I
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "sign"    # I
    .param p4, "count"    # I
    .param p5, "colon"    # Z
    .param p6, "calb"    # Ljava/text/CalendarBuilder;

    .line 2199
    move v0, p2

    .line 2203
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2206
    .local v0, "c":C
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_b} :catch_8c

    if-nez v2, :cond_f

    .line 2207
    goto/16 :goto_8d

    .line 2209
    :cond_f
    add-int/lit8 v2, v0, -0x30

    .line 2210
    .local v2, "hours":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    :try_start_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2211
    .end local v0    # "c":C
    .local v1, "c":C
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_1b} :catch_89

    if-eqz v0, :cond_24

    .line 2212
    mul-int/lit8 v0, v2, 0xa

    add-int/lit8 v4, v1, -0x30

    add-int v2, v0, v4

    goto :goto_26

    .line 2223
    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 2225
    :goto_26
    const/16 v0, 0x17

    if-le v2, v0, :cond_2d

    .line 2226
    move v1, v3

    goto/16 :goto_8d

    .line 2228
    :cond_2d
    const/4 v0, 0x0

    .line 2229
    .local v0, "minutes":I
    const/4 v4, 0x1

    if-eq p4, v4, :cond_71

    .line 2231
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    :try_start_33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_37} :catch_6e

    .line 2247
    .end local v1    # "c":C
    .local v3, "c":C
    const/16 v1, 0x3a

    if-ne v3, v1, :cond_43

    .line 2248
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "index":I
    .local v1, "index":I
    :try_start_3d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    goto :goto_48

    .line 2249
    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_43
    if-eqz p5, :cond_47

    .line 2250
    move v1, v4

    goto :goto_8d

    .line 2249
    :cond_47
    move v1, v4

    .line 2253
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :goto_48
    invoke-direct {p0, v3}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v4
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3d .. :try_end_4c} :catch_8c

    if-nez v4, :cond_4f

    .line 2254
    goto :goto_8d

    .line 2256
    :cond_4f
    add-int/lit8 v0, v3, -0x30

    .line 2257
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .restart local v4    # "index":I
    :try_start_53
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2258
    .end local v3    # "c":C
    .local v1, "c":C
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;->isDigit(C)Z

    move-result v3
    :try_end_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_53 .. :try_end_5b} :catch_6e

    if-nez v3, :cond_5e

    .line 2259
    goto :goto_69

    .line 2261
    :cond_5e
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v5, v1, -0x30

    add-int v0, v3, v5

    .line 2262
    const/16 v3, 0x3b

    if-le v0, v3, :cond_6b

    .line 2263
    nop

    .line 2272
    .end local v0    # "minutes":I
    .end local v1    # "c":C
    .end local v2    # "hours":I
    :goto_69
    move v1, v4

    goto :goto_8d

    .line 2262
    .restart local v0    # "minutes":I
    .restart local v1    # "c":C
    .restart local v2    # "hours":I
    :cond_6b
    move v3, v1

    move v1, v4

    goto :goto_74

    .line 2270
    .end local v0    # "minutes":I
    .end local v1    # "c":C
    .end local v2    # "hours":I
    :catch_6e
    move-exception v0

    move v1, v4

    goto :goto_8d

    .line 2229
    .end local v4    # "index":I
    .restart local v0    # "minutes":I
    .restart local v1    # "c":C
    .restart local v2    # "hours":I
    .local v3, "index":I
    :cond_71
    move v7, v3

    move v3, v1

    move v1, v7

    .line 2266
    .local v1, "index":I
    .local v3, "c":C
    :goto_74
    mul-int/lit8 v4, v2, 0x3c

    add-int/2addr v0, v4

    .line 2267
    const v4, 0xea60

    mul-int/2addr v4, v0

    mul-int/2addr v4, p3

    const/16 v5, 0xf

    :try_start_7e
    invoke-virtual {p6, v5, v4}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    move-result-object v4

    .line 2268
    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_88} :catch_8c

    .line 2269
    return v1

    .line 2270
    .end local v0    # "minutes":I
    .end local v1    # "index":I
    .end local v2    # "hours":I
    .local v3, "index":I
    :catch_89
    move-exception v0

    move v1, v3

    goto :goto_8d

    .end local v3    # "index":I
    .restart local v1    # "index":I
    :catch_8c
    move-exception v0

    .line 2272
    :goto_8d
    rsub-int/lit8 v0, v1, 0x1

    return v0
.end method

.method private greylist-max-o subParseZoneString(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2067
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v0, v0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-eqz v0, :cond_b

    .line 2069
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0

    .line 2071
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o subParseZoneStringFromICU(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2090
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, "currentTimeZoneID":Ljava/lang/String;
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;->getExtendedTimeZoneNames()Lcom/android/icu/text/ExtendedTimeZoneNames;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/icu/text/ExtendedTimeZoneNames;->matchName(Ljava/lang/CharSequence;ILjava/lang/String;)Lcom/android/icu/text/ExtendedTimeZoneNames$Match;

    move-result-object v1

    .line 2093
    .local v1, "matchedName":Lcom/android/icu/text/ExtendedTimeZoneNames$Match;
    if-nez v1, :cond_18

    .line 2095
    neg-int v2, p2

    return v2

    .line 2098
    :cond_18
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->getTzId()Ljava/lang/String;

    move-result-object v2

    .line 2099
    .local v2, "tzId":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2100
    .local v3, "newTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 2101
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2105
    :cond_29
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->isDst()Z

    move-result v4

    .line 2106
    .local v4, "isDst":Z
    if-eqz v4, :cond_34

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    .line 2107
    .local v5, "dstAmount":I
    :goto_35
    if-eqz v4, :cond_39

    if-eqz v5, :cond_44

    .line 2108
    :cond_39
    const/16 v6, 0xf

    invoke-virtual {p3, v6}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v5}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2111
    :cond_44
    invoke-virtual {v1}, Lcom/android/icu/text/ExtendedTimeZoneNames$Match;->getMatchLength()I

    move-result v6

    add-int/2addr v6, p2

    return v6
.end method

.method private greylist-max-o subParseZoneStringFromSymbols(Ljava/lang/String;ILjava/text/CalendarBuilder;)I
    .registers 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "calb"    # Ljava/text/CalendarBuilder;

    .line 2119
    const/4 v0, 0x0

    .line 2120
    .local v0, "useSameName":Z
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 2125
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2126
    .local v2, "zoneIndex":I
    const/4 v3, 0x0

    .line 2127
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v4

    .line 2128
    .local v4, "zoneStrings":[[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2129
    .local v5, "zoneNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2130
    .local v6, "nameIndex":I
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_38

    .line 2131
    aget-object v5, v4, v2

    .line 2132
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v10

    move v6, v10

    if-lez v10, :cond_38

    .line 2133
    if-gt v6, v8, :cond_32

    .line 2135
    aget-object v10, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2137
    :cond_32
    aget-object v10, v5, v7

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2140
    :cond_38
    if-nez v3, :cond_65

    .line 2141
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormatSymbols;->getZoneIndex(Ljava/lang/String;)I

    move-result v2

    .line 2142
    if-eq v2, v9, :cond_65

    .line 2143
    aget-object v5, v4, v2

    .line 2144
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v9

    move v6, v9

    if-lez v9, :cond_65

    .line 2145
    if-gt v6, v8, :cond_5f

    .line 2146
    aget-object v9, v5, v6

    add-int/lit8 v10, v6, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2148
    :cond_5f
    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2153
    :cond_65
    if-nez v3, :cond_8a

    .line 2154
    array-length v9, v4

    .line 2155
    .local v9, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_69
    if-ge v10, v9, :cond_8a

    .line 2156
    aget-object v5, v4, v10

    .line 2157
    invoke-direct {p0, p1, p2, v5}, Ljava/text/SimpleDateFormat;->matchZoneString(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v11

    move v6, v11

    if-lez v11, :cond_87

    .line 2158
    if-gt v6, v8, :cond_80

    .line 2159
    aget-object v8, v5, v6

    add-int/lit8 v11, v6, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2161
    :cond_80
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2162
    goto :goto_8a

    .line 2155
    :cond_87
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 2166
    .end local v9    # "len":I
    .end local v10    # "i":I
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_b5

    .line 2167
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_95

    .line 2168
    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2176
    :cond_95
    const/4 v8, 0x3

    if-lt v6, v8, :cond_9c

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    .line 2177
    .local v7, "dstAmount":I
    :cond_9c
    if-nez v0, :cond_ad

    if-lt v6, v8, :cond_a2

    if-eqz v7, :cond_ad

    .line 2178
    :cond_a2
    const/16 v8, 0xf

    invoke-virtual {p3, v8}, Ljava/text/CalendarBuilder;->clear(I)Ljava/text/CalendarBuilder;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9, v7}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 2180
    :cond_ad
    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, p2

    return v8

    .line 2182
    .end local v7    # "dstAmount":I
    :cond_b5
    neg-int v7, p2

    return v7
.end method

.method private greylist-max-o translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2860
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2861
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 2862
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2863
    .local v3, "c":C
    const/16 v4, 0x27

    if-eqz v1, :cond_19

    .line 2864
    if-ne v3, v4, :cond_5d

    .line 2865
    const/4 v1, 0x0

    goto :goto_5d

    .line 2869
    :cond_19
    if-ne v3, v4, :cond_1d

    .line 2870
    const/4 v1, 0x1

    goto :goto_5d

    .line 2871
    :cond_1d
    const/16 v4, 0x61

    if-lt v3, v4, :cond_25

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2d

    :cond_25
    const/16 v4, 0x41

    if-lt v3, v4, :cond_5d

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_5d

    .line 2872
    :cond_2d
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2873
    .local v4, "ci":I
    if-ltz v4, :cond_3e

    .line 2877
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 2878
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5d

    .line 2881
    :cond_3e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal pattern  character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2887
    .end local v4    # "ci":I
    :cond_5d
    :goto_5d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2861
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2889
    .end local v2    # "i":I
    :cond_63
    if-nez v1, :cond_6a

    .line 2892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2890
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unfinished quote in pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o useDateFormatSymbols()Z
    .registers 3

    .line 2847
    iget-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 2848
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.GregorianCalendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->locale:Ljava/util/Locale;

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 2847
    :goto_1e
    return v0
.end method

.method private greylist-max-o zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .line 1677
    :try_start_0
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    if-nez v0, :cond_12

    .line 1678
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    .line 1680
    :cond_12
    if-ltz p1, :cond_85

    .line 1681
    const/16 v0, 0x64

    const/4 v1, 0x2

    if-ge p1, v0, :cond_44

    const/4 v0, 0x1

    if-lt p2, v0, :cond_44

    if-gt p2, v1, :cond_44

    .line 1682
    const/16 v0, 0xa

    if-ge p1, v0, :cond_31

    .line 1683
    if-ne p2, v1, :cond_29

    .line 1684
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1686
    :cond_29
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    add-int/2addr v0, p1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 1688
    :cond_31
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1689
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1691
    :goto_43
    return-void

    .line 1692
    :cond_44
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_85

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_85

    .line 1693
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7b

    .line 1694
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit16 v1, p1, 0x3e8

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1695
    rem-int/lit16 v0, p1, 0x3e8
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_86

    .line 1696
    .end local p1    # "value":I
    .local v0, "value":I
    :try_start_5a
    iget-char p1, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, v0, 0x64

    add-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1697
    rem-int/lit8 p1, v0, 0x64
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_78

    .line 1698
    .end local v0    # "value":I
    .restart local p1    # "value":I
    :try_start_65
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1699
    iget-char v0, p0, Ljava/text/SimpleDateFormat;->zeroDigit:C

    rem-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1700
    return-void

    .line 1708
    .end local p1    # "value":I
    .restart local v0    # "value":I
    :catch_78
    move-exception p1

    move p1, v0

    goto :goto_87

    .line 1702
    .end local v0    # "value":I
    .restart local p1    # "value":I
    :cond_7b
    if-ne p2, v1, :cond_85

    if-ne p3, v1, :cond_85

    .line 1703
    rem-int/lit8 v0, p1, 0x64

    invoke-direct {p0, v0, v1, v1, p4}, Ljava/text/SimpleDateFormat;->zeroPaddingNumber(IIILjava/lang/StringBuffer;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_84} :catch_86

    .line 1704
    return-void

    .line 1709
    :cond_85
    goto :goto_87

    .line 1708
    :catch_86
    move-exception v0

    .line 1711
    :goto_87
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1712
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1713
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    sget-object v3, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, p4, v3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1714
    return-void
.end method


# virtual methods
.method public whitelist test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2941
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2942
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    .line 2941
    const-string v1, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, p1, v0, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2944
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->compile(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->compiledPattern:[C

    .line 2945
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2946
    return-void
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2924
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->applyPatternImpl(Ljava/lang/String;)V

    .line 2925
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2980
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2981
    .local v0, "other":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2982
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3007
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3008
    return v1

    .line 3010
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 3011
    .local v0, "that":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 3012
    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 3011
    :goto_22
    return v1
.end method

.method public whitelist test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1086
    const/4 v0, 0x0

    iput v0, p3, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p3, Ljava/text/FieldPosition;->beginIndex:I

    .line 1087
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldDelegate()Ljava/text/Format$FieldDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1144
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/CharacterIteratorFieldDelegate;

    invoke-direct {v1}, Ljava/text/CharacterIteratorFieldDelegate;-><init>()V

    .line 1147
    .local v1, "delegate":Ljava/text/CharacterIteratorFieldDelegate;
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_15

    .line 1148
    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 1150
    :cond_15
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_31

    .line 1151
    new-instance v2, Ljava/util/Date;

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v2, v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/Format$FieldDelegate;)Ljava/lang/StringBuffer;

    .line 1161
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/CharacterIteratorFieldDelegate;->getIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 1153
    :cond_31
    if-nez p1, :cond_3b

    .line 1154
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1158
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot format given Object as a Date"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .line 1057
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .line 2956
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2993
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1764
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1766
    .local v0, "tz":Ljava/util/TimeZone;
    :try_start_4
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;->parseInternal(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1768
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1766
    return-object v1

    .line 1768
    :catchall_c
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1769
    throw v1
.end method

.method public whitelist test-api set2DigitYearStart(Ljava/util/Date;)V
    .registers 5
    .param p1, "startDate"    # Ljava/util/Date;

    .line 1044
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    .line 1045
    return-void
.end method

.method public whitelist test-api setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 2968
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2969
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/SimpleDateFormat;->useDateFormatSymbols:Z

    .line 2970
    return-void
.end method

.method public whitelist test-api toLocalizedPattern()Ljava/lang/String;
    .registers 4

    .line 2910
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 2912
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v1

    .line 2910
    const-string v2, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    invoke-direct {p0, v0, v2, v1}, Ljava/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 2901
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
