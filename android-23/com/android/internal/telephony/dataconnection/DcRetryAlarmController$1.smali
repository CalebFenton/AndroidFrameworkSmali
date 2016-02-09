.class Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;
.super Landroid/content/BroadcastReceiver;
.source "DcRetryAlarmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const v4, 0x7fffffff

    #@3
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 52
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 54
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "onReceive: ignore empty action=\'"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "\'"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    #@2d
    .line 55
    return-void

    #@2e
    .line 57
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@30
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 58
    const-string/jumbo v3, "what"

    #@3d
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@40
    move-result v3

    #@41
    if-nez v3, :cond_1

    #@43
    .line 59
    new-instance v3, Ljava/lang/RuntimeException;

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@4c
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, " has no INTENT_RETRY_ALRAM_WHAT"

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@62
    throw v3

    #@63
    .line 61
    :cond_1
    const-string/jumbo v3, "tag"

    #@66
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@69
    move-result v3

    #@6a
    if-nez v3, :cond_2

    #@6c
    .line 62
    new-instance v3, Ljava/lang/RuntimeException;

    #@6e
    new-instance v4, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@75
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    const-string/jumbo v5, " has no INTENT_RETRY_ALRAM_TAG"

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8b
    throw v3

    #@8c
    .line 64
    :cond_2
    const-string/jumbo v3, "what"

    #@8f
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@92
    move-result v2

    #@93
    .line 65
    .local v2, "what":I
    const-string/jumbo v3, "tag"

    #@96
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@99
    move-result v1

    #@9a
    .line 67
    .local v1, "tag":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@9c
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v5, "onReceive: action="

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    .line 68
    const-string/jumbo v5, " sendMessage(what:"

    #@af
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v4

    #@b3
    .line 68
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@b5
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get1(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    .line 69
    const-string/jumbo v5, ", tag:"

    #@c4
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    .line 69
    const-string/jumbo v5, ")"

    #@cf
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    #@da
    .line 71
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@dc
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get1(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@df
    move-result-object v3

    #@e0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@e2
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-get1(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e5
    move-result-object v4

    #@e6
    const/4 v5, 0x0

    #@e7
    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(III)Landroid/os/Message;

    #@ea
    move-result-object v4

    #@eb
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@ee
    .line 50
    .end local v1    # "tag":I
    .end local v2    # "what":I
    :goto_0
    return-void

    #@ef
    .line 73
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@f1
    new-instance v4, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v5, "onReceive: unknown action="

    #@f9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v4

    #@fd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v4

    #@105
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    #@108
    goto :goto_0
.end method
