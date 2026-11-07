.class public final Landroid/widget/TimePicker$InspectionCompanion;
.super Ljava/lang/Object;
.source "TimePicker$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TimePicker;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist m24HourId:I

.field private blacklist mHourId:I

.field private blacklist mMinuteId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mTimePickerModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 45
    const-string v0, "24Hour"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->m24HourId:I

    .line 46
    const-string v0, "hour"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mHourId:I

    .line 47
    const-string v0, "minute"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mMinuteId:I

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .local v0, "timePickerModeEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "spinner"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    const/4 v1, 0x2

    const-string v3, "clock"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v3, "timePickerMode"

    const v4, 0x10104b4

    invoke-interface {p1, v3, v4, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/TimePicker$InspectionCompanion;->mTimePickerModeId:I

    .line 52
    iput-boolean v2, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    .line 53
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/TimePicker;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/TimePicker;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 57
    iget-boolean v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_29

    .line 60
    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->m24HourId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 61
    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mHourId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 62
    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mMinuteId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getMinute()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 63
    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mTimePickerModeId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 64
    return-void

    .line 58
    :cond_29
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
    check-cast p1, Landroid/widget/TimePicker;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TimePicker$InspectionCompanion;->readProperties(Landroid/widget/TimePicker;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
