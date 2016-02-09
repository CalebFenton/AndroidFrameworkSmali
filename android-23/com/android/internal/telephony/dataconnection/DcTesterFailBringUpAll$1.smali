.class Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterFailBringUpAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 57
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "sIntentReceiver.onReceive: action="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    #@1e
    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@20
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@2c
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, "sFailBringUp"

    #@33
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(Landroid/content/Intent;Ljava/lang/String;)V

    #@36
    .line 55
    :goto_0
    return-void

    #@37
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@39
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@49
    const-string/jumbo v2, "simulate detaching"

    #@4c
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    #@4f
    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@51
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@54
    move-result-object v1

    #@55
    .line 64
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@57
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@5a
    move-result v2

    #@5b
    .line 63
    const v3, 0x7fffffff

    #@5e
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    #@61
    goto :goto_0

    #@62
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@64
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_2

    #@72
    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@74
    const-string/jumbo v2, "simulate attaching"

    #@77
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    #@7a
    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@7c
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@7f
    move-result-object v1

    #@80
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@82
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@85
    move-result v2

    #@86
    const/4 v3, 0x0

    #@87
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->saveParameters(III)V

    #@8a
    goto :goto_0

    #@8b
    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@8d
    new-instance v2, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v3, "onReceive: unknown action="

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V

    #@a4
    goto :goto_0
.end method
