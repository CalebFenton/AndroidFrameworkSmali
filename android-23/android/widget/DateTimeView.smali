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

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L

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
    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@7
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 60
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    #@6
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 60
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    #@6
    .line 70
    return-void
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    #@0
    .prologue
    .line 193
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


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@3
    .line 198
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@6
    .line 196
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@4
    .line 77
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@6
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@c
    .line 78
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    #@e
    .line 79
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@10
    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    #@13
    .line 80
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@18
    .line 82
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    #@1b
    .line 75
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 88
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    #@5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    #@b
    .line 89
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    #@d
    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    #@10
    .line 86
    :cond_0
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
    .line 96
    new-instance v7, Landroid/text/format/Time;

    #@3
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    #@6
    .line 97
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    #@9
    .line 98
    iput v6, v7, Landroid/text/format/Time;->second:I

    #@b
    .line 99
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@11
    .line 100
    new-instance v0, Ljava/util/Date;

    #@13
    iget v1, v7, Landroid/text/format/Time;->year:I

    #@15
    add-int/lit16 v1, v1, -0x76c

    #@17
    iget v2, v7, Landroid/text/format/Time;->month:I

    #@19
    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    #@1b
    iget v4, v7, Landroid/text/format/Time;->hour:I

    #@1d
    iget v5, v7, Landroid/text/format/Time;->minute:I

    #@1f
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@22
    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@24
    .line 101
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    #@27
    .line 95
    return-void
.end method

