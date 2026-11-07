.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final blacklist mDayPickerView:Landroid/widget/DayPickerView;

.field private blacklist mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnDateChangeListener(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 132
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 35
    new-instance v0, Landroid/widget/DayPickerView;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 36
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 38
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p1, v0}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 10
    .param p1, "date"    # J
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 115
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result v0

    .line 116
    .local v0, "result":Z
    if-eqz v0, :cond_28

    .line 119
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 120
    .local v2, "dayPickerPositionOnScreen":[I
    new-array v1, v1, [I

    .line 121
    .local v1, "delegatorPositionOnScreen":[I
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/DayPickerView;->getLocationOnScreen([I)V

    .line 122
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v3, v1}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    .line 123
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v5, v1, v3

    sub-int/2addr v4, v5

    .line 125
    .local v4, "extraVerticalOffset":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 126
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    .line 127
    return v3

    .line 129
    .end local v1    # "delegatorPositionOnScreen":[I
    .end local v2    # "dayPickerPositionOnScreen":[I
    .end local v4    # "extraVerticalOffset":I
    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getDate()J
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDateTextAppearance()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()J
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWeekDayTextAppearance()I
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public blacklist setDate(J)V
    .registers 5
    .param p1, "date"    # J

    .line 95
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 96
    return-void
.end method

.method public blacklist setDate(JZZ)V
    .registers 6
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .line 100
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 101
    return-void
.end method

.method public blacklist setDateTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 54
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    .line 55
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .line 85
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 86
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 4
    .param p1, "maxDate"    # J

    .line 75
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 76
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 4
    .param p1, "minDate"    # J

    .line 65
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 66
    return-void
.end method

.method public blacklist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .line 110
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 111
    return-void
.end method

.method public blacklist setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 43
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    .line 44
    return-void
.end method
