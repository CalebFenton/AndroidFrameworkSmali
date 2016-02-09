.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final APR:Ljava/lang/String; = "Apr"

.field public static final AUG:Ljava/lang/String; = "Aug"

.field public static final DEC:Ljava/lang/String; = "Dec"

.field public static final FEB:Ljava/lang/String; = "Feb"

.field public static final FRI:Ljava/lang/String; = "Fri"

.field public static final GMT:Ljava/lang/String; = "GMT"

.field public static final JAN:Ljava/lang/String; = "Jan"

.field public static final JUL:Ljava/lang/String; = "Jul"

.field public static final JUN:Ljava/lang/String; = "Jun"

.field public static final MAR:Ljava/lang/String; = "Mar"

.field public static final MAY:Ljava/lang/String; = "May"

.field public static final MON:Ljava/lang/String; = "Mon"

.field public static final NOV:Ljava/lang/String; = "Nov"

.field public static final OCT:Ljava/lang/String; = "Oct"

.field public static final SAT:Ljava/lang/String; = "Sat"

.field public static final SEP:Ljava/lang/String; = "Sep"

.field public static final SUN:Ljava/lang/String; = "Sun"

.field public static final THU:Ljava/lang/String; = "Thu"

.field public static final TUE:Ljava/lang/String; = "Tue"

.field public static final WED:Ljava/lang/String; = "Wed"

.field private static final serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected day:I

.field protected hour:I

.field private javaCal:Ljava/util/Calendar;

.field protected minute:I

.field protected month:I

.field protected second:I

.field protected sipMonth:Ljava/lang/String;

.field protected sipWkDay:Ljava/lang/String;

