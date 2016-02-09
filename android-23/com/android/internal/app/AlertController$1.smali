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
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@2
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    #@5
    move-result-object v1

    #@6
    if-ne p1, v1, :cond_1

    #@8
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@a
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 127
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@12
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    .line 136
    :goto_0
    if-eqz v0, :cond_0

    #@1c
    .line 137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1f
    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@21
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get8(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@27
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->-get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    #@2a
    move-result-object v2

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@33
    .line 124
    return-void

    #@34
    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@36
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    #@39
    move-result-object v1

    #@3a
    if-ne p1, v1, :cond_2

    #@3c
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@3e
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 129
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@46
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@4d
    move-result-object v0

    #@4e
    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    #@4f
    .line 130
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@51
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    #@54
    move-result-object v1

    #@55
    if-ne p1, v1, :cond_3

    #@57
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@59
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@5c
    move-result-object v1

    #@5d
    if-eqz v1, :cond_3

    #@5f
    .line 131
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #@61
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    #@64
    move-result-object v1

    #@65
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@68
    move-result-object v0

    #@69
    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    #@6a
    .line 133
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    #@6b
    .local v0, "m":Landroid/os/Message;
    goto :goto_0
.end method
