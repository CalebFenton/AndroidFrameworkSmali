.class public Landroid/icu/util/SimpleTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DOM_MODE:I = 0x1

.field private static final greylist-max-o DOW_GE_DOM_MODE:I = 0x3

.field private static final greylist-max-o DOW_IN_MONTH_MODE:I = 0x2

.field private static final greylist-max-o DOW_LE_DOM_MODE:I = 0x4

.field public static final greylist-max-o STANDARD_TIME:I = 0x1

.field public static final greylist-max-o UTC_TIME:I = 0x2

.field public static final greylist-max-o WALL_TIME:I = 0x0

.field private static final whitelist serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final greylist-max-o staticMonthLength:[B


# instance fields
.field private greylist-max-o dst:I

.field private transient greylist-max-o dstRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private greylist-max-o endDay:I

.field private greylist-max-o endDayOfWeek:I

.field private greylist-max-o endMode:I

.field private greylist-max-o endMonth:I

.field private greylist-max-o endTime:I

.field private greylist-max-o endTimeMode:I

.field private transient greylist-max-o firstTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient greylist-max-o initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient greylist-max-o isFrozen:Z

.field private greylist-max-o raw:I

.field private greylist-max-o startDay:I

.field private greylist-max-o startDayOfWeek:I

.field private greylist-max-o startMode:I

.field private greylist-max-o startMonth:I

.field private greylist-max-o startTime:I

.field private greylist-max-o startTimeMode:I

.field private greylist-max-o startYear:I

.field private transient greylist-max-o stdRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private transient greylist-max-o transitionRulesInitialized:Z

.field private greylist-max-o useDaylight:Z

.field private greylist-max-o xinfo:Landroid/icu/util/STZInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    nop

    .line 619
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    nop

    :array_c
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 17
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    .line 64
    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 924
    const v1, 0x36ee80

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 65
    const/4 v11, 0x0

    const v12, 0x36ee80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 70
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;IIIIIIII)V
    .registers 25
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    .line 132
    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 924
    const v1, 0x36ee80

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 133
    const/4 v11, 0x0

    const v12, 0x36ee80

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 139
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 26
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "dstSavings"    # I

    .line 224
    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 924
    const v1, 0x36ee80

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 225
    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 231
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 28
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "dstSavings"    # I

    .line 182
    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 924
    const v1, 0x36ee80

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 925
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 183
    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 189
    return-void
.end method

.method private greylist-max-o compareToRule(IIIIIIIIIIII)I
    .registers 25
    .param p1, "month"    # I
    .param p2, "monthLen"    # I
    .param p3, "prevMonthLen"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I
    .param p7, "millisDelta"    # I
    .param p8, "ruleMode"    # I
    .param p9, "ruleMonth"    # I
    .param p10, "ruleDayOfWeek"    # I
    .param p11, "ruleDay"    # I
    .param p12, "ruleMillis"    # I

    .line 836
    move/from16 v0, p9

    move/from16 v1, p12

    add-int v2, p6, p7

    move/from16 v3, p5

    move v4, v2

    move/from16 v2, p4

    .line 838
    .end local p4    # "dayOfMonth":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "millis":I
    .local v2, "dayOfMonth":I
    .local v3, "dayOfWeek":I
    .local v4, "millis":I
    :cond_b
    :goto_b
    const v5, 0x5265c00

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1e

    .line 839
    sub-int/2addr v4, v5

    .line 840
    add-int/lit8 v2, v2, 0x1

    .line 841
    rem-int/lit8 v5, v3, 0x7

    add-int/lit8 v3, v5, 0x1

    .line 842
    if-le v2, p2, :cond_b

    .line 843
    const/4 v2, 0x1

    .line 848
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 861
    :cond_1e
    :goto_1e
    if-gez v4, :cond_2f

    .line 863
    add-int/lit8 v2, v2, -0x1

    .line 864
    add-int/lit8 v7, v3, 0x5

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v3, v7, 0x1

    .line 865
    if-ge v2, v6, :cond_2d

    .line 866
    move v2, p3

    .line 867
    add-int/lit8 p1, p1, -0x1

    .line 869
    :cond_2d
    add-int/2addr v4, v5

    goto :goto_1e

    .line 872
    :cond_2f
    const/4 v5, -0x1

    if-ge p1, v0, :cond_33

    return v5

    .line 873
    :cond_33
    if-le p1, v0, :cond_36

    return v6

    .line 875
    :cond_36
    const/4 v7, 0x0

    .line 878
    .local v7, "ruleDayOfMonth":I
    move/from16 v8, p11

    if-le v8, p2, :cond_3c

    .line 879
    move v8, p2

    .line 882
    .end local p11    # "ruleDay":I
    .local v8, "ruleDay":I
    :cond_3c
    packed-switch p8, :pswitch_data_88

    goto :goto_79

    .line 903
    :pswitch_40
    rsub-int/lit8 v9, p10, 0x31

    add-int/2addr v9, v8

    add-int/2addr v9, v3

    sub-int/2addr v9, v2

    rem-int/lit8 v9, v9, 0x7

    sub-int v7, v8, v9

    goto :goto_79

    .line 899
    :pswitch_4a
    add-int/lit8 v9, p10, 0x31

    sub-int/2addr v9, v8

    sub-int/2addr v9, v3

    add-int/2addr v9, v2

    rem-int/lit8 v9, v9, 0x7

    add-int v7, v8, v9

    .line 901
    goto :goto_79

    .line 889
    :pswitch_54
    if-lez v8, :cond_66

    .line 890
    add-int/lit8 v9, v8, -0x1

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v9, v6

    add-int/lit8 v10, p10, 0x7

    sub-int v11, v3, v2

    add-int/2addr v11, v6

    sub-int/2addr v10, v11

    rem-int/lit8 v10, v10, 0x7

    add-int v7, v9, v10

    goto :goto_79

    .line 894
    :cond_66
    add-int/lit8 v9, v8, 0x1

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v9, p2

    add-int v10, v3, p2

    sub-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x7

    sub-int v10, v10, p10

    rem-int/lit8 v10, v10, 0x7

    sub-int v7, v9, v10

    .line 897
    goto :goto_79

    .line 885
    :pswitch_77
    move v7, v8

    .line 886
    nop

    .line 910
    :goto_79
    if-ge v2, v7, :cond_7c

    return v5

    .line 911
    :cond_7c
    if-le v2, v7, :cond_7f

    return v6

    .line 913
    :cond_7f
    if-ge v4, v1, :cond_82

    .line 914
    return v5

    .line 915
    :cond_82
    if-le v4, v1, :cond_85

    .line 916
    return v6

    .line 918
    :cond_85
    const/4 v5, 0x0

    return v5

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_77
        :pswitch_54
        :pswitch_4a
        :pswitch_40
    .end packed-switch
