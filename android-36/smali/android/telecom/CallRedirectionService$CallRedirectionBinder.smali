.class final Landroid/telecom/CallRedirectionService$CallRedirectionBinder;
.super Lcom/android/internal/telecom/ICallRedirectionService$Stub;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallRedirectionBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallRedirectionService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/CallRedirectionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallRedirectionService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallRedirectionService;Landroid/telecom/CallRedirectionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;-><init>(Landroid/telecom/CallRedirectionService;)V

    return-void
.end method


# virtual methods
.method public blacklist notifyTimeout()V
    .registers 3

    .line 235
    iget-object v0, p0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-static {v0}, Landroid/telecom/CallRedirectionService;->-$$Nest$fgetmHandler(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public blacklist placeCall(Lcom/android/internal/telecom/ICallRedirectionAdapter;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallRedirectionAdapter;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "initialPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p4, "allowInteractiveResponse"    # Z

    .line 221
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 222
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 223
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 224
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 225
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-static {v1}, Landroid/telecom/CallRedirectionService;->-$$Nest$fgetmHandler(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method
