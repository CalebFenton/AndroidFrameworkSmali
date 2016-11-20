.class public Landroid/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static gCalendar:Landroid/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Landroid/icu/util/Calendar;

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private month:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 216
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@2
    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@5
    sput-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 218
    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    #@5
    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@7
    .line 32
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@9
    .line 33
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    #@b
    .line 34
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@e
    .line 30
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "dayOfWeek"    # I
    .param p4, "after"    # Z

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 218
    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    #@5
    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@7
    .line 59
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@9
    .line 60
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    #@b
    .line 61
    if-eqz p4, :cond_0

    #@d
    .end local p3    # "dayOfWeek":I
    :goto_0
    iput p3, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@f
    .line 57
    return-void

    #@10
    .line 61
    .restart local p3    # "dayOfWeek":I
    :cond_0
    neg-int p3, p3

    #@11
    goto :goto_0
.end method

.method constructor <init>(IILandroid/icu/util/Calendar;)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I
    .param p3, "cal"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 218
    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    #@5
    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@7
    .line 40
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@9
    .line 41
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    #@b
    .line 42
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@e
    .line 43
    iput-object p3, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@10
    .line 38
    return-void
.end method

.method private computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;
    .locals 4
    .param p1, "year"    # I
    .param p2, "c"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 174
    monitor-enter p2

    #@1
    .line 175
    :try_start_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    #@4
    .line 176
    const/4 v2, 0x0

    #@5
    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@8
    move-result v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@d
    .line 177
    const/4 v2, 0x1

    #@e
    invoke-virtual {p2, v2, p1}, Landroid/icu/util/Calendar;->set(II)V

    #@11
    .line 178
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@13
    const/4 v3, 0x2

    #@14
    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@17
    .line 179
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    #@19
    const/4 v3, 0x5

    #@1a
    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@1d
    .line 183
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 184
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@28
    .line 185
    const/4 v2, 0x7

    #@29
    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@2c
    move-result v1

    #@2d
    .line 190
    .local v1, "weekday":I
    const/4 v0, 0x0

    #@2e
    .line 191
    .local v0, "delta":I
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@30
    if-lez v2, :cond_1

    #@32
    .line 194
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@34
    sub-int/2addr v2, v1

    #@35
    add-int/lit8 v2, v2, 0x7

    #@37
    rem-int/lit8 v0, v2, 0x7

    #@39
    .line 202
    :goto_0
    const/4 v2, 0x5

    #@3a
    invoke-virtual {p2, v2, v0}, Landroid/icu/util/Calendar;->add(II)V

    #@3d
    .line 205
    .end local v0    # "delta":I
    .end local v1    # "weekday":I
    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v2

    #@41
    monitor-exit p2

    #@42
    return-object v2

    #@43
    .line 199
    .restart local v0    # "delta":I
    .restart local v1    # "weekday":I
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    #@45
    add-int/2addr v2, v1

    #@46
    add-int/lit8 v2, v2, 0x7

    #@48
    rem-int/lit8 v2, v2, 0x7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    neg-int v0, v2

    #@4b
    goto :goto_0

    #@4c
    .line 174
    .end local v0    # "delta":I
    .end local v1    # "weekday":I
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit p2

    #@4e
    throw v2
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 142
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@3
    .line 144
    .local v0, "c":Landroid/icu/util/Calendar;
    monitor-enter v0

    #@4
    .line 145
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 147
    const/4 v4, 0x1

    #@8
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@b
    move-result v3

    #@c
    .line 148
    .local v3, "year":I
    const/4 v4, 0x2

    #@d
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@10
    move-result v1

    #@11
    .line 152
    .local v1, "mon":I
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@13
    if-le v1, v4, :cond_0

    #@15
    .line 153
    add-int/lit8 v3, v3, 0x1

    #@17
    .line 157
    :cond_0
    invoke-direct {p0, v3, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    #@1a
    move-result-object v2

    #@1b
    .line 161
    .local v2, "result":Ljava/util/Date;
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    #@1d
    if-ne v1, v4, :cond_1

    #@1f
    invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 162
    add-int/lit8 v4, v3, 0x1

    #@27
    invoke-direct {p0, v4, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    #@2a
    move-result-object v2

    #@2b
    .line 165
    :cond_1
    if-eqz p2, :cond_2

    #@2d
    invoke-virtual {v2, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    monitor-exit v0

    #@34
    .line 166
    return-object v5

    #@35
    :cond_2
    monitor-exit v0

    #@36
    .line 168
    return-object v2

    #@37
    .line 144
    .end local v1    # "mon":I
    .end local v2    # "result":Ljava/util/Date;
    .end local v3    # "year":I
    :catchall_0
    move-exception v4

    #@38
    monitor-exit v0

    #@39
    throw v4
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    #@0
    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 114
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    #@3
    .line 116
    .local v0, "c":Landroid/icu/util/Calendar;
    monitor-enter v0

    #@4
    .line 117
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@7
    .line 119
    const/4 v3, 0x6

    #@8
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@b
    move-result v1

    #@c
    .line 121
    .local v1, "dayOfYear":I
    const/4 v3, 0x1

    #@d
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@10
    move-result v3

    #@11
    invoke-direct {p0, v3, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@18
    .line 126
    const/4 v3, 0x6

    #@19
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-ne v3, v1, :cond_0

    #@1f
    :goto_0
    monitor-exit v0

    #@20
    return v2

    #@21
    :cond_0
    const/4 v2, 0x0

    #@22
    goto :goto_0

    #@23
    .line 116
    .end local v1    # "dayOfYear":I
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v0

    #@25
    throw v2
.end method
