.class public final Landroid/widget/CalendarView$InspectionCompanion;
.super Ljava/lang/Object;
.source "CalendarView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/CalendarView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDateTextAppearanceId:I

.field private blacklist mFirstDayOfWeekId:I

.field private blacklist mFocusedMonthDateColorId:I

.field private blacklist mMaxDateId:I

.field private blacklist mMinDateId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSelectedDateVerticalBarId:I

.field private blacklist mSelectedWeekBackgroundColorId:I

.field private blacklist mShowWeekNumberId:I

.field private blacklist mShownWeekCountId:I

.field private blacklist mUnfocusedMonthDateColorId:I

.field private blacklist mWeekDayTextAppearanceId:I

.field private blacklist mWeekNumberColorId:I

.field private blacklist mWeekSeparatorLineColorId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 88
    const-string v0, "dateTextAppearance"

    const v1, 0x1010349

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mDateTextAppearanceId:I

    .line 89
    const-string v0, "firstDayOfWeek"

    const v1, 0x101033d

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mFirstDayOfWeekId:I

    .line 90
    const-string v0, "focusedMonthDateColor"

    const v1, 0x1010343

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mFocusedMonthDateColorId:I

    .line 91
    const-string v0, "maxDate"

    const v1, 0x1010340

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mMaxDateId:I

    .line 92
    const-string v0, "minDate"

    const v1, 0x101033f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mMinDateId:I

    .line 93
    const-string/jumbo v0, "selectedDateVerticalBar"

    const v1, 0x1010347

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mSelectedDateVerticalBarId:I

    .line 94
    const-string/jumbo v0, "selectedWeekBackgroundColor"

    const v1, 0x1010342

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mSelectedWeekBackgroundColorId:I

    .line 95
    const-string/jumbo v0, "showWeekNumber"

    const v1, 0x101033e

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mShowWeekNumberId:I

    .line 96
    const-string/jumbo v0, "shownWeekCount"

    const v1, 0x1010341

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mShownWeekCountId:I

    .line 97
    const-string/jumbo v0, "unfocusedMonthDateColor"

    const v1, 0x1010344

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mUnfocusedMonthDateColorId:I

    .line 98
    const-string/jumbo v0, "weekDayTextAppearance"

    const v1, 0x1010348

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapResourceId(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekDayTextAppearanceId:I

    .line 99
    const-string/jumbo v0, "weekNumberColor"

    const v1, 0x1010345

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekNumberColorId:I

    .line 100
    const-string/jumbo v0, "weekSeparatorLineColor"

    const v1, 0x1010346

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekSeparatorLineColorId:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mPropertiesMapped:Z

    .line 102
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/CalendarView;Landroid/view/inspector/PropertyReader;)V
    .registers 6
    .param p1, "node"    # Landroid/widget/CalendarView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 106
    iget-boolean v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_7a

    .line 109
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mDateTextAppearanceId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getDateTextAppearance()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 110
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mFirstDayOfWeekId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 111
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mFocusedMonthDateColorId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getFocusedMonthDateColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 112
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mMaxDateId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    .line 113
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mMinDateId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    .line 114
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mSelectedDateVerticalBarId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 115
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mSelectedWeekBackgroundColorId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getSelectedWeekBackgroundColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 116
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mShowWeekNumberId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getShowWeekNumber()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 117
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mShownWeekCountId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getShownWeekCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 118
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mUnfocusedMonthDateColorId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getUnfocusedMonthDateColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 119
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekDayTextAppearanceId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getWeekDayTextAppearance()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readResourceId(II)V

    .line 120
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekNumberColorId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getWeekNumberColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 121
    iget v0, p0, Landroid/widget/CalendarView$InspectionCompanion;->mWeekSeparatorLineColorId:I

    invoke-virtual {p1}, Landroid/widget/CalendarView;->getWeekSeparatorLineColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    .line 122
    return-void

    .line 107
    :cond_7a
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/widget/CalendarView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView$InspectionCompanion;->readProperties(Landroid/widget/CalendarView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
