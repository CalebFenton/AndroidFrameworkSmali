.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewMaterialDelegate$1;
    }
.end annotation


# instance fields
.field private final mDayPickerView:Landroid/widget/DayPickerView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    #@3
    .line 113
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    #@8
    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@a
    .line 35
    new-instance v0, Landroid/widget/DayPickerView;

    #@c
    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@f
    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@11
    .line 36
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@13
    iget-object v1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    #@18
    .line 38
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@1a
    invoke-virtual {p1, v0}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    #@1d
    .line 32
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "date"    # J

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    #@6
    .line 94
    return-void
.end method

.method public setDate(JZZ)V
    .locals 1
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    #@5
    .line 99
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    #@5
    .line 53
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    #@5
    .line 84
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    #@5
    .line 74
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    #@5
    .line 64
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    #@2
    .line 109
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    #@5
    .line 42
    return-void
.end method