.field protected wkday:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 152
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@6
    .line 153
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@8
    .line 154
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@a
    .line 155
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@c
    .line 156
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@e
    .line 157
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@10
    .line 158
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@12
    .line 159
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@15
    .line 151
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "timeMillis"    # J

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 168
    new-instance v1, Ljava/util/GregorianCalendar;

    #@5
    .line 169
    const-string/jumbo v2, "GMT:0"

    #@8
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@b
    move-result-object v2

    #@c
    .line 170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@f
    move-result-object v3

    #@10
    .line 168
    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@13
    .line 167
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@15
    .line 171
    new-instance v0, Ljava/util/Date;

    #@17
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@1a
    .line 172
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@1c
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@1f
    .line 173
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@21
    const/4 v2, 0x7

    #@22
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@25
    move-result v1

    #@26
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@28
    .line 174
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@2a
    packed-switch v1, :pswitch_data_0

    #@2d
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "No date map for wkday "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 197
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    #@46
    .line 201
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@48
    const/4 v2, 0x5

    #@49
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@4f
    .line 202
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@51
    const/4 v2, 0x2

    #@52
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@55
    move-result v1

    #@56
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@58
    .line 203
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@5a
    packed-switch v1, :pswitch_data_1

    #@5d
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v2, "No date map for month "

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    .line 241
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    #@76
    .line 244
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@78
    const/4 v2, 0x1

    #@79
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@7c
    move-result v1

    #@7d
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@7f
    .line 246
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@81
    const/16 v2, 0xb

    #@83
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@86
    move-result v1

    #@87
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@89
    .line 247
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@8b
    const/16 v2, 0xc

    #@8d
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@90
    move-result v1

    #@91
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@93
    .line 248
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@95
    const/16 v2, 0xd

    #@97
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@9a
    move-result v1

    #@9b
    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@9d
    .line 166
    return-void

    #@9e
    .line 176
    :pswitch_0
    const-string/jumbo v1, "Mon"

    #@a1
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@a3
    goto :goto_0

    #@a4
    .line 179
    :pswitch_1
    const-string/jumbo v1, "Tue"

    #@a7
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@a9
    goto :goto_0

    #@aa
    .line 182
    :pswitch_2
    const-string/jumbo v1, "Wed"

    #@ad
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@af
    goto :goto_0

    #@b0
    .line 185
    :pswitch_3
    const-string/jumbo v1, "Thu"

    #@b3
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@b5
    goto :goto_0

    #@b6
    .line 188
    :pswitch_4
    const-string/jumbo v1, "Fri"

    #@b9
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@bb
    goto :goto_0

    #@bc
    .line 191
    :pswitch_5
    const-string/jumbo v1, "Sat"

    #@bf
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@c1
    goto :goto_0

    #@c2
    .line 194
    :pswitch_6
    const-string/jumbo v1, "Sun"

    #@c5
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@c7
    goto/16 :goto_0

    #@c9
    .line 205
    :pswitch_7
    const-string/jumbo v1, "Jan"

    #@cc
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@ce
    goto :goto_1

    #@cf
    .line 208
    :pswitch_8
    const-string/jumbo v1, "Feb"

    #@d2
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@d4
    goto :goto_1

    #@d5
    .line 211
    :pswitch_9
    const-string/jumbo v1, "Mar"

    #@d8
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@da
    goto :goto_1

    #@db
    .line 214
    :pswitch_a
    const-string/jumbo v1, "Apr"

    #@de
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@e0
    goto :goto_1

    #@e1
    .line 217
    :pswitch_b
    const-string/jumbo v1, "May"

    #@e4
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@e6
    goto :goto_1

    #@e7
    .line 220
    :pswitch_c
    const-string/jumbo v1, "Jun"

    #@ea
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@ec
    goto :goto_1

    #@ed
    .line 223
    :pswitch_d
    const-string/jumbo v1, "Jul"

    #@f0
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@f2
    goto :goto_1

    #@f3
    .line 226
    :pswitch_e
    const-string/jumbo v1, "Aug"

    #@f6
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@f8
    goto/16 :goto_1

    #@fa
    .line 229
    :pswitch_f
    const-string/jumbo v1, "Sep"

    #@fd
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@ff
    goto/16 :goto_1

    #@101
    .line 232
    :pswitch_10
    const-string/jumbo v1, "Oct"

    #@104
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@106
    goto/16 :goto_1

    #@108
    .line 235
    :pswitch_11
    const-string/jumbo v1, "Nov"

    #@10b
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@10d
    goto/16 :goto_1

    #@10f
    .line 238
    :pswitch_12
    const-string/jumbo v1, "Dec"

    #@112
    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@114
    goto/16 :goto_1

    #@116
    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@128
    .line 203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private setJavaCal()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 357
    new-instance v0, Ljava/util/GregorianCalendar;

    #@3
    .line 358
    const-string/jumbo v1, "GMT:0"

    #@6
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@9
    move-result-object v1

    #@a
    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@d
    move-result-object v2

    #@e
    .line 357
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@11
    .line 356
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@13
    .line 360
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@15
    if-eq v0, v3, :cond_0

    #@17
    .line 361
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@19
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@1b
    const/4 v2, 0x1

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@1f
    .line 362
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@21
    if-eq v0, v3, :cond_1

    #@23
    .line 363
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@25
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@27
    const/4 v2, 0x5

    #@28
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@2b
    .line 364
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@2d
    if-eq v0, v3, :cond_2

    #@2f
    .line 365
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@31
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@33
    const/4 v2, 0x2

    #@34
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@37
    .line 366
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@39
    if-eq v0, v3, :cond_3

    #@3b
    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@3d
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@3f
    const/4 v2, 0x7

    #@40
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@43
    .line 368
    :cond_3
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@45
    if-eq v0, v3, :cond_4

    #@47
    .line 369
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@49
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@4b
    const/16 v2, 0xa

    #@4d
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@50
    .line 370
    :cond_4
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@52
    if-eq v0, v3, :cond_5

    #@54
    .line 371
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@56
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@58
    const/16 v2, 0xc

    #@5a
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@5d
    .line 372
    :cond_5
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@5f
    if-eq v0, v3, :cond_6

    #@61
    .line 373
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@63
    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@65
    const/16 v2, 0xd

    #@67
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@6a
    .line 355
    :cond_6
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 524
    .local v1, "retval":Lgov/nist/javax/sip/header/SIPDate;
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 525
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@c
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/util/Calendar;

    #@12
    iput-object v2, v1, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@14
    .line 526
    :cond_0
    return-object v1

    #@15
    .line 521
    .end local v1    # "retval":Lgov/nist/javax/sip/header/SIPDate;
    :catch_0
    move-exception v0

    #@16
    .line 522
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v3, "Internal error"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
.end method

