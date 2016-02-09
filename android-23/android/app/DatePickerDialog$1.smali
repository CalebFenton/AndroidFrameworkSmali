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
.field final synthetic this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/DatePickerDialog;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

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
    .line 210
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    #@6
    move-result-object v0

    #@7
    .line 211
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    #@9
    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@c
    .line 209
    :cond_0
    return-void
.end method
