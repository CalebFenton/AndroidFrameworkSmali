.class Landroid/widget/TimePickerSpinnerDelegate$1;
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

    .line 89
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 6
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 91
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateInputState(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 92
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 93
    const/16 v0, 0xc

    const/16 v1, 0xb

    if-ne p2, v1, :cond_15

    if-eq p3, v0, :cond_19

    :cond_15
    if-ne p2, v0, :cond_2b

    if-ne p3, v1, :cond_2b

    .line 95
    :cond_19
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmIsAm(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fputmIsAm(Landroid/widget/TimePickerSpinnerDelegate;Z)V

    .line 96
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateAmPmControl(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 99
    :cond_2b
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$monTimeChanged(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 100
    return-void
.end method