.method public encode()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v7, 0xa

    #@2
    .line 258
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@4
    if-ge v5, v7, :cond_2

    #@6
    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v6, "0"

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 264
    .local v0, "dayString":Ljava/lang/String;
    :goto_0
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@1e
    if-ge v5, v7, :cond_3

    #@20
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "0"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 270
    .local v2, "hourString":Ljava/lang/String;
    :goto_1
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@38
    if-ge v5, v7, :cond_4

    #@3a
    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "0"

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 276
    .local v3, "minuteString":Ljava/lang/String;
    :goto_2
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@52
    if-ge v5, v7, :cond_5

    #@54
    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "0"

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    .line 281
    .local v4, "secondString":Ljava/lang/String;
    :goto_3
    const-string/jumbo v1, ""

    #@6d
    .line 283
    .local v1, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@6f
    if-eqz v5, :cond_0

    #@71
    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    const-string/jumbo v6, ","

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const-string/jumbo v6, " "

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    .line 286
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    const-string/jumbo v6, " "

    #@a2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    .line 288
    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@ac
    if-eqz v5, :cond_1

    #@ae
    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v5

    #@b7
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    const-string/jumbo v6, " "

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    .line 291
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v5

    #@d1
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@d3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    .line 292
    const-string/jumbo v6, " "

    #@da
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v5

    #@de
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    .line 294
    const-string/jumbo v6, ":"

    #@e5
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v5

    #@ed
    .line 296
    const-string/jumbo v6, ":"

    #@f0
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v5

    #@f4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    .line 298
    const-string/jumbo v6, " "

    #@fb
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v5

    #@ff
    .line 299
    const-string/jumbo v6, "GMT"

    #@102
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    .line 301
    return-object v1

    #@10b
    .line 261
    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "hourString":Ljava/lang/String;
    .end local v3    # "minuteString":Ljava/lang/String;
    .end local v4    # "secondString":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v6, ""

    #@113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v5

    #@11d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v0

    #@121
    .restart local v0    # "dayString":Ljava/lang/String;
    goto/16 :goto_0

    #@123
    .line 267
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v6, ""

    #@12b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v5

    #@12f
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@134
    move-result-object v5

    #@135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v2

    #@139
    .restart local v2    # "hourString":Ljava/lang/String;
    goto/16 :goto_1

    #@13b
    .line 273
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v6, ""

    #@143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v5

    #@147
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v5

    #@14d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v3

    #@151
    .restart local v3    # "minuteString":Ljava/lang/String;
    goto/16 :goto_2

    #@153
    .line 279
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v6, ""

    #@15b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v5

    #@15f
    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@164
    move-result-object v5

    #@165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v4

    #@169
    .restart local v4    # "secondString":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    if-eq v2, v3, :cond_0

    #@b
    return v1

    #@c
    :cond_0
    move-object v0, p1

    #@d
    .line 138
    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;

    #@f
    .line 139
    .local v0, "other":Lgov/nist/javax/sip/header/SIPDate;
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@11
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 140
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@17
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 141
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@1d
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    .line 142
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@23
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 143
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@29
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 144
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@2f
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@31
    if-ne v2, v3, :cond_1

    #@33
    .line 145
    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@35
    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@37
    if-ne v2, v3, :cond_1

    #@39
    const/4 v1, 0x1

    #@3a
    .line 139
    :cond_1
    return v1
.end method

.method public getDeltaSeconds()I
    .locals 4

    #@0
    .prologue
    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@b
    move-result-wide v0

    #@c
    .line 514
    .local v0, "ctime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    sub-long v2, v0, v2

    #@12
    long-to-int v2, v2

    #@13
    div-int/lit16 v2, v2, 0x3e8

    #@15
    return v2
.end method

.method public getHour()I
    .locals 1

    #@0
    .prologue
    .line 333
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@2
    return v0
.end method

.method public getJavaCal()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 311
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPDate;->setJavaCal()V

    #@7
    .line 312
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@9
    return-object v0
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 340
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@2
    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSecond()I
    .locals 1

    #@0
    .prologue
    .line 347
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@2
    return v0
.end method

.method public getWkday()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getYear()I
    .locals 1

    #@0
    .prologue
    .line 466
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@2
    return v0
.end method

