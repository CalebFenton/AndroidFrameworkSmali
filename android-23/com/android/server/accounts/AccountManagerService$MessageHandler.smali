.class Lcom/android/server/accounts/AccountManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3214
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2
    .line 3215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 3214
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3220
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 3231
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "unhandled message: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget v3, p1, Landroid/os/Message;->what:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 3222
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v0, Lcom/android/server/accounts/AccountManagerService$Session;

    #@25
    .line 3223
    .local v0, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onTimedOut()V

    #@28
    .line 3219
    .end local v0    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    :goto_0
    return-void

    #@29
    .line 3227
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->this$0:Lcom/android/server/accounts/AccountManagerService;

    #@2b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Landroid/accounts/Account;

    #@2f
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@31
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@33
    const/4 v5, 0x0

    #@34
    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    #@37
    goto :goto_0

    #@38
    .line 3220
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
