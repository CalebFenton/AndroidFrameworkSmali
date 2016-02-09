.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "weekStartDay"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    #@3
    .line 50
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@9
    .line 51
    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@f
    .line 48
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 121
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 123
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@13
    .line 124
    return v2

    #@14
    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    #@17
    .line 128
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@19
    .line 129
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@1b
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1d
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_1

    #@23
    .line 130
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@29
    goto :goto_0

    #@2a
    .line 132
    :cond_1
    const/4 v0, 0x1

    #@2b
    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@2
    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@3
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 78
    return v2

    #@c
    .line 80
    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@e
    if-nez v0, :cond_1

    #@10
    .line 81
    const/4 v0, -0x1

    #@11
    return v0

    #@12
    .line 83
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0
.end method

.method public getSelectedRow()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2
    return v0
.end method

.method public isSelected(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@7
    if-ne v1, p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public left()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 142
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@7
    add-int/lit8 v1, v1, -0x1

    #@9
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@b
    .line 143
    const/4 v1, 0x6

    #@c
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@e
    .line 148
    :goto_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@10
    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@12
    invoke-virtual {p0, v1, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 149
    return v3

    #@19
    .line 145
    :cond_0
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1f
    goto :goto_0

    #@20
    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    #@23
    .line 154
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    #@26
    move-result v0

    #@27
    .line 155
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2d
    .line 156
    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@33
    .line 157
    const/4 v1, 0x1

    #@34
    return v1
.end method

.method public right()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@3
    const/4 v1, 0x6

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 167
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@c
    .line 168
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@e
    .line 173
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@10
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@12
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 174
    return v2

    #@19
    .line 170
    :cond_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1f
    goto :goto_0

    #@20
    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    #@23
    .line 179
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@25
    .line 180
    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@27
    .line 181
    :goto_1
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@29
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@2b
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 182
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@37
    goto :goto_1

    #@38
    .line 184
    :cond_2
    const/4 v0, 0x1

    #@39
    return v0
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@6
    .line 88
    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@c
    .line 86
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    #@0
    .prologue
    .line 64
    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2
    .line 65
    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@4
    .line 63
    return-void
.end method

.method public up()Z
    .locals 2

    #@0
    .prologue
    .line 101
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 103
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@12
    .line 104
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    #@17
    .line 108
    const/4 v0, 0x5

    #@18
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@1a
    .line 109
    :goto_0
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@1c
    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 110
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@26
    add-int/lit8 v0, v0, -0x1

    #@28
    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    #@2a
    goto :goto_0

    #@2b
    .line 112
    :cond_1
    const/4 v0, 0x1

    #@2c
    return v0
.end method
