.class Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 356
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@9
    .line 357
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@b
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@e
    move-result-object v2

    #@f
    .line 356
    const v3, 0x82002

    #@12
    invoke-virtual {v1, v3, v4, v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 355
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 367
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@9
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@12
    .line 365
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 362
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_0
    .end packed-switch
.end method
