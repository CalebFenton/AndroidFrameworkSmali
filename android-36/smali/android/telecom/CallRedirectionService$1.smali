.class Landroid/telecom/CallRedirectionService$1;
.super Landroid/os/Handler;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallRedirectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/CallRedirectionService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_38

    .line 200
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-virtual {v0}, Landroid/telecom/CallRedirectionService;->onRedirectionTimeout()V

    goto :goto_38

    .line 190
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 192
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10
    iget-object v1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-static {v1, v2}, Landroid/telecom/CallRedirectionService;->-$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V

    .line 193
    iget-object v1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 194
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 193
    invoke-virtual {v1, v2, v3, v4}, Landroid/telecom/CallRedirectionService;->onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_33

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 197
    nop

    .line 198
    goto :goto_38

    .line 196
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 197
    throw v1

    .line 203
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
