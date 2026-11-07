.class Landroid/os/ResultReceiver$MyResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/os/ResultReceiver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o send(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 57
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 58
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 60
    :cond_15
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 62
    :goto_1a
    return-void
.end method