.end method

.method private greylist-max-o construct(IIIIIIIIIIII)V
    .registers 14
    .param p1, "_raw"    # I
    .param p2, "_startMonth"    # I
    .param p3, "_startDay"    # I
    .param p4, "_startDayOfWeek"    # I
    .param p5, "_startTime"    # I
    .param p6, "_startTimeMode"    # I
    .param p7, "_endMonth"    # I
    .param p8, "_endDay"    # I
    .param p9, "_endDayOfWeek"    # I
    .param p10, "_endTime"    # I
    .param p11, "_endTimeMode"    # I
    .param p12, "_dst"    # I

    .line 978
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    .line 979
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    .line 980
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    .line 981
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 982
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    .line 983
    iput p6, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 984
    iput p7, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    .line 985
    iput p8, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    .line 986
    iput p9, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 987
    iput p10, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    .line 988
    iput p11, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 989
    iput p12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 990
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    .line 991
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    .line 992
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    .line 994
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeRules()V

    .line 996
    if-eqz p12, :cond_26

    .line 999
    return-void

    .line 997
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o decodeEndRule()V
    .registers 5

    .line 1076
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1077
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1b

    .line 1078
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 1080
    :cond_1b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_9e

    .line 1081
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_98

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v3, 0xb

    if-gt v0, v3, :cond_98

    .line 1084
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-gt v0, v2, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v0, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_92

    .line 1088
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_41

    .line 1089
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_62

    .line 1091
    :cond_41
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_48

    .line 1092
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_5d

    .line 1094
    :cond_48
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1095
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_55

    .line 1096
    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_5d

    .line 1098
    :cond_55
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    .line 1099
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    .line 1102
    :goto_5d
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_8c

    .line 1106
    :goto_62
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v2, :cond_77

    .line 1107
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_71

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_71

    goto :goto_9e

    .line 1108
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1110
    :cond_77
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_86

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_86

    goto :goto_9e

    .line 1111
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1103
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1086
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1082
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1114
    :cond_9e
    :goto_9e
    return-void
.end method

.method private greylist-max-o decodeRules()V
    .registers 1

    .line 1001
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    .line 1002
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    .line 1003
    return-void
.end method

