.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TimePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor blacklist <init>(Landroid/app/TimePickerDialog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/TimePickerDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 155
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-static {v0}, Landroid/app/TimePickerDialog;->-$$Nest$fgetmTimePicker(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->validateInput()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 156
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 159
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-static {v0}, Landroid/app/TimePickerDialog;->-$$Nest$fgetmTimePicker(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 160
    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 162
    :cond_22
    return-void
.end method
