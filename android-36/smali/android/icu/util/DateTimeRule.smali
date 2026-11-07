.class public Landroid/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source "DateTimeRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final greylist-max-o DOM:I = 0x0

.field public static final greylist-max-o DOW:I = 0x1

.field private static final greylist-max-o DOWSTR:[Ljava/lang/String;

.field public static final greylist-max-o DOW_GEQ_DOM:I = 0x2

.field public static final greylist-max-o DOW_LEQ_DOM:I = 0x3

.field private static final greylist-max-o MONSTR:[Ljava/lang/String;

.field public static final greylist-max-o STANDARD_TIME:I = 0x1

.field public static final greylist-max-o UTC_TIME:I = 0x2

.field public static final greylist-max-o WALL_TIME:I = 0x0

.field private static final whitelist serialVersionUID:J = 0x1e4bc5ae0dd30373L


# instance fields
.field private final greylist-max-o dateRuleType:I

.field private final greylist-max-o dayOfMonth:I

.field private final greylist-max-o dayOfWeek:I

.field private final greylist-max-o millisInDay:I

.field private final greylist-max-o month:I

.field private final greylist-max-o timeRuleType:I

.field private final greylist-max-o weekInMonth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 225
    const-string v6, "Fri"

    const-string v7, "Sat"

    const-string v0, ""

    const-string v1, "Sun"

    const-string v2, "Mon"

    const-string v3, "Tue"

    const-string v4, "Wed"

    const-string v5, "Thu"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    .line 226
    const-string v11, "Nov"

    const-string v12, "Dec"

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "millisInDay"    # I
    .param p4, "timeType"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    .line 90
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    .line 91
    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    .line 93
    iput p3, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    .line 94
    iput p4, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    .line 97
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    .line 98
    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    .line 99
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIII)V
    .registers 7
    .param p1, "month"    # I
    .param p2, "weekInMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "millisInDay"    # I
    .param p5, "timeType"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    .line 118
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    .line 119
    iput p2, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    .line 120
    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    .line 122
    iput p4, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    .line 123
    iput p5, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    .line 127
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIZII)V
    .registers 8
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "after"    # Z
    .param p5, "millisInDay"    # I
    .param p6, "timeType"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p4, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x3

    :goto_8
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    .line 146
    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    .line 147
    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    .line 148
    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    .line 150
    iput p5, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    .line 151
    iput p6, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    .line 155
    return-void
.end method


# virtual methods
.method public greylist-max-o getDateRuleType()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    return v0
.end method

.method public greylist-max-o getRuleDayOfMonth()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    return v0
.end method

.method public greylist-max-o getRuleDayOfWeek()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    return v0
.end method

.method public greylist-max-o getRuleMillisInDay()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    return v0
.end method

.method public greylist-max-o getRuleMonth()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/icu/util/DateTimeRule;->month:I

    return v0
.end method

.method public greylist-max-o getRuleWeekInMonth()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    return v0
.end method

.method public greylist-max-o getTimeRuleType()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "sDate":Ljava/lang/String;
    const/4 v1, 0x0

    .line 238
    .local v1, "sTimeRuleType":Ljava/lang/String;
    iget v2, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    packed-switch v2, :pswitch_data_fa

    goto :goto_75

    .line 249
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v4, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    .line 246
    :pswitch_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v4, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_75

    .line 243
    :pswitch_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v4, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    goto :goto_75

    .line 240
    :pswitch_6e
    iget v2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    nop

    .line 253
    :goto_75
    iget v2, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    packed-switch v2, :pswitch_data_106

    goto :goto_84

    .line 261
    :pswitch_7b
    const-string v1, "UTC"

    goto :goto_84

    .line 258
    :pswitch_7e
    const-string v1, "STD"

    .line 259
    goto :goto_84

    .line 255
    :pswitch_81
    const-string v1, "WALL"

    .line 256
    nop

    .line 265
    :goto_84
    iget v2, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    .line 266
    .local v2, "time":I
    rem-int/lit16 v3, v2, 0x3e8

    .line 267
    .local v3, "millis":I
    div-int/lit16 v2, v2, 0x3e8

    .line 268
    rem-int/lit8 v4, v2, 0x3c

    .line 269
    .local v4, "secs":I
    div-int/lit8 v2, v2, 0x3c

    .line 270
    rem-int/lit8 v5, v2, 0x3c

    .line 271
    .local v5, "mins":I
    div-int/lit8 v6, v2, 0x3c

    .line 273
    .local v6, "hours":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v7, "buf":Ljava/lang/StringBuilder;
    const-string v8, "month="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object v8, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    iget v9, p0, Landroid/icu/util/DateTimeRule;->month:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v8, ", date="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v8, ", time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    div-int/lit8 v9, v5, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    rem-int/lit8 v9, v5, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    div-int/lit8 v8, v4, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    rem-int/lit8 v8, v4, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    div-int/lit8 v8, v3, 0x64

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    div-int/lit8 v8, v3, 0xa

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    rem-int/lit8 v8, v3, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_50
        :pswitch_2c
        :pswitch_8
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
    .end packed-switch
.end method
