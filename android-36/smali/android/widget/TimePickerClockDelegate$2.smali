.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 892
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValueSelected(IIZ)V
    .registers 9
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "valueChanged":Z
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_5c

    goto :goto_3b

    .line 908
    :pswitch_6
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v2

    if-eq v2, p2, :cond_f

    .line 909
    const/4 v0, 0x1

    .line 911
    :cond_f
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V

    goto :goto_3b

    .line 898
    :pswitch_15
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    if-eq v2, p2, :cond_1e

    .line 899
    const/4 v0, 0x1

    .line 901
    :cond_1e
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    if-eqz p3, :cond_2b

    move v2, v1

    goto :goto_2c

    :cond_2b
    move v2, v3

    .line 902
    .local v2, "isTransition":Z
    :goto_2c
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    if-nez v2, :cond_31

    move v3, v1

    :cond_31
    invoke-static {v4, p2, v1, v3, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 903
    if-eqz v2, :cond_3b

    .line 904
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v3, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 915
    .end local v2    # "isTransition":Z
    :cond_3b
    :goto_3b
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_5a

    .line 916
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v3}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v4}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 918
    :cond_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method
