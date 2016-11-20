.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static synthetic -get0(Landroid/widget/DateTimeView;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 67
    const/4 v5, -0x1

    #@5
    iput v5, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    #@7
    .line 82
    sget-object v5, Lcom/android/internal/R$styleable;->DateTimeView:[I

    #@9
    .line 81
    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object v1

    #@d
    .line 85
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@10
    move-result v0

    #@11
    .line 86
    .local v0, "N":I
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@14
    .line 87
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@17
    move-result v2

    #@18
    .line 88
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    #@1b
    .line 86
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 90
    :pswitch_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result v4

    #@22
    .line 91
    .local v4, "relative":Z
    invoke-virtual {p0, v4}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    #@25
    goto :goto_1

    #@26
    .line 95
    .end local v2    # "attr":I
    .end local v4    # "relative":Z
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 79
    return-void

    #@2a
    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 295
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@4
    move-result-object v0

    #@5
    .line 296
    .local v0, "c":Landroid/icu/util/Calendar;
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@c
    .line 297
    const/4 v1, 0x5

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    #@11
    .line 298
    const/16 v1, 0xb

    #@13
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@16
    .line 299
    const/16 v1, 0xc

    #@18
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@1b
    .line 300
    const/16 v1, 0xd

    #@1d
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@20
    .line 301
    const/16 v1, 0xe

    #@22
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    #@25
    .line 302
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@28
    move-result-wide v2

    #@29
    return-wide v2
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 5
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    #@0
    .prologue
    .line 323
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    #@3
    move-result v0

    #@4
    div-int/lit16 v0, v0, 0x3e8

    #@6
    int-to-long v0, v0

    #@7
    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    #@a
    move-result v0

    #@b
    .line 324
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    #@e
    move-result v1

    #@f
    div-int/lit16 v1, v1, 0x3e8

    #@11
    int-to-long v2, v1

    #@12
    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    #@15
    move-result v1

    #@16
    .line 323
    sub-int/2addr v0, v1

    #@17
    return v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private updateNowText()V
    .locals 2

    #@0
    .prologue
    .line 313
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 314
    return-void

    #@5
    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v0

    #@d
    .line 317
    const v1, 0x104035e

    #@10
    .line 316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    #@16
    .line 312
    return-void
.end method

.method private updateRelativeTime()V
    .locals 14

    #@0
    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    .line 230
    .local v6, "now":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@6
    sub-long v10, v6, v10

    #@8
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    #@b
    move-result-wide v2

    #@c
    .line 233
    .local v2, "duration":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@e
    cmp-long v10, v6, v10

    #@10
    if-ltz v10, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    .line 235
    .local v1, "past":Z
    :goto_0
    const-wide/32 v10, 0xea60

    #@16
    cmp-long v10, v2, v10

    #@18
    if-gez v10, :cond_1

    #@1a
    .line 236
    iget-object v10, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    #@1c
    invoke-virtual {p0, v10}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    #@1f
    .line 237
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@21
    const-wide/32 v12, 0xea60

    #@24
    add-long/2addr v10, v12

    #@25
    const-wide/16 v12, 0x1

    #@27
    add-long/2addr v10, v12

    #@28
    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@2a
    .line 238
    return-void

    #@2b
    .line 233
    .end local v1    # "past":Z
    :cond_0
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "past":Z
    goto :goto_0

    #@2d
    .line 239
    :cond_1
    const-wide/32 v10, 0x36ee80

    #@30
    cmp-long v10, v2, v10

    #@32
    if-gez v10, :cond_4

    #@34
    .line 240
    const-wide/32 v10, 0xea60

    #@37
    div-long v10, v2, v10

    #@39
    long-to-int v0, v10

    #@3a
    .line 241
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v10

    #@3e
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v11

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 242
    const v10, 0x1140007

    #@47
    .line 241
    :goto_1
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    const/4 v11, 0x1

    #@4c
    new-array v11, v11, [Ljava/lang/Object;

    #@4e
    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v12

    #@52
    const/4 v13, 0x0

    #@53
    aput-object v12, v11, v13

    #@55
    .line 241
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 246
    .local v8, "result":Ljava/lang/String;
    const-wide/32 v4, 0xea60

    #@5c
    .line 280
    .local v4, "millisIncrease":J
    :goto_2
    const-wide/16 v10, -0x1

    #@5e
    cmp-long v10, v4, v10

    #@60
    if-eqz v10, :cond_2

    #@62
    .line 281
    if-eqz v1, :cond_c

    #@64
    .line 282
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@66
    add-int/lit8 v12, v0, 0x1

    #@68
    int-to-long v12, v12

    #@69
    mul-long/2addr v12, v4

    #@6a
    add-long/2addr v10, v12

    #@6b
    const-wide/16 v12, 0x1

    #@6d
    add-long/2addr v10, v12

    #@6e
    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@70
    .line 287
    :cond_2
    :goto_3
    invoke-virtual {p0, v8}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    #@73
    .line 228
    return-void

    #@74
    .line 243
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_3
    const v10, 0x114000b

    #@77
    goto :goto_1

    #@78
    .line 247
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v10, 0x5265c00

    #@7b
    cmp-long v10, v2, v10

    #@7d
    if-gez v10, :cond_6

    #@7f
    .line 248
    const-wide/32 v10, 0x36ee80

    #@82
    div-long v10, v2, v10

    #@84
    long-to-int v0, v10

    #@85
    .line 249
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8c
    move-result-object v11

    #@8d
    if-eqz v1, :cond_5

    #@8f
    .line 250
    const v10, 0x1140008

    #@92
    .line 249
    :goto_4
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@95
    move-result-object v10

    #@96
    const/4 v11, 0x1

    #@97
    new-array v11, v11, [Ljava/lang/Object;

    #@99
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c
    move-result-object v12

    #@9d
    const/4 v13, 0x0

    #@9e
    aput-object v12, v11, v13

    #@a0
    .line 249
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a3
    move-result-object v8

    #@a4
    .line 254
    .restart local v8    # "result":Ljava/lang/String;
    const-wide/32 v4, 0x36ee80

    #@a7
    .restart local v4    # "millisIncrease":J
    goto :goto_2

    #@a8
    .line 251
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_5
    const v10, 0x114000c

    #@ab
    goto :goto_4

    #@ac
    .line 255
    .end local v0    # "count":I
    :cond_6
    const-wide v10, 0x7528ad000L

    #@b1
    cmp-long v10, v2, v10

    #@b3
    if-gez v10, :cond_a

    #@b5
    .line 257
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@b8
    move-result-object v9

    #@b9
    .line 258
    .local v9, "timeZone":Ljava/util/TimeZone;
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@bb
    invoke-static {v9, v10, v11, v6, v7}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    #@be
    move-result v10

    #@bf
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    #@c2
    move-result v10

    #@c3
    const/4 v11, 0x1

    #@c4
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@c7
    move-result v0

    #@c8
    .line 259
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@cf
    move-result-object v11

    #@d0
    if-eqz v1, :cond_8

    #@d2
    .line 260
    const v10, 0x1140009

    #@d5
    .line 259
    :goto_5
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    const/4 v11, 0x1

    #@da
    new-array v11, v11, [Ljava/lang/Object;

    #@dc
    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v12

    #@e0
    const/4 v13, 0x0

    #@e1
    aput-object v12, v11, v13

    #@e3
    .line 259
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e6
    move-result-object v8

    #@e7
    .line 264
    .restart local v8    # "result":Ljava/lang/String;
    if-nez v1, :cond_7

    #@e9
    const/4 v10, 0x1

    #@ea
    if-eq v0, v10, :cond_9

    #@ec
    .line 265
    :cond_7
    invoke-direct {p0, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    #@ef
    move-result-wide v10

    #@f0
    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@f2
    .line 266
    const-wide/16 v4, -0x1

    #@f4
    .line 264
    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    #@f6
    .line 261
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_8
    const v10, 0x114000d

    #@f9
    goto :goto_5

    #@fa
    .line 268
    .restart local v8    # "result":Ljava/lang/String;
    :cond_9
    const-wide/32 v4, 0x5265c00

    #@fd
    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    #@ff
    .line 272
    .end local v0    # "count":I
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "timeZone":Ljava/util/TimeZone;
    :cond_a
    const-wide v10, 0x7528ad000L

    #@104
    div-long v10, v2, v10

    #@106
    long-to-int v0, v10

    #@107
    .line 273
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@10a
    move-result-object v10

    #@10b
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10e
    move-result-object v11

    #@10f
    if-eqz v1, :cond_b

    #@111
    .line 274
    const v10, 0x114000a

    #@114
    .line 273
    :goto_6
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@117
    move-result-object v10

    #@118
    const/4 v11, 0x1

    #@119
    new-array v11, v11, [Ljava/lang/Object;

    #@11b
    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11e
    move-result-object v12

    #@11f
    const/4 v13, 0x0

    #@120
    aput-object v12, v11, v13

    #@122
    .line 273
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@125
    move-result-object v8

    #@126
    .line 278
    .restart local v8    # "result":Ljava/lang/String;
    const-wide v4, 0x7528ad000L

    #@12b
    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    #@12d
    .line 275
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_b
    const v10, 0x114000e

    #@130
    goto :goto_6

    #@131
    .line 284
    .restart local v4    # "millisIncrease":J
    .restart local v8    # "result":Ljava/lang/String;
    :cond_c
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@133
    int-to-long v12, v0

    #@134
    mul-long/2addr v12, v4

    #@135
    sub-long/2addr v10, v12

    #@136
    const-wide/16 v12, 0x1

    #@138
    add-long/2addr v10, v12

    #@139
    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@13b
    goto/16 :goto_3
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    #@0
    .prologue
    .line 332
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@3
    .line 333
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@6
    .line 331
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@4
    .line 101
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@6
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@c
    .line 102
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    #@e
    .line 103
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@10
    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    #@13
    .line 104
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@18
    .line 106
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    #@1b
    .line 99
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 308
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    #@6
    .line 309
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@9
    .line 306
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 112
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@b
    .line 113
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    #@d
    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    #@10
    .line 110
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 339
    iget-boolean v8, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v4

    #@b
    .line 343
    .local v4, "now":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@d
    sub-long v8, v4, v8

    #@f
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    #@12
    move-result-wide v2

    #@13
    .line 345
    .local v2, "duration":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@15
    cmp-long v8, v4, v8

    #@17
    if-ltz v8, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    .line 347
    .local v1, "past":Z
    :goto_0
    const-wide/32 v8, 0xea60

    #@1d
    cmp-long v8, v2, v8

    #@1f
    if-gez v8, :cond_2

    #@21
    .line 348
    iget-object v6, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    #@23
    .line 389
    .local v6, "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 337
    .end local v1    # "past":Z
    .end local v2    # "duration":J
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    return-void

    #@27
    .line 345
    .restart local v2    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    const/4 v1, 0x0

    #@28
    .restart local v1    # "past":Z
    goto :goto_0

    #@29
    .line 349
    :cond_2
    const-wide/32 v8, 0x36ee80

    #@2c
    cmp-long v8, v2, v8

    #@2e
    if-gez v8, :cond_4

    #@30
    .line 350
    const-wide/32 v8, 0xea60

    #@33
    div-long v8, v2, v8

    #@35
    long-to-int v0, v8

    #@36
    .line 351
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3d
    move-result-object v9

    #@3e
    if-eqz v1, :cond_3

    #@40
    .line 352
    const v8, 0x114000f

    #@43
    .line 351
    :goto_2
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    const/4 v9, 0x1

    #@48
    new-array v9, v9, [Ljava/lang/Object;

    #@4a
    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v10

    #@4e
    const/4 v11, 0x0

    #@4f
    aput-object v10, v9, v11

    #@51
    .line 351
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    #@56
    .line 354
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const v8, 0x1140013

    #@59
    goto :goto_2

    #@5a
    .line 358
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v8, 0x5265c00

    #@5d
    cmp-long v8, v2, v8

    #@5f
    if-gez v8, :cond_6

    #@61
    .line 359
    const-wide/32 v8, 0x36ee80

    #@64
    div-long v8, v2, v8

    #@66
    long-to-int v0, v8

    #@67
    .line 360
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6e
    move-result-object v9

    #@6f
    if-eqz v1, :cond_5

    #@71
    .line 361
    const v8, 0x1140010

    #@74
    .line 360
    :goto_3
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    const/4 v9, 0x1

    #@79
    new-array v9, v9, [Ljava/lang/Object;

    #@7b
    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v10

    #@7f
    const/4 v11, 0x0

    #@80
    aput-object v10, v9, v11

    #@82
    .line 360
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    #@87
    .line 363
    .end local v6    # "result":Ljava/lang/String;
    :cond_5
    const v8, 0x1140014

    #@8a
    goto :goto_3

    #@8b
    .line 367
    .end local v0    # "count":I
    :cond_6
    const-wide v8, 0x7528ad000L

    #@90
    cmp-long v8, v2, v8

    #@92
    if-gez v8, :cond_8

    #@94
    .line 369
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@97
    move-result-object v7

    #@98
    .line 370
    .local v7, "timeZone":Ljava/util/TimeZone;
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@9a
    invoke-static {v7, v8, v9, v4, v5}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    #@9d
    move-result v8

    #@9e
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@a1
    move-result v8

    #@a2
    const/4 v9, 0x1

    #@a3
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@a6
    move-result v0

    #@a7
    .line 371
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@aa
    move-result-object v8

    #@ab
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ae
    move-result-object v9

    #@af
    if-eqz v1, :cond_7

    #@b1
    .line 372
    const v8, 0x1140011

    #@b4
    .line 371
    :goto_4
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@b7
    move-result-object v8

    #@b8
    const/4 v9, 0x1

    #@b9
    new-array v9, v9, [Ljava/lang/Object;

    #@bb
    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v10

    #@bf
    const/4 v11, 0x0

    #@c0
    aput-object v10, v9, v11

    #@c2
    .line 371
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c5
    move-result-object v6

    #@c6
    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    #@c8
    .line 374
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    const v8, 0x1140015

    #@cb
    goto :goto_4

    #@cc
    .line 380
    .end local v0    # "count":I
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    :cond_8
    const-wide v8, 0x7528ad000L

    #@d1
    div-long v8, v2, v8

    #@d3
    long-to-int v0, v8

    #@d4
    .line 381
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@db
    move-result-object v9

    #@dc
    if-eqz v1, :cond_9

    #@de
    .line 382
    const v8, 0x1140012

    #@e1
    .line 381
    :goto_5
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    #@e4
    move-result-object v8

    #@e5
    const/4 v9, 0x1

    #@e6
    new-array v9, v9, [Ljava/lang/Object;

    #@e8
    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v10

    #@ec
    const/4 v11, 0x0

    #@ed
    aput-object v10, v9, v11

    #@ef
    .line 381
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    #@f5
    .line 384
    .end local v6    # "result":Ljava/lang/String;
    :cond_9
    const v8, 0x1140016

    #@f8
    goto :goto_5
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    #@2
    .line 130
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    #@5
    .line 131
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@8
    .line 128
    return-void
.end method

.method public setTime(J)V
    .locals 9
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 120
    new-instance v7, Landroid/text/format/Time;

    #@3
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    #@6
    .line 121
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    #@9
    .line 122
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@f
    .line 123
    new-instance v0, Ljava/util/Date;

    #@11
    iget v1, v7, Landroid/text/format/Time;->year:I

    #@13
    add-int/lit16 v1, v1, -0x76c

    #@15
    iget v2, v7, Landroid/text/format/Time;->month:I

    #@17
    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    #@19
    iget v4, v7, Landroid/text/format/Time;->hour:I

    #@1b
    iget v5, v7, Landroid/text/format/Time;->minute:I

    #@1d
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@20
    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@22
    .line 124
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@25
    .line 119
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 137
    if-eq p1, v2, :cond_1

    #@4
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    #@7
    move-result v1

    #@8
    if-ne v1, v2, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    .line 138
    .local v0, "gotVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@e
    .line 139
    if-eqz v0, :cond_0

    #@10
    .line 140
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@13
    .line 136
    :cond_0
    return-void

    #@14
    .line 137
    .end local v0    # "gotVisible":Z
    :cond_1
    const/4 v0, 0x0

    #@15
    .restart local v0    # "gotVisible":Z
    goto :goto_0
.end method

.method update()V
    .locals 22

    #@0
    .prologue
    .line 145
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@4
    if-eqz v15, :cond_0

    #@6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    #@9
    move-result v15

    #@a
    const/16 v20, 0x8

    #@c
    move/from16 v0, v20

    #@e
    if-ne v15, v0, :cond_1

    #@10
    .line 146
    :cond_0
    return-void

    #@11
    .line 148
    :cond_1
    move-object/from16 v0, p0

    #@13
    iget-boolean v15, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    #@15
    if-eqz v15, :cond_2

    #@17
    .line 149
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    #@1a
    .line 150
    return-void

    #@1b
    .line 154
    :cond_2
    move-object/from16 v0, p0

    #@1d
    iget-object v14, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@1f
    .line 156
    .local v14, "time":Ljava/util/Date;
    new-instance v12, Landroid/text/format/Time;

    #@21
    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    #@24
    .line 157
    .local v12, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    #@26
    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@28
    move-wide/from16 v20, v0

    #@2a
    move-wide/from16 v0, v20

    #@2c
    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    #@2f
    .line 158
    const/4 v15, 0x0

    #@30
    iput v15, v12, Landroid/text/format/Time;->second:I

    #@32
    .line 160
    iget v15, v12, Landroid/text/format/Time;->hour:I

    #@34
    add-int/lit8 v15, v15, -0xc

    #@36
    iput v15, v12, Landroid/text/format/Time;->hour:I

    #@38
    .line 161
    const/4 v15, 0x0

    #@39
    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    #@3c
    move-result-wide v18

    #@3d
    .line 162
    .local v18, "twelveHoursBefore":J
    iget v15, v12, Landroid/text/format/Time;->hour:I

    #@3f
    add-int/lit8 v15, v15, 0xc

    #@41
    iput v15, v12, Landroid/text/format/Time;->hour:I

    #@43
    .line 163
    const/4 v15, 0x0

    #@44
    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    #@47
    move-result-wide v16

    #@48
    .line 164
    .local v16, "twelveHoursAfter":J
    const/4 v15, 0x0

    #@49
    iput v15, v12, Landroid/text/format/Time;->hour:I

    #@4b
    .line 165
    const/4 v15, 0x0

    #@4c
    iput v15, v12, Landroid/text/format/Time;->minute:I

    #@4e
    .line 166
    const/4 v15, 0x0

    #@4f
    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    #@52
    move-result-wide v8

    #@53
    .line 167
    .local v8, "midnightBefore":J
    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    #@55
    add-int/lit8 v15, v15, 0x1

    #@57
    iput v15, v12, Landroid/text/format/Time;->monthDay:I

    #@59
    .line 168
    const/4 v15, 0x0

    #@5a
    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    #@5d
    move-result-wide v6

    #@5e
    .line 170
    .local v6, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@61
    move-result-wide v10

    #@62
    .line 171
    .local v10, "nowMillis":J
    invoke-virtual {v12, v10, v11}, Landroid/text/format/Time;->set(J)V

    #@65
    .line 172
    const/4 v15, 0x0

    #@66
    iput v15, v12, Landroid/text/format/Time;->second:I

    #@68
    .line 173
    const/4 v15, 0x0

    #@69
    invoke-virtual {v12, v15}, Landroid/text/format/Time;->normalize(Z)J

    #@6c
    move-result-wide v10

    #@6d
    .line 177
    cmp-long v15, v10, v8

    #@6f
    if-ltz v15, :cond_4

    #@71
    cmp-long v15, v10, v6

    #@73
    if-gez v15, :cond_4

    #@75
    .line 179
    :cond_3
    const/4 v4, 0x0

    #@76
    .line 189
    .local v4, "display":I
    :goto_0
    move-object/from16 v0, p0

    #@78
    iget v15, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    #@7a
    if-ne v4, v15, :cond_6

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-object v15, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@80
    if-eqz v15, :cond_6

    #@82
    .line 191
    move-object/from16 v0, p0

    #@84
    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@86
    .line 207
    .local v5, "format":Ljava/text/DateFormat;
    :goto_1
    move-object/from16 v0, p0

    #@88
    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@8a
    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@8d
    move-result-object v13

    #@8e
    .line 208
    .local v13, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    #@90
    invoke-virtual {v0, v13}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    #@93
    .line 211
    if-nez v4, :cond_8

    #@95
    .line 213
    cmp-long v15, v16, v6

    #@97
    if-lez v15, :cond_7

    #@99
    .end local v16    # "twelveHoursAfter":J
    :goto_2
    move-wide/from16 v0, v16

    #@9b
    move-object/from16 v2, p0

    #@9d
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@9f
    .line 144
    .end local v18    # "twelveHoursBefore":J
    :goto_3
    return-void

    #@a0
    .line 178
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v13    # "text":Ljava/lang/String;
    .restart local v16    # "twelveHoursAfter":J
    .restart local v18    # "twelveHoursBefore":J
    :cond_4
    cmp-long v15, v10, v18

    #@a2
    if-ltz v15, :cond_5

    #@a4
    cmp-long v15, v10, v16

    #@a6
    if-ltz v15, :cond_3

    #@a8
    .line 183
    :cond_5
    const/4 v4, 0x1

    #@a9
    .line 184
    .restart local v4    # "display":I
    goto :goto_0

    #@aa
    .line 193
    :cond_6
    packed-switch v4, :pswitch_data_0

    #@ad
    .line 201
    new-instance v15, Ljava/lang/RuntimeException;

    #@af
    new-instance v20, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v21, "unknown display value: "

    #@b7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v20

    #@bb
    move-object/from16 v0, v20

    #@bd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v20

    #@c1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v20

    #@c5
    move-object/from16 v0, v20

    #@c7
    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v15

    #@cb
    .line 195
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    #@ce
    move-result-object v5

    #@cf
    .line 203
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_4
    move-object/from16 v0, p0

    #@d1
    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@d3
    goto :goto_1

    #@d4
    .line 198
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    const/4 v15, 0x3

    #@d5
    invoke-static {v15}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@d8
    move-result-object v5

    #@d9
    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_4

    #@da
    .restart local v13    # "text":Ljava/lang/String;
    :cond_7
    move-wide/from16 v16, v6

    #@dc
    .line 213
    goto :goto_2

    #@dd
    .line 216
    :cond_8
    move-object/from16 v0, p0

    #@df
    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@e1
    move-wide/from16 v20, v0

    #@e3
    cmp-long v15, v20, v10

    #@e5
    if-gez v15, :cond_9

    #@e7
    .line 218
    const-wide/16 v20, 0x0

    #@e9
    move-wide/from16 v0, v20

    #@eb
    move-object/from16 v2, p0

    #@ed
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@ef
    goto :goto_3

    #@f0
    .line 222
    :cond_9
    cmp-long v15, v18, v8

    #@f2
    if-gez v15, :cond_a

    #@f4
    .end local v18    # "twelveHoursBefore":J
    :goto_5
    move-wide/from16 v0, v18

    #@f6
    move-object/from16 v2, p0

    #@f8
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@fa
    goto :goto_3

    #@fb
    .restart local v18    # "twelveHoursBefore":J
    :cond_a
    move-wide/from16 v18, v8

    #@fd
    .line 223
    goto :goto_5

    #@fe
    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
