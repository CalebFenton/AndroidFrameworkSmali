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
.field final synthetic this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    #@2
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    #@2
    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 57
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    #@8
    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    #@c
    iget-object v2, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    #@e
    invoke-direct {v1, v2, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 55
    :goto_0
    return-void

    #@15
    .line 59
    :cond_0
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    #@1a
    goto :goto_0
.end method
