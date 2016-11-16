.class Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;
.super Landroid/os/CountDownTimer;
.source "UserInactivityCountdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;JJLandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J
    .param p6, "val$messageView"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@2
    iput-object p6, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->val$messageView:Landroid/widget/TextView;

    #@4
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    #@7
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@2
    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@4
    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->dismiss()V

    #@7
    .line 87
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@9
    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@b
    invoke-static {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 88
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@13
    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@15
    invoke-static {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;->onCountDownExpired()V

    #@1c
    .line 85
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    #@0
    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@2
    iget-object v1, v1, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@4
    invoke-virtual {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    .line 80
    const-wide/16 v4, 0x3e8

    #@d
    div-long v4, p1, v4

    #@f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v3

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v2, v4

    #@16
    .line 79
    const v3, 0x10405fd

    #@19
    .line 78
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 81
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->val$messageView:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 77
    return-void
.end method
