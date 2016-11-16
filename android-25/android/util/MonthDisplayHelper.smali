.class public Landroid/util/MonthDisplayHelper;
.super Ljava/lang/Object;
.source "MonthDisplayHelper.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private final mWeekStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "weekStartDay"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 48
    if-lt p3, v3, :cond_0

    #@7
    const/4 v0, 0x7

    #@8
    if-le p3, v0, :cond_1

    #@a
    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 51
    :cond_1
    iput p3, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    #@12
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@18
    .line 54
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@1a
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    #@1d
    .line 55
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@1f
    const/4 v1, 0x2

    #@20
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    #@23
    .line 56
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@25
    const/4 v1, 0x5

    #@26
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    #@29
    .line 57
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2b
    const/16 v1, 0xb

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@30
    .line 58
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@32
    const/16 v1, 0xc

    #@34
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@37
    .line 59
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@39
    const/16 v1, 0xd

    #@3b
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@3e
    .line 60
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@40
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@43
    .line 62
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    #@46
    .line 46
    return-void
.end method

.method private recalculate()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x2

    #@2
    .line 200
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@4
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@7
    move-result v2

    #@8
    iput v2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    #@a
    .line 202
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@c
    const/4 v3, -0x1

    #@d
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    #@10
    .line 203
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@12
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@15
    move-result v2

    #@16
    iput v2, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    #@18
    .line 204
    iget-object v2, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@1a
    const/4 v3, 0x1

    #@1b
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    #@1e
    .line 206
    invoke-virtual {p0}, Landroid/util/MonthDisplayHelper;->getFirstDayOfMonth()I

    #@21
    move-result v0

    #@22
    .line 207
    .local v0, "firstDayOfMonth":I
    iget v2, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    #@24
    sub-int v1, v0, v2

    #@26
    .line 208
    .local v1, "offset":I
    if-gez v1, :cond_0

    #@28
    .line 209
    add-int/lit8 v1, v1, 0x7

    #@2a
    .line 211
    :cond_0
    iput v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@2c
    .line 198
    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@2
    add-int/2addr v0, p1

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    rem-int/lit8 v0, v0, 0x7

    #@7
    return v0
.end method

.method public getDayAt(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 136
    if-nez p1, :cond_0

    #@2
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@4
    if-ge p2, v1, :cond_0

    #@6
    .line 137
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInPrevMonth:I

    #@8
    add-int/2addr v1, p2

    #@9
    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@b
    sub-int/2addr v1, v2

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    return v1

    #@f
    .line 140
    :cond_0
    mul-int/lit8 v1, p1, 0x7

    #@11
    add-int/2addr v1, p2

    #@12
    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@14
    sub-int/2addr v1, v2

    #@15
    add-int/lit8 v0, v1, 0x1

    #@17
    .line 142
    .local v0, "day":I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    #@19
    if-le v0, v1, :cond_1

    #@1b
    .line 143
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    #@1d
    sub-int/2addr v0, v1

    #@1e
    .line 142
    .end local v0    # "day":I
    :cond_1
    return v0
.end method

.method public getDigitsForRow(I)[I
    .locals 5
    .param p1, "row"    # I

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    .line 116
    if-ltz p1, :cond_0

    #@3
    const/4 v2, 0x5

    #@4
    if-le p1, v2, :cond_1

    #@6
    .line 117
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "row "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    .line 118
    const-string/jumbo v4, " out of range (0-5)"

    #@1b
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 121
    :cond_1
    new-array v1, v3, [I

    #@29
    .line 122
    .local v1, "result":[I
    const/4 v0, 0x0

    #@2a
    .local v0, "column":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@2c
    .line 123
    invoke-virtual {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    #@2f
    move-result v2

    #@30
    aput v2, v1, v0

    #@32
    .line 122
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 126
    :cond_2
    return-object v1
.end method

.method public getFirstDayOfMonth()I
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getMonth()I
    .locals 2

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    #@2
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@2
    return v0
.end method

.method public getRowOf(I)I
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@2
    add-int/2addr v0, p1

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    div-int/lit8 v0, v0, 0x7

    #@7
    return v0
.end method

.method public getWeekStartDay()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/util/MonthDisplayHelper;->mWeekStartDay:I

    #@2
    return v0
.end method

.method public getYear()I
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isWithinCurrentMonth(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    if-ltz p1, :cond_0

    #@3
    if-gez p2, :cond_1

    #@5
    .line 182
    :cond_0
    return v3

    #@6
    .line 181
    :cond_1
    const/4 v1, 0x5

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v1, 0x6

    #@a
    if-gt p2, v1, :cond_0

    #@c
    .line 185
    if-nez p1, :cond_2

    #@e
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@10
    if-ge p2, v1, :cond_2

    #@12
    .line 186
    return v3

    #@13
    .line 189
    :cond_2
    mul-int/lit8 v1, p1, 0x7

    #@15
    add-int/2addr v1, p2

    #@16
    iget v2, p0, Landroid/util/MonthDisplayHelper;->mOffset:I

    #@18
    sub-int/2addr v1, v2

    #@19
    add-int/lit8 v0, v1, 0x1

    #@1b
    .line 190
    .local v0, "day":I
    iget v1, p0, Landroid/util/MonthDisplayHelper;->mNumDaysInMonth:I

    #@1d
    if-le v0, v1, :cond_3

    #@1f
    .line 191
    return v3

    #@20
    .line 193
    :cond_3
    const/4 v1, 0x1

    #@21
    return v1
.end method

.method public nextMonth()V
    .locals 3

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@7
    .line 173
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    #@a
    .line 171
    return-void
.end method

.method public previousMonth()V
    .locals 3

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/util/MonthDisplayHelper;->mCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, -0x1

    #@4
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@7
    .line 165
    invoke-direct {p0}, Landroid/util/MonthDisplayHelper;->recalculate()V

    #@a
    .line 163
    return-void
.end method
