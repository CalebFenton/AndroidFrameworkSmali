.class public Landroid/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field private greylist-max-o calendar:Landroid/icu/util/Calendar;

.field private greylist-max-o dayOfMonth:I

.field private greylist-max-o dayOfWeek:I

.field private greylist-max-o month:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 4
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 34
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 35
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 37
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIZ)V
    .registers 6
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "after"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 61
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 62
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    .line 63
    if-eqz p4, :cond_12

    move v0, p3

    goto :goto_13

    :cond_12
    neg-int v0, p3

    :goto_13
    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 64
    return-void
.end method

.method constructor greylist-max-o <init>(IILandroid/icu/util/Calendar;)V
    .registers 5
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "cal"    # Landroid/icu/util/Calendar;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 42
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 43
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 45
    iput-object p3, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 46
    return-void
.end method

.method private greylist-max-o computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;
    .registers 8
    .param p1, "year"    # I
    .param p2, "c"    # Landroid/icu/util/Calendar;

    .line 180
    monitor-enter p2

    .line 181
    :try_start_1
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 184
    iget v0, p0, Landroid/icu/util/SimpleDateRule;->month:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 185
    iget v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 189
    iget v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-eqz v0, :cond_40

    .line 190
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 191
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 196
    .local v2, "weekday":I
    const/4 v3, 0x0

    .line 197
    .local v3, "delta":I
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-lez v4, :cond_37

    .line 200
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    rem-int/2addr v4, v0

    .end local v3    # "delta":I
    .local v4, "delta":I
    goto :goto_3d

    .line 205
    .end local v4    # "delta":I
    .restart local v3    # "delta":I
    :cond_37
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    rem-int/2addr v4, v0

    neg-int v4, v4

    .line 208
    .end local v3    # "delta":I
    .restart local v4    # "delta":I
    :goto_3d
    invoke-virtual {p2, v1, v4}, Landroid/icu/util/Calendar;->add(II)V

    .line 211
    .end local v2    # "weekday":I
    .end local v4    # "delta":I
    :cond_40
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    monitor-exit p2

    return-object v0

    .line 212
    :catchall_46
    move-exception v0

    monitor-exit p2
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private greylist-max-o doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 8
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 148
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 150
    .local v0, "c":Landroid/icu/util/Calendar;
    monitor-enter v0

    .line 151
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 154
    .local v1, "year":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 158
    .local v2, "mon":I
    iget v3, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-le v2, v3, :cond_16

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_16
    invoke-direct {p0, v1, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v3

    .line 167
    .local v3, "result":Ljava/util/Date;
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-ne v2, v4, :cond_2b

    invoke-virtual {v3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 168
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 171
    :cond_2b
    if-eqz p2, :cond_36

    invoke-virtual {v3, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 172
    monitor-exit v0

    const/4 v4, 0x0

    return-object v4

    .line 174
    :cond_36
    monitor-exit v0

    return-object v3

    .line 175
    .end local v1    # "year":I
    .end local v2    # "mon":I
    .end local v3    # "result":Ljava/util/Date;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method


# virtual methods
.method public greylist-max-o firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 3
    .param p1, "start"    # Ljava/util/Date;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isOn(Ljava/util/Date;)Z
    .registers 7
    .param p1, "date"    # Ljava/util/Date;

    .line 119
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 121
    .local v0, "c":Landroid/icu/util/Calendar;
    monitor-enter v0

    .line 122
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 126
    .local v2, "dayOfYear":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    monitor-exit v0

    return v3

    .line 132
    .end local v2    # "dayOfYear":I
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
