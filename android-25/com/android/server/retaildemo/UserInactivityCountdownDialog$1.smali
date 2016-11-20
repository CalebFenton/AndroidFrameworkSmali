.class Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;
.super Ljava/lang/Object;
.source "UserInactivityCountdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
    .param p2, "val$messageView"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@2
    iput-object p2, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->val$messageView:Landroid/widget/TextView;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 74
    iget-object v7, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@2
    new-instance v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;

    #@4
    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@6
    invoke-static {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J

    #@9
    move-result-wide v2

    #@a
    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@c
    invoke-static {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get2(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J

    #@f
    move-result-wide v4

    #@10
    iget-object v6, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->val$messageView:Landroid/widget/TextView;

    #@12
    move-object v1, p0

    #@13
    invoke-direct/range {v0 .. v6}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;-><init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;JJLandroid/widget/TextView;)V

    #@16
    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->start()Landroid/os/CountDownTimer;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v7, v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-set0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    #@1d
    .line 73
    return-void
.end method