.method private greylist-max-o decodeStartRule()V
    .registers 5

    .line 1030
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1031
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1b

    .line 1032
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 1034
    :cond_1b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_9e

    .line 1035
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_98

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    const/16 v3, 0xb

    if-gt v0, v3, :cond_98

    .line 1038
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-gt v0, v2, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v0, :cond_92

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_92

    .line 1042
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_41

    .line 1043
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_62

    .line 1045
    :cond_41
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_48

    .line 1046
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_5d

    .line 1048
    :cond_48
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1049
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_55

    .line 1050
    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_5d

    .line 1052
    :cond_55
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    .line 1053
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    .line 1056
    :goto_5d
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_8c

    .line 1060
    :goto_62
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v2, :cond_77

    .line 1061
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_71

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_71

    goto :goto_9e

    .line 1062
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1064
    :cond_77
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_86

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_86

    goto :goto_9e

    .line 1065
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1057
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1040
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1036
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1068
    :cond_9e
    :goto_9e
    return-void
.end method

.method private greylist-max-o getOffset(IIIIIIII)I
    .registers 29
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I
    .param p8, "prevMonthLength"    # I

    .line 673
    move-object/from16 v0, p0

    move/from16 v13, p1

    move/from16 v1, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v2, p7

    move/from16 v3, p8

    const/4 v14, 0x1

    if-eq v13, v14, :cond_15

    if-nez v13, :cond_c1

    :cond_15
    if-ltz v1, :cond_c1

    const/16 v7, 0xb

    if-gt v1, v7, :cond_c1

    if-lt v4, v14, :cond_c1

    if-gt v4, v2, :cond_c1

    if-lt v5, v14, :cond_c1

    const/4 v7, 0x7

    if-gt v5, v7, :cond_c1

    if-ltz v6, :cond_c1

    const v7, 0x5265c00

    if-ge v6, v7, :cond_c1

    const/16 v7, 0x1c

    if-lt v2, v7, :cond_c1

    const/16 v8, 0x1f

    if-gt v2, v8, :cond_c1

    if-lt v3, v7, :cond_c1

    if-gt v3, v8, :cond_c1

    .line 723
    iget v15, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    .line 726
    .local v15, "result":I
    iget-boolean v7, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_c0

    iget v7, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v8, p2

    if-lt v8, v7, :cond_c0

    if-eq v13, v14, :cond_47

    goto/16 :goto_c0

    .line 730
    :cond_47
    iget v7, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v16, 0x0

    if-le v7, v9, :cond_51

    move v7, v14

    goto :goto_53

    :cond_51
    move/from16 v7, v16

    .line 734
    .local v7, "southern":Z
    :goto_53
    nop

    .line 736
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5d

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v9, v9

    goto :goto_5f

    :cond_5d
    move/from16 v9, v16

    :goto_5f
    iget v8, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    move v11, v7

    move v7, v9

    .end local v7    # "southern":Z
    .local v11, "southern":Z
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move v12, v10

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move/from16 v17, v11

    .end local v11    # "southern":Z
    .local v17, "southern":Z
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move/from16 v18, v12

    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    .line 734
    move/from16 v14, v17

    move/from16 v13, v18

    .end local v17    # "southern":Z
    .local v14, "southern":Z
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v18

    .line 739
    .local v18, "startCompare":I
    const/16 v19, 0x0

    .line 747
    .local v19, "endCompare":I
    if-ltz v18, :cond_7e

    const/4 v1, 0x1

    goto :goto_80

    :cond_7e
    move/from16 v1, v16

    :goto_80
    if-eq v14, v1, :cond_b0

    .line 751
    nop

    .line 753
    iget v1, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-nez v1, :cond_8b

    iget v1, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    move v7, v1

    goto :goto_96

    .line 754
    :cond_8b
    iget v1, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v1, v13, :cond_94

    iget v1, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v1, v1

    move v7, v1

    goto :goto_96

    :cond_94
    move/from16 v7, v16

    :goto_96
    iget v8, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    .line 751
    move/from16 v1, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v19

    .line 763
    :cond_b0
    if-nez v14, :cond_b6

    if-ltz v18, :cond_b6

    if-ltz v19, :cond_bc

    :cond_b6
    if-eqz v14, :cond_bf

    if-gez v18, :cond_bc

    if-gez v19, :cond_bf

    .line 765
    :cond_bc
    iget v1, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    add-int/2addr v15, v1

    .line 767
    :cond_bf
    return v15

    .line 726
    .end local v14    # "southern":Z
    .end local v18    # "startCompare":I
    .end local v19    # "endCompare":I
    :cond_c0
    :goto_c0
    return v15

    .line 686
    .end local v15    # "result":I
    :cond_c1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private greylist-max-o getSTZInfo()Landroid/icu/util/STZInfo;
    .registers 2

    .line 603
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-nez v0, :cond_b

    .line 604
    new-instance v0, Landroid/icu/util/STZInfo;

    invoke-direct {v0}, Landroid/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 606
    :cond_b
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    return-object v0
.end method

