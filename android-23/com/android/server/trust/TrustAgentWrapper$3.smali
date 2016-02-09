.class Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.source "TrustAgentWrapper.java"


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
    .line 194
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-direct {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public grantTrust(Ljava/lang/CharSequence;JI)V
    .locals 4
    .param p1, "userMessage"    # Ljava/lang/CharSequence;
    .param p2, "durationMs"    # J
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    .line 202
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 201
    invoke-virtual {v1, v2, p4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 203
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "duration"

    #@13
    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@16
    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 197
    return-void
.end method

.method public onConfigureCompleted(ZLandroid/os/IBinder;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 222
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@3
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    .line 223
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 222
    :goto_0
    const/4 v3, 0x5

    #@b
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 220
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 223
    goto :goto_0
.end method

.method public revokeTrust()V
    .locals 2

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@2
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 208
    return-void
.end method

.method public setManagingTrust(Z)V
    .locals 4
    .param p1, "managingTrust"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    #@3
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-get6(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    if-eqz p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/4 v3, 0x6

    #@b
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 214
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 216
    goto :goto_0
.end method
