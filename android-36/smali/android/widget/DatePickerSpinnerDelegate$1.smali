.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DatePickerSpinnerDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 10
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 123
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateInputState(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 124
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 126
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmDaySpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_54

    .line 127
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 128
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_3a

    if-ne p3, v4, :cond_3a

    .line 129
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_53

    .line 130
    :cond_3a
    if-ne p2, v4, :cond_48

    if-ne p3, v0, :cond_48

    .line 131
    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v5}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_53

    .line 133
    :cond_48
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    sub-int v5, p3, p2

    invoke-virtual {v1, v3, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 135
    .end local v0    # "maxDayOfMonth":I
    :goto_53
    goto :goto_97

    :cond_54
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmMonthSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_86

    .line 136
    const/16 v0, 0xb

    if-ne p2, v0, :cond_6c

    if-nez p3, :cond_6c

    .line 137
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    .line 138
    :cond_6c
    if-nez p2, :cond_7a

    if-ne p3, v0, :cond_7a

    .line 139
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    .line 141
    :cond_7a
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    .line 143
    :cond_86
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmYearSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_ca

    .line 144
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 149
    :goto_97
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 149
    invoke-static {v0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V

    .line 151
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 152
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateCalendarView(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 153
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 154
    return-void

    .line 146
    :cond_ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
