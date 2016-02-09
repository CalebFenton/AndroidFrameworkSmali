.class Lcom/android/server/trust/TrustAgentWrapper$4;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    #@0
    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 232
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@c
    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set4(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;

    #@13
    .line 233
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@15
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@18
    move-result-object v0

    #@19
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@1b
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1d
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentConnected(ILandroid/content/ComponentName;)V

    #@24
    .line 234
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@26
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@28
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get4(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-wrap2(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V

    #@2f
    .line 235
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@31
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    #@34
    .line 237
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@36
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@39
    move-result-object v0

    #@3a
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@3c
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@3f
    move-result v1

    #@40
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 238
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@48
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    #@4b
    .line 229
    :goto_0
    return-void

    #@4c
    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@4e
    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    #@51
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 247
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@3
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->-set4(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)Landroid/service/trust/ITrustAgentService;

    #@6
    .line 248
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-set1(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    #@c
    .line 249
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@e
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->-set3(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@11
    .line 250
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@13
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get13(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    #@16
    move-result-object v0

    #@17
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    #@19
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@1b
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get14(Lcom/android/server/trust/TrustAgentWrapper;)I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentDied(ILandroid/content/ComponentName;)V

    #@22
    .line 251
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@24
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    const/4 v1, 0x2

    #@29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@2c
    .line 252
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2e
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get3(Lcom/android/server/trust/TrustAgentWrapper;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 253
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@36
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-wrap1(Lcom/android/server/trust/TrustAgentWrapper;)V

    #@39
    .line 245
    :cond_0
    return-void
.end method
