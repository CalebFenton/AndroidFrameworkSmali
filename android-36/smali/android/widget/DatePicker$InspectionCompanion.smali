.class public final Landroid/widget/DatePicker$InspectionCompanion;
.super Ljava/lang/Object;
.source "DatePicker$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/DatePicker;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCalendarViewShownId:I

.field private blacklist mDatePickerModeId:I

.field private blacklist mDayOfMonthId:I

.field private blacklist mFirstDayOfWeekId:I

.field private blacklist mMaxDateId:I

.field private blacklist mMinDateId:I

.field private blacklist mMonthId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSpinnersShownId:I

.field private blacklist mYearId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 70
    const-string v0, "calendarViewShown"

    const v1, 0x101034c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .local v0, "datePickerModeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "spinner"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    const/4 v1, 0x2

    const-string v3, "calendar"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v3, "datePickerMode"

    const v4, 0x10104b3

    invoke-interface {p1, v3, v4, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    .line 75
    const-string v1, "dayOfMonth"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    .line 76
    const-string v1, "firstDayOfWeek"

    const v4, 0x101033d

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    .line 77
    const-string v1, "maxDate"

    const v4, 0x1010340

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    .line 78
    const-string v1, "minDate"

    const v4, 0x101033f

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    .line 79
    const-string v1, "month"

    invoke-interface {p1, v1, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    .line 80
    const-string/jumbo v1, "spinnersShown"

    const v4, 0x101034b

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    .line 81
    const-string/jumbo v1, "year"

    invoke-interface {p1, v1, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    .line 82
    iput-boolean v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    .line 83
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V
    .registers 6
    .param p1, "node"    # Landroid/widget/DatePicker;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 87
    iget-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_56

    .line 90
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 91
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 92
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 93
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getFirstDayOfWeek()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 94
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    .line 95
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    .line 96
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 97
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getSpinnersShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 98
    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 99
    return-void

    .line 88
    :cond_56
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

    .line 17
    check-cast p1, Landroid/widget/DatePicker;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker$InspectionCompanion;->readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
