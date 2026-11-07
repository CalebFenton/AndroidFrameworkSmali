.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/TextInputTimePickerView$OnValueTypedListener;


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

    .line 921
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValueChanged(II)V
    .registers 7
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I

    .line 924
    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 932
    :pswitch_6
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, p2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_19

    .line 929
    :pswitch_c
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v1, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V

    .line 930
    goto :goto_19

    .line 926
    :pswitch_12
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    const/4 v3, 0x0

    invoke-static {v2, p2, v1, v3, v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V

    .line 927
    nop

    .line 935
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
