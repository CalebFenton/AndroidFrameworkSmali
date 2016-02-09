.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;
.super Landroid/net/ICaptivePortal$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@2
    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .locals 3
    .param p1, "response"    # I

    #@0
    .prologue
    .line 386
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_0

    #@3
    .line 387
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@5
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .line 388
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@e
    .line 389
    const-string/jumbo v2, "CaptivePortal"

    #@11
    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    #@16
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@18
    const v1, 0x82009

    #@1b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    #@1e
    .line 385
    return-void
.end method
