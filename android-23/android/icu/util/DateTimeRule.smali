.class public Landroid/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source "DateTimeRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOM:I = 0x0

.field public static final DOW:I = 0x1

.field private static final DOWSTR:[Ljava/lang/String;

.field public static final DOW_GEQ_DOM:I = 0x2

.field public static final DOW_LEQ_DOM:I = 0x3

.field private static final MONSTR:[Ljava/lang/String;

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = 0x1e4bc5ae0dd30373L


# instance fields
.field private final dateRuleType:I

.field private final dayOfMonth:I

.field private final dayOfWeek:I

.field private final millisInDay:I

.field private final month:I

.field private final timeRuleType:I

.field private final weekInMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 256
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, ""

    #@c
    aput-object v1, v0, v3

    #@e
    const-string/jumbo v1, "Sun"

    #@11
    aput-object v1, v0, v4

    #@13
    const-string/jumbo v1, "Mon"

    #@16
    aput-object v1, v0, v5

    #@18
    const-string/jumbo v1, "Tue"

    #@1b
    aput-object v1, v0, v6

    #@1d
    const-string/jumbo v1, "Wed"

    #@20
    aput-object v1, v0, v7

    #@22
    const-string/jumbo v1, "Thu"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "Fri"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "Sat"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    sput-object v0, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    #@36
    .line 257
    const/16 v0, 0xc

    #@38
    new-array v0, v0, [Ljava/lang/String;

    #@3a
    const-string/jumbo v1, "Jan"

    #@3d
    aput-object v1, v0, v3

    #@3f
    const-string/jumbo v1, "Feb"

    #@42
    aput-object v1, v0, v4

    #@44
    const-string/jumbo v1, "Mar"

    #@47
    aput-object v1, v0, v5

    #@49
    const-string/jumbo v1, "Apr"

    #@4c
    aput-object v1, v0, v6

    #@4e
    const-string/jumbo v1, "May"

    #@51
    aput-object v1, v0, v7

    #@53
    const-string/jumbo v1, "Jun"

    #@56
    const/4 v2, 0x5

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, "Jul"

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    const-string/jumbo v1, "Aug"

    #@62
    const/4 v2, 0x7

    #@63
    aput-object v1, v0, v2

    #@65
    const-string/jumbo v1, "Sep"

    #@68
    const/16 v2, 0x8

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, "Oct"

    #@6f
    const/16 v2, 0x9

    #@71
    aput-object v1, v0, v2

    #@73
    const-string/jumbo v1, "Nov"

    #@76
    const/16 v2, 0xa

    #@78
    aput-object v1, v0, v2

    #@7a
    const-string/jumbo v1, "Dec"

    #@7d
    const/16 v2, 0xb

    #@7f
    aput-object v1, v0, v2

    #@81
    sput-object v0, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    #@83
    .line 18
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "millisInDay"    # I
    .param p4, "timeType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 102
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    #@6
    .line 103
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    #@8
    .line 104
    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@a
    .line 106
    iput p3, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    #@c
    .line 107
    iput p4, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    #@e
    .line 110
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@10
    .line 111
    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    #@12
    .line 101
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "weekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "millisInDay"    # I
    .param p5, "timeType"    # I

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    #@6
    .line 133
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    #@8
    .line 134
    iput p2, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    #@a
    .line 135
    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@c
    .line 137
    iput p4, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    #@e
    .line 138
    iput p5, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    #@10
    .line 141
    const/4 v0, 0x0

    #@11
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@13
    .line 131
    return-void
.end method

.method public constructor <init>(IIIZII)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "after"    # Z
    .param p5, "millisInDay"    # I
    .param p6, "timeType"    # I

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    if-eqz p4, :cond_0

    #@5
    const/4 v0, 0x2

    #@6
    :goto_0
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    #@8
    .line 163
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    #@a
    .line 164
    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@c
    .line 165
    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@e
    .line 167
    iput p5, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    #@10
    .line 168
    iput p6, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    #@12
    .line 171
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    #@15
    .line 161
    return-void

    #@16
    .line 162
    :cond_0
    const/4 v0, 0x3

    #@17
    goto :goto_0
.end method


# virtual methods
.method public getDateRuleType()I
    .locals 1

    #@0
    .prologue
    .line 182
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    #@2
    return v0
.end method

.method public getRuleDayOfMonth()I
    .locals 1

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@2
    return v0
.end method

.method public getRuleDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@2
    return v0
.end method

.method public getRuleMillisInDay()I
    .locals 1

    #@0
    .prologue
    .line 253
    iget v0, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    #@2
    return v0
.end method

.method public getRuleMonth()I
    .locals 1

    #@0
    .prologue
    .line 193
    iget v0, p0, Landroid/icu/util/DateTimeRule;->month:I

    #@2
    return v0
.end method

.method public getRuleWeekInMonth()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    #@2
    return v0
.end method

.method public getTimeRuleType()I
    .locals 1

    #@0
    .prologue
    .line 242
    iget v0, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 267
    const/4 v4, 0x0

    #@1
    .line 268
    .local v4, "sDate":Ljava/lang/String;
    const/4 v5, 0x0

    #@2
    .line 270
    .local v5, "sTimeRuleType":Ljava/lang/String;
    iget v8, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    #@4
    packed-switch v8, :pswitch_data_0

    #@7
    .line 285
    .end local v4    # "sDate":Ljava/lang/String;
    :goto_0
    iget v8, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    #@9
    packed-switch v8, :pswitch_data_1

    #@c
    .line 297
    .end local v5    # "sTimeRuleType":Ljava/lang/String;
    :goto_1
    iget v7, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    #@e
    .line 298
    .local v7, "time":I
    rem-int/lit16 v2, v7, 0x3e8

    #@10
    .line 299
    .local v2, "millis":I
    div-int/lit16 v7, v7, 0x3e8

    #@12
    .line 300
    rem-int/lit8 v6, v7, 0x3c

    #@14
    .line 301
    .local v6, "secs":I
    div-int/lit8 v7, v7, 0x3c

    #@16
    .line 302
    rem-int/lit8 v3, v7, 0x3c

    #@18
    .line 303
    .local v3, "mins":I
    div-int/lit8 v1, v7, 0x3c

    #@1a
    .line 305
    .local v1, "hours":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    .line 306
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "month="

    #@22
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 307
    sget-object v8, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    #@27
    iget v9, p0, Landroid/icu/util/DateTimeRule;->month:I

    #@29
    aget-object v8, v8, v9

    #@2b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 308
    const-string/jumbo v8, ", date="

    #@31
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 310
    const-string/jumbo v8, ", time="

    #@3a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    .line 312
    const-string/jumbo v8, ":"

    #@43
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 313
    div-int/lit8 v8, v3, 0xa

    #@48
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    .line 314
    rem-int/lit8 v8, v3, 0xa

    #@4d
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    .line 315
    const-string/jumbo v8, ":"

    #@53
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 316
    div-int/lit8 v8, v6, 0xa

    #@58
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 317
    rem-int/lit8 v8, v6, 0xa

    #@5d
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    .line 318
    const-string/jumbo v8, "."

    #@63
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 319
    div-int/lit8 v8, v2, 0x64

    #@68
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    .line 320
    div-int/lit8 v8, v2, 0xa

    #@6d
    rem-int/lit8 v8, v8, 0xa

    #@6f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    .line 321
    rem-int/lit8 v8, v2, 0xa

    #@74
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    .line 322
    const-string/jumbo v8, "("

    #@7a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 323
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 324
    const-string/jumbo v8, ")"

    #@83
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    return-object v8

    #@8b
    .line 272
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "hours":I
    .end local v2    # "millis":I
    .end local v3    # "mins":I
    .end local v6    # "secs":I
    .end local v7    # "time":I
    .restart local v4    # "sDate":Ljava/lang/String;
    .restart local v5    # "sTimeRuleType":Ljava/lang/String;
    :pswitch_0
    iget v8, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@8d
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    .local v4, "sDate":Ljava/lang/String;
    goto/16 :goto_0

    #@93
    .line 275
    .local v4, "sDate":Ljava/lang/String;
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    iget v9, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    #@9a
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    #@a4
    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@a6
    aget-object v9, v9, v10

    #@a8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    .local v4, "sDate":Ljava/lang/String;
    goto/16 :goto_0

    #@b2
    .line 278
    .local v4, "sDate":Ljava/lang/String;
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    #@b9
    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@bb
    aget-object v9, v9, v10

    #@bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v8

    #@c1
    const-string/jumbo v9, ">="

    #@c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    iget v9, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@ca
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v4

    #@d6
    .local v4, "sDate":Ljava/lang/String;
    goto/16 :goto_0

    #@d8
    .line 281
    .local v4, "sDate":Ljava/lang/String;
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    #@df
    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    #@e1
    aget-object v9, v9, v10

    #@e3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    const-string/jumbo v9, "<="

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    iget v9, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    #@f0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v8

    #@f8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v4

    #@fc
    .local v4, "sDate":Ljava/lang/String;
    goto/16 :goto_0

    #@fe
    .line 287
    .end local v4    # "sDate":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v5, "WALL"

    #@101
    .local v5, "sTimeRuleType":Ljava/lang/String;
    goto/16 :goto_1

    #@103
    .line 290
    .local v5, "sTimeRuleType":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v5, "STD"

    #@106
    .local v5, "sTimeRuleType":Ljava/lang/String;
    goto/16 :goto_1

    #@108
    .line 293
    .local v5, "sTimeRuleType":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v5, "UTC"

    #@10b
    .local v5, "sTimeRuleType":Ljava/lang/String;
    goto/16 :goto_1

    #@10d
    .line 270
    nop

    #@10e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@11a
    .line 285
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
