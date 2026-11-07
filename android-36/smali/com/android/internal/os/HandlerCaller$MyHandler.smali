.class Lcom/android/internal/os/HandlerCaller$MyHandler;
.super Landroid/os/Handler;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/HandlerCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/HandlerCaller;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/os/HandlerCaller;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "async"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller$MyHandler;->this$0:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, v0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    .line 45
    return-void
.end method
