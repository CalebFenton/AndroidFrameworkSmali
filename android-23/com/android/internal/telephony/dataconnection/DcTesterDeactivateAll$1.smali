.class Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterDeactivateAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

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
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 51
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "sIntentReceiver.onReceive: action="

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    #@1b
    .line 52
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    .line 53
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@25
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/PhoneBase;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 52
    if-eqz v3, :cond_3

    #@33
    .line 54
    :cond_0
    const-string/jumbo v3, "Send DEACTIVATE to all Dcc\'s"

    #@36
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    #@39
    .line 55
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@3b
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@3e
    move-result-object v3

    #@3f
    if-eqz v3, :cond_1

    #@41
    .line 56
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@43
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@46
    move-result-object v3

    #@47
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v2

    #@4d
    .local v2, "dc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_2

    #@53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@59
    .line 57
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownNow()V

    #@5c
    goto :goto_0

    #@5d
    .line 60
    .end local v1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v2    # "dc$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "onReceive: mDcc is null, ignoring"

    #@60
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    #@63
    .line 49
    :cond_2
    :goto_1
    return-void

    #@64
    .line 63
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v4, "onReceive: unknown action="

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    #@7b
    goto :goto_1
.end method
