.class final Landroid/telecom/CallScreeningService$CallScreeningBinder;
.super Lcom/android/internal/telecom/ICallScreeningService$Stub;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallScreeningBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/CallScreeningService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallScreeningService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o screenCall(Lcom/android/internal/telecom/ICallScreeningAdapter;Landroid/telecom/ParcelableCall;)V
    .registers 6
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallScreeningAdapter;
    .param p2, "call"    # Landroid/telecom/ParcelableCall;

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "screenCall"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 162
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 163
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    invoke-static {v1}, Landroid/telecom/CallScreeningService;->-$$Nest$fgetmHandler(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method
