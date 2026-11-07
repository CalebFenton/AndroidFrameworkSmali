.class Landroid/widget/TimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 152
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "button"    # Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 155
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fgetmIsAm(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$fputmIsAm(Landroid/widget/TimePickerSpinnerDelegate;Z)V

    .line 156
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$mupdateAmPmControl(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 157
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-$$Nest$monTimeChanged(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 158
    return-void
.end method
