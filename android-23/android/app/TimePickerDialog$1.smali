.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/widget/TimePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/TimePickerDialog;

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3
    .param p1, "valid"    # Z

    #@0
    .prologue
    .line 188
    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->getButton(I)Landroid/widget/Button;

    #@6
    move-result-object v0

    #@7
    .line 189
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    #@9
    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@c
    .line 187
    :cond_0
    return-void
.end method