.method update()V
    .locals 26

    #@0
    .prologue
    .line 105
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@4
    move-object/from16 v19, v0

    #@6
    if-nez v19, :cond_0

    #@8
    .line 106
    return-void

    #@9
    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@c
    move-result-wide v14

    #@d
    .line 112
    .local v14, "start":J
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@11
    move-object/from16 v18, v0

    #@13
    .line 114
    .local v18, "time":Ljava/util/Date;
    new-instance v16, Landroid/text/format/Time;

    #@15
    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    #@18
    .line 115
    .local v16, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    #@1a
    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@1c
    move-wide/from16 v24, v0

    #@1e
    move-object/from16 v0, v16

    #@20
    move-wide/from16 v1, v24

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    #@25
    .line 116
    const/16 v19, 0x0

    #@27
    move/from16 v0, v19

    #@29
    move-object/from16 v1, v16

    #@2b
    iput v0, v1, Landroid/text/format/Time;->second:I

    #@2d
    .line 118
    move-object/from16 v0, v16

    #@2f
    iget v0, v0, Landroid/text/format/Time;->hour:I

    #@31
    move/from16 v19, v0

    #@33
    add-int/lit8 v19, v19, -0xc

    #@35
    move/from16 v0, v19

    #@37
    move-object/from16 v1, v16

    #@39
    iput v0, v1, Landroid/text/format/Time;->hour:I

    #@3b
    .line 119
    const/16 v19, 0x0

    #@3d
    move-object/from16 v0, v16

    #@3f
    move/from16 v1, v19

    #@41
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    #@44
    move-result-wide v22

    #@45
    .line 120
    .local v22, "twelveHoursBefore":J
    move-object/from16 v0, v16

    #@47
    iget v0, v0, Landroid/text/format/Time;->hour:I

    #@49
    move/from16 v19, v0

    #@4b
    add-int/lit8 v19, v19, 0xc

    #@4d
    move/from16 v0, v19

    #@4f
    move-object/from16 v1, v16

    #@51
    iput v0, v1, Landroid/text/format/Time;->hour:I

    #@53
    .line 121
    const/16 v19, 0x0

    #@55
    move-object/from16 v0, v16

    #@57
    move/from16 v1, v19

    #@59
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    #@5c
    move-result-wide v20

    #@5d
    .line 122
    .local v20, "twelveHoursAfter":J
    const/16 v19, 0x0

    #@5f
    move/from16 v0, v19

    #@61
    move-object/from16 v1, v16

    #@63
    iput v0, v1, Landroid/text/format/Time;->hour:I

    #@65
    .line 123
    const/16 v19, 0x0

    #@67
    move/from16 v0, v19

    #@69
    move-object/from16 v1, v16

    #@6b
    iput v0, v1, Landroid/text/format/Time;->minute:I

    #@6d
    .line 124
    const/16 v19, 0x0

    #@6f
    move-object/from16 v0, v16

    #@71
    move/from16 v1, v19

    #@73
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    #@76
    move-result-wide v10

    #@77
    .line 125
    .local v10, "midnightBefore":J
    move-object/from16 v0, v16

    #@79
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    #@7b
    move/from16 v19, v0

    #@7d
    add-int/lit8 v19, v19, 0x1

    #@7f
    move/from16 v0, v19

    #@81
    move-object/from16 v1, v16

    #@83
    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    #@85
    .line 126
    const/16 v19, 0x0

    #@87
    move-object/from16 v0, v16

    #@89
    move/from16 v1, v19

    #@8b
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    #@8e
    move-result-wide v8

    #@8f
    .line 128
    .local v8, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@92
    move-result-wide v12

    #@93
    .line 129
    .local v12, "nowMillis":J
    move-object/from16 v0, v16

    #@95
    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    #@98
    .line 130
    const/16 v19, 0x0

    #@9a
    move/from16 v0, v19

    #@9c
    move-object/from16 v1, v16

    #@9e
    iput v0, v1, Landroid/text/format/Time;->second:I

    #@a0
    .line 131
    const/16 v19, 0x0

    #@a2
    move-object/from16 v0, v16

    #@a4
    move/from16 v1, v19

    #@a6
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    #@a9
    move-result-wide v12

    #@aa
    .line 135
    cmp-long v19, v12, v10

    #@ac
    if-ltz v19, :cond_2

    #@ae
    cmp-long v19, v12, v8

    #@b0
    if-gez v19, :cond_2

    #@b2
    .line 137
    :cond_1
    const/4 v4, 0x0

    #@b3
    .line 147
    .local v4, "display":I
    :goto_0
    move-object/from16 v0, p0

    #@b5
    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    #@b7
    move/from16 v19, v0

    #@b9
    move/from16 v0, v19

    #@bb
    if-ne v4, v0, :cond_4

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@c1
    move-object/from16 v19, v0

    #@c3
    if-eqz v19, :cond_4

    #@c5
    .line 149
    move-object/from16 v0, p0

    #@c7
    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@c9
    .line 165
    .local v5, "format":Ljava/text/DateFormat;
    :goto_1
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    #@cd
    move-object/from16 v19, v0

    #@cf
    move-object/from16 v0, v19

    #@d1
    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@d4
    move-result-object v17

    #@d5
    .line 166
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d7
    move-object/from16 v1, v17

    #@d9
    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    #@dc
    .line 169
    if-nez v4, :cond_6

    #@de
    .line 171
    cmp-long v19, v20, v8

    #@e0
    if-lez v19, :cond_5

    #@e2
    .end local v20    # "twelveHoursAfter":J
    :goto_2
    move-wide/from16 v0, v20

    #@e4
    move-object/from16 v2, p0

    #@e6
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@e8
    .line 189
    .end local v22    # "twelveHoursBefore":J
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@eb
    move-result-wide v6

    #@ec
    .line 104
    .local v6, "finish":J
    return-void

    #@ed
    .line 136
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "finish":J
    .end local v17    # "text":Ljava/lang/String;
    .restart local v20    # "twelveHoursAfter":J
    .restart local v22    # "twelveHoursBefore":J
    :cond_2
    cmp-long v19, v12, v22

    #@ef
    if-ltz v19, :cond_3

    #@f1
    cmp-long v19, v12, v20

    #@f3
    if-ltz v19, :cond_1

    #@f5
    .line 141
    :cond_3
    const/4 v4, 0x1

    #@f6
    .line 142
    .restart local v4    # "display":I
    goto :goto_0

    #@f7
    .line 151
    :cond_4
    packed-switch v4, :pswitch_data_0

    #@fa
    .line 159
    new-instance v19, Ljava/lang/RuntimeException;

    #@fc
    new-instance v24, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v25, "unknown display value: "

    #@104
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v24

    #@108
    move-object/from16 v0, v24

    #@10a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v24

    #@10e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v24

    #@112
    move-object/from16 v0, v19

    #@114
    move-object/from16 v1, v24

    #@116
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@119
    throw v19

    #@11a
    .line 153
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    #@11d
    move-result-object v5

    #@11e
    .line 161
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_4
    move-object/from16 v0, p0

    #@120
    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    #@122
    goto :goto_1

    #@123
    .line 156
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    const/16 v19, 0x3

    #@125
    invoke-static/range {v19 .. v19}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@128
    move-result-object v5

    #@129
    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_4

    #@12a
    .restart local v17    # "text":Ljava/lang/String;
    :cond_5
    move-wide/from16 v20, v8

    #@12c
    .line 171
    goto :goto_2

    #@12d
    .line 174
    :cond_6
    move-object/from16 v0, p0

    #@12f
    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    #@131
    move-wide/from16 v24, v0

    #@133
    cmp-long v19, v24, v12

    #@135
    if-gez v19, :cond_7

    #@137
    .line 176
    const-wide/16 v24, 0x0

    #@139
    move-wide/from16 v0, v24

    #@13b
    move-object/from16 v2, p0

    #@13d
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@13f
    goto :goto_3

    #@140
    .line 180
    :cond_7
    cmp-long v19, v22, v10

    #@142
    if-gez v19, :cond_8

    #@144
    .end local v22    # "twelveHoursBefore":J
    :goto_5
    move-wide/from16 v0, v22

    #@146
    move-object/from16 v2, p0

    #@148
    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    #@14a
    goto :goto_3

    #@14b
    .restart local v22    # "twelveHoursBefore":J
    :cond_8
    move-wide/from16 v22, v10

    #@14d
    .line 181
    goto :goto_5

    #@14e
    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