.method private greylist-max-o idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # Ljava/lang/String;

    .line 1147
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1148
    const/4 v0, 0x1

    return v0

    .line 1150
    :cond_6
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 1151
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1153
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized greylist-max-o initTransitionRules()V
    .registers 26

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1310
    :try_start_3
    iget-boolean v0, v1, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1df

    if-eqz v0, :cond_9

    .line 1311
    monitor-exit p0

    return-void

    .line 1313
    :cond_9
    :try_start_9
    iget-boolean v0, v1, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1cc

    .line 1314
    const/4 v0, 0x0

    .line 1319
    .local v0, "dtRule":Landroid/icu/util/DateTimeRule;
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v5, 0x2

    if-ne v4, v3, :cond_17

    move v4, v3

    goto :goto_1e

    .line 1320
    :cond_17
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v4, v5, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    move v12, v4

    .line 1321
    .local v12, "timeRuleType":I
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startMode:I

    packed-switch v4, :pswitch_data_1e2

    .end local p0    # "this":Landroid/icu/util/SimpleTimeZone;
    move-object/from16 v17, v0

    goto :goto_6b

    .line 1334
    .restart local p0    # "this":Landroid/icu/util/SimpleTimeZone;
    :pswitch_27
    new-instance v6, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v0, v6

    move-object/from16 v17, v0

    goto :goto_6b

    .line 1330
    .end local p0    # "this":Landroid/icu/util/SimpleTimeZone;
    :pswitch_39
    new-instance v6, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v12}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v0, v6

    .line 1332
    move-object/from16 v17, v0

    goto :goto_6b

    .line 1326
    :pswitch_4b
    new-instance v6, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v10, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move v11, v12

    .end local v12    # "timeRuleType":I
    .local v11, "timeRuleType":I
    invoke-direct/range {v6 .. v11}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    .end local v11    # "timeRuleType":I
    .restart local v12    # "timeRuleType":I
    move-object v0, v6

    .line 1328
    move-object/from16 v17, v0

    goto :goto_6b

    .line 1323
    :pswitch_5d
    new-instance v4, Landroid/icu/util/DateTimeRule;

    iget v6, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct {v4, v6, v7, v8, v12}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    move-object v0, v4

    .line 1324
    move-object/from16 v17, v0

    .line 1339
    .end local v0    # "dtRule":Landroid/icu/util/DateTimeRule;
    .local v17, "dtRule":Landroid/icu/util/DateTimeRule;
    :goto_6b
    new-instance v13, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(DST)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v15

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v16

    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const v19, 0x7fffffff

    move/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    iput-object v13, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1343
    iget-object v0, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1346
    .local v6, "firstDstStart":J
    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v0, v3, :cond_ac

    move v5, v3

    goto :goto_b2

    .line 1347
    :cond_ac
    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v0, v5, :cond_b1

    goto :goto_b2

    :cond_b1
    move v5, v2

    :goto_b2
    move/from16 v24, v5

    .line 1348
    .end local v12    # "timeRuleType":I
    .local v24, "timeRuleType":I
    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endMode:I

    packed-switch v0, :pswitch_data_1ee

    move/from16 v5, v24

    .end local v24    # "timeRuleType":I
    .local v5, "timeRuleType":I
    move-object/from16 v12, v17

    goto/16 :goto_12a

    .line 1360
    .end local v5    # "timeRuleType":I
    .restart local v24    # "timeRuleType":I
    :pswitch_bf
    new-instance v18, Landroid/icu/util/DateTimeRule;

    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    const/16 v22, 0x0

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    invoke-direct/range {v18 .. v24}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object/from16 v17, v18

    move-object/from16 v12, v17

    move/from16 v5, v24

    goto :goto_12a

    .line 1356
    :pswitch_dd
    new-instance v18, Landroid/icu/util/DateTimeRule;

    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    const/16 v22, 0x1

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v8

    invoke-direct/range {v18 .. v24}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object/from16 v17, v18

    .line 1358
    move-object/from16 v12, v17

    move/from16 v5, v24

    goto :goto_12a

    .line 1353
    :pswitch_fb
    new-instance v18, Landroid/icu/util/DateTimeRule;

    iget v0, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v23, v24

    .end local v24    # "timeRuleType":I
    .local v23, "timeRuleType":I
    invoke-direct/range {v18 .. v23}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    move/from16 v5, v23

    .end local v23    # "timeRuleType":I
    .restart local v5    # "timeRuleType":I
    move-object/from16 v17, v18

    .line 1354
    move-object/from16 v12, v17

    goto :goto_12a

    .line 1350
    .end local v5    # "timeRuleType":I
    .restart local v24    # "timeRuleType":I
    :pswitch_119
    move/from16 v5, v24

    .end local v24    # "timeRuleType":I
    .restart local v5    # "timeRuleType":I
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct {v0, v4, v8, v9, v5}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    move-object/from16 v17, v0

    .line 1351
    move-object/from16 v12, v17

    .line 1365
    .end local v17    # "dtRule":Landroid/icu/util/DateTimeRule;
    .local v12, "dtRule":Landroid/icu/util/DateTimeRule;
    :goto_12a
    new-instance v8, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(STD)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v10

    iget v13, v1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const v14, 0x7fffffff

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    iput-object v8, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1369
    iget-object v0, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    iget-object v8, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual {v0, v4, v8}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1372
    .local v8, "firstStdStart":J
    cmp-long v0, v8, v6

    if-gez v0, :cond_19e

    .line 1373
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "(DST)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    iget-object v10, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1374
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v10

    invoke-direct {v0, v2, v4, v10}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1375
    new-instance v0, Landroid/icu/util/TimeZoneTransition;

    iget-object v2, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v4, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v8, v9, v2, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    goto :goto_1cb

    .line 1377
    :cond_19e
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "(STD)"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v10

    invoke-direct {v0, v4, v10, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1378
    new-instance v0, Landroid/icu/util/TimeZoneTransition;

    iget-object v2, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v4, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v6, v7, v2, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1381
    .end local v5    # "timeRuleType":I
    .end local v6    # "firstDstStart":J
    .end local v8    # "firstStdStart":J
    .end local v12    # "dtRule":Landroid/icu/util/DateTimeRule;
    :goto_1cb
    goto :goto_1db

    .line 1383
    :cond_1cc
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    invoke-direct {v0, v4, v5, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1385
    :goto_1db
    iput-boolean v3, v1, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1dd
    .catchall {:try_start_9 .. :try_end_1dd} :catchall_1df

    .line 1386
    monitor-exit p0

    return-void

    .line 1309
    :catchall_1df
    move-exception v0

    :try_start_1e0
    monitor-exit p0
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1df

    throw v0

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_27
    .end packed-switch

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_119
        :pswitch_fb
        :pswitch_dd
        :pswitch_bf
    .end packed-switch
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 565
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 588
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-eqz v0, :cond_c

    .line 589
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    invoke-virtual {v0, p0}, Landroid/icu/util/STZInfo;->applyTo(Landroid/icu/util/SimpleTimeZone;)V

    .line 591
    :cond_c
    return-void
.end method

.method private greylist-max-o setEndRule(IIIII)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I

    .line 510
    nop

    .line 512
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    .line 513
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    .line 514
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 515
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    .line 516
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 517
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 520
    return-void
.end method

.method private greylist-max-o setEndRule(IIIIIZ)V
    .registers 14
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I
    .param p6, "after"    # Z

    .line 488
    nop

    .line 489
    if-eqz p6, :cond_5

    move v3, p2

    goto :goto_7

    :cond_5
    neg-int v0, p2

    move v3, v0

    :goto_7
    neg-int v4, p3

    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    .end local p1    # "month":I
    .end local p4    # "time":I
    .end local p5    # "mode":I
    .local v2, "month":I
    .local v5, "time":I
    .local v6, "mode":I
    invoke-direct/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    .line 490
    return-void
.end method

.method private greylist-max-o setStartRule(IIIII)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I

    .line 355
    nop

    .line 357
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    .line 358
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    .line 359
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 360
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    .line 361
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 362
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 365
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 1189
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1190
    return-object p0

    .line 1192
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 3

    .line 1413
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    .line 1414
    .local v0, "tz":Landroid/icu/util/SimpleTimeZone;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 1415
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1123
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_8b

    .line 1124
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/util/SimpleTimeZone;

    .line 1125
    .local v2, "that":Landroid/icu/util/SimpleTimeZone;
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v3, v4, :cond_89

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v2, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_89

    .line 1127
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_88

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget v4, v2, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_89

    :cond_88
    goto :goto_8a

    :cond_89
    move v0, v1

    .line 1125
    :goto_8a
    return v0

    .line 1123
    .end local v2    # "that":Landroid/icu/util/SimpleTimeZone;
    :cond_8b
    :goto_8b
    return v1
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 1405
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 551
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    return v0
.end method

.method public greylist-max-o getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 14
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 1237
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1238
    return-object v1

    .line 1241
    :cond_6
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1242
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 1243
    .local v2, "firstTransitionTime":J
    cmp-long v0, p1, v2

    if-ltz v0, :cond_73

    if-eqz p3, :cond_1c

    cmp-long v0, p1, v2

    if-nez v0, :cond_1c

    move-wide v5, p1

    move v9, p3

    goto :goto_75

    .line 1246
    :cond_1c
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    move-wide v5, p1

    move v9, p3

    .end local p1    # "base":J
    .end local p3    # "inclusive":Z
    .local v5, "base":J
    .local v9, "inclusive":Z
    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 1248
    .local p1, "stdDate":Ljava/util/Date;
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object p2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {p2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p2

    .line 1250
    .local p2, "dstDate":Ljava/util/Date;
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_4c

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_5a

    .line 1251
    :cond_4c
    new-instance p3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v7, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p3, v0, v1, v4, v7}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p3

    .line 1253
    :cond_5a
    if-eqz p2, :cond_72

    if-eqz p1, :cond_64

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_72

    .line 1254
    :cond_64
    new-instance p3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v7, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p3, v0, v1, v4, v7}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p3

    .line 1256
    :cond_72
    return-object v1

    .line 1243
    .end local v5    # "base":J
    .end local v9    # "inclusive":Z
    .end local p2    # "dstDate":Ljava/util/Date;
    .local p1, "base":J
    .restart local p3    # "inclusive":Z
    :cond_73
    move-wide v5, p1

    move v9, p3

    .line 1244
    .end local p1    # "base":J
    .end local p3    # "inclusive":Z
    .restart local v5    # "base":J
    .restart local v9    # "inclusive":Z
    :goto_75
    iget-object p1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p1
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 16
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .line 635
    if-ltz p3, :cond_16

    const/16 v0, 0xb

    if-gt p3, v0, :cond_16

    .line 639
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "millis":I
    .local v2, "era":I
    .local v3, "year":I
    .local v4, "month":I
    .local v5, "day":I
    .local v6, "dayOfWeek":I
    .local v7, "millis":I
    invoke-virtual/range {v1 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result p1

    return p1

    .line 635
    .end local v2    # "era":I
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v6    # "dayOfWeek":I
    .end local v7    # "millis":I
    .restart local p1    # "era":I
    .restart local p2    # "year":I
    .restart local p3    # "month":I
    .restart local p4    # "day":I
    .restart local p5    # "dayOfWeek":I
    .restart local p6    # "millis":I
    :cond_16
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 636
    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "millis":I
    .restart local v2    # "era":I
    .restart local v3    # "year":I
    .restart local v4    # "month":I
    .restart local v5    # "day":I
    .restart local v6    # "dayOfWeek":I
    .restart local v7    # "millis":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public greylist-max-o getOffset(IIIIIII)I
    .registers 17
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    if-ltz p3, :cond_1b

    const/16 v0, 0xb

    if-gt p3, v0, :cond_1b

    .line 661
    nop

    .line 662
    invoke-static/range {p2 .. p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static/range {p2 .. p3}, Landroid/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    .line 661
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v7

    return v7

    .line 658
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    .registers 30
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p4, "duplicatedTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p5, "offsets"    # [I

    .line 776
    move-wide/from16 v0, p1

    invoke-static/range {p3 .. p3}, Landroid/icu/util/SimpleTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v2

    .line 777
    .local v2, "nonExistingTimeOptVal":I
    invoke-static/range {p4 .. p4}, Landroid/icu/util/SimpleTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v3

    .line 779
    .local v3, "duplicatedTimeOptVal":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    const/4 v5, 0x0

    aput v4, p5, v5

    .line 780
    const/4 v4, 0x6

    new-array v4, v4, [I

    .line 781
    .local v4, "fields":[I
    invoke-static {v0, v1, v4}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 782
    aget v8, v4, v5

    const/4 v13, 0x1

    aget v9, v4, v13

    const/4 v14, 0x2

    aget v10, v4, v14

    const/4 v15, 0x3

    aget v11, v4, v15

    const/16 v16, 0x5

    aget v12, v4, v16

    const/4 v7, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v7

    aget v6, p5, v5

    sub-int/2addr v7, v6

    aput v7, p5, v13

    .line 786
    const/4 v6, 0x0

    .line 789
    .local v6, "recalc":Z
    aget v7, p5, v13

    if-lez v7, :cond_4d

    .line 790
    and-int/lit8 v7, v2, 0x3

    if-eq v7, v13, :cond_45

    and-int/lit8 v7, v2, 0x3

    if-eq v7, v15, :cond_61

    and-int/lit8 v7, v2, 0xc

    const/16 v8, 0xc

    if-eq v7, v8, :cond_61

    .line 793
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v0, v7

    .line 794
    .end local p1    # "date":J
    .local v0, "date":J
    const/4 v6, 0x1

    goto :goto_61

    .line 797
    .end local v0    # "date":J
    .restart local p1    # "date":J
    :cond_4d
    and-int/lit8 v7, v3, 0x3

    if-eq v7, v15, :cond_5a

    and-int/lit8 v7, v3, 0x3

    if-eq v7, v13, :cond_61

    and-int/lit8 v7, v3, 0xc

    const/4 v8, 0x4

    if-ne v7, v8, :cond_61

    .line 800
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v0, v7

    .line 801
    .end local p1    # "date":J
    .restart local v0    # "date":J
    const/4 v6, 0x1

    .line 805
    :cond_61
    :goto_61
    if-eqz v6, :cond_7d

    .line 806
    invoke-static {v0, v1, v4}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 807
    aget v19, v4, v5

    aget v20, v4, v13

    aget v21, v4, v14

    aget v22, v4, v15

    aget v23, v4, v16

    const/16 v18, 0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v23}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v7

    aget v5, p5, v5

    sub-int/2addr v7, v5

    aput v7, p5, v13

    .line 811
    :cond_7d
    return-void
.end method

.method public greylist-max-o getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 14
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 1264
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1265
    return-object v1

    .line 1268
    :cond_6
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1269
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 1270
    .local v2, "firstTransitionTime":J
    cmp-long v0, p1, v2

    if-ltz v0, :cond_73

    if-nez p3, :cond_1c

    cmp-long v0, p1, v2

    if-nez v0, :cond_1c

    move-wide v5, p1

    move v9, p3

    goto :goto_75

    .line 1273
    :cond_1c
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1274
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    .line 1273
    move-wide v5, p1

    move v9, p3

    .end local p1    # "base":J
    .end local p3    # "inclusive":Z
    .local v5, "base":J
    .local v9, "inclusive":Z
    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 1275
    .local p1, "stdDate":Ljava/util/Date;
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object p2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1276
    invoke-virtual {p2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    .line 1275
    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p2

    .line 1277
    .local p2, "dstDate":Ljava/util/Date;
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_4c

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_5a

    .line 1278
    :cond_4c
    new-instance p3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v7, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p3, v0, v1, v4, v7}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p3

    .line 1280
    :cond_5a
    if-eqz p2, :cond_72

    if-eqz p1, :cond_64

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_72

    .line 1281
    :cond_64
    new-instance p3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v7, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p3, v0, v1, v4, v7}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p3

    .line 1283
    :cond_72
    return-object v1

    .line 1270
    .end local v5    # "base":J
    .end local v9    # "inclusive":Z
    .end local p2    # "dstDate":Ljava/util/Date;
    .local p1, "base":J
    .restart local p3    # "inclusive":Z
    :cond_73
    move-wide v5, p1

    move v9, p3

    .line 1271
    .end local p1    # "base":J
    .end local p3    # "inclusive":Z
    .restart local v5    # "base":J
    .restart local v9    # "inclusive":Z
    :goto_75
    return-object v1
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    return v0
.end method

.method public greylist-max-o getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .registers 6

    .line 1291
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1293
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1294
    .local v0, "size":I
    :goto_b
    new-array v2, v0, [Landroid/icu/util/TimeZoneRule;

    .line 1295
    .local v2, "rules":[Landroid/icu/util/TimeZoneRule;
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v4, v2, v3

    .line 1296
    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1f

    .line 1297
    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v3, v2, v1

    .line 1298
    const/4 v1, 0x2

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v3, v2, v1

    .line 1300
    :cond_1f
    return-object v2
.end method

.method public whitelist test-api hasSameRules(Landroid/icu/util/TimeZone;)Z
    .registers 7
    .param p1, "othr"    # Landroid/icu/util/TimeZone;

    .line 1202
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1203
    return v0

    .line 1205
    :cond_4
    instance-of v1, p1, Landroid/icu/util/SimpleTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1206
    return v2

    .line 1208
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/util/SimpleTimeZone;

    .line 1209
    .local v1, "other":Landroid/icu/util/SimpleTimeZone;
    if-eqz v1, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v3, v4, :cond_74

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v1, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_74

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_73

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_74

    :cond_73
    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1162
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    ushr-int/lit8 v1, v1, 0x8

    .line 1164
    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 1165
    .local v0, "ret":I
    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_85

    .line 1166
    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v2, 0xa

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    ushr-int/lit8 v2, v2, 0xb

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    ushr-int/lit8 v2, v2, 0xc

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    ushr-int/lit8 v2, v2, 0xd

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    ushr-int/lit8 v2, v2, 0xe

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    ushr-int/lit8 v2, v2, 0xf

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    ushr-int/lit8 v2, v2, 0x10

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    ushr-int/lit8 v2, v2, 0x11

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    ushr-int/lit8 v2, v2, 0x12

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    ushr-int/lit8 v2, v2, 0x13

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    ushr-int/lit8 v2, v2, 0x14

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    ushr-int/lit8 v2, v2, 0x15

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    ushr-int/lit8 v2, v2, 0x16

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    ushr-int/lit8 v2, v2, 0x17

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1181
    :cond_85
    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 958
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 959
    .local v0, "gc":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 960
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result v1

    return v1
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1396
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 949
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method

.method public greylist-max-o setDSTSavings(I)V
    .registers 4
    .param p1, "millisSavedDuringDST"    # I

    .line 530
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 534
    if-eqz p1, :cond_e

    .line 537
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 540
    return-void

    .line 535
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 531
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setEndRule(III)V
    .registers 12
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    .line 453
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_18

    .line 457
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    move v2, p1

    move v6, p2

    move v5, p3

    .end local p1    # "month":I
    .end local p2    # "dayOfMonth":I
    .end local p3    # "time":I
    .local v2, "month":I
    .local v5, "time":I
    .local v6, "dayOfMonth":I
    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    .line 458
    const/4 p1, 0x0

    invoke-virtual {p0, v2, v6, p1, v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 459
    return-void

    .line 454
    .end local v2    # "month":I
    .end local v5    # "time":I
    .end local v6    # "dayOfMonth":I
    .restart local p1    # "month":I
    .restart local p2    # "dayOfMonth":I
    .restart local p3    # "time":I
    :cond_18
    move v2, p1

    move v6, p2

    .end local p1    # "month":I
    .end local p2    # "dayOfMonth":I
    .restart local v2    # "month":I
    .restart local v6    # "dayOfMonth":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setEndRule(IIII)V
    .registers 19
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    .line 433
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_23

    .line 437
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    .line 438
    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    .line 439
    return-void

    .line 434
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setEndRule(IIIIZ)V
    .registers 17
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    .line 478
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 482
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v6, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    .line 483
    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    .line 484
    return-void

    .line 479
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setID(Ljava/lang/String;)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_d

    .line 241
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 243
    return-void

    .line 239
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 4
    .param p1, "offsetMillis"    # I

    .line 253
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 257
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 259
    return-void

    .line 254
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setStartRule(III)V
    .registers 18
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    .line 379
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_21

    .line 383
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    move v2, p1

    move/from16 v6, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    .line 384
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v12, p3

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    .line 385
    return-void

    .line 380
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setStartRule(IIII)V
    .registers 19
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    .line 308
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_23

    .line 312
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    .line 313
    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    .line 314
    return-void

    .line 309
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setStartRule(IIIIZ)V
    .registers 16
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    .line 404
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_26

    .line 408
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v6, p2

    move v4, p3

    move v5, p4

    move v7, p5

    .end local p1    # "month":I
    .end local p2    # "dayOfMonth":I
    .end local p3    # "dayOfWeek":I
    .end local p4    # "time":I
    .end local p5    # "after":Z
    .local v2, "month":I
    .local v4, "dayOfWeek":I
    .local v5, "time":I
    .local v6, "dayOfMonth":I
    .local v7, "after":Z
    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    .line 409
    move p2, v4

    move p1, v6

    move p3, v7

    .end local v4    # "dayOfWeek":I
    .end local v6    # "dayOfMonth":I
    .end local v7    # "after":Z
    .local p1, "dayOfMonth":I
    .local p2, "dayOfWeek":I
    .local p3, "after":Z
    if-eqz p3, :cond_1a

    move v6, p1

    goto :goto_1c

    :cond_1a
    neg-int p4, p1

    move v6, p4

    :goto_1c
    neg-int v7, p2

    const/4 v9, 0x0

    move-object v4, p0

    move v8, v5

    move v5, v2

    .end local v2    # "month":I
    .local v5, "month":I
    .local v8, "time":I
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    .line 411
    move v5, v8

    .end local v8    # "time":I
    .restart local v2    # "month":I
    .local v5, "time":I
    return-void

    .line 405
    .end local v2    # "month":I
    .end local v5    # "time":I
    .local p1, "month":I
    .local p2, "dayOfMonth":I
    .local p3, "dayOfWeek":I
    .restart local p4    # "time":I
    .restart local p5    # "after":Z
    :cond_26
    move v2, p1

    move p1, p2

    move p2, p3

    move v5, p4

    move p3, p5

    .end local p4    # "time":I
    .end local p5    # "after":Z
    .restart local v2    # "month":I
    .restart local v5    # "time":I
    .local p1, "dayOfMonth":I
    .local p2, "dayOfWeek":I
    .local p3, "after":Z
    new-instance p4, Ljava/lang/UnsupportedOperationException;

    const-string p5, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p4, p5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public greylist-max-o setStartYear(I)V
    .registers 4
    .param p1, "year"    # I

    .line 277
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 281
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Landroid/icu/util/STZInfo;->sy:I

    .line 282
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 284
    return-void

    .line 278
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 941
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
