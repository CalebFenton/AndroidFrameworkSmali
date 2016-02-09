.class public Landroid/icu/util/SimpleTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Landroid/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/SimpleTimeZone;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    #@b
    .line 635
    const/16 v0, 0xc

    #@d
    new-array v0, v0, [B

    #@f
    fill-array-data v0, :array_0

    #@12
    sput-object v0, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    #@14
    .line 32
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 635
    nop

    #@18
    :array_0
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

.method public constructor <init>(ILjava/lang/String;)V
    .locals 13
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    const v12, 0x36ee80

    #@3
    const/4 v2, 0x0

    #@4
    .line 65
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@7
    .line 940
    iput v12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@9
    .line 941
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@c
    .line 1413
    iput-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@e
    move-object v0, p0

    #@f
    move v1, p1

    #@10
    move v3, v2

    #@11
    move v4, v2

    #@12
    move v5, v2

    #@13
    move v6, v2

    #@14
    move v7, v2

    #@15
    move v8, v2

    #@16
    move v9, v2

    #@17
    move v10, v2

    #@18
    move v11, v2

    #@19
    .line 66
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    #@1c
    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 13
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

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 940
    const v0, 0x36ee80

    #@6
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@8
    .line 941
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@b
    .line 1413
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@e
    .line 137
    const/4 v6, 0x0

    #@f
    .line 139
    const/4 v11, 0x0

    #@10
    .line 140
    const v12, 0x36ee80

    #@13
    move-object v0, p0

    #@14
    move v1, p1

    #@15
    move/from16 v2, p3

    #@17
    move/from16 v3, p4

    #@19
    move/from16 v4, p5

    #@1b
    move/from16 v5, p6

    #@1d
    move/from16 v7, p7

    #@1f
    move/from16 v8, p8

    #@21
    move/from16 v9, p9

    #@23
    move/from16 v10, p10

    #@25
    .line 135
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    #@28
    .line 133
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 13
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

    #@0
    .prologue
    .line 228
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 940
    const v0, 0x36ee80

    #@6
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@8
    .line 941
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@b
    .line 1413
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@e
    .line 231
    const/4 v6, 0x0

    #@f
    .line 233
    const/4 v11, 0x0

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move/from16 v2, p3

    #@14
    move/from16 v3, p4

    #@16
    move/from16 v4, p5

    #@18
    move/from16 v5, p6

    #@1a
    move/from16 v7, p7

    #@1c
    move/from16 v8, p8

    #@1e
    move/from16 v9, p9

    #@20
    move/from16 v10, p10

    #@22
    move/from16 v12, p11

    #@24
    .line 229
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    #@27
    .line 227
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13
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

    #@0
    .prologue
    .line 185
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 940
    const v0, 0x36ee80

    #@6
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@8
    .line 941
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@b
    .line 1413
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@e
    move-object v0, p0

    #@f
    move v1, p1

    #@10
    move/from16 v2, p3

    #@12
    move/from16 v3, p4

    #@14
    move/from16 v4, p5

    #@16
    move/from16 v5, p6

    #@18
    move/from16 v6, p7

    #@1a
    move/from16 v7, p8

    #@1c
    move/from16 v8, p9

    #@1e
    move/from16 v9, p10

    #@20
    move/from16 v10, p11

    #@22
    move/from16 v11, p12

    #@24
    move/from16 v12, p13

    #@26
    .line 186
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    #@29
    .line 184
    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .locals 5
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

    #@0
    .prologue
    .line 852
    add-int/2addr p6, p7

    #@1
    .line 854
    :cond_0
    :goto_0
    const v2, 0x5265c00

    #@4
    if-lt p6, v2, :cond_1

    #@6
    .line 855
    const v2, 0x5265c00

    #@9
    sub-int/2addr p6, v2

    #@a
    .line 856
    add-int/lit8 p4, p4, 0x1

    #@c
    .line 857
    rem-int/lit8 v2, p5, 0x7

    #@e
    add-int/lit8 p5, v2, 0x1

    #@10
    .line 858
    if-le p4, p2, :cond_0

    #@12
    .line 859
    const/4 p4, 0x1

    #@13
    .line 864
    add-int/lit8 p1, p1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 877
    :cond_1
    :goto_1
    if-gez p6, :cond_3

    #@18
    .line 879
    add-int/lit8 p4, p4, -0x1

    #@1a
    .line 880
    add-int/lit8 v2, p5, 0x5

    #@1c
    rem-int/lit8 v2, v2, 0x7

    #@1e
    add-int/lit8 p5, v2, 0x1

    #@20
    .line 881
    const/4 v2, 0x1

    #@21
    if-ge p4, v2, :cond_2

    #@23
    .line 882
    move p4, p3

    #@24
    .line 883
    add-int/lit8 p1, p1, -0x1

    #@26
    .line 885
    :cond_2
    const v2, 0x5265c00

    #@29
    add-int/2addr p6, v2

    #@2a
    goto :goto_1

    #@2b
    .line 888
    :cond_3
    if-ge p1, p9, :cond_4

    #@2d
    const/4 v2, -0x1

    #@2e
    return v2

    #@2f
    .line 889
    :cond_4
    if-le p1, p9, :cond_5

    #@31
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 891
    :cond_5
    const/4 v1, 0x0

    #@34
    .line 894
    .local v1, "ruleDayOfMonth":I
    move/from16 v0, p11

    #@36
    if-le v0, p2, :cond_6

    #@38
    .line 895
    move/from16 p11, p2

    #@3a
    .line 898
    :cond_6
    packed-switch p8, :pswitch_data_0

    #@3d
    .line 926
    :goto_2
    if-ge p4, v1, :cond_8

    #@3f
    const/4 v2, -0x1

    #@40
    return v2

    #@41
    .line 901
    :pswitch_0
    move/from16 v1, p11

    #@43
    .line 902
    goto :goto_2

    #@44
    .line 905
    :pswitch_1
    if-lez p11, :cond_7

    #@46
    .line 906
    add-int/lit8 v2, p11, -0x1

    #@48
    mul-int/lit8 v2, v2, 0x7

    #@4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    .line 907
    add-int/lit8 v3, p10, 0x7

    #@4e
    sub-int v4, p5, p4

    #@50
    add-int/lit8 v4, v4, 0x1

    #@52
    sub-int/2addr v3, v4

    #@53
    rem-int/lit8 v3, v3, 0x7

    #@55
    .line 906
    add-int v1, v2, v3

    #@57
    goto :goto_2

    #@58
    .line 910
    :cond_7
    add-int/lit8 v2, p11, 0x1

    #@5a
    mul-int/lit8 v2, v2, 0x7

    #@5c
    add-int/2addr v2, p2

    #@5d
    .line 911
    add-int v3, p5, p2

    #@5f
    sub-int/2addr v3, p4

    #@60
    add-int/lit8 v3, v3, 0x7

    #@62
    sub-int/2addr v3, p10

    #@63
    rem-int/lit8 v3, v3, 0x7

    #@65
    .line 910
    sub-int v1, v2, v3

    #@67
    goto :goto_2

    #@68
    .line 916
    :pswitch_2
    add-int/lit8 v2, p10, 0x31

    #@6a
    sub-int v2, v2, p11

    #@6c
    sub-int/2addr v2, p5

    #@6d
    add-int/2addr v2, p4

    #@6e
    rem-int/lit8 v2, v2, 0x7

    #@70
    .line 915
    add-int v1, p11, v2

    #@72
    .line 917
    goto :goto_2

    #@73
    .line 920
    :pswitch_3
    rsub-int/lit8 v2, p10, 0x31

    #@75
    add-int v2, v2, p11

    #@77
    add-int/2addr v2, p5

    #@78
    sub-int/2addr v2, p4

    #@79
    rem-int/lit8 v2, v2, 0x7

    #@7b
    .line 919
    sub-int v1, p11, v2

    #@7d
    .line 923
    goto :goto_2

    #@7e
    .line 927
    :cond_8
    if-le p4, v1, :cond_9

    #@80
    const/4 v2, 0x1

    #@81
    return v2

    #@82
    .line 929
    :cond_9
    move/from16 v0, p12

    #@84
    if-ge p6, v0, :cond_a

    #@86
    .line 930
    const/4 v2, -0x1

    #@87
    return v2

    #@88
    .line 931
    :cond_a
    move/from16 v0, p12

    #@8a
    if-le p6, v0, :cond_b

    #@8c
    .line 932
    const/4 v2, 0x1

    #@8d
    return v2

    #@8e
    .line 934
    :cond_b
    const/4 v2, 0x0

    #@8f
    return v2

    #@90
    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private construct(IIIIIIIIIIII)V
    .locals 2
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

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 996
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@4
    .line 997
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@6
    .line 998
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@8
    .line 999
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@a
    .line 1000
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@c
    .line 1001
    iput p6, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@e
    .line 1002
    iput p7, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@10
    .line 1003
    iput p8, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@12
    .line 1004
    iput p9, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@14
    .line 1005
    iput p10, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@16
    .line 1006
    iput p11, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@18
    .line 1007
    iput p12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@1a
    .line 1008
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@1c
    .line 1009
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@1e
    .line 1010
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@20
    .line 1012
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeRules()V

    #@23
    .line 1014
    if-gtz p12, :cond_0

    #@25
    .line 1015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 995
    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 5

    #@0
    .prologue
    const v4, 0x5265c00

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v0, 0x0

    #@6
    .line 1094
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@8
    if-eqz v2, :cond_0

    #@a
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@c
    if-eqz v2, :cond_0

    #@e
    move v0, v1

    #@f
    :cond_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@11
    .line 1095
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1096
    iput v4, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@1b
    .line 1098
    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@1d
    if-eqz v0, :cond_d

    #@1f
    .line 1099
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@21
    if-ltz v0, :cond_2

    #@23
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@25
    const/16 v2, 0xb

    #@27
    if-le v0, v2, :cond_3

    #@29
    .line 1100
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2e
    throw v0

    #@2f
    .line 1102
    :cond_3
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@31
    if-ltz v0, :cond_4

    #@33
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@35
    if-le v0, v4, :cond_5

    #@37
    .line 1104
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3c
    throw v0

    #@3d
    .line 1103
    :cond_5
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@3f
    if-ltz v0, :cond_4

    #@41
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@43
    if-gt v0, v3, :cond_4

    #@45
    .line 1106
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@47
    if-nez v0, :cond_8

    #@49
    .line 1107
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@4b
    .line 1124
    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@4d
    if-ne v0, v3, :cond_b

    #@4f
    .line 1125
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@51
    const/4 v1, -0x5

    #@52
    if-lt v0, v1, :cond_7

    #@54
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@56
    const/4 v1, 0x5

    #@57
    if-le v0, v1, :cond_d

    #@59
    .line 1126
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5e
    throw v0

    #@5f
    .line 1109
    :cond_8
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@61
    if-lez v0, :cond_9

    #@63
    .line 1110
    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@65
    .line 1120
    :goto_0
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@67
    const/4 v2, 0x7

    #@68
    if-le v0, v2, :cond_6

    #@6a
    .line 1121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@6f
    throw v0

    #@70
    .line 1112
    :cond_9
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@72
    neg-int v0, v0

    #@73
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@75
    .line 1113
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@77
    if-lez v0, :cond_a

    #@79
    .line 1114
    const/4 v0, 0x3

    #@7a
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@7c
    goto :goto_0

    #@7d
    .line 1116
    :cond_a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@7f
    neg-int v0, v0

    #@80
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@82
    .line 1117
    const/4 v0, 0x4

    #@83
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@85
    goto :goto_0

    #@86
    .line 1128
    :cond_b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@88
    if-lt v0, v1, :cond_c

    #@8a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@8c
    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    #@8e
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@90
    aget-byte v1, v1, v2

    #@92
    if-le v0, v1, :cond_d

    #@94
    .line 1129
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@96
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@99
    throw v0

    #@9a
    .line 1093
    :cond_d
    return-void
.end method

.method private decodeRules()V
    .locals 0

    #@0
    .prologue
    .line 1019
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    #@3
    .line 1020
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    #@6
    .line 1018
    return-void
.end method

.method private decodeStartRule()V
    .locals 5

    #@0
    .prologue
    const v4, 0x5265c00

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v0, 0x0

    #@6
    .line 1048
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@8
    if-eqz v2, :cond_0

    #@a
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@c
    if-eqz v2, :cond_0

    #@e
    move v0, v1

    #@f
    :cond_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@11
    .line 1049
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1050
    iput v4, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@1b
    .line 1052
    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@1d
    if-eqz v0, :cond_d

    #@1f
    .line 1053
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@21
    if-ltz v0, :cond_2

    #@23
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@25
    const/16 v2, 0xb

    #@27
    if-le v0, v2, :cond_3

    #@29
    .line 1054
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2e
    throw v0

    #@2f
    .line 1056
    :cond_3
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@31
    if-ltz v0, :cond_4

    #@33
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@35
    if-le v0, v4, :cond_5

    #@37
    .line 1058
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3c
    throw v0

    #@3d
    .line 1057
    :cond_5
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@3f
    if-ltz v0, :cond_4

    #@41
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@43
    if-gt v0, v3, :cond_4

    #@45
    .line 1060
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@47
    if-nez v0, :cond_8

    #@49
    .line 1061
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@4b
    .line 1078
    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@4d
    if-ne v0, v3, :cond_b

    #@4f
    .line 1079
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@51
    const/4 v1, -0x5

    #@52
    if-lt v0, v1, :cond_7

    #@54
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@56
    const/4 v1, 0x5

    #@57
    if-le v0, v1, :cond_d

    #@59
    .line 1080
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5e
    throw v0

    #@5f
    .line 1063
    :cond_8
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@61
    if-lez v0, :cond_9

    #@63
    .line 1064
    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@65
    .line 1074
    :goto_0
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@67
    const/4 v2, 0x7

    #@68
    if-le v0, v2, :cond_6

    #@6a
    .line 1075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@6f
    throw v0

    #@70
    .line 1066
    :cond_9
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@72
    neg-int v0, v0

    #@73
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@75
    .line 1067
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@77
    if-lez v0, :cond_a

    #@79
    .line 1068
    const/4 v0, 0x3

    #@7a
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@7c
    goto :goto_0

    #@7d
    .line 1070
    :cond_a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@7f
    neg-int v0, v0

    #@80
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@82
    .line 1071
    const/4 v0, 0x4

    #@83
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@85
    goto :goto_0

    #@86
    .line 1082
    :cond_b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@88
    if-lt v0, v1, :cond_c

    #@8a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@8c
    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    #@8e
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@90
    aget-byte v1, v1, v2

    #@92
    if-le v0, v1, :cond_d

    #@94
    .line 1083
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@96
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@99
    throw v0

    #@9a
    .line 1047
    :cond_d
    return-void
.end method

.method private getOffset(IIIIIIII)I
    .locals 19
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I
    .param p8, "prevMonthLength"    # I

    #@0
    .prologue
    .line 690
    const/4 v2, 0x1

    #@1
    move/from16 v0, p1

    #@3
    if-eq v0, v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 703
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v2

    #@d
    .line 691
    :cond_1
    if-ltz p3, :cond_0

    #@f
    .line 692
    const/16 v2, 0xb

    #@11
    move/from16 v0, p3

    #@13
    if-gt v0, v2, :cond_0

    #@15
    .line 693
    const/4 v2, 0x1

    #@16
    move/from16 v0, p4

    #@18
    if-lt v0, v2, :cond_0

    #@1a
    .line 694
    move/from16 v0, p4

    #@1c
    move/from16 v1, p7

    #@1e
    if-gt v0, v1, :cond_0

    #@20
    .line 695
    const/4 v2, 0x1

    #@21
    move/from16 v0, p5

    #@23
    if-lt v0, v2, :cond_0

    #@25
    .line 696
    const/4 v2, 0x7

    #@26
    move/from16 v0, p5

    #@28
    if-gt v0, v2, :cond_0

    #@2a
    .line 697
    if-ltz p6, :cond_0

    #@2c
    .line 698
    const v2, 0x5265c00

    #@2f
    move/from16 v0, p6

    #@31
    if-ge v0, v2, :cond_0

    #@33
    .line 699
    const/16 v2, 0x1c

    #@35
    move/from16 v0, p7

    #@37
    if-lt v0, v2, :cond_0

    #@39
    .line 700
    const/16 v2, 0x1f

    #@3b
    move/from16 v0, p7

    #@3d
    if-gt v0, v2, :cond_0

    #@3f
    .line 701
    const/16 v2, 0x1c

    #@41
    move/from16 v0, p8

    #@43
    if-lt v0, v2, :cond_0

    #@45
    .line 702
    const/16 v2, 0x1f

    #@47
    move/from16 v0, p8

    #@49
    if-gt v0, v2, :cond_0

    #@4b
    .line 740
    move-object/from16 v0, p0

    #@4d
    iget v0, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@4f
    move/from16 v16, v0

    #@51
    .line 743
    .local v16, "result":I
    move-object/from16 v0, p0

    #@53
    iget-boolean v2, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@55
    if-eqz v2, :cond_2

    #@57
    move-object/from16 v0, p0

    #@59
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@5b
    move/from16 v0, p2

    #@5d
    if-ge v0, v2, :cond_3

    #@5f
    :cond_2
    return v16

    #@60
    :cond_3
    const/4 v2, 0x1

    #@61
    move/from16 v0, p1

    #@63
    if-ne v0, v2, :cond_2

    #@65
    .line 747
    move-object/from16 v0, p0

    #@67
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@69
    move-object/from16 v0, p0

    #@6b
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@6d
    if-le v2, v3, :cond_7

    #@6f
    const/16 v17, 0x1

    #@71
    .line 753
    .local v17, "southern":Z
    :goto_0
    move-object/from16 v0, p0

    #@73
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@75
    const/4 v3, 0x2

    #@76
    if-ne v2, v3, :cond_8

    #@78
    move-object/from16 v0, p0

    #@7a
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@7c
    neg-int v9, v2

    #@7d
    .line 754
    :goto_1
    move-object/from16 v0, p0

    #@7f
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@81
    move-object/from16 v0, p0

    #@83
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@85
    move-object/from16 v0, p0

    #@87
    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@89
    .line 755
    move-object/from16 v0, p0

    #@8b
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget v14, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@91
    move-object/from16 v2, p0

    #@93
    move/from16 v3, p3

    #@95
    move/from16 v4, p7

    #@97
    move/from16 v5, p8

    #@99
    move/from16 v6, p4

    #@9b
    move/from16 v7, p5

    #@9d
    move/from16 v8, p6

    #@9f
    .line 751
    invoke-direct/range {v2 .. v14}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    #@a2
    move-result v18

    #@a3
    .line 756
    .local v18, "startCompare":I
    const/4 v15, 0x0

    #@a4
    .line 764
    .local v15, "endCompare":I
    if-ltz v18, :cond_9

    #@a6
    const/4 v2, 0x1

    #@a7
    :goto_2
    move/from16 v0, v17

    #@a9
    if-eq v0, v2, :cond_4

    #@ab
    .line 770
    move-object/from16 v0, p0

    #@ad
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@af
    if-nez v2, :cond_a

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@b5
    .line 772
    :goto_3
    move-object/from16 v0, p0

    #@b7
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@c1
    .line 773
    move-object/from16 v0, p0

    #@c3
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget v14, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@c9
    move-object/from16 v2, p0

    #@cb
    move/from16 v3, p3

    #@cd
    move/from16 v4, p7

    #@cf
    move/from16 v5, p8

    #@d1
    move/from16 v6, p4

    #@d3
    move/from16 v7, p5

    #@d5
    move/from16 v8, p6

    #@d7
    .line 768
    invoke-direct/range {v2 .. v14}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    #@da
    move-result v15

    #@db
    .line 780
    :cond_4
    if-nez v17, :cond_c

    #@dd
    if-ltz v18, :cond_c

    #@df
    if-gez v15, :cond_c

    #@e1
    .line 782
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    #@e3
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@e5
    add-int v16, v16, v2

    #@e7
    .line 784
    :cond_6
    return v16

    #@e8
    .line 747
    .end local v15    # "endCompare":I
    .end local v17    # "southern":Z
    .end local v18    # "startCompare":I
    :cond_7
    const/16 v17, 0x0

    #@ea
    .restart local v17    # "southern":Z
    goto :goto_0

    #@eb
    .line 753
    :cond_8
    const/4 v9, 0x0

    #@ec
    goto :goto_1

    #@ed
    .line 764
    .restart local v15    # "endCompare":I
    .restart local v18    # "startCompare":I
    :cond_9
    const/4 v2, 0x0

    #@ee
    goto :goto_2

    #@ef
    .line 771
    :cond_a
    move-object/from16 v0, p0

    #@f1
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@f3
    const/4 v3, 0x2

    #@f4
    if-ne v2, v3, :cond_b

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@fa
    neg-int v9, v2

    #@fb
    goto :goto_3

    #@fc
    :cond_b
    const/4 v9, 0x0

    #@fd
    goto :goto_3

    #@fe
    .line 781
    :cond_c
    if-eqz v17, :cond_6

    #@100
    if-gez v18, :cond_5

    #@102
    if-gez v15, :cond_6

    #@104
    goto :goto_4
.end method

.method private getSTZInfo()Landroid/icu/util/STZInfo;
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 620
    new-instance v0, Landroid/icu/util/STZInfo;

    #@6
    invoke-direct {v0}, Landroid/icu/util/STZInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@b
    .line 622
    :cond_0
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@d
    return-object v0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1166
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 1167
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 1169
    :cond_0
    if-eqz p1, :cond_1

    #@8
    if-eqz p2, :cond_1

    #@a
    .line 1170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1172
    :cond_1
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 20

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1334
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v3, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 1335
    return-void

    #@9
    .line 1337
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@b
    iget-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@d
    if-eqz v3, :cond_6

    #@f
    .line 1338
    const/4 v2, 0x0

    #@10
    .line 1343
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    move-object/from16 v0, p0

    #@12
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@14
    const/4 v4, 0x1

    #@15
    if-ne v3, v4, :cond_1

    #@17
    const/4 v7, 0x1

    #@18
    .line 1345
    .local v7, "timeRuleType":I
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@1c
    packed-switch v3, :pswitch_data_0

    #@1f
    .line 1363
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    :goto_1
    new-instance v8, Landroid/icu/util/AnnualTimeZoneRule;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, "(DST)"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@3c
    move-result v10

    #@3d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    #@40
    move-result v11

    #@41
    .line 1364
    move-object/from16 v0, p0

    #@43
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@45
    const v14, 0x7fffffff

    #@48
    move-object v12, v2

    #@49
    .line 1363
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput-object v8, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@50
    .line 1367
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@54
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@57
    move-result v4

    #@58
    const/4 v5, 0x0

    #@59
    invoke-virtual {v3, v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@60
    move-result-wide v16

    #@61
    .line 1370
    .local v16, "firstDstStart":J
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@65
    const/4 v4, 0x1

    #@66
    if-ne v3, v4, :cond_3

    #@68
    const/4 v7, 0x1

    #@69
    .line 1372
    :goto_2
    move-object/from16 v0, p0

    #@6b
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@6d
    packed-switch v3, :pswitch_data_1

    #@70
    .line 1389
    :goto_3
    new-instance v8, Landroid/icu/util/AnnualTimeZoneRule;

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    const-string/jumbo v4, "(STD)"

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v9

    #@8a
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@8d
    move-result v10

    #@8e
    .line 1390
    move-object/from16 v0, p0

    #@90
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@92
    .line 1389
    const/4 v11, 0x0

    #@93
    .line 1390
    const v14, 0x7fffffff

    #@96
    move-object v12, v2

    #@97
    .line 1389
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-object v8, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@9e
    .line 1393
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@a2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@a5
    move-result v4

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@aa
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@ad
    move-result v5

    #@ae
    invoke-virtual {v3, v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@b5
    move-result-wide v18

    #@b6
    .line 1396
    .local v18, "firstStdStart":J
    cmp-long v3, v18, v16

    #@b8
    if-gez v3, :cond_5

    #@ba
    .line 1397
    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    #@bc
    new-instance v4, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v4

    #@c9
    const-string/jumbo v5, "(DST)"

    #@cc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@d7
    move-result v5

    #@d8
    .line 1398
    move-object/from16 v0, p0

    #@da
    iget-object v6, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@dc
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@df
    move-result v6

    #@e0
    .line 1397
    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@e7
    .line 1399
    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v4, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@f1
    move-wide/from16 v0, v18

    #@f3
    invoke-direct {v3, v0, v1, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    #@fa
    .line 1409
    .end local v7    # "timeRuleType":I
    .end local v16    # "firstDstStart":J
    .end local v18    # "firstStdStart":J
    :goto_4
    const/4 v3, 0x1

    #@fb
    move-object/from16 v0, p0

    #@fd
    iput-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ff
    monitor-exit p0

    #@100
    .line 1333
    return-void

    #@101
    .line 1344
    .restart local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@103
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@105
    const/4 v4, 0x2

    #@106
    if-ne v3, v4, :cond_2

    #@108
    const/4 v7, 0x2

    #@109
    .restart local v7    # "timeRuleType":I
    goto/16 :goto_0

    #@10b
    .end local v7    # "timeRuleType":I
    :cond_2
    const/4 v7, 0x0

    #@10c
    .restart local v7    # "timeRuleType":I
    goto/16 :goto_0

    #@10e
    .line 1347
    :pswitch_0
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@110
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    move-object/from16 v0, p0

    #@112
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@114
    move-object/from16 v0, p0

    #@116
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@118
    move-object/from16 v0, p0

    #@11a
    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@11c
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    #@11f
    .line 1348
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_1

    #@121
    .line 1350
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_1
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@123
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    move-object/from16 v0, p0

    #@125
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@127
    move-object/from16 v0, p0

    #@129
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@12f
    move-object/from16 v0, p0

    #@131
    iget v6, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@133
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@136
    .line 1352
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_1

    #@138
    .line 1354
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_2
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@13a
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    move-object/from16 v0, p0

    #@13c
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@13e
    move-object/from16 v0, p0

    #@140
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@142
    move-object/from16 v0, p0

    #@144
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@146
    move-object/from16 v0, p0

    #@148
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@14a
    const/4 v12, 0x1

    #@14b
    move-object v8, v2

    #@14c
    move v14, v7

    #@14d
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@150
    .line 1356
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_1

    #@152
    .line 1358
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_3
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@154
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    move-object/from16 v0, p0

    #@156
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@158
    move-object/from16 v0, p0

    #@15a
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@160
    move-object/from16 v0, p0

    #@162
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@164
    const/4 v12, 0x0

    #@165
    move-object v8, v2

    #@166
    move v14, v7

    #@167
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@16a
    .line 1360
    .local v2, "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_1

    #@16c
    .line 1371
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    .restart local v16    # "firstDstStart":J
    :cond_3
    move-object/from16 v0, p0

    #@16e
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@170
    const/4 v4, 0x2

    #@171
    if-ne v3, v4, :cond_4

    #@173
    const/4 v7, 0x2

    #@174
    goto/16 :goto_2

    #@176
    :cond_4
    const/4 v7, 0x0

    #@177
    goto/16 :goto_2

    #@179
    .line 1374
    :pswitch_4
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@17f
    move-object/from16 v0, p0

    #@181
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@183
    move-object/from16 v0, p0

    #@185
    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@187
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    #@18a
    .line 1375
    .restart local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_3

    #@18c
    .line 1377
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_5
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@18e
    move-object/from16 v0, p0

    #@190
    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@192
    move-object/from16 v0, p0

    #@194
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@196
    move-object/from16 v0, p0

    #@198
    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget v6, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@19e
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@1a1
    .line 1378
    .restart local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_3

    #@1a3
    .line 1380
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_6
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@1ad
    move-object/from16 v0, p0

    #@1af
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@1b5
    const/4 v12, 0x1

    #@1b6
    move-object v8, v2

    #@1b7
    move v14, v7

    #@1b8
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@1bb
    .line 1382
    .restart local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_3

    #@1bd
    .line 1384
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    :pswitch_7
    new-instance v2, Landroid/icu/util/DateTimeRule;

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@1cf
    const/4 v12, 0x0

    #@1d0
    move-object v8, v2

    #@1d1
    move v14, v7

    #@1d2
    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    #@1d5
    .line 1386
    .restart local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    goto/16 :goto_3

    #@1d7
    .line 1401
    .end local v2    # "dtRule":Landroid/icu/util/DateTimeRule;
    .restart local v18    # "firstStdStart":J
    :cond_5
    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    #@1d9
    new-instance v4, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@1e1
    move-result-object v5

    #@1e2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v4

    #@1e6
    const-string/jumbo v5, "(STD)"

    #@1e9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v4

    #@1ed
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v4

    #@1f1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@1f4
    move-result v5

    #@1f5
    const/4 v6, 0x0

    #@1f6
    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@1fd
    .line 1402
    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v4, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@203
    move-object/from16 v0, p0

    #@205
    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@207
    move-wide/from16 v0, v16

    #@209
    invoke-direct {v3, v0, v1, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@20c
    move-object/from16 v0, p0

    #@20e
    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@210
    goto/16 :goto_4

    #@212
    .end local v7    # "timeRuleType":I
    .end local v16    # "firstDstStart":J
    .end local v18    # "firstStdStart":J
    :catchall_0
    move-exception v3

    #@213
    monitor-exit p0

    #@214
    throw v3

    #@215
    .line 1407
    :cond_6
    :try_start_3
    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    #@217
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@21a
    move-result-object v4

    #@21b
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@21e
    move-result v5

    #@21f
    const/4 v6, 0x0

    #@220
    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@223
    move-object/from16 v0, p0

    #@225
    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@227
    goto/16 :goto_4

    #@229
    .line 1345
    nop

    #@22a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@236
    .line 1372
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 603
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 604
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    #@9
    invoke-virtual {v0, p0}, Landroid/icu/util/STZInfo;->applyTo(Landroid/icu/util/SimpleTimeZone;)V

    #@c
    .line 579
    :cond_0
    return-void
.end method

.method private setEndRule(IIIII)V
    .locals 2
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 525
    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 527
    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@18
    .line 528
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@1a
    .line 529
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@1c
    .line 530
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@1e
    .line 531
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@20
    .line 532
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    #@23
    .line 534
    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@25
    .line 524
    return-void
.end method

.method private setEndRule(IIIIIZ)V
    .locals 6
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I
    .param p6, "after"    # Z

    #@0
    .prologue
    .line 503
    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 504
    :cond_1
    if-eqz p6, :cond_2

    #@17
    move v2, p2

    #@18
    :goto_1
    neg-int v3, p3

    #@19
    move-object v0, p0

    #@1a
    move v1, p1

    #@1b
    move v4, p4

    #@1c
    move v5, p5

    #@1d
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    #@20
    .line 502
    return-void

    #@21
    .line 504
    :cond_2
    neg-int v2, p2

    #@22
    goto :goto_1
.end method

.method private setStartRule(IIIII)V
    .locals 2
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 365
    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 367
    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@18
    .line 368
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@1a
    .line 369
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@1c
    .line 370
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@1e
    .line 371
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@20
    .line 372
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    #@23
    .line 374
    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@25
    .line 364
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1209
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1210
    return-object p0

    #@7
    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    #@0
    .prologue
    .line 1437
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    #@6
    .line 1438
    .local v0, "tz":Landroid/icu/util/SimpleTimeZone;
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@9
    .line 1439
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1141
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 1142
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1143
    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    #@15
    .line 1144
    .local v0, "that":Landroid/icu/util/SimpleTimeZone;
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@17
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@19
    if-ne v3, v4, :cond_6

    #@1b
    .line 1145
    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@1d
    iget-boolean v4, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@1f
    if-ne v3, v4, :cond_6

    #@21
    .line 1146
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-direct {p0, v3, v4}, Landroid/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    .line 1144
    if-eqz v3, :cond_6

    #@2f
    .line 1147
    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 1149
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@35
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@37
    if-ne v3, v4, :cond_5

    #@39
    .line 1150
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@3b
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@3d
    if-ne v3, v4, :cond_5

    #@3f
    .line 1151
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@41
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@43
    if-ne v3, v4, :cond_5

    #@45
    .line 1152
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@47
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@49
    if-ne v3, v4, :cond_5

    #@4b
    .line 1153
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@4d
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@4f
    if-ne v3, v4, :cond_5

    #@51
    .line 1154
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@53
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@55
    if-ne v3, v4, :cond_5

    #@57
    .line 1155
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@59
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@5b
    if-ne v3, v4, :cond_5

    #@5d
    .line 1156
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@5f
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@61
    if-ne v3, v4, :cond_5

    #@63
    .line 1157
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@65
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@67
    if-ne v3, v4, :cond_5

    #@69
    .line 1158
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@6b
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@6d
    if-ne v3, v4, :cond_5

    #@6f
    .line 1159
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@71
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@73
    if-ne v3, v4, :cond_5

    #@75
    .line 1160
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@77
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@79
    if-ne v3, v4, :cond_5

    #@7b
    .line 1161
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@7d
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@7f
    if-ne v3, v4, :cond_5

    #@81
    .line 1162
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@83
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@85
    if-ne v3, v4, :cond_4

    #@87
    .line 1144
    :cond_3
    :goto_0
    return v1

    #@88
    :cond_4
    move v1, v2

    #@89
    .line 1162
    goto :goto_0

    #@8a
    :cond_5
    move v1, v2

    #@8b
    .line 1149
    goto :goto_0

    #@8c
    :cond_6
    move v1, v2

    #@8d
    .line 1144
    goto :goto_0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 1428
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@3
    .line 1429
    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 566
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@2
    return v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 11
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1259
    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1260
    return-object v10

    #@6
    .line 1263
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    #@9
    .line 1264
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    #@b
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@e
    move-result-wide v8

    #@f
    .line 1265
    .local v8, "firstTransitionTime":J
    cmp-long v1, p1, v8

    #@11
    if-ltz v1, :cond_1

    #@13
    if-eqz p3, :cond_2

    #@15
    cmp-long v1, p1, v8

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1266
    :cond_1
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    #@1b
    return-object v1

    #@1c
    .line 1268
    :cond_2
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@1e
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@20
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@23
    move-result v4

    #@24
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@26
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@29
    move-result v5

    #@2a
    move-wide v2, p1

    #@2b
    move v6, p3

    #@2c
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@2f
    move-result-object v7

    #@30
    .line 1270
    .local v7, "stdDate":Ljava/util/Date;
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@32
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@34
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@37
    move-result v4

    #@38
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@3a
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@3d
    move-result v5

    #@3e
    move-wide v2, p1

    #@3f
    move v6, p3

    #@40
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@43
    move-result-object v0

    #@44
    .line 1272
    .local v0, "dstDate":Ljava/util/Date;
    if-eqz v7, :cond_4

    #@46
    if-eqz v0, :cond_3

    #@48
    invoke-virtual {v7, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_4

    #@4e
    .line 1273
    :cond_3
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    #@50
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@53
    move-result-wide v2

    #@54
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@56
    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@58
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@5b
    return-object v1

    #@5c
    .line 1275
    :cond_4
    if-eqz v0, :cond_6

    #@5e
    if-eqz v7, :cond_5

    #@60
    invoke-virtual {v0, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_6

    #@66
    .line 1276
    :cond_5
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    #@68
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@6b
    move-result-wide v2

    #@6c
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@6e
    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@70
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@73
    return-object v1

    #@74
    .line 1278
    :cond_6
    return-object v10
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    #@0
    .prologue
    .line 652
    if-ltz p3, :cond_0

    #@2
    const/16 v0, 0xb

    #@4
    if-le p3, v0, :cond_1

    #@6
    .line 653
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 656
    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    #@f
    move-result v7

    #@10
    move-object v0, p0

    #@11
    move v1, p1

    #@12
    move v2, p2

    #@13
    move v3, p3

    #@14
    move v4, p4

    #@15
    move v5, p5

    #@16
    move v6, p6

    #@17
    invoke-virtual/range {v0 .. v7}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 9
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 674
    if-ltz p3, :cond_0

    #@2
    const/16 v0, 0xb

    #@4
    if-le p3, v0, :cond_1

    #@6
    .line 675
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 679
    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    #@f
    move-result v7

    #@10
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->previousMonthLength(II)I

    #@13
    move-result v8

    #@14
    move-object v0, p0

    #@15
    move v1, p1

    #@16
    move v2, p2

    #@17
    move v3, p3

    #@18
    move v4, p4

    #@19
    move v5, p5

    #@1a
    move v6, p6

    #@1b
    .line 678
    invoke-direct/range {v0 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # I
    .param p4, "duplicatedTimeOpt"    # I
    .param p5, "offsets"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    aput v0, p5, v1

    #@7
    .line 796
    const/4 v0, 0x6

    #@8
    new-array v7, v0, [I

    #@a
    .line 797
    .local v7, "fields":[I
    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@d
    .line 799
    const/4 v0, 0x0

    #@e
    aget v2, v7, v0

    #@10
    const/4 v0, 0x1

    #@11
    aget v3, v7, v0

    #@13
    const/4 v0, 0x2

    #@14
    aget v4, v7, v0

    #@16
    .line 800
    const/4 v0, 0x3

    #@17
    aget v5, v7, v0

    #@19
    const/4 v0, 0x5

    #@1a
    aget v6, v7, v0

    #@1c
    .line 798
    const/4 v1, 0x1

    #@1d
    move-object v0, p0

    #@1e
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    #@21
    move-result v0

    #@22
    .line 800
    const/4 v1, 0x0

    #@23
    aget v1, p5, v1

    #@25
    .line 798
    sub-int/2addr v0, v1

    #@26
    const/4 v1, 0x1

    #@27
    aput v0, p5, v1

    #@29
    .line 802
    const/4 v8, 0x0

    #@2a
    .line 805
    .local v8, "recalc":Z
    const/4 v0, 0x1

    #@2b
    aget v0, p5, v0

    #@2d
    if-lez v0, :cond_3

    #@2f
    .line 806
    and-int/lit8 v0, p3, 0x3

    #@31
    const/4 v1, 0x1

    #@32
    if-eq v0, v1, :cond_0

    #@34
    .line 807
    and-int/lit8 v0, p3, 0x3

    #@36
    const/4 v1, 0x3

    #@37
    if-eq v0, v1, :cond_1

    #@39
    .line 808
    and-int/lit8 v0, p3, 0xc

    #@3b
    const/16 v1, 0xc

    #@3d
    if-eq v0, v1, :cond_1

    #@3f
    .line 809
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    #@42
    move-result v0

    #@43
    int-to-long v0, v0

    #@44
    sub-long/2addr p1, v0

    #@45
    .line 810
    const/4 v8, 0x1

    #@46
    .line 821
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    #@48
    .line 822
    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@4b
    .line 824
    const/4 v0, 0x0

    #@4c
    aget v2, v7, v0

    #@4e
    const/4 v0, 0x1

    #@4f
    aget v3, v7, v0

    #@51
    const/4 v0, 0x2

    #@52
    aget v4, v7, v0

    #@54
    .line 825
    const/4 v0, 0x3

    #@55
    aget v5, v7, v0

    #@57
    const/4 v0, 0x5

    #@58
    aget v6, v7, v0

    #@5a
    .line 823
    const/4 v1, 0x1

    #@5b
    move-object v0, p0

    #@5c
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    #@5f
    move-result v0

    #@60
    .line 825
    const/4 v1, 0x0

    #@61
    aget v1, p5, v1

    #@63
    .line 823
    sub-int/2addr v0, v1

    #@64
    const/4 v1, 0x1

    #@65
    aput v0, p5, v1

    #@67
    .line 794
    :cond_2
    return-void

    #@68
    .line 813
    :cond_3
    and-int/lit8 v0, p4, 0x3

    #@6a
    const/4 v1, 0x3

    #@6b
    if-eq v0, v1, :cond_4

    #@6d
    .line 814
    and-int/lit8 v0, p4, 0x3

    #@6f
    const/4 v1, 0x1

    #@70
    if-eq v0, v1, :cond_1

    #@72
    .line 815
    and-int/lit8 v0, p4, 0xc

    #@74
    const/4 v1, 0x4

    #@75
    if-ne v0, v1, :cond_1

    #@77
    .line 816
    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    #@7a
    move-result v0

    #@7b
    int-to-long v0, v0

    #@7c
    sub-long/2addr p1, v0

    #@7d
    .line 817
    const/4 v8, 0x1

    #@7e
    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 11
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1287
    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1288
    return-object v10

    #@6
    .line 1291
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    #@9
    .line 1292
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    #@b
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@e
    move-result-wide v8

    #@f
    .line 1293
    .local v8, "firstTransitionTime":J
    cmp-long v1, p1, v8

    #@11
    if-ltz v1, :cond_1

    #@13
    if-nez p3, :cond_2

    #@15
    cmp-long v1, p1, v8

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1294
    :cond_1
    return-object v10

    #@1a
    .line 1296
    :cond_2
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@1c
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@1e
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@21
    move-result v4

    #@22
    .line 1297
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@24
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@27
    move-result v5

    #@28
    move-wide v2, p1

    #@29
    move v6, p3

    #@2a
    .line 1296
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@2d
    move-result-object v7

    #@2e
    .line 1298
    .local v7, "stdDate":Ljava/util/Date;
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@30
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@32
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@35
    move-result v4

    #@36
    .line 1299
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@38
    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@3b
    move-result v5

    #@3c
    move-wide v2, p1

    #@3d
    move v6, p3

    #@3e
    .line 1298
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@41
    move-result-object v0

    #@42
    .line 1300
    .local v0, "dstDate":Ljava/util/Date;
    if-eqz v7, :cond_4

    #@44
    if-eqz v0, :cond_3

    #@46
    invoke-virtual {v7, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 1301
    :cond_3
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    #@4e
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@51
    move-result-wide v2

    #@52
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@54
    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@56
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@59
    return-object v1

    #@5a
    .line 1303
    :cond_4
    if-eqz v0, :cond_6

    #@5c
    if-eqz v7, :cond_5

    #@5e
    invoke-virtual {v0, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 1304
    :cond_5
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    #@66
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@69
    move-result-wide v2

    #@6a
    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@6c
    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@6e
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@71
    return-object v1

    #@72
    .line 1306
    :cond_6
    return-object v10
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 276
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@2
    return v0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 4

    #@0
    .prologue
    .line 1315
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    #@3
    .line 1317
    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@5
    if-eqz v2, :cond_1

    #@7
    const/4 v1, 0x3

    #@8
    .line 1318
    .local v1, "size":I
    :goto_0
    new-array v0, v1, [Landroid/icu/util/TimeZoneRule;

    #@a
    .line 1319
    .local v0, "rules":[Landroid/icu/util/TimeZoneRule;
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v0, v3

    #@f
    .line 1320
    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1321
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v0, v3

    #@18
    .line 1322
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v0, v3

    #@1d
    .line 1324
    :cond_0
    return-object v0

    #@1e
    .line 1317
    .end local v0    # "rules":[Landroid/icu/util/TimeZoneRule;
    .end local v1    # "size":I
    :cond_1
    const/4 v1, 0x1

    #@1f
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 5
    .param p1, "othr"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1223
    if-ne p0, p1, :cond_0

    #@4
    .line 1224
    return v1

    #@5
    .line 1226
    :cond_0
    instance-of v3, p1, Landroid/icu/util/SimpleTimeZone;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1227
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1229
    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    #@d
    .line 1230
    .local v0, "other":Landroid/icu/util/SimpleTimeZone;
    if-eqz v0, :cond_5

    #@f
    .line 1231
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@11
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@13
    if-ne v3, v4, :cond_5

    #@15
    .line 1232
    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@17
    iget-boolean v4, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@19
    if-ne v3, v4, :cond_5

    #@1b
    .line 1233
    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 1235
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@21
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@23
    if-ne v3, v4, :cond_4

    #@25
    .line 1236
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@27
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@29
    if-ne v3, v4, :cond_4

    #@2b
    .line 1237
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@2d
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@2f
    if-ne v3, v4, :cond_4

    #@31
    .line 1238
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@33
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@35
    if-ne v3, v4, :cond_4

    #@37
    .line 1239
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@39
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@3b
    if-ne v3, v4, :cond_4

    #@3d
    .line 1240
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@3f
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@41
    if-ne v3, v4, :cond_4

    #@43
    .line 1241
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@45
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@47
    if-ne v3, v4, :cond_4

    #@49
    .line 1242
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@4b
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@4d
    if-ne v3, v4, :cond_4

    #@4f
    .line 1243
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@51
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@53
    if-ne v3, v4, :cond_4

    #@55
    .line 1244
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@57
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@59
    if-ne v3, v4, :cond_4

    #@5b
    .line 1245
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@5d
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@5f
    if-ne v3, v4, :cond_4

    #@61
    .line 1246
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@63
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@65
    if-ne v3, v4, :cond_4

    #@67
    .line 1247
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@69
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@6b
    if-ne v3, v4, :cond_4

    #@6d
    .line 1248
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@6f
    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@71
    if-ne v3, v4, :cond_3

    #@73
    .line 1230
    :cond_2
    :goto_0
    return v1

    #@74
    :cond_3
    move v1, v2

    #@75
    .line 1248
    goto :goto_0

    #@76
    :cond_4
    move v1, v2

    #@77
    .line 1235
    goto :goto_0

    #@78
    :cond_5
    move v1, v2

    #@79
    .line 1230
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1181
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    #@3
    move-result v1

    #@4
    .line 1182
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@6
    .line 1181
    add-int/2addr v2, v1

    #@7
    .line 1182
    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@9
    ushr-int/lit8 v3, v1, 0x8

    #@b
    .line 1183
    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    const/4 v1, 0x0

    #@10
    .line 1182
    :goto_0
    add-int/2addr v1, v3

    #@11
    .line 1181
    xor-int v0, v2, v1

    #@13
    .line 1184
    .local v0, "ret":I
    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1185
    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@19
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@1b
    ushr-int/lit8 v2, v2, 0xa

    #@1d
    .line 1186
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@1f
    .line 1185
    add-int/2addr v2, v3

    #@20
    xor-int/2addr v1, v2

    #@21
    .line 1186
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    #@23
    ushr-int/lit8 v2, v2, 0xb

    #@25
    .line 1187
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@27
    .line 1186
    add-int/2addr v2, v3

    #@28
    .line 1185
    xor-int/2addr v1, v2

    #@29
    .line 1187
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    #@2b
    ushr-int/lit8 v2, v2, 0xc

    #@2d
    .line 1188
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@2f
    .line 1187
    add-int/2addr v2, v3

    #@30
    .line 1185
    xor-int/2addr v1, v2

    #@31
    .line 1188
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    #@33
    ushr-int/lit8 v2, v2, 0xd

    #@35
    .line 1189
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@37
    .line 1188
    add-int/2addr v2, v3

    #@38
    .line 1185
    xor-int/2addr v1, v2

    #@39
    .line 1189
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    #@3b
    ushr-int/lit8 v2, v2, 0xe

    #@3d
    .line 1190
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@3f
    .line 1189
    add-int/2addr v2, v3

    #@40
    .line 1185
    xor-int/2addr v1, v2

    #@41
    .line 1190
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    #@43
    ushr-int/lit8 v2, v2, 0xf

    #@45
    .line 1191
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@47
    .line 1190
    add-int/2addr v2, v3

    #@48
    .line 1185
    xor-int/2addr v1, v2

    #@49
    .line 1191
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    #@4b
    ushr-int/lit8 v2, v2, 0x10

    #@4d
    .line 1192
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@4f
    .line 1191
    add-int/2addr v2, v3

    #@50
    .line 1185
    xor-int/2addr v1, v2

    #@51
    .line 1192
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    #@53
    ushr-int/lit8 v2, v2, 0x11

    #@55
    .line 1193
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@57
    .line 1192
    add-int/2addr v2, v3

    #@58
    .line 1185
    xor-int/2addr v1, v2

    #@59
    .line 1193
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    #@5b
    ushr-int/lit8 v2, v2, 0x12

    #@5d
    .line 1194
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@5f
    .line 1193
    add-int/2addr v2, v3

    #@60
    .line 1185
    xor-int/2addr v1, v2

    #@61
    .line 1194
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    #@63
    ushr-int/lit8 v2, v2, 0x13

    #@65
    .line 1195
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@67
    .line 1194
    add-int/2addr v2, v3

    #@68
    .line 1185
    xor-int/2addr v1, v2

    #@69
    .line 1195
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    #@6b
    ushr-int/lit8 v2, v2, 0x14

    #@6d
    .line 1196
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@6f
    .line 1195
    add-int/2addr v2, v3

    #@70
    .line 1185
    xor-int/2addr v1, v2

    #@71
    .line 1196
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    #@73
    ushr-int/lit8 v2, v2, 0x15

    #@75
    .line 1197
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@77
    .line 1196
    add-int/2addr v2, v3

    #@78
    .line 1185
    xor-int/2addr v1, v2

    #@79
    .line 1197
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    #@7b
    ushr-int/lit8 v2, v2, 0x16

    #@7d
    .line 1198
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@7f
    .line 1197
    add-int/2addr v2, v3

    #@80
    .line 1185
    xor-int/2addr v1, v2

    #@81
    .line 1198
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@83
    ushr-int/lit8 v2, v2, 0x17

    #@85
    .line 1185
    xor-int/2addr v1, v2

    #@86
    add-int/2addr v0, v1

    #@87
    .line 1200
    :cond_0
    return v0

    #@88
    .line 1183
    .end local v0    # "ret":I
    :cond_1
    const/4 v1, 0x1

    #@89
    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 976
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@5
    .line 977
    .local v0, "gc":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 978
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->inDaylightTime()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1420
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 966
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@2
    return v0
.end method

.method public setDSTSavings(I)V
    .locals 2
    .param p1, "millisSavedDuringDST"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 545
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 549
    :cond_0
    if-gtz p1, :cond_1

    #@12
    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@17
    throw v0

    #@18
    .line 552
    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    #@1a
    .line 554
    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@1c
    .line 544
    return-void
.end method

.method public setEndRule(III)V
    .locals 7
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 467
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 471
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@14
    move-result-object v0

    #@15
    move v1, p1

    #@16
    move v3, v2

    #@17
    move v4, p3

    #@18
    move v5, p2

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    #@1c
    .line 472
    invoke-virtual {p0, p1, p2, v6, p3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    #@1f
    .line 466
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 7
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 446
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 447
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 450
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@13
    move-result-object v0

    #@14
    const/4 v5, -0x1

    #@15
    move v1, p1

    #@16
    move v2, p2

    #@17
    move v3, p3

    #@18
    move v4, p4

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    #@1c
    move-object v1, p0

    #@1d
    move v2, p1

    #@1e
    move v3, p2

    #@1f
    move v4, p3

    #@20
    move v5, p4

    #@21
    .line 451
    invoke-direct/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    #@24
    .line 445
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 7
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 494
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 497
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@12
    move-result-object v0

    #@13
    const/4 v2, -0x1

    #@14
    move v1, p1

    #@15
    move v3, p3

    #@16
    move v4, p4

    #@17
    move v5, p2

    #@18
    move v6, p5

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    #@1c
    .line 498
    const/4 v5, 0x0

    #@1d
    move-object v0, p0

    #@1e
    move v1, p1

    #@1f
    move v2, p2

    #@20
    move v3, p3

    #@21
    move v4, p4

    #@22
    move v6, p5

    #@23
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    #@26
    .line 492
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    #@12
    .line 248
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@15
    .line 243
    return-void
.end method

.method public setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 264
    :cond_0
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    #@11
    .line 265
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@14
    .line 259
    return-void
.end method

.method public setStartRule(III)V
    .locals 9
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "time"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 390
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 394
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@14
    move-result-object v0

    #@15
    move v1, p1

    #@16
    move v3, v2

    #@17
    move v4, p3

    #@18
    move v5, p2

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    #@1c
    move-object v3, p0

    #@1d
    move v4, p1

    #@1e
    move v5, p2

    #@1f
    move v7, p3

    #@20
    move v8, v6

    #@21
    .line 395
    invoke-direct/range {v3 .. v8}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    #@24
    .line 389
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 7
    .param p1, "month"    # I
    .param p2, "dayOfWeekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 318
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 322
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@13
    move-result-object v0

    #@14
    const/4 v5, -0x1

    #@15
    move v1, p1

    #@16
    move v2, p2

    #@17
    move v3, p3

    #@18
    move v4, p4

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    #@1c
    move-object v1, p0

    #@1d
    move v2, p1

    #@1e
    move v3, p2

    #@1f
    move v4, p3

    #@20
    move v5, p4

    #@21
    .line 323
    invoke-direct/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    #@24
    .line 317
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 7
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "time"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@12
    move-result-object v0

    #@13
    const/4 v2, -0x1

    #@14
    move v1, p1

    #@15
    move v3, p3

    #@16
    move v4, p4

    #@17
    move v5, p2

    #@18
    move v6, p5

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    #@1c
    .line 421
    if-eqz p5, :cond_1

    #@1e
    move v2, p2

    #@1f
    .line 422
    :goto_0
    neg-int v3, p3

    #@20
    const/4 v5, 0x0

    #@21
    move-object v0, p0

    #@22
    move v1, p1

    #@23
    move v4, p4

    #@24
    .line 421
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    #@27
    .line 415
    return-void

    #@28
    .line 421
    :cond_1
    neg-int v2, p2

    #@29
    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 2
    .param p1, "year"    # I

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 290
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    #@12
    move-result-object v0

    #@13
    iput p1, v0, Landroid/icu/util/STZInfo;->sy:I

    #@15
    .line 291
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    #@17
    .line 292
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    #@1a
    .line 285
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SimpleTimeZone: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 958
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    #@2
    return v0
.end method
