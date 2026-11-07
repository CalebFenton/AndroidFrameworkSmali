.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private greylist-max-o mColumn:I

.field private greylist-max-o mRow:I


# direct methods
.method public constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "weekStartDay"    # I

    .line 50
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 51
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 52
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 53
    return-void
.end method


# virtual methods
.method public greylist-max-o down()Z
    .registers 4

    .line 122
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 124
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 125
    return v2

    .line 128
    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 129
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 130
    :goto_18
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 131
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_18

    .line 133
    :cond_28
    return v1
.end method

.method public greylist-max-o getSelectedColumn()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public greylist-max-o getSelectedDayOfMonth()I
    .registers 3

    .line 70
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSelectedMonthOffset()I
    .registers 3

    .line 78
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_c
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    .line 82
    const/4 v0, -0x1

    return v0

    .line 84
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getSelectedRow()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public greylist-max-o isSelected(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 93
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o left()Z
    .registers 4

    .line 142
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 143
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 144
    const/4 v0, 0x6

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_13

    .line 146
    :cond_e
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 149
    :goto_13
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 150
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1f
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    .line 155
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 156
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 157
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 158
    return v1
.end method

.method public greylist-max-o right()Z
    .registers 5

    .line 167
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    .line 168
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 169
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_14

    .line 171
    :cond_f
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 174
    :goto_14
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 175
    return v2

    .line 179
    :cond_1f
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    .line 180
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 181
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 182
    :goto_26
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_36

    .line 183
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_26

    .line 185
    :cond_36
    return v3
.end method

.method public greylist-max-o setSelectedDayOfMonth(I)V
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 88
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 89
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 90
    return-void
.end method

.method public greylist-max-o setSelectedRowColumn(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 65
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 66
    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    .line 67
    return-void
.end method

.method public greylist-max-o up()Z
    .registers 4

    .line 102
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    .line 109
    const/4 v0, 0x5

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    .line 110
    :goto_19
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 111
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_19

    .line 113
    :cond_29
    return v1
.end method
