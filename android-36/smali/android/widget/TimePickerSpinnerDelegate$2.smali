.class Landroid/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 9
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 119
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateInputState(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 120
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmMinuteSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v0

    .line 121
    .local v0, "minValue":I
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmMinuteSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    .line 122
    .local v1, "maxValue":I
    if-ne p2, v1, :cond_51

    if-ne p3, v0, :cond_51

    .line 123
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmHourSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 124
    .local v2, "newHour":I
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_47

    const/16 v3, 0xc

    if-ne v2, v3, :cond_47

    .line 125
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmIsAm(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fputmIsAm(Landroid/widget/TimePickerSpinnerDelegate;Z)V

    .line 126
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateAmPmControl(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 128
    :cond_47
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmHourSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .end local v2    # "newHour":I
    goto :goto_89

    .line 129
    :cond_51
    if-ne p2, v0, :cond_89

    if-ne p3, v1, :cond_89

    .line 130
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmHourSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 131
    .restart local v2    # "newHour":I
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_7f

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7f

    .line 132
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmIsAm(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fputmIsAm(Landroid/widget/TimePickerSpinnerDelegate;Z)V

    .line 133
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateAmPmControl(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 135
    :cond_7f
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmHourSpinner(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_8a

    .line 129
    .end local v2    # "newHour":I
    :cond_89
    :goto_89
    nop

    .line 137
    :goto_8a
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$monTimeChanged(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 138
    return-void
.end method