.method public setDay(I)V
    .locals 3
    .param p1, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 408
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/16 v0, 0x1f

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Illegal Day of the month "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 409
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 411
    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    #@27
    .line 407
    return-void
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x18

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal hour : "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 477
    :cond_1
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@23
    .line 478
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    #@25
    .line 474
    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x3c

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal minute : "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 488
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 490
    :cond_1
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@27
    .line 491
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    #@29
    .line 486
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 420
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@3
    .line 421
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@5
    const-string/jumbo v1, "Jan"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 422
    iput v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@10
    .line 419
    :goto_0
    return-void

    #@11
    .line 423
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@13
    const-string/jumbo v1, "Feb"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 424
    const/4 v0, 0x1

    #@1d
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@1f
    goto :goto_0

    #@20
    .line 425
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@22
    const-string/jumbo v1, "Mar"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 426
    const/4 v0, 0x2

    #@2c
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@2e
    goto :goto_0

    #@2f
    .line 427
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@31
    const-string/jumbo v1, "Apr"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_3

    #@3a
    .line 428
    const/4 v0, 0x3

    #@3b
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@3d
    goto :goto_0

    #@3e
    .line 429
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@40
    const-string/jumbo v1, "May"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4

    #@49
    .line 430
    const/4 v0, 0x4

    #@4a
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@4c
    goto :goto_0

    #@4d
    .line 431
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@4f
    const-string/jumbo v1, "Jun"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_5

    #@58
    .line 432
    const/4 v0, 0x5

    #@59
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@5b
    goto :goto_0

    #@5c
    .line 433
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@5e
    const-string/jumbo v1, "Jul"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_6

    #@67
    .line 434
    const/4 v0, 0x6

    #@68
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@6a
    goto :goto_0

    #@6b
    .line 435
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@6d
    const-string/jumbo v1, "Aug"

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@73
    move-result v0

    #@74
    if-nez v0, :cond_7

    #@76
    .line 436
    const/4 v0, 0x7

    #@77
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@79
    goto :goto_0

    #@7a
    .line 437
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@7c
    const-string/jumbo v1, "Sep"

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_8

    #@85
    .line 438
    const/16 v0, 0x8

    #@87
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@89
    goto :goto_0

    #@8a
    .line 439
    :cond_8
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@8c
    const-string/jumbo v1, "Oct"

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@92
    move-result v0

    #@93
    if-nez v0, :cond_9

    #@95
    .line 440
    const/16 v0, 0x9

    #@97
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@99
    goto/16 :goto_0

    #@9b
    .line 441
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@9d
    const-string/jumbo v1, "Nov"

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_a

    #@a6
    .line 442
    const/16 v0, 0xa

    #@a8
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@aa
    goto/16 :goto_0

    #@ac
    .line 443
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    #@ae
    const-string/jumbo v1, "Dec"

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@b4
    move-result v0

    #@b5
    if-nez v0, :cond_b

    #@b7
    .line 444
    const/16 v0, 0xb

    #@b9
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    #@bb
    goto/16 :goto_0

    #@bd
    .line 446
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@bf
    new-instance v1, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v2, "Illegal Month :"

    #@c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v1

    #@d3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v0
.end method

.method public setSecond(I)V
    .locals 3
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x3c

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal second : "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 501
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 503
    :cond_1
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@27
    .line 504
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    #@29
    .line 499
    return-void
.end method

.method public setWkday(Ljava/lang/String;)V
    .locals 3
    .param p1, "w"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@2
    .line 383
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@4
    const-string/jumbo v1, "Mon"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 384
    const/4 v0, 0x2

    #@e
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@10
    .line 381
    :goto_0
    return-void

    #@11
    .line 385
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@13
    const-string/jumbo v1, "Tue"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 386
    const/4 v0, 0x3

    #@1d
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@1f
    goto :goto_0

    #@20
    .line 387
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@22
    const-string/jumbo v1, "Wed"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 388
    const/4 v0, 0x4

    #@2c
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@2e
    goto :goto_0

    #@2f
    .line 389
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@31
    const-string/jumbo v1, "Thu"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_3

    #@3a
    .line 390
    const/4 v0, 0x5

    #@3b
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@3d
    goto :goto_0

    #@3e
    .line 391
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@40
    const-string/jumbo v1, "Fri"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4

    #@49
    .line 392
    const/4 v0, 0x6

    #@4a
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@4c
    goto :goto_0

    #@4d
    .line 393
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@4f
    const-string/jumbo v1, "Sat"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_5

    #@58
    .line 394
    const/4 v0, 0x7

    #@59
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@5b
    goto :goto_0

    #@5c
    .line 395
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    #@5e
    const-string/jumbo v1, "Sun"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_6

    #@67
    .line 396
    const/4 v0, 0x1

    #@68
    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    #@6a
    goto :goto_0

    #@6b
    .line 398
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6d
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v2, "Illegal Week day :"

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0
.end method

.method public setYear(I)V
    .locals 3
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    if-gez p1, :cond_0

    #@2
    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Illegal year : "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 458
    :cond_0
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    #@1f
    .line 459
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    #@21
    .line 455
    return-void
.end method
