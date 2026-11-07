.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AlertController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_52

    .line 151
    .end local v0    # "m":Landroid/os/Message;
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 152
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_52

    .line 153
    .end local v0    # "m":Landroid/os/Message;
    :cond_36
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_51

    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 154
    iget-object v0, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_52

    .line 156
    .end local v0    # "m":Landroid/os/Message;
    :cond_51
    const/4 v0, 0x0

    .line 159
    .restart local v0    # "m":Landroid/os/Message;
    :goto_52
    if-eqz v0, :cond_57

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    :cond_57
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method
