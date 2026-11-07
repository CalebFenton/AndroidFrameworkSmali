.class Landroid/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor blacklist <init>(Landroid/app/DatePickerDialog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/DatePickerDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 223
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValidationChanged(Z)V
    .registers 4
    .param p1, "valid"    # Z

    .line 226
    iget-object v0, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 227
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_c

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_c
    return-void
.end method
