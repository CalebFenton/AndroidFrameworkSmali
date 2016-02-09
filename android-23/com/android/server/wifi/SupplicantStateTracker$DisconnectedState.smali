.class Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 281
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    const-string/jumbo v2, "SupplicantStateTracker"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->getName()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, "\n"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@27
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap0(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;

    #@2a
    move-result-object v0

    #@2b
    .line 286
    .local v0, "message":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    #@2f
    .line 288
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@31
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-get3(Lcom/android/server/wifi/SupplicantStateTracker;)I

    #@34
    move-result v2

    #@35
    const/4 v3, 0x2

    #@36
    if-lt v2, v3, :cond_2

    #@38
    .line 289
    const-string/jumbo v2, "SupplicantStateTracker"

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Failed to authenticate, disabling network "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 290
    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@49
    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 291
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@56
    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@58
    .line 292
    const/4 v4, 0x3

    #@59
    .line 291
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    #@5c
    .line 293
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@5e
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set2(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    #@61
    .line 280
    :cond_1
    :goto_0
    return-void

    #@62
    .line 295
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@64
    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-get1(Lcom/android/server/wifi/SupplicantStateTracker;)I

    #@67
    move-result v2

    #@68
    const/16 v3, 0x10

    #@6a
    if-lt v2, v3, :cond_1

    #@6c
    .line 296
    const-string/jumbo v2, "SupplicantStateTracker"

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "Association getting rejected, disabling network "

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    .line 297
    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@7d
    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    .line 298
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@8a
    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    #@8c
    .line 299
    const/4 v4, 0x4

    #@8d
    .line 298
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    #@90
    .line 300
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    #@92
    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    #@95
    goto :goto_0
.end method
