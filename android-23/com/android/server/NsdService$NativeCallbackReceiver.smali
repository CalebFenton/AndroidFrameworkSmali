.class Lcom/android/server/NsdService$NativeCallbackReceiver;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NsdService;

    #@0
    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 673
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onDaemonConnected()V
    .locals 1

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    #@2
    invoke-static {v0}, Lcom/android/server/NsdService;->-get3(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@9
    .line 668
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 679
    new-instance v0, Lcom/android/server/NsdService$NativeEvent;

    #@2
    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    #@4
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/NsdService$NativeEvent;-><init>(Lcom/android/server/NsdService;ILjava/lang/String;[Ljava/lang/String;)V

    #@7
    .line 680
    .local v0, "event":Lcom/android/server/NsdService$NativeEvent;
    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    #@9
    invoke-static {v1}, Lcom/android/server/NsdService;->-get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    #@c
    move-result-object v1

    #@d
    const v2, 0x6001a

    #@10
    invoke-virtual {v1, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@13
    .line 681
    const/4 v1, 0x1

    #@14
    return v1
.end method
